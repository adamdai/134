// Generated by gencpp from file hebiros/SetFeedbackFrequencySrvRequest.msg
// DO NOT EDIT!


#ifndef HEBIROS_MESSAGE_SETFEEDBACKFREQUENCYSRVREQUEST_H
#define HEBIROS_MESSAGE_SETFEEDBACKFREQUENCYSRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hebiros
{
template <class ContainerAllocator>
struct SetFeedbackFrequencySrvRequest_
{
  typedef SetFeedbackFrequencySrvRequest_<ContainerAllocator> Type;

  SetFeedbackFrequencySrvRequest_()
    : feedback_frequency(0)  {
    }
  SetFeedbackFrequencySrvRequest_(const ContainerAllocator& _alloc)
    : feedback_frequency(0)  {
  (void)_alloc;
    }



   typedef int32_t _feedback_frequency_type;
  _feedback_frequency_type feedback_frequency;





  typedef boost::shared_ptr< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetFeedbackFrequencySrvRequest_

typedef ::hebiros::SetFeedbackFrequencySrvRequest_<std::allocator<void> > SetFeedbackFrequencySrvRequest;

typedef boost::shared_ptr< ::hebiros::SetFeedbackFrequencySrvRequest > SetFeedbackFrequencySrvRequestPtr;
typedef boost::shared_ptr< ::hebiros::SetFeedbackFrequencySrvRequest const> SetFeedbackFrequencySrvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hebiros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'hebiros': ['/home/robot/hebi_ros_ws/src/hebiros/hebiros/msg', '/home/robot/hebi_ros_ws/devel/share/hebiros/msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "89e470a7bc482c7199fa75ef40009369";
  }

  static const char* value(const ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x89e470a7bc482c71ULL;
  static const uint64_t static_value2 = 0x99fa75ef40009369ULL;
};

template<class ContainerAllocator>
struct DataType< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hebiros/SetFeedbackFrequencySrvRequest";
  }

  static const char* value(const ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 feedback_frequency\n\
";
  }

  static const char* value(const ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.feedback_frequency);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetFeedbackFrequencySrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hebiros::SetFeedbackFrequencySrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "feedback_frequency: ";
    Printer<int32_t>::stream(s, indent + "  ", v.feedback_frequency);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HEBIROS_MESSAGE_SETFEEDBACKFREQUENCYSRVREQUEST_H
