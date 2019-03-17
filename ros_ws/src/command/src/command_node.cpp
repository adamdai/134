#include "ros/ros.h"
#include "std_msgs/Float64.h"
#include "sensor_msgs/JointState.h"
#include "moveto/MoveTip.h"
#include "moveto/MoveJoints.h"
#include "moveto/ThrowTo.h"
#include "moveto/IsMoving.h"
#include "detection/CoordVec.h"
#include <stdio.h>
#include <math.h>

//using namespace hebiros;

static double ball_x = -0.097;
static double ball_y = 0.228;
static double ball_z = 0.045;

static double max_throw = 72; // 6 ft

/*
**   Global Variables.  So the callbacks can pass information.
*/
volatile bool           target_acquired;  // whether a cup in range is detected
volatile double         target_dist;      // distance of target cup
volatile double         target_angle;     // angle of target cup

ros::ServiceClient movetip_client;
ros::ServiceClient movejoints_client;
ros::ServiceClient ismoving_client;
ros::ServiceClient throwto_client;


/*
**   Detection Subscriber Callback
*/
void detectionCallback(detection::CoordVec data)
{
  target_dist = max_throw;

  // If cups are detected
  if (!data.coord_vec.empty())
  {
    // Find the closest one
    for(unsigned int i = 0; i < data.coord_vec.size(); i++)
    {
      // std::cout << "cup dist : " << data.coord_vec[i].dist << std::endl;
      // std::cout << "cup angle : " << data.coord_vec[i].angle << std::endl;
      if (data.coord_vec[i].dist < target_dist)
      {
        target_dist = data.coord_vec[i].dist;
        target_angle = -data.coord_vec[i].angle;
      }
    }
    // std::cout << "target dist : " << target_dist << std::endl;
    // std::cout << "target angle : " << target_angle << std::endl;
    target_acquired = true;
  }
  else
  {
    target_acquired = false;
    // std::cout << "no targets detected!" << std::endl;
  }
}


/*
**   Block for a move command
*/
bool waitMove()
{
  moveto::IsMoving ismoving_srv;

  while(true)
  {
    ismoving_client.call(ismoving_srv);
    if(!ismoving_srv.response.moving)
    {
      break;
    }
    usleep(20000);
  }

  return true;
}

/*
**   Move arm to grab ball
*/
bool grabBall()
{
  // Declare services
  moveto::MoveTip movetip_srv;

  // Move to position above ball_x
  movetip_srv.request.tip.x = ball_x;
  movetip_srv.request.tip.y = ball_y;
  movetip_srv.request.tip.z = ball_z + 0.1;
  movetip_srv.request.tip.grip = false;

  movetip_client.call(movetip_srv);

  ROS_INFO("Moving over position");

  // Block until motion is complete
  waitMove();

  // Move down to gripping position
  movetip_srv.request.tip.x = ball_x;
  movetip_srv.request.tip.y = ball_y;
  movetip_srv.request.tip.z = ball_z;
  movetip_srv.request.tip.grip = false;

  movetip_client.call(movetip_srv);

  ROS_INFO("Moving down into grip position");

  // Block until motion is complete
  waitMove();

  // Close the gripper
  movetip_srv.request.tip.x = ball_x;
  movetip_srv.request.tip.y = ball_y;
  movetip_srv.request.tip.z = ball_z;
  movetip_srv.request.tip.grip = true;

  movetip_client.call(movetip_srv);

  ROS_INFO("Gripping");

  // Block until motion is complete
  waitMove();

  // return upon completion
  return true;
}


/*
**   Windup the arm to prepare for a throw
*/
bool windup()
{
  ROS_INFO("winding up to angle: %f", target_angle);

  // Declare services
  moveto::MoveJoints movejoints_srv;

  // Move to initial throwing position
  movejoints_srv.request.joints.joint[0] = target_angle;
  movejoints_srv.request.joints.joint[1] = 2.35;
  movejoints_srv.request.joints.joint[2] = -1.57;
  movejoints_srv.request.joints.joint[3] = -0.45;

  movejoints_client.call(movejoints_srv);

  // Block until motion is complete
  waitMove();

  return true;
}


/*
**   Throw the ball to target location
*/
bool throwTo()
{
  ROS_INFO("throwing to dist, angle [%f, %f]", target_dist, target_angle);

  // Declare services
  moveto::ThrowTo throwto_srv;

  // Throw
  throwto_srv.request.max_v = 3.0;
  throwto_srv.request.shoulder_release = 1.85;
  throwto_srv.request.angle = target_angle;
  throwto_client.call(throwto_srv);

  // Block until motion is complete
  waitMove();

  return true;
}


/*
**   Main Code
*/
int main(int argc, char **argv)
{
  // Initialize the basic ROS node, run at 200Hz.
  ros::init(argc, argv, "command_node");
  ros::NodeHandle nh;
  ros::Rate loop_rate(200);

  // Initialize service clients
  movetip_client = nh.serviceClient<moveto::MoveTip>("/movetip");
  movejoints_client = nh.serviceClient<moveto::MoveJoints>("/movejoints");
  throwto_client = nh.serviceClient<moveto::ThrowTo>("/throw");
  ismoving_client = nh.serviceClient<moveto::IsMoving>("/ismoving");

  // Create a subscriber to listen for a goal position.
  ros::Subscriber detectionSubscriber = nh.subscribe("/detection/coordinates", 100, detectionCallback);

  // grabBall();
  // throwTo();
  target_angle = 0.0;
  moveto::MoveJoints movejoints_srv;

  // Run the servo loop until shutdown.
  double  dt = loop_rate.expectedCycleTime().toSec();
  ROS_INFO("Running the servo loop with dt %f", dt);
  while(ros::ok())
    {
      // movejoints_srv.request.joints.joint[0] = target_angle;
      // movejoints_srv.request.joints.joint[1] = 1.3;
      // movejoints_srv.request.joints.joint[2] = 1.6;
      //
      // movejoints_client.call(movejoints_srv);

      if (target_acquired)
      {
        grabBall();
        windup();
        throwTo();

        // delay for a few seconds
        usleep(2000000);
      }

      // Wait for next turn.
      ros::spinOnce();
      loop_rate.sleep();
    }

  return 0;
}
