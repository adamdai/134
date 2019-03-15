/*
**   moveto.cpp
**
**   Node that provides the trajectory generation
**
**   Service:   /movejoints
**              /movetip
**              /ismoving
**
**   Publish:   /joint_states   - this could be to the HEBI instead...
*/
#include "ros/ros.h"
#include "moveto/IKin.h"
#include "moveto/MoveJoints.h"
#include "moveto/MoveTip.h"
#include "moveto/ThrowTo.h"
#include "sensor_msgs/JointState.h"
#include "hebiros/EntryListSrv.h"
#include "hebiros/AddGroupFromNamesSrv.h"
#include "hebiros/SizeSrv.h"
#include "hebiros/SendCommandWithAcknowledgementSrv.h"
#include "hebiros/CommandMsg.h"


using namespace hebiros;

#define TABLE_WIDTH  (1.0)
#define THROW_MAX  (2.0)
#define THROW_MIN  (1.0)
#define WINDUP    (0.5)    // distance from gripper to base for winding up for the throw
#define GRIPPOS (-0.4)
#define SPEED_MULT (2.75)
#define  MAX_ANGLE (0.4)


/*
**   Global Variables.  So the callbacks can pass information.
*/
// The actuator feedback struccture
sensor_msgs::JointState feedback;
volatile int            feedbackvalid = 0;

// Inverse Kinematics Service
static ros::ServiceClient  *ikinClientPtr;

// Time and current position/velocity commands.
static double  t;
static double  q[5];
static double  qdot[5];

// Cubic spline parameters
static double  a[5], b[5], c[5], d[5];

// Max speeds.
static double  qdotmax[5] = {3.14, 3.14, 3.14, 3.14, 3.14};

static bool throwing; // This is true if executing throwing motion (trapezoid)
static double throw_angle;
static double max_v;
static double elbow_throwtime;
static double shoulder_throwtime;
static double shoulder_release;
static bool throw_error;

/*
**   Move To Computation
*/
double loadmove(double qfinal[5])
{
  int     i;
  double  tmove;        // Total move time
  double  tmp;

  // Pick a move time.  Note this is approximate.  We could compute
  // the absolute fastest time or pass as an argument.
  tmove = 5;
  for (i = 0 ; i < 5 ; i++)
    {
      tmp = 2.0 * fabs(qfinal[i] - q[i]) / qdotmax[i];
      if (tmp > tmove)
	tmove = tmp;
    }

  // Set the cubic spline parameters.
  for (i = 0 ; i < 5 ; i++)
    {
      a[i] = qfinal[i];
      b[i] = 0.0;
      c[i] = (3.0*(q[i]-qfinal[i])/tmove + qdot[i])/tmove;
      d[i] = (2.0*(q[i]-qfinal[i])/tmove + qdot[i])/tmove/tmove;
    }

  // Set the time, so the move starts t<0 and ends t=0.
  t = -tmove;
}


/*
**   Feedback Subscriber Callback
*/
void feedbackCallback(sensor_msgs::JointState data)
{
  feedback = data;
  //ROS_INFO("FBK pos [%f]", feedback.position[0]);
  feedbackvalid = 1;
}



/*
**   Move Tip Callback
*/
bool movetipCallback(moveto::MoveTip::Request  &req,
		     moveto::MoveTip::Response &res)
{
  // Call the inverse kinematics.
  moveto::IKin iKinSrv;
  iKinSrv.request.tip.x     = req.tip.x;
  iKinSrv.request.tip.y     = req.tip.y;
  iKinSrv.request.tip.z     = req.tip.z;
  iKinSrv.request.tip.grip  = req.tip.grip;
  ikinClientPtr->call(iKinSrv);

  // Move to the joints.
  res.movetime = loadmove(&iKinSrv.response.joints.joint[0]);

  return true;
}


/*
**   Move Joints Callback
*/
bool movejointsCallback(moveto::MoveJoints::Request  &req,
			moveto::MoveJoints::Response &res)
{
  // Move to the joints.
  res.movetime = loadmove(&req.joints.joint[0]);

  return true;
}

