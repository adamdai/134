#include "ros/ros.h"
#include "std_msgs/Float64.h"
#include "sensor_msgs/JointState.h"
#include "hebiros/EntryListSrv.h"
//#include <opencv2/objdetect/objdetect.hpp>
#include "opencv_apps/FaceArrayStamped.h"
#include "hebiros/AddGroupFromNamesSrv.h"
#include "hebiros/SizeSrv.h"
#include "hebiros/SendCommandWithAcknowledgementSrv.h"
#include "hebiros/CommandMsg.h"
#include "hebiros/SettingsMsg.h"
#include "hebiros/PidGainsMsg.h"
#include <stdio.h>
#include <math.h>

using namespace hebiros;


/*
**   Parameters
*/
double tracking_speed = 0.5;
double scan_speed = 0.4;
double scan_range = 1.25;

/*
**   Global Variables.  So the callbacks can pass information.
*/
sensor_msgs::JointState feedback;       // The actuator feedback struccture
volatile int            feedbackvalid = 0;
volatile double         goalpos;        // The goal position
volatile double         goalvel;        // The goal velocity
sensor_msgs::JointState goal;       // The actuator feedback struccture


volatile double         face_x;
volatile double         face_y;
volatile bool           detecting;


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
*/
void posCallback(const std_msgs::Float64::ConstPtr& msg)
{
  goalpos = msg->data;
  //ROS_INFO("I heard: [%f]", (double) msg->data);
}

/*
**   Goal Velocity Subscriber Callback
*/
void velCallback(const std_msgs::Float64::ConstPtr& msg)
{
  goalvel = msg->data;
  ROS_INFO("I heard: [%f]", (double) msg->data);
}


/*
**   Detected Faces Callback
*/
void faceCallback(const opencv_apps::FaceArrayStamped::ConstPtr& msg)
{
  //goalvel = msg->data;
  //std::cout << "yo\n";
  //std::cout << msg->header.seq <<"\n";

  if (msg->faces.size() > 0)
  {
    //std::cout << "face x" << msg->faces[0].face.x <<"\n";
    face_x = msg->faces[0].face.x + msg->faces[0].face.width/2;
    detecting = true;
  }
  else
  {
    detecting = false;
  }

}

/*
**   Main Code
*/
int main(int argc, char **argv)
{
  // Initialize the basic ROS node, run at 200Hz.
  ros::init(argc, argv, "myrobot_node");
  ros::NodeHandle n;
  ros::Rate loop_rate(200);


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
  add_group_srv.request.names = {"base", "shoulder", "elbow", "gripper"};
  add_group_srv.request.families = {"Team2"};
  // Repeatedly call the service until it succeeds.
  while(!add_group_client.call(add_group_srv)) ;

  // Check the size of this group.  This has an output argument.
  ros::ServiceClient size_client = n.serviceClient<SizeSrv>("/hebiros/"+group_name+"/size");
  SizeSrv size_srv;
  size_client.call(size_srv);
  int group_size = size_srv.response.size;
  ROS_INFO("%s has been created and has size %d", group_name.c_str(), group_size);

  ros::ServiceClient send_command_client = n.serviceClient<SendCommandWithAcknowledgementSrv>("/hebiros/send_command_with_acknowledgement");
  SendCommandWithAcknowledgementSrv send_command_srv;

  CommandMsg command;
  SettingsMsg settings;
  PidGainsMsg gains;

  gains.kp = {1.0, 10.0, 1.0, 1.0};
  gains.ki = {0.0, 0.0, 0.0, 0.0};
  gains.kd = {0.0, 0.0, 0.0, 0.0};

  settings.position_gains = gains;
  command.settings = settings;

  send_command_srv.request.command = command;
  send_command_client.call(send_command_srv);



  // Create a subscriber to listen for a goal position.
  ros::Subscriber posSubscriber = n.subscribe("pos", 100, posCallback);

  // Create a subscriber to listen for a goal velocity.
  ros::Subscriber velSubscriber = n.subscribe("vel", 100, velCallback);

  // Create a subscriber to listen for detected face position
  ros::Subscriber faceSubscriber = n.subscribe("/face_detector/faces", 100, faceCallback);

  std::cout << "all subscribers made\n";

  // Create a subscriber to receive feedback from the actuator group.
  ros::Subscriber feedback_subscriber = n.subscribe("/hebiros/"+group_name+"/feedback/joint_state", 100, feedbackCallback);

  feedback.position.reserve(group_size);
  feedback.velocity.reserve(group_size);
  feedback.effort.reserve(group_size);
  std::cout << "feedback reserved\n" ;

  // Create a publisher to send commands to the actuator group.
  ros::Publisher command_publisher = n.advertise<sensor_msgs::JointState>("/hebiros/"+group_name+"/command/joint_state", 100);

  sensor_msgs::JointState command_msg;
  command_msg.name.push_back("Team2/base");
  command_msg.name.push_back("Team2/shoulder");
  command_msg.name.push_back("Team2/elbow");
  command_msg.name.push_back("Team2/gripper");
  command_msg.position.resize(group_size);
  command_msg.velocity.resize(group_size);
  command_msg.effort.resize(group_size);

  // Wait until we have some feedback from the actuator.
  ROS_INFO("Waiting for initial feedback");
  while (!feedbackvalid)
  {
    ros::spinOnce();
    loop_rate.sleep();
    std::cout << "waiting for valid feedback \n";
  }


  // Prep the servo loop.
  double  dt = loop_rate.expectedCycleTime().toSec();

  double  speed = 0.5;          // Speed to reach goal.
  double  cmdpos = feedback.position[1];
  double  cmdvel = 0.0;

  //goal = feedback;
  // Start where we are.
  goalpos = cmdpos;
  goalvel = cmdvel;

  // Run the servo loop until shutdown.
  ROS_INFO("Running the servo loop with dt %f", dt);
  while(ros::ok())
    {

      //Move the goal.
      if      (cmdpos < goalpos - speed*dt)   cmdvel = speed;
      else if (cmdpos > goalpos + speed*dt)   cmdvel = -speed;
      else                                    cmdvel = (goalpos - cmdpos)/dt;
      cmdpos += dt * cmdvel;

      //info
      ROS_INFO("Command position [%f]", cmdpos);

      // Apply.
      command_msg.position[3] = cmdpos;
      command_msg.velocity[3] = cmdvel;
      command_msg.effort[3]   = 0.0;
      command_publisher.publish(command_msg);

      // Wait for next turn.
      ros::spinOnce();
      loop_rate.sleep();
    }

  return 0;
}
