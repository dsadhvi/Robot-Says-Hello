// Generated by gencpp from file hark_msgs/HarkJuliusSrcVal.msg
// DO NOT EDIT!


#ifndef HARK_MSGS_MESSAGE_HARKJULIUSSRCVAL_H
#define HARK_MSGS_MESSAGE_HARKJULIUSSRCVAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hark_msgs
{
template <class ContainerAllocator>
struct HarkJuliusSrcVal_
{
  typedef HarkJuliusSrcVal_<ContainerAllocator> Type;

  HarkJuliusSrcVal_()
    : word()
    , classid(0)
    , phone()
    , cm(0.0)  {
    }
  HarkJuliusSrcVal_(const ContainerAllocator& _alloc)
    : word(_alloc)
    , classid(0)
    , phone(_alloc)
    , cm(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _word_type;
  _word_type word;

   typedef int32_t _classid_type;
  _classid_type classid;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _phone_type;
  _phone_type phone;

   typedef float _cm_type;
  _cm_type cm;





  typedef boost::shared_ptr< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> const> ConstPtr;

}; // struct HarkJuliusSrcVal_

typedef ::hark_msgs::HarkJuliusSrcVal_<std::allocator<void> > HarkJuliusSrcVal;

typedef boost::shared_ptr< ::hark_msgs::HarkJuliusSrcVal > HarkJuliusSrcValPtr;
typedef boost::shared_ptr< ::hark_msgs::HarkJuliusSrcVal const> HarkJuliusSrcValConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hark_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'hark_msgs': ['/home/tracy/catkin_ws/src/villa_sound/hark_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d68fa7d47b805f4384367952f7f8407e";
  }

  static const char* value(const ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd68fa7d47b805f43ULL;
  static const uint64_t static_value2 = 0x84367952f7f8407eULL;
};

template<class ContainerAllocator>
struct DataType< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hark_msgs/HarkJuliusSrcVal";
  }

  static const char* value(const ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string word\n\
int32 classid\n\
string phone\n\
float32 cm\n\
";
  }

  static const char* value(const ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.word);
      stream.next(m.classid);
      stream.next(m.phone);
      stream.next(m.cm);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HarkJuliusSrcVal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hark_msgs::HarkJuliusSrcVal_<ContainerAllocator>& v)
  {
    s << indent << "word: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.word);
    s << indent << "classid: ";
    Printer<int32_t>::stream(s, indent + "  ", v.classid);
    s << indent << "phone: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.phone);
    s << indent << "cm: ";
    Printer<float>::stream(s, indent + "  ", v.cm);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HARK_MSGS_MESSAGE_HARKJULIUSSRCVAL_H
