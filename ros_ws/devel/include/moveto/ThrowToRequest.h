// Generated by gencpp from file moveto/ThrowToRequest.msg
// DO NOT EDIT!


#ifndef MOVETO_MESSAGE_THROWTOREQUEST_H
#define MOVETO_MESSAGE_THROWTOREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <moveto/Point.h>

namespace moveto
{
template <class ContainerAllocator>
struct ThrowToRequest_
{
  typedef ThrowToRequest_<ContainerAllocator> Type;

  ThrowToRequest_()
    : point()  {
    }
  ThrowToRequest_(const ContainerAllocator& _alloc)
    : point(_alloc)  {
  (void)_alloc;
    }



   typedef  ::moveto::Point_<ContainerAllocator>  _point_type;
  _point_type point;





  typedef boost::shared_ptr< ::moveto::ThrowToRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveto::ThrowToRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ThrowToRequest_

typedef ::moveto::ThrowToRequest_<std::allocator<void> > ThrowToRequest;

typedef boost::shared_ptr< ::moveto::ThrowToRequest > ThrowToRequestPtr;
typedef boost::shared_ptr< ::moveto::ThrowToRequest const> ThrowToRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveto::ThrowToRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveto::ThrowToRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace moveto

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'moveto': ['/home/robot/ros_ws/src/moveto/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::moveto::ThrowToRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveto::ThrowToRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveto::ThrowToRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveto::ThrowToRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveto::ThrowToRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveto::ThrowToRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveto::ThrowToRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a7c84ff13976aa04656e56e300124444";
  }

  static const char* value(const ::moveto::ThrowToRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa7c84ff13976aa04ULL;
  static const uint64_t static_value2 = 0x656e56e300124444ULL;
};

template<class ContainerAllocator>
struct DataType< ::moveto::ThrowToRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveto/ThrowToRequest";
  }

  static const char* value(const ::moveto::ThrowToRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveto::ThrowToRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
Point     point\n\
\n\
================================================================================\n\
MSG: moveto/Point\n\
# Message of tip values\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
";
  }

  static const char* value(const ::moveto::ThrowToRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveto::ThrowToRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.point);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ThrowToRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveto::ThrowToRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveto::ThrowToRequest_<ContainerAllocator>& v)
  {
    s << indent << "point: ";
    s << std::endl;
    Printer< ::moveto::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.point);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVETO_MESSAGE_THROWTOREQUEST_H
