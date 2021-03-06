#include "ros/ros.h"
#include "std_msgs/Float64.h"
#include "sensor_msgs/JointState.h"
#include "hebiros/EntryListSrv.h"
#include "hebiros/AddGroupFromNamesSrv.h"
#include "hebiros/SizeSrv.h"
#include "hebiros/SendCommandWithAcknowledgementSrv.h"
#include "hebiros/CommandMsg.h"
#include <stdio.h>
#include <math.h>

using namespace hebiros;


/*
**   Global Variables.  So the callbacks can pass information.
*/
sensor_msgs::JointState feedback;       // The actuator feedback struccture
volatile int            feedbackvalid = 0;
volatile double         goalpos;        // The goal position
volatile double         goalvel;        // The goal velocity


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
  ROS_INFO("I heard: [%f]", (double) msg->data);
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
**   Main Code
*/
int main(int argc, char **argv)
{
  // Initialize the basic ROS node, run at 200Hz.
  ros::init(argc, argv, "simple_node");
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
  add_group_srv.request.names = {"shoulder"};
  add_group_srv.request.families = {"Team2"};
  // Repeatedly call the service until it succeeds.
  while(!add_group_client.call(add_group_srv)) ;

  // Check the size of this group.  This has an output argument.
  ros::ServiceClient size_client = n.serviceClient<SizeSrv>("/hebiros/"+group_name+"/size");
  SizeSrv size_srv;
  size_client.call(size_srv);
  ROS_INFO("%s has been created and has size %d", group_name.c_str(), size_srv.response.size);

  std::vector<std::string> actuators = {"Team2/shoulder"};

  CommandMsg full_command_msg;

  full_command_msg.name = actuators;
  full_command_msg.settings.name = actuators;
  full_command_msg.settings.save_current_settings = {false};
  full_command_msg.settings.control_strategy = {4};


  full_command_msg.settings.position_gains.name = actuators;

  full_command_msg.settings.position_gains.kp = {10};
  full_command_msg.settings.position_gains.kd = {0.0};
  full_command_msg.settings.position_gains.ki = {0.0};


  full_command_msg.settings.velocity_gains.name = actuators;

  full_command_msg.settings.velocity_gains.kp = {0.005};
  full_command_msg.settings.velocity_gains.kd = {0.0};
  full_command_msg.settings.velocity_gains.ki = {0.0};


  SendCommandWithAcknowledgementSrv send_command_srv;
  send_command_srv.request.command = full_command_msg;


  ros::ServiceClient send_command_client =
    n.serviceClient<SendCommandWithAcknowledgementSrv>(
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


  // Create a subscriber to listen for a goal position.
  ros::Subscriber posSubscriber = n.subscribe("pos", 100, posCallback);

  // Create a subscriber to listen for a goal velocity.
  ros::Subscriber velSubscriber = n.subscribe("vel", 100, velCallback);

  // Create a subscriber to receive feedback from the actuator group.
  ros::Subscriber feedback_subscriber = n.subscribe("/hebiros/"+group_name+"/feedback/joint_state", 100, feedbackCallback);

  feedback.position.reserve(1);
  feedback.velocity.reserve(1);
  feedback.effort.reserve(1);


  // Create a publisher to send commands to the actuator group.
  ros::Publisher command_publisher = n.advertise<sensor_msgs::JointState>("/hebiros/"+group_name+"/command/joint_state", 100);

  sensor_msgs::JointState command_msg;
  command_msg.name.push_back("Team2/shoulder");
  command_msg.position.resize(1);
  command_msg.velocity.resize(1);
  command_msg.effort.resize(1);


  // Wait until we have some feedback from the actuator.
  ROS_INFO("Waiting for initial feedback");
  while (!feedbackvalid)
    {
      ros::spinOnce();
      loop_rate.sleep();
    }


  // Prep the servo loop.
  double  dt = loop_rate.expectedCycleTime().toSec();

  double  speed = 0.5;          // Speed to reach goal.
  double  cmdpos = feedback.position[0];
  double  cmdvel = 0.0;

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

      // cmdpos += dt*cmdvel;
      // cmdvel = goalvel;
      //
      // if (abs(cmdpos) > 1.5)
      // {
      //   cmdpos = signbit(cmdpos) * 1.5;
      // }

      // Apply.
      command_msg.position[0] = goalpos;
      // command_msg.velocity[0] = 0.0;
      // command_msg.effort[0]   = 0.0;
      command_publisher.publish(command_msg);

      std::cout<<"pos: "<<command_msg.position[0]<<"\n";
      std::cout<<"vel: "<<command_msg.velocity[0]<<"\n";

      // Wait for next turn.
      ros::spinOnce();
      loop_rate.sleep();
    }

  return 0;
}
