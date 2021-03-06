// Generated by gencpp from file detection/Coord.msg
// DO NOT EDIT!


#ifndef DETECTION_MESSAGE_COORD_H
#define DETECTION_MESSAGE_COORD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace detection
{
template <class ContainerAllocator>
struct Coord_
{
  typedef Coord_<ContainerAllocator> Type;

  Coord_()
    : dist(0.0)
    , angle(0.0)  {
    }
  Coord_(const ContainerAllocator& _alloc)
    : dist(0.0)
    , angle(0.0)  {
  (void)_alloc;
    }



   typedef double _dist_type;
  _dist_type dist;

   typedef double _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::detection::Coord_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::detection::Coord_<ContainerAllocator> const> ConstPtr;

}; // struct Coord_

typedef ::detection::Coord_<std::allocator<void> > Coord;

typedef boost::shared_ptr< ::detection::Coord > CoordPtr;
typedef boost::shared_ptr< ::detection::Coord const> CoordConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::detection::Coord_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::detection::Coord_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace detection

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'detection': ['/home/adam/ros_ws/src/detection/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::detection::Coord_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::detection::Coord_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::detection::Coord_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::detection::Coord_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::detection::Coord_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::detection::Coord_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::detection::Coord_<ContainerAllocator> >
{
  static const char* value()
  {
    return "91402bd440d1ef690efc522751a6276e";
  }

  static const char* value(const ::detection::Coord_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x91402bd440d1ef69ULL;
  static const uint64_t static_value2 = 0x0efc522751a6276eULL;
};

template<class ContainerAllocator>
struct DataType< ::detection::Coord_<ContainerAllocator> >
{
  static const char* value()
  {
    return "detection/Coord";
  }

  static const char* value(const ::detection::Coord_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::detection::Coord_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message definition of a coordinate\n\
float64 dist\n\
float64 angle\n\
";
  }

  static const char* value(const ::detection::Coord_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::detection::Coord_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.dist);
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Coord_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::detection::Coord_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::detection::Coord_<ContainerAllocator>& v)
  {
    s << indent << "dist: ";
    Printer<double>::stream(s, indent + "  ", v.dist);
    s << indent << "angle: ";
    Printer<double>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DETECTION_MESSAGE_COORD_H