/*
**   Throw to Callback
*/
bool throwtoCallback(moveto::ThrowTo::Request  &req,
			moveto::ThrowTo::Response &res)
{
  bool valid_throw = true;

  throwing = req.throw_b;
  shoulder_release = req.shoulder_release;
  max_v = req.max_v;
  throw_angle = req.angle;
  double maxv_time = .1;

  double q[4];
  double elbow_sat_speed = std::min(SPEED_MULT * max_v, 8.75);
  double shoulder_sat_speed = std::min(max_v, 3.14);// use x5-4 max for computing bigger throw time.

  elbow_throwtime = 3.14/elbow_sat_speed - maxv_time; // elbow throwtime
  shoulder_throwtime = 3.14/shoulder_sat_speed - maxv_time;

  // handle error cases.
  if(throwing && (shoulder_throwtime < maxv_time || elbow_throwtime < maxv_time)) {
    ROS_INFO("Invalid params : decrease speed.");
    valid_throw = false;
  }

  if(std::abs(throw_angle) > MAX_ANGLE) {
    ROS_INFO("Invalid params : angle out of bounds.");
    valid_throw = false;
  }

  throw_error = !valid_throw;
  // throwing being false means we wind up.
  if(!throwing && valid_throw) {
    q[0] = throw_angle;
    q[1] = 2.35;
    q[2] = -1.57;
    q[3] = GRIPPOS;
  } // Else, throw.
  else if(throwing && valid_throw) {
    q[0] = throw_angle;
    q[1] = .785;
    q[2] = 0;
    q[3] = 0; // release grip
  }
  res.movetime = loadmove(q);
  if(throwing)
    t = -shoulder_throwtime; // Time begins when shoulder starts moving.
  else
    t = -5; // fixed windup time.

  if (throwing)
    return valid_throw;
  else
    return true;
}

// Return the velocity of the trapezoid profile.
double trapezoid_motion(double max_speed, double limit, double throwing_time) {
  // Compute the profile based on the limits of the motors.
  double sat_speed = std::min(max_speed, limit);
  //double maxv_time = 3.14 / sat_speed - throwing_time;
  double maxv_time = .1;

  double speed = 0;
  double time_offset = (shoulder_throwtime - throwing_time) / 2;

  //std::cout << "First part: " << (-throwtime + (throwtime - maxv_time)/ 2) << std::endl;
  //std::cout << "Second part: " <<(-(throwtime - maxv_time)/ 2) << std::endl;
  //std::cout << "Max V Time : " << maxv_time << std::endl;
  double new_time = t + time_offset;
  double time = throwing_time + new_time;

  if(new_time > -(throwing_time) && new_time < (-(throwing_time) + (throwing_time - maxv_time)/ 2)) {
    speed = (2 * sat_speed) / (throwing_time - maxv_time)*time;
    //speed = sat_speed;
    /*std::cout << "RAMP UP" << std::endl;
    std::cout << "time offset:" << time_offset << std::endl;
    std::cout << "max v time : " << maxv_time << std::endl;
    std::cout << "time : " << time << std::endl;
    std::cout << "t :" << t << std::endl;
    std::cout << "sat : " << sat_speed << std::endl;
    std::cout << "v: " << speed << std::endl; */
  }
  else if (new_time > (-(throwing_time) + (throwing_time - maxv_time)/ 2) && new_time < -(throwing_time - maxv_time) / 2) {
    speed = sat_speed;
    /*std::cout << "MAX" << std::endl;
    std::cout << "time offset:" << time_offset << std::endl;
    std::cout << "time : " << time << std::endl;
    std::cout << "t :" << t << std::endl;
    std::cout << "v: :" << speed << std::endl; */
  }
  else if (new_time  > -(throwing_time - maxv_time) / 2 && new_time < 0.0){
    speed = (throwing_time * (2 * sat_speed) / (throwing_time - maxv_time)) - (2 * sat_speed) / (throwing_time - maxv_time) * time;
    /*std::cout << "RAMP DOWN" << std::endl;
    std::cout << "time offset:" << time_offset << std::endl;
    std::cout << "time : " << time << std::endl;
    std::cout << "t :" << t << std::endl;
    std::cout << "v :" << speed << std::endl; */
  }
  else {
    //std::cout << "NOT MOVING " << std::endl;
    //std::cout << "time offset:" << time_offset << std::endl;
    //std::cout << "time : " << time << std::endl;
    //std::cout << "t :" << t << std::endl;
    speed = 0;
  }

  return speed;
}


