#include "ros/ros.h"
#include "std_msgs/Float64.h"
#include "sensor_msgs/JointState.h"
#include "geometry_msgs/PointStamped.h"
#include "hebiros/EntryListSrv.h"
#include "hebiros/AddGroupFromNamesSrv.h"
#include "hebiros/SizeSrv.h"
#include <stdio.h>
#include <math.h>
#include <array>

using namespace hebiros;


/*
**   Global Variables.  So the callbacks can pass information.
*/
sensor_msgs::JointState feedback;       // The actuator feedback struccture
volatile int            feedbackvalid = 0;

geometry_msgs::Point goalpos; // goal position

/*
**   Robot Parameters
*/
const double d1x = 0.0445;
const double d1z = 0.041275+0.031;
const double d2 = 0.2032; //0.2032
const double d3 = 0.2032; //0.2032


/*
**   Inverse Kinematics calculation
*/
std::array<double, 3> calcIkin(double x, double y, double z)
{
  // q1 singularity
  // if (x == y == 0)
  double q1 = -atan2(x, y);
  double q3 = -(M_PI - acos(-(pow(x,2) + pow(y,2) + pow(z,2) - pow(d2,2) - pow(d3,2)) / (2 * d2 * d3)));
  double q2 = atan2(z, sqrt(pow(x,2) + pow(y,2))) - atan2(d3 * sin(q3), d2 + d3 * cos(q3));

  // std::cout << "q1: " << q1 << "\n";
  // std::cout << "q2: " << q1 << "\n";
  // std::cout << "q3: " << q1 << "\n";

  return {q1, q2, q3};
  //return joints;
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
**   Goal Position Subscriber Callback
**
**   pos publish command: rostopic pub /tipposition geometry_msgs/PointStamped '{stamp: now, frame_id: world}' '[0.1, 0.1, 0.1]'
*/
void posCallback(geometry_msgs::PointStamped msg)
{
  std::cout <<"received point \n";
  goalpos = msg.point;

  std::array<double, 3> joints = calcIkin(goalpos.x, goalpos.y, goalpos.z);
  std::cout << joints[0] << " " << joints[1] << " " << joints[2] << "\n";
  //std::cout << msg->point.x <<"\n";
}


// int main(int argc, char **argv)
// {
//   std::cout << atof(argv[1]) << " " << atof(argv[2]) << " " << atof(argv[3]) << "\n";
//   std::array<double, 3> joints = calcIkin(atof(argv[1]), atof(argv[2]), atof(argv[3]));
//   std::cout << joints[0] << " " << joints[1] << " " << joints[2] << "\n";
//
//
//   // double test = atan2(1,1);
//   // std::cout << test;
//
//   return 0;
// }

/*
**   Main Code
*/

int main(int argc, char **argv)
{
  // Initialize the basic ROS node, run at 200Hz.
  ros::init(argc, argv, "ikin_node");
  ros::NodeHandle n;
  ros::Rate loop_rate(200);
  std::cout << "ini msin loop";

  // Ask the Hebi node to list the modules.  Create a client to their
  // service, instantiate a service class, and call.  This has no
  // input or output arguments.
  ros::ServiceClient entry_list_client = n.serviceClient<EntryListSrv>("/hebiros/entry_list");
  EntryListSrv entry_list_srv;
  entry_list_client.call(entry_list_srv);

  // Create a new "group of actuators".  This has input arguments,
  // which are the names of the actuators.
  std::string group_name = "all";
  ros::ServiceClient add_group_client = n.serviceClient<AddGroupFromNamesSrv>("/hebiros/add_group_from_names");
  AddGroupFromNamesSrv add_group_srv;
  add_group_srv.request.group_name = group_name;
  add_group_srv.request.names = {"Doc"};
  add_group_srv.request.families = {"134"};
  // Repeatedly call the service until it succeeds.
  //while(!add_group_client.call(add_group_srv)) ;

  // Check the size of this group.  This has an output argument.
  ros::ServiceClient size_client = n.serviceClient<SizeSrv>("/hebiros/"+group_name+"/size");
  SizeSrv size_srv;
  size_client.call(size_srv);
  ROS_INFO("%s has been created and has size %d", group_name.c_str(), size_srv.response.size);



  // Create a subscriber to listen for a goal position.
  ros::Subscriber posSubscriber = n.subscribe("/tipposition", 100, posCallback);

  // Create a subscriber to receive feedback from the actuator group.
  ros::Subscriber feedback_subscriber = n.subscribe("/hebiros/"+group_name+"/feedback/joint_state", 100, feedbackCallback);

  feedback.position.reserve(1);
  feedback.velocity.reserve(1);
  feedback.effort.reserve(1);


  // Create a publisher to send commands to the actuator group.
  ros::Publisher command_publisher = n.advertise<sensor_msgs::JointState>("/hebiros/"+group_name+"/command/joint_state", 100);

  // Joint Publisher
  ros::Publisher joint_publisher = n.advertise<sensor_msgs::JointState>("/joint_states", 100);

  sensor_msgs::JointState joint_msg;
  joint_msg.name.push_back("link1_attachment");
  joint_msg.name.push_back("link2_attachment");
  joint_msg.name.push_back("link3_attachment");
  joint_msg.position.resize(3);
  // command_msg.velocity.resize(1);
  // command_msg.effort.resize(1);


  // Wait until we have some feedback from the actuator.
  // ROS_INFO("Waiting for initial feedback");
  // while (!feedbackvalid)
  //   {
  //     ros::spinOnce();
  //     loop_rate.sleep();
  //   }


  // Prep the servo loop.
  double  dt = loop_rate.expectedCycleTime().toSec();

  double  speed = 0.5;          // Speed to reach goal.
  double  cmdpos = feedback.position[0];
  double  cmdvel = 0.0;

  std::cout << "starting main loop \n";

  // Run the servo loop until shutdown.
  ROS_INFO("Running the servo loop with dt %f", dt);
  while(ros::ok())
    {
      // Move the goal.
      // if      (cmdpos < goalpos - speed*dt)   cmdvel = speed;
      // else if (cmdpos > goalpos + speed*dt)   cmdvel = -speed;
      // else                                    cmdvel = (goalpos - cmdpos)/dt;
      // cmdpos += dt * cmdvel;

      // info
      //ROS_INFO("Command position [%f]", cmdpos)
      std::array<double, 3> joints = calcIkin(goalpos.x, goalpos.y, goalpos.z);
      //std::cout << joints[0] << " " << joints[1] << " " << joints[2] << "\n";

      // Apply.
      joint_msg.position[0] = joints[0];
      joint_msg.position[1] = joints[1];
      joint_msg.position[2] = joints[2];
      joint_msg.header.stamp = ros::Time::now();
      // command_msg.velocity[0] = cmdvel;
      // command_msg.effort[0]   = 0.0;
      joint_publisher.publish(joint_msg);

      // std::cout<<"pos: "<<command_msg.position[0]<<"\n";
      // std::cout<<"vel: "<<command_msg.velocity[0]<<"\n";

      // Wait for next turn.
      ros::spinOnce();
      loop_rate.sleep();
    }

  return 0;
}
