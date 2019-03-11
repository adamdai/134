/* This is a empty file to test. */
#include "ros/ros.h"
//#include <librealsense/rs.hpp>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

static const std::string OPENCV_WINDOW = "Image window";
/* Now do a refactor with class methods. */

class ImageConverter {
  ros::NodeHandle nh;
  image_transport::ImageTransport it;
  image_transport::Subscriber image_sub;
  image_transport::Subscriber depth_sub;
  image_transport::Publisher image_pub;
  image_transport::Publisher depth_pub;
  std::vector<cv::Mat> images;
  
  int maxNumImages;
  int currNumImages;
  // Declare a image to hold, and set that in the depth thing.
  
public:
  ImageConverter() : it(nh){

    //TODO: Make this poll less, it doesn't need to poll as much rn.
    image_sub = it.subscribe("/camera/color/image_raw", 1000, &ImageConverter::imageCallBack, this);
    depth_sub = it.subscribe("/camera/aligned_depth_to_color/image_raw", 1000, &ImageConverter::depthCallBack, this);
    image_pub = it.advertise("/cup_detector/output_video", 1000);
    depth_pub = it.advertise("/cup_detector/depth_video", 100);

    maxNumImages = 100;
    currNumImages = 0;
  }

  ~ImageConverter()
  {
    //cv::destroyWindow("test window");
  }

  void depthCallBack(const sensor_msgs::ImageConstPtr&msg) {
    cv_bridge::CvImagePtr depth_ptr;
    depth_ptr = cv_bridge::toCvCopy(msg);
    
    /*cv::Mat curr_image = depth_ptr->image;
    if(images.size() < maxNumImages)
      images.push_back(curr_image);
    
    // we can publish the depth image in a bit to check
    if (images.size() == maxNumImages) {
      cv::Mat avg_depth_image = cv::Mat(images[0].rows, images[0].cols, CV_64FC1);
      avg_depth_image.setTo(cv::Scalar(0, 0, 0, 0));
      cv::Mat temp;
      for (int i = 0; i < images.size(); i++) {
	images[i].convertTo(temp, avg_depth_image.type());
	if(images[i].size() != avg_depth_image.size())
	  std::cout<<"ERROR";
	cv::accumulate(avg_depth_image, temp);
      }
      
      //avg_depth_image.convertTo(avg_depth_image, curr_image.type(), 1. / maxNumImages);
      //cv::Scalar depth_val = cv::mean(avg_depth_image);
      cv::Scalar depth_val = curr_image.at<char>(326, 370);
      std::cout << depth_val << "\n";
      cv::circle(depth_ptr->image, cv::Point(326, 370), 8, cv::Scalar(0, 0, 256), -1, 8, 0);
      depth_pub.publish(depth_ptr->toImageMsg());
      images.clear();
      }*/
    cv::Scalar depth_val = depth_ptr->image.at<uchar>(cv::Point(326, 370));
    cv::Scalar depth_mean = cv::mean(depth_ptr->image);
    std::cout<< depth_val<< "\n";
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

    int thresh = 30;

    cv::Scalar minBGR = cv::Scalar(bgrPixel[0] - thresh-20, bgrPixel[1] - thresh, bgrPixel[2] - thresh);
    cv::Scalar maxBGR = cv::Scalar(bgrPixel[0] + thresh+20, bgrPixel[1] + thresh, bgrPixel[2] + thresh);

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

    for(size_t i = 0; i < contours.size(); i++) {
      // Determine bounding box of contour.
      cv::approxPolyDP(cv::Mat(contours[i]), contours_poly[i], 3, true);
      boundRect[i] = cv::boundingRect(cv::Mat(contours_poly[i]));
      // Can use float threshold
      
      cv::Scalar color = cv::Scalar(256, 256, 256);
      //cv::drawContours(drawing, contours, (int) i, color, 2, cv::LINE_8, hierarchy, 0);
      // only draw rectangle if above certain threshold
      if(cv::norm(boundRect[i].br() - boundRect[i].tl()) > 20) {
	cv::Point center = .5 * (boundRect[i].br() + boundRect[i].tl());
	cv::rectangle(cv_ptr->image, boundRect[i].tl(), boundRect[i].br(), color, 2, 8, 0);
	cv::circle(cv_ptr->image, center, 8, cv::Scalar(0, 0, 256), -1, 8, 0);
	//std::cout << cv_ptr->image.size() << "\n";
	//std::cout << center.x << ", " << center.y << "\n" ;
      }
      
    }

    //Publish image.
    image_pub.publish(cv_ptr->toImageMsg());
 
    // Compute positions from bounding boxes and publish them to the locations.
    // Use the depth point cloud.
    // unclear how to do this still
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