/*
**   Main Code
*/
int main(int argc, char **argv)
{
  int  i;

  // Initialize ROS and create a node handle.
  ros::init(argc, argv, "moveto");
  ros::NodeHandle nh;

  // Prepare a 200Hz update rate.
  ros::Rate loop_rate(200);

  // Ask the Hebi node to list the modules.  Create a client to their
  // service, instantiate a service class, and call.  This has no
  // input or output arguments.
  ros::ServiceClient entry_list_client = nh.serviceClient<EntryListSrv>("/hebiros/entry_list");
  EntryListSrv entry_list_srv;
  entry_list_client.call(entry_list_srv);

  // Create a new "group of actuators".  This has input arguments,
  // which are the names of the actuators.
  std::string group_name = "all";
  ros::ServiceClient add_group_client = nh.serviceClient<AddGroupFromNamesSrv>("/hebiros/add_group_from_names");
  AddGroupFromNamesSrv add_group_srv;
  add_group_srv.request.group_name = group_name;
  add_group_srv.request.names = {"base", "x8-9 shoulder", "x8-3 elbow", "gripper"};
  add_group_srv.request.families = {"Team2"};
  // Repeatedly call the service until it succeeds.
  while(!add_group_client.call(add_group_srv)) ;

  // Check the size of this group.  This has an output argument.
  ros::ServiceClient size_client = nh.serviceClient<SizeSrv>("/hebiros/"+group_name+"/size");
  SizeSrv size_srv;
  size_client.call(size_srv);
  int group_size = size_srv.response.size;
  ROS_INFO("%s has been created and has size %d", group_name.c_str(), group_size);

  std::vector<std::string> actuators = {"Team2/base", "Team2/x8-9 shoulder", "Team2/x8-3 elbow", "Team2/gripper"};

  CommandMsg full_command_msg;

  full_command_msg.name = actuators;
  full_command_msg.settings.name = actuators;
  full_command_msg.settings.save_current_settings = {false};
  full_command_msg.settings.control_strategy = {4,4,4,4};


  full_command_msg.settings.position_gains.name = actuators;

  full_command_msg.settings.position_gains.kp = {60.0, 15.0, 20.0, 70.0};
  full_command_msg.settings.position_gains.kd = {0.0, 0.0, 0.0, 0.0};
  full_command_msg.settings.position_gains.ki = {0.0, 0.0, 0.0, 0.0};


  full_command_msg.settings.velocity_gains.name = actuators;

  full_command_msg.settings.velocity_gains.kp = {0.25, 0.1, 0.1, 0.1};
  full_command_msg.settings.velocity_gains.kd = {0.0, 0.0, 0.0, 0.0};
  full_command_msg.settings.velocity_gains.ki = {0.0, 0.0, 0.0, 0.0};


  SendCommandWithAcknowledgementSrv send_command_srv;
  send_command_srv.request.command = full_command_msg;


  ros::ServiceClient send_command_client =
    nh.serviceClient<SendCommandWithAcknowledgementSrv>(
    "/hebiros/"+group_name+"/send_command_with_acknowledgement");


  // Send the command and check for acknowledgement!
  if (send_command_client.call(send_command_srv))
  {
    std::cout << "The gains were changed successfully" << std::endl;
  }
  else
  {
    std::cout << "The gains were not changed" << std::endl;
  }

  // Initialize the global variables before setting up the services.
  t = 0.0;
  for (i = 0 ; i < 5 ; i++)
  {
    q[i]    = 0.0;
    qdot[i] = 0.0;

    a[i] = b[i] = c[i] = d[i] = 0.0;
  }
  q[1] = 0.9;
  q[2] = 1.75;


  // Create a client to the IKin service.
  ros::ServiceClient ikinClient = nh.serviceClient<moveto::IKin>("/ikin");
  ikinClientPtr = &ikinClient;

  // Create the movejoints and movetip service.
  ros::ServiceServer movetipServer =
    nh.advertiseService("/movetip", movetipCallback);
  ros::ServiceServer movejointsServer =
    nh.advertiseService("/movejoints", movejointsCallback);

  // Make throwing server
  ros::ServiceServer throwServer =
    nh.advertiseService("/throw", throwtoCallback);

  // Create a subscriber to receive feedback from the actuator group.
  ros::Subscriber feedback_subscriber = nh.subscribe("/hebiros/"+group_name+"/feedback/joint_state", 100, feedbackCallback);

  feedback.position.reserve(group_size);
  feedback.velocity.reserve(group_size);
  feedback.effort.reserve(group_size);
  std::cout << "feedback reserved\n";

  // Create a publisher to send commands.
  ROS_INFO("setting up joint state");
  ros::Publisher cmdPub =
    nh.advertise<sensor_msgs::JointState>("/hebiros/"+group_name+"/command/joint_state", 100);

  sensor_msgs::JointState cmdMsg;
  cmdMsg.name.push_back("Team2/base");
  cmdMsg.name.push_back("Team2/x8-9 shoulder");
  cmdMsg.name.push_back("Team2/x8-3 elbow");
  cmdMsg.name.push_back("Team2/gripper");
  cmdMsg.position.resize(group_size);
  cmdMsg.velocity.resize(group_size);
  cmdMsg.effort.resize(group_size);

  // Wait until we have some feedback from the actuator.
  ROS_INFO("Waiting for initial feedback");
  while (!feedbackvalid)
  {
    ros::spinOnce();
    loop_rate.sleep();
    std::cout << "waiting for valid feedback \n";
  }


  // Run the servo loop until shutdown.
  double  dt = loop_rate.expectedCycleTime().toSec();
  ROS_INFO("MoveTo: Running the servo loop with dt %f", dt);

  while(ros::ok())
  {
    // Advance time, but hold at t=0 to stay at the final position.
    t += dt;
    if (t > 0.0)
      t = 0.0;


    if(!throwing) {

      // Use spline for all non-throwing motion.
      for (i = 0 ; i < 4 ; i++){
	q[i]    = a[i]+t*(b[i]+t*(c[i]+t*d[i]));
	qdot[i] = b[i]+t*(2.0*c[i]+t*3.0*d[i]);

	cmdMsg.position[i] = q[i];
	cmdMsg.velocity[i] = qdot[i];

	// std::cout << "pos: " << q[i] << "\n";
	// std::cout << "vel: " << qdot[i] << "\n";
      }
    }
    else {
      if(!throw_error) {
	qdot[1] = trapezoid_motion(max_v, 3.14, shoulder_throwtime); // shoulder

	qdot[2] = trapezoid_motion(SPEED_MULT * max_v, 8.79, elbow_throwtime); // elbow

	q[1] -= qdot[1] * dt;
	q[2] += qdot[2] * dt;

	cmdMsg.position[0] = throw_angle;
	cmdMsg.velocity[0] = 0;

	cmdMsg.position[1] = q[1];
	cmdMsg.velocity[1] = -qdot[1];

	cmdMsg.position[2] = q[2];
	cmdMsg.velocity[2] = qdot[2];

	//float grip_cond = (5.3 - feedback.position[1] + feedback.position[2] + asin(12/16.5 * sin(2.3 - feedback.position[1])));

	// release after given shoulder position.
	if(feedback.position[1] < shoulder_release) {
	  cmdMsg.position[3] = 0.2;
	  /*std::cout << "shoulder v : " << feedback.velocity[1] << std::endl;
	  std::cout << "elbow v : " << feedback.velocity[2] << std::endl;
	  std::cout << "shoulder q : " << feedback.position[1] << std::endl;
	  std::cout << "elbow q : " << feedback.position[2] << std::endl; */
	}
      }
    }
    // Publish.

    cmdMsg.header.stamp = ros::Time::now();
    cmdPub.publish(cmdMsg);

    // Wait for next cycle.
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}
