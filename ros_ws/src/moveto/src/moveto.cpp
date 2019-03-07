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
#include "sensor_msgs/JointState.h"
#include "hebiros/EntryListSrv.h"
#include "hebiros/AddGroupFromNamesSrv.h"
#include "hebiros/SizeSrv.h"
#include "hebiros/SendCommandWithAcknowledgementSrv.h"
#include "hebiros/CommandMsg.h"


using namespace hebiros;

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
  tmove = 0.25;
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
  iKinSrv.request.tip.pitch = req.tip.pitch;
  iKinSrv.request.tip.roll  = req.tip.roll;
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
  add_group_srv.request.names = {"base", "x8-3 shoulder", "elbow", "gripper"};
  add_group_srv.request.families = {"Team2"};
  // Repeatedly call the service until it succeeds.
  while(!add_group_client.call(add_group_srv)) ;

  // Check the size of this group.  This has an output argument.
  ros::ServiceClient size_client = nh.serviceClient<SizeSrv>("/hebiros/"+group_name+"/size");
  SizeSrv size_srv;
  size_client.call(size_srv);
  int group_size = size_srv.response.size;
  ROS_INFO("%s has been created and has size %d", group_name.c_str(), group_size);

  std::vector<std::string> actuators = {"Team2/base", "Team2/x8-3 shoulder", "Team2/elbow", "Team2/gripper"};

  CommandMsg full_command_msg;

  full_command_msg.name = actuators;
  full_command_msg.settings.name = actuators;
  full_command_msg.settings.save_current_settings = {false};
  full_command_msg.settings.control_strategy = {4};


  full_command_msg.settings.position_gains.name = actuators;

  full_command_msg.settings.position_gains.kp = {20.0, 8.0, 20.0, 1.0};
  full_command_msg.settings.position_gains.kd = {0.0, 0.0, 0.0, 0.0};
  full_command_msg.settings.position_gains.ki = {0.0, 0.0, 0.0, 0.0};


  full_command_msg.settings.velocity_gains.name = actuators;

  full_command_msg.settings.velocity_gains.kp = {0.1, 0.1, 0.2, 0.005};
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
  cmdMsg.name.push_back("Team2/x8-3 shoulder");
  cmdMsg.name.push_back("Team2/elbow");
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

    // Compute the new position and velocity commands.
    for (i = 0 ; i < 3 ; i++)
	  {
	     q[i]    = a[i]+t*(b[i]+t*(c[i]+t*d[i]));
	     qdot[i] = b[i]+t*(2.0*c[i]+t*3.0*d[i]);

	     cmdMsg.position[i] = q[i];
	     cmdMsg.velocity[i] = qdot[i];

       // std::cout << "pos: " << q[i] << "\n";
       // std::cout << "vel: " << qdot[i] << "\n";
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
