// Generated by gencpp from file detection/CoordVec.msg
// DO NOT EDIT!


#ifndef DETECTION_MESSAGE_COORDVEC_H
#define DETECTION_MESSAGE_COORDVEC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <detection/Coord.h>

namespace detection
{
template <class ContainerAllocator>
struct CoordVec_
{
  typedef CoordVec_<ContainerAllocator> Type;

  CoordVec_()
    : coord_vec()  {
    }
  CoordVec_(const ContainerAllocator& _alloc)
    : coord_vec(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::detection::Coord_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::detection::Coord_<ContainerAllocator> >::other >  _coord_vec_type;
  _coord_vec_type coord_vec;





  typedef boost::shared_ptr< ::detection::CoordVec_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::detection::CoordVec_<ContainerAllocator> const> ConstPtr;

}; // struct CoordVec_

typedef ::detection::CoordVec_<std::allocator<void> > CoordVec;

typedef boost::shared_ptr< ::detection::CoordVec > CoordVecPtr;
typedef boost::shared_ptr< ::detection::CoordVec const> CoordVecConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::detection::CoordVec_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::detection::CoordVec_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace detection

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'detection': ['/home/robot/ros_ws/src/detection/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::detection::CoordVec_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::detection::CoordVec_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::detection::CoordVec_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::detection::CoordVec_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::detection::CoordVec_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::detection::CoordVec_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::detection::CoordVec_<ContainerAllocator> >
{
  static const char* value()
  {
    return "174b4c9844889818f886eb583690704e";
  }

  static const char* value(const ::detection::CoordVec_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x174b4c9844889818ULL;
  static const uint64_t static_value2 = 0xf886eb583690704eULL;
};

template<class ContainerAllocator>
struct DataType< ::detection::CoordVec_<ContainerAllocator> >
{
  static const char* value()
  {
    return "detection/CoordVec";
  }

  static const char* value(const ::detection::CoordVec_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::detection::CoordVec_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message definition of a vector of coordinates.\n\
\n\
Coord[] coord_vec\n\
================================================================================\n\
MSG: detection/Coord\n\
# Message definition of a coordinate\n\
float64 dist\n\
float64 angle\n\
";
  }

  static const char* value(const ::detection::CoordVec_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::detection::CoordVec_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.coord_vec);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CoordVec_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::detection::CoordVec_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::detection::CoordVec_<ContainerAllocator>& v)
  {
    s << indent << "coord_vec[]" << std::endl;
    for (size_t i = 0; i < v.coord_vec.size(); ++i)
    {
      s << indent << "  coord_vec[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::detection::Coord_<ContainerAllocator> >::stream(s, indent + "    ", v.coord_vec[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DETECTION_MESSAGE_COORDVEC_H
