/* This is a empty file to test. */
#include "ros/ros.h"
//#include <librealsense/rs.hpp>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <detection/Coord.h>
#include <detection/CoordVec.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

static const std::string OPENCV_WINDOW = "Image window";

/* Now do a refactor with class methods. */

// Pixel boundaries for detection.
static int left_pix_bound = 220;
static int right_pix_bound = 557;
static int top_pix_bound = 112;
static int bot_pix_bound = 366;

// Set up arrays for mesh.
static int x_pix_positions [5][3]  = {
  {273, 366, 370},
  {266, 370, 470},
  {256, 374, 491},
  {240, 380, 516},
  {220, 389, 557}
};

static int y_pix_positions [5][3]  = {
  {116, 116, 112},
  {155, 155, 155},
  {204, 203, 200},
  {268, 269, 266},
  {365, 366, 366}
};

static double x_real_positions [5][3]  = {
  {-11, 3, 16.5},
  {-11, 3, 16.5},
  {-11, 3, 16.5},
  {-11, 3, 16.5},
  {-11, 3, 16.5}
};

static double y_real_positions [5][3]  = {
  {79.25, 79.25, 79.25},
  {65.75, 65.75, 65.75},
  {52.25, 52.25, 52.25},
  {38.75, 38.75, 38.75},
  {25.25, 25.25, 25.26}
};

class ImageConverter {
  ros::NodeHandle nh;
  image_transport::ImageTransport it;
  image_transport::Subscriber image_sub;
  image_transport::Publisher image_pub;
  ros::Publisher posPub;
  
  std::vector<cv::Mat> images;
  
  int maxNumImages;
  int currNumImages;
  // Declare a image to hold, and set that in the depth thing.
  
public:
  ImageConverter() : it(nh){

    //TODO: Make this poll less, it doesn't need to poll as much rn.
    image_sub = it.subscribe("/camera/color/image_raw", 1000, &ImageConverter::imageCallBack, this);
    image_pub = it.advertise("/cup_detector/output_video", 1000);
    posPub = nh.advertise<detection::CoordVec>("/detection/coordinates", 100);

    maxNumImages = 100;
    currNumImages = 0;
  }

  ~ImageConverter()
  {
    //cv::destroyWindow("test window");
  }

  std::vector<double> radius_converter(cv::Point& pix_pt) {
    cv::Point center = pix_pt;
    /* Do this masking in the center detection. */
    //std::cout << "x: " << center.x << ", y: " << center.y << std::endl;
    std::vector<double> pos;
    pos.push_back(-1);
    pos.push_back(-1);
    
    // Find the y cell first.
    int y_cell_num = 0;
    int x_cell_num = 0;
    for(int y_cell = 0; y_cell < 4; y_cell++)
      for(int x_cell = 0; x_cell < 2; x_cell++)
	if(center.y > y_pix_positions[y_cell][x_cell] && center.y <= y_pix_positions[y_cell+1][x_cell]
	   && center.x > x_pix_positions[y_cell][x_cell] && center.x <= x_pix_positions[y_cell][x_cell+1]) {
	  //std::cout << "y cell: " << y_cell << ", x cell: " << x_cell << std::endl;
	  // Compute real x position.

	  // Need to redo this calculation my dude, there is some mess up
	  // with the way u structureed the array.
	  double x_l_off = (double(center.x) - x_pix_positions[y_cell][x_cell]) /
	    (double(x_pix_positions[y_cell][x_cell+1]) - x_pix_positions[y_cell][x_cell]) *
	     (x_real_positions[y_cell][x_cell+1] - x_real_positions[y_cell][x_cell]);
	  
	  double x_l_off2 = (double(center.x) - x_pix_positions[y_cell+1][x_cell]) /
	    (double(x_pix_positions[y_cell+1][x_cell+1]) - x_pix_positions[y_cell+1][x_cell]) *
	     (x_real_positions[y_cell+1][x_cell+1] - x_real_positions[y_cell+1][x_cell]);
	  
	  double x_off = (x_l_off + x_l_off2) / 2;

	  double y_t_off = (double(center.y) - y_pix_positions[y_cell][x_cell]) /
	    (double(y_pix_positions[y_cell+1][x_cell]) - y_pix_positions[y_cell][x_cell]) *
	    (y_real_positions[y_cell+1][x_cell] - y_real_positions[y_cell][x_cell]);
	  
	  double y_t_off2 = (double(center.y) - y_pix_positions[y_cell][x_cell+1]) /
	    (double(y_pix_positions[y_cell+1][x_cell+1]) - y_pix_positions[y_cell][x_cell+1]) *
	     (y_real_positions[y_cell+1][x_cell+1] - y_real_positions[y_cell][x_cell+1]);
	  
	  double y_off = (y_t_off + y_t_off2) / 2;
	  double y_pos = y_real_positions[y_cell][x_cell] + y_off;
	  double x_pos = x_real_positions[y_cell][x_cell] + x_off;
	  
	  //std::cout << "pix x : " << center.x << " pix y : " << center.y << " x off: " << x_off << std::endl;
	  /*std::cout << "x cell : " << x_cell << " y cell" << y_cell << std::endl;
	  std::cout << "offset from top pair :" << x_l_off << " offset from bottom pair: " << x_l_off2 << std::endl;
	  std::cout << "computed x : " << x_real_positions[y_cell][x_cell] + x_off << std::endl;
	  std::cout << "computed y : " << y_real_positions[y_cell][x_cell] + y_off << std::endl;
	  std::cout << "\n\n"; */

	  // compute radius
	  double rad = std::sqrt(y_pos * y_pos + x_pos * x_pos);
	  double angle = std::atan(x_pos / y_pos);
	  pos[0] = rad;
	  pos[1] = angle;
	}
    
    return pos;
  }

  
  
