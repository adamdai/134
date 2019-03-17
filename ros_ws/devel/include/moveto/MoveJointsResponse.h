// Generated by gencpp from file moveto/MoveJointsResponse.msg
// DO NOT EDIT!


#ifndef MOVETO_MESSAGE_MOVEJOINTSRESPONSE_H
#define MOVETO_MESSAGE_MOVEJOINTSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace moveto
{
template <class ContainerAllocator>
struct MoveJointsResponse_
{
  typedef MoveJointsResponse_<ContainerAllocator> Type;

  MoveJointsResponse_()
    : movetime(0.0)  {
    }
  MoveJointsResponse_(const ContainerAllocator& _alloc)
    : movetime(0.0)  {
  (void)_alloc;
    }



   typedef double _movetime_type;
  _movetime_type movetime;





  typedef boost::shared_ptr< ::moveto::MoveJointsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveto::MoveJointsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MoveJointsResponse_

typedef ::moveto::MoveJointsResponse_<std::allocator<void> > MoveJointsResponse;

typedef boost::shared_ptr< ::moveto::MoveJointsResponse > MoveJointsResponsePtr;
typedef boost::shared_ptr< ::moveto::MoveJointsResponse const> MoveJointsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveto::MoveJointsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveto::MoveJointsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace moveto

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'moveto': ['/home/adam/ros_ws/src/moveto/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::moveto::MoveJointsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveto::MoveJointsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveto::MoveJointsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveto::MoveJointsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveto::MoveJointsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveto::MoveJointsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveto::MoveJointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6d0a2b9ab4bb8369a38e876cace8b333";
  }

  static const char* value(const ::moveto::MoveJointsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6d0a2b9ab4bb8369ULL;
  static const uint64_t static_value2 = 0xa38e876cace8b333ULL;
};

template<class ContainerAllocator>
struct DataType< ::moveto::MoveJointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveto/MoveJointsResponse";
  }

  static const char* value(const ::moveto::MoveJointsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveto::MoveJointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
float64 movetime\n\
\n\
";
  }

  static const char* value(const ::moveto::MoveJointsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveto::MoveJointsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.movetime);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveJointsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveto::MoveJointsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveto::MoveJointsResponse_<ContainerAllocator>& v)
  {
    s << indent << "movetime: ";
    Printer<double>::stream(s, indent + "  ", v.movetime);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVETO_MESSAGE_MOVEJOINTSRESPONSE_H
