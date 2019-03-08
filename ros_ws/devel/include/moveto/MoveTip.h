// Generated by gencpp from file moveto/MoveTip.msg
// DO NOT EDIT!


#ifndef MOVETO_MESSAGE_MOVETIP_H
#define MOVETO_MESSAGE_MOVETIP_H

#include <ros/service_traits.h>


#include <moveto/MoveTipRequest.h>
#include <moveto/MoveTipResponse.h>


namespace moveto
{

struct MoveTip
{

typedef MoveTipRequest Request;
typedef MoveTipResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MoveTip
} // namespace moveto


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::moveto::MoveTip > {
  static const char* value()
  {
    return "5ebb5876bcc8be930d43a2e07942295f";
  }

  static const char* value(const ::moveto::MoveTip&) { return value(); }
};

template<>
struct DataType< ::moveto::MoveTip > {
  static const char* value()
  {
    return "moveto/MoveTip";
  }

  static const char* value(const ::moveto::MoveTip&) { return value(); }
};


// service_traits::MD5Sum< ::moveto::MoveTipRequest> should match 
// service_traits::MD5Sum< ::moveto::MoveTip > 
template<>
struct MD5Sum< ::moveto::MoveTipRequest>
{
  static const char* value()
  {
    return MD5Sum< ::moveto::MoveTip >::value();
  }
  static const char* value(const ::moveto::MoveTipRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::moveto::MoveTipRequest> should match 
// service_traits::DataType< ::moveto::MoveTip > 
template<>
struct DataType< ::moveto::MoveTipRequest>
{
  static const char* value()
  {
    return DataType< ::moveto::MoveTip >::value();
  }
  static const char* value(const ::moveto::MoveTipRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::moveto::MoveTipResponse> should match 
// service_traits::MD5Sum< ::moveto::MoveTip > 
template<>
struct MD5Sum< ::moveto::MoveTipResponse>
{
  static const char* value()
  {
    return MD5Sum< ::moveto::MoveTip >::value();
  }
  static const char* value(const ::moveto::MoveTipResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::moveto::MoveTipResponse> should match 
// service_traits::DataType< ::moveto::MoveTip > 
template<>
struct DataType< ::moveto::MoveTipResponse>
{
  static const char* value()
  {
    return DataType< ::moveto::MoveTip >::value();
  }
  static const char* value(const ::moveto::MoveTipResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MOVETO_MESSAGE_MOVETIP_H
