// Generated by gencpp from file moveto/IsMovingRequest.msg
// DO NOT EDIT!


#ifndef MOVETO_MESSAGE_ISMOVINGREQUEST_H
#define MOVETO_MESSAGE_ISMOVINGREQUEST_H


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
struct IsMovingRequest_
{
  typedef IsMovingRequest_<ContainerAllocator> Type;

  IsMovingRequest_()
    {
    }
  IsMovingRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::moveto::IsMovingRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveto::IsMovingRequest_<ContainerAllocator> const> ConstPtr;

}; // struct IsMovingRequest_

typedef ::moveto::IsMovingRequest_<std::allocator<void> > IsMovingRequest;

typedef boost::shared_ptr< ::moveto::IsMovingRequest > IsMovingRequestPtr;
typedef boost::shared_ptr< ::moveto::IsMovingRequest const> IsMovingRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveto::IsMovingRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveto::IsMovingRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace moveto

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'moveto': ['/home/rohan/ros_ws/src/moveto/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::moveto::IsMovingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveto::IsMovingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveto::IsMovingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveto::IsMovingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveto::IsMovingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveto::IsMovingRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveto::IsMovingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::moveto::IsMovingRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::moveto::IsMovingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveto/IsMovingRequest";
  }

  static const char* value(const ::moveto::IsMovingRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveto::IsMovingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
";
  }

  static const char* value(const ::moveto::IsMovingRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveto::IsMovingRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IsMovingRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveto::IsMovingRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::moveto::IsMovingRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // MOVETO_MESSAGE_ISMOVINGREQUEST_H
