// Generated by gencpp from file bwi_speech_services/RequestSoundTranscriptResponse.msg
// DO NOT EDIT!


#ifndef BWI_SPEECH_SERVICES_MESSAGE_REQUESTSOUNDTRANSCRIPTRESPONSE_H
#define BWI_SPEECH_SERVICES_MESSAGE_REQUESTSOUNDTRANSCRIPTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace bwi_speech_services
{
template <class ContainerAllocator>
struct RequestSoundTranscriptResponse_
{
  typedef RequestSoundTranscriptResponse_<ContainerAllocator> Type;

  RequestSoundTranscriptResponse_()
    : isGood(false)
    , utterance()  {
    }
  RequestSoundTranscriptResponse_(const ContainerAllocator& _alloc)
    : isGood(false)
    , utterance(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _isGood_type;
  _isGood_type isGood;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _utterance_type;
  _utterance_type utterance;





  typedef boost::shared_ptr< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RequestSoundTranscriptResponse_

typedef ::bwi_speech_services::RequestSoundTranscriptResponse_<std::allocator<void> > RequestSoundTranscriptResponse;

typedef boost::shared_ptr< ::bwi_speech_services::RequestSoundTranscriptResponse > RequestSoundTranscriptResponsePtr;
typedef boost::shared_ptr< ::bwi_speech_services::RequestSoundTranscriptResponse const> RequestSoundTranscriptResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace bwi_speech_services

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "02c8de1031c790d65706e50834055714";
  }

  static const char* value(const ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x02c8de1031c790d6ULL;
  static const uint64_t static_value2 = 0x5706e50834055714ULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_speech_services/RequestSoundTranscriptResponse";
  }

  static const char* value(const ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool isGood\n\
string utterance\n\
\n\
";
  }

  static const char* value(const ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.isGood);
      stream.next(m.utterance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RequestSoundTranscriptResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bwi_speech_services::RequestSoundTranscriptResponse_<ContainerAllocator>& v)
  {
    s << indent << "isGood: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isGood);
    s << indent << "utterance: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.utterance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BWI_SPEECH_SERVICES_MESSAGE_REQUESTSOUNDTRANSCRIPTRESPONSE_H