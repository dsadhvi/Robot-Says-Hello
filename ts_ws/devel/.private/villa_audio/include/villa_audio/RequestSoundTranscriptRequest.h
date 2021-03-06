// Generated by gencpp from file villa_audio/RequestSoundTranscriptRequest.msg
// DO NOT EDIT!


#ifndef VILLA_AUDIO_MESSAGE_REQUESTSOUNDTRANSCRIPTREQUEST_H
#define VILLA_AUDIO_MESSAGE_REQUESTSOUNDTRANSCRIPTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace villa_audio
{
template <class ContainerAllocator>
struct RequestSoundTranscriptRequest_
{
  typedef RequestSoundTranscriptRequest_<ContainerAllocator> Type;

  RequestSoundTranscriptRequest_()
    {
    }
  RequestSoundTranscriptRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RequestSoundTranscriptRequest_

typedef ::villa_audio::RequestSoundTranscriptRequest_<std::allocator<void> > RequestSoundTranscriptRequest;

typedef boost::shared_ptr< ::villa_audio::RequestSoundTranscriptRequest > RequestSoundTranscriptRequestPtr;
typedef boost::shared_ptr< ::villa_audio::RequestSoundTranscriptRequest const> RequestSoundTranscriptRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace villa_audio

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "villa_audio/RequestSoundTranscriptRequest";
  }

  static const char* value(const ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RequestSoundTranscriptRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::villa_audio::RequestSoundTranscriptRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // VILLA_AUDIO_MESSAGE_REQUESTSOUNDTRANSCRIPTREQUEST_H
