/*
**   ikin.cpp
**
**   Basic node that only provides the inverse kinematics computation.
**
**   Service:   /ikin
*/
#include "ros/ros.h"
#include "moveto/IKin.h"


/*
**   Length Definitions
**
**   In general, we could/should pull these from the URDF...
*/
#define LENA    (0.3048)
#define LENB    (0.3048)
#define LENC    (0.14)


/*
**   Inverse Kinematics
*/
bool ikin(double x, double y, double z, double pitch, double roll, double q[5])
{
  double  rtip;		// Radius of tip
  double  rwrist;	// Radius of wrist
  double  zwrist;	// Height of wrist
  double  cgamma;       // Temporary cosine value
  double  beta;         // Temporary angle

  // Assume the solution will be non-singular, unless set below.
  bool singular = false;

  // Solve for J1 and convert into polar coordinates.
  if ((x == 0) && (y == 0))
    singular = true;
  q[0] = -atan2(x, y);
  rtip = - sin(q[0])*x + cos(q[0])*y;

  // "Trick" = Undo the pitch and compute wrist point.
  rwrist = rtip - cos(pitch) * LENC;
  zwrist = z    - sin(pitch) * LENC;

  // Compute the elbow angle J3, assuming elbow-down (J3 < 0)
  // cgamma = ((rwrist*rwrist + zwrist*zwrist - LENA*LENA - LENB*LENB) /
	//     (2.0 * LENA * LENB));
  cgamma = -((x*x + y*y + z*z - LENA*LENA - LENB*LENB) /
	    (2.0 * LENA * LENB));
  if      (cgamma <= -1.0)   { cgamma = -1.0; singular = true; }
  else if (cgamma >=  1.0)   { cgamma =  1.0; singular = true; }
  q[2] = (M_PI - acos(cgamma));

  // Compute the angle by which the bent elbow affects the shoulder.
  // This is only singular when the elbow is singular.
  beta = atan2(LENB*sin(-q[2]), LENA + LENB*cos(-q[2]));

  // Finally compute the shoulder angle J2.
  if ((zwrist == 0) && (rwrist == 0))
    singular = true;
  // q[1] = atan2(zwrist, rwrist) - beta;
  q[1] = atan2(z, sqrt(x*x + y*y)) - beta;

  // Add the orientation.
  // q[3] = pitch - q[1] - q[2];
  // q[4] = roll;
  q[3] = 0;
  q[4] = 0;

  std::cout << "q0: " << q[0] << "\n";
  std::cout << "q1: " << q[1] << "\n";
  std::cout << "q2: " << q[2] << "\n";

  std::cout << "sing: " << singular << "\n";

  // Return the singular flag.
  return singular;
}


/*
**   Inverse Kinematics Callback
*/
bool ikinCallback(moveto::IKin::Request  &req,
		  moveto::IKin::Response &res)
{
  // Report the requested tip location and orientation.
  ROS_INFO("IKin: Heard [%f, %f, %f, %f, %f]",
	   req.tip.x, req.tip.y, req.tip.z, req.tip.pitch, req.tip.roll);

  // Compute the inverse.
  res.singular = ikin(req.tip.x, req.tip.y, req.tip.z,
		      req.tip.pitch, req.tip.roll,
		      &res.joints.joint[0]);

  return true;
}


/*
**   Main Node and Initialization Code
*/
int main(int argc, char **argv)
{
  // Initialize ROS and create a node handle.
  ros::init(argc, argv, "ikin");
  ros::NodeHandle nh;

  // Create the service.
  ros::ServiceServer service = nh.advertiseService("/ikin", ikinCallback);

  // Run the node until shutdown.
  ROS_INFO("IKin: Standing by...");
  ros::spin();

  return 0;
}
