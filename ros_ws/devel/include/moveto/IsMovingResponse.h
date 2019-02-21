// Generated by gencpp from file moveto/IsMovingResponse.msg
// DO NOT EDIT!


#ifndef MOVETO_MESSAGE_ISMOVINGRESPONSE_H
#define MOVETO_MESSAGE_ISMOVINGRESPONSE_H


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
struct IsMovingResponse_
{
  typedef IsMovingResponse_<ContainerAllocator> Type;

  IsMovingResponse_()
    : moving(false)  {
    }
  IsMovingResponse_(const ContainerAllocator& _alloc)
    : moving(false)  {
  (void)_alloc;
    }



   typedef uint8_t _moving_type;
  _moving_type moving;





  typedef boost::shared_ptr< ::moveto::IsMovingResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveto::IsMovingResponse_<ContainerAllocator> const> ConstPtr;

}; // struct IsMovingResponse_

typedef ::moveto::IsMovingResponse_<std::allocator<void> > IsMovingResponse;

typedef boost::shared_ptr< ::moveto::IsMovingResponse > IsMovingResponsePtr;
typedef boost::shared_ptr< ::moveto::IsMovingResponse const> IsMovingResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveto::IsMovingResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveto::IsMovingResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::moveto::IsMovingResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveto::IsMovingResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveto::IsMovingResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveto::IsMovingResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveto::IsMovingResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveto::IsMovingResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveto::IsMovingResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9104f1a32b4fbf4d3c8c80d9b9493250";
  }

  static const char* value(const ::moveto::IsMovingResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9104f1a32b4fbf4dULL;
  static const uint64_t static_value2 = 0x3c8c80d9b9493250ULL;
};

template<class ContainerAllocator>
struct DataType< ::moveto::IsMovingResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveto/IsMovingResponse";
  }

  static const char* value(const ::moveto::IsMovingResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveto::IsMovingResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
bool  moving\n\
\n\
";
  }

  static const char* value(const ::moveto::IsMovingResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveto::IsMovingResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.moving);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IsMovingResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveto::IsMovingResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveto::IsMovingResponse_<ContainerAllocator>& v)
  {
    s << indent << "moving: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.moving);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVETO_MESSAGE_ISMOVINGRESPONSE_H
