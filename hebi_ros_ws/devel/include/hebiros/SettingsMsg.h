// Generated by gencpp from file hebiros/SettingsMsg.msg
// DO NOT EDIT!


#ifndef HEBIROS_MESSAGE_SETTINGSMSG_H
#define HEBIROS_MESSAGE_SETTINGSMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <hebiros/PidGainsMsg.h>
#include <hebiros/PidGainsMsg.h>
#include <hebiros/PidGainsMsg.h>

namespace hebiros
{
template <class ContainerAllocator>
struct SettingsMsg_
{
  typedef SettingsMsg_<ContainerAllocator> Type;

  SettingsMsg_()
    : name()
    , save_current_settings()
    , control_strategy()
    , position_gains()
    , velocity_gains()
    , effort_gains()  {
    }
  SettingsMsg_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , save_current_settings(_alloc)
    , control_strategy(_alloc)
    , position_gains(_alloc)
    , velocity_gains(_alloc)
    , effort_gains(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _name_type;
  _name_type name;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _save_current_settings_type;
  _save_current_settings_type save_current_settings;

   typedef std::vector<int8_t, typename ContainerAllocator::template rebind<int8_t>::other >  _control_strategy_type;
  _control_strategy_type control_strategy;

   typedef  ::hebiros::PidGainsMsg_<ContainerAllocator>  _position_gains_type;
  _position_gains_type position_gains;

   typedef  ::hebiros::PidGainsMsg_<ContainerAllocator>  _velocity_gains_type;
  _velocity_gains_type velocity_gains;

   typedef  ::hebiros::PidGainsMsg_<ContainerAllocator>  _effort_gains_type;
  _effort_gains_type effort_gains;





  typedef boost::shared_ptr< ::hebiros::SettingsMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hebiros::SettingsMsg_<ContainerAllocator> const> ConstPtr;

}; // struct SettingsMsg_

typedef ::hebiros::SettingsMsg_<std::allocator<void> > SettingsMsg;

typedef boost::shared_ptr< ::hebiros::SettingsMsg > SettingsMsgPtr;
typedef boost::shared_ptr< ::hebiros::SettingsMsg const> SettingsMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hebiros::SettingsMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hebiros::SettingsMsg_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::hebiros::SettingsMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hebiros::SettingsMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hebiros::SettingsMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hebiros::SettingsMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hebiros::SettingsMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hebiros::SettingsMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hebiros::SettingsMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4333c3b24c39f74ad09d675d9b50f596";
  }

  static const char* value(const ::hebiros::SettingsMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4333c3b24c39f74aULL;
  static const uint64_t static_value2 = 0xd09d675d9b50f596ULL;
};

template<class ContainerAllocator>
struct DataType< ::hebiros::SettingsMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hebiros/SettingsMsg";
  }

  static const char* value(const ::hebiros::SettingsMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hebiros::SettingsMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] name\n\
bool[] save_current_settings\n\
int8[] control_strategy\n\
hebiros/PidGainsMsg position_gains\n\
hebiros/PidGainsMsg velocity_gains\n\
hebiros/PidGainsMsg effort_gains\n\
\n\
\n\
================================================================================\n\
MSG: hebiros/PidGainsMsg\n\
string[] name\n\
float64[] kp\n\
float64[] ki\n\
float64[] kd\n\
float64[] feed_forward\n\
float64[] dead_zone\n\
float64[] i_clamp\n\
float64[] punch\n\
float64[] min_target\n\
float64[] max_target\n\
float64[] target_lowpass\n\
float64[] min_output\n\
float64[] max_output\n\
float64[] output_lowpass\n\
bool[] d_on_error\n\
\n\
";
  }

  static const char* value(const ::hebiros::SettingsMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hebiros::SettingsMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.save_current_settings);
      stream.next(m.control_strategy);
      stream.next(m.position_gains);
      stream.next(m.velocity_gains);
      stream.next(m.effort_gains);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SettingsMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hebiros::SettingsMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hebiros::SettingsMsg_<ContainerAllocator>& v)
  {
    s << indent << "name[]" << std::endl;
    for (size_t i = 0; i < v.name.size(); ++i)
    {
      s << indent << "  name[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name[i]);
    }
    s << indent << "save_current_settings[]" << std::endl;
    for (size_t i = 0; i < v.save_current_settings.size(); ++i)
    {
      s << indent << "  save_current_settings[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.save_current_settings[i]);
    }
    s << indent << "control_strategy[]" << std::endl;
    for (size_t i = 0; i < v.control_strategy.size(); ++i)
    {
      s << indent << "  control_strategy[" << i << "]: ";
      Printer<int8_t>::stream(s, indent + "  ", v.control_strategy[i]);
    }
    s << indent << "position_gains: ";
    s << std::endl;
    Printer< ::hebiros::PidGainsMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.position_gains);
    s << indent << "velocity_gains: ";
    s << std::endl;
    Printer< ::hebiros::PidGainsMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity_gains);
    s << indent << "effort_gains: ";
    s << std::endl;
    Printer< ::hebiros::PidGainsMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.effort_gains);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HEBIROS_MESSAGE_SETTINGSMSG_H