  void imageCallBack(const sensor_msgs::ImageConstPtr& msg) {
    cv_bridge::CvImagePtr cv_ptr;

    // TODO: INSERT TRY CATCH HERE
    cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    
    cv::Vec3b bgrPixel(18, 18, 130); // measured red of cups
    //cv::Vec3b bgrPixel(140, 110, 140); // measured white of cups

    cv::Mat3b bgr (bgrPixel);
    cv::Mat3b hsv, ycb, lab;
    cv::cvtColor(bgr, ycb, cv::COLOR_BGR2YCrCb);
    cv::cvtColor(bgr, hsv, cv::COLOR_BGR2HSV);
    cv::cvtColor(bgr, lab, cv::COLOR_BGR2Lab);

    cv::Vec3b hsvPixel(hsv.at<cv::Vec3b>(0, 0));
    cv::Vec3b ycbPixel(hsv.at<cv::Vec3b>(0, 0));
    cv::Vec3b labPixel(hsv.at<cv::Vec3b>(0, 0));

    int thresh = 20;

    cv::Scalar minBGR = cv::Scalar(bgrPixel[0] - thresh, bgrPixel[1] - thresh, bgrPixel[2] - thresh-20);
    cv::Scalar maxBGR = cv::Scalar(bgrPixel[0] + thresh, bgrPixel[1] + thresh, bgrPixel[2] + thresh+20);

    cv::Mat maskBGR, resultBGR;
    cv::inRange(cv_ptr->image, minBGR, maxBGR, maskBGR);
    cv::bitwise_and(cv_ptr->image, cv_ptr->image, resultBGR, maskBGR);

    
    // TODO: see if we need to be any smarter about it, or if this is sufficient.
    // Convert to HSV <-- think we may need to do this...?
    //cv::cvtColor(cv_ptr->image, cv_ptr->image, cv::COLOR_BGR2HSV);

    // Next, draw contours
    cv::Mat canny_output;
    cv::Canny(resultBGR, canny_output, 100, 100*2);

    std::vector<std::vector<cv::Point> > contours;
    std::vector<cv::Vec4i> hierarchy;
    cv::findContours(canny_output, contours, hierarchy, cv::RETR_TREE,
		     cv::CHAIN_APPROX_SIMPLE);
    cv::Mat drawing = cv::Mat::zeros(canny_output.size(), CV_8U);
    std::vector<cv::Moments> mu(contours.size());
    std::vector<std::vector<cv::Point>> contours_poly(contours.size());
    std::vector<cv::Rect> boundRect(contours.size());
    std::cout <<"\nPRINTING OUT CENTERS:" << std::endl;
    std::vector<std::vector<double>> pol_coords;
    
    for(size_t i = 0; i < contours.size(); i++) {
      // Determine bounding box of contour.
      cv::approxPolyDP(cv::Mat(contours[i]), contours_poly[i], 3, true);
      boundRect[i] = cv::boundingRect(cv::Mat(contours_poly[i]));
      // Can use float threshold
      
      cv::Scalar color = cv::Scalar(256, 256, 256);
      //cv::drawContours(drawing, contours, (int) i, color, 2, cv::LINE_8, hierarchy, 0);
      // only draw rectangle if above certain threshold
      // Mask out unless center x,y within acceptabler ange.
      if(cv::norm(boundRect[i].br() - boundRect[i].tl()) > 10) {
	cv::Point center = .5 * (boundRect[i].br() + boundRect[i].tl());
	// Filter by x.
	if(center.x < right_pix_bound && center.x > left_pix_bound && center.y < bot_pix_bound && center.y > top_pix_bound) {
	  cv::rectangle(cv_ptr->image, boundRect[i].tl(), boundRect[i].br(), color, 2, 8, 0);
	  cv::circle(cv_ptr->image, center, 8, cv::Scalar(0, 0, 256), -1, 8, 0);
	
	  std::vector<double> pos = radius_converter(center);
	  pol_coords.push_back(pos);
	}
      }
      
    }

    // Print out coords if desired.
    for(int i = 0; i < pol_coords.size(); i++) {
      if(pol_coords[i][0] != -1 && pol_coords[i][1] != -1) {
	std::cout << "Radius : " << pol_coords[i][0] << std::endl;
	std::cout << "Angle : " << pol_coords[i][1] << std::endl;
      }
    }

    //Publish image.
    image_pub.publish(cv_ptr->toImageMsg());

    // Publish coordinates.
    detection::CoordVec coordinates;
    for(int count = 0; count < pol_coords.size(); count++) {
      detection::Coord coord;
      coord.rad = pol_coords[count][0];
      coord.angle = pol_coords[count][1];
      if(coord.angle != -1 && coord.rad != -1)
	coordinates.coord_vec.push_back(coord);
    }
    posPub.publish(coordinates);
      
    // Write to image.
    cv::imwrite("detected.png", cv_ptr->image);
  }
};

int main(int argc, char **argv)
{
  // Initialize the basic ROS node, run at 200Hz.
  ros::init(argc, argv, "detection_node");
  ImageConverter im_conv;
  ros::spin();
  return 0;
}
