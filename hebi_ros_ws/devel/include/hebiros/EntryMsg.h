// Generated by gencpp from file hebiros/EntryMsg.msg
// DO NOT EDIT!


#ifndef HEBIROS_MESSAGE_ENTRYMSG_H
#define HEBIROS_MESSAGE_ENTRYMSG_H


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
struct EntryMsg_
{
  typedef EntryMsg_<ContainerAllocator> Type;

  EntryMsg_()
    : name()
    , family()
    , mac_address(0)  {
    }
  EntryMsg_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , family(_alloc)
    , mac_address(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _family_type;
  _family_type family;

   typedef int64_t _mac_address_type;
  _mac_address_type mac_address;





  typedef boost::shared_ptr< ::hebiros::EntryMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hebiros::EntryMsg_<ContainerAllocator> const> ConstPtr;

}; // struct EntryMsg_

typedef ::hebiros::EntryMsg_<std::allocator<void> > EntryMsg;

typedef boost::shared_ptr< ::hebiros::EntryMsg > EntryMsgPtr;
typedef boost::shared_ptr< ::hebiros::EntryMsg const> EntryMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hebiros::EntryMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hebiros::EntryMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hebiros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'hebiros': ['/home/robot/hebi_ros_ws/src/hebiros/hebiros/msg', '/home/robot/hebi_ros_ws/devel/share/hebiros/msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hebiros::EntryMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hebiros::EntryMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hebiros::EntryMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hebiros::EntryMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hebiros::EntryMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hebiros::EntryMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hebiros::EntryMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ef1a1bc0bda92a32c695657f945626a";
  }

  static const char* value(const ::hebiros::EntryMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ef1a1bc0bda92a3ULL;
  static const uint64_t static_value2 = 0x2c695657f945626aULL;
};

template<class ContainerAllocator>
struct DataType< ::hebiros::EntryMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hebiros/EntryMsg";
  }

  static const char* value(const ::hebiros::EntryMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hebiros::EntryMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
string family\n\
int64 mac_address\n\
";
  }

  static const char* value(const ::hebiros::EntryMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hebiros::EntryMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.family);
      stream.next(m.mac_address);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EntryMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hebiros::EntryMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hebiros::EntryMsg_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "family: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.family);
    s << indent << "mac_address: ";
    Printer<int64_t>::stream(s, indent + "  ", v.mac_address);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HEBIROS_MESSAGE_ENTRYMSG_H
