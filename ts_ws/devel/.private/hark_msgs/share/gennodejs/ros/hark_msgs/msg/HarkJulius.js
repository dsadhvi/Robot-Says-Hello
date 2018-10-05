// Auto-generated. Do not edit!

// (in-package hark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HarkJuliusSrc = require('./HarkJuliusSrc.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HarkJulius {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.src = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('src')) {
        this.src = initObj.src
      }
      else {
        this.src = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HarkJulius
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [src]
    // Serialize the length for message field [src]
    bufferOffset = _serializer.uint32(obj.src.length, buffer, bufferOffset);
    obj.src.forEach((val) => {
      bufferOffset = HarkJuliusSrc.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HarkJulius
    let len;
    let data = new HarkJulius(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [src]
    // Deserialize array length for message field [src]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.src = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.src[i] = HarkJuliusSrc.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.src.forEach((val) => {
      length += HarkJuliusSrc.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hark_msgs/HarkJulius';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18ac98bafa65529bae1ef5042e324284';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    HarkJuliusSrc[] src # Detail of Julius recognition result
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: hark_msgs/HarkJuliusSrc
    int32 id
    float32 azimuth
    float32 elevation
    int32 sec
    int32 usec
    int32 frames
    int32 msec
    int8 status            # status of recognition process defined below
    HarkJuliusSrcVal[] src # WHYPO results for each source
    
    int8 TERMINATED=0
    int8 STARTRECOG=1
    int8 INPUTPARAM=2
    int8 SOURCEINFO=3
    int8 RECOGOUT=4
    int8 RECOGFAIL=5
    
    ================================================================================
    MSG: hark_msgs/HarkJuliusSrcVal
    string word
    int32 classid
    string phone
    float32 cm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HarkJulius(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.src !== undefined) {
      resolved.src = new Array(msg.src.length);
      for (let i = 0; i < resolved.src.length; ++i) {
        resolved.src[i] = HarkJuliusSrc.Resolve(msg.src[i]);
      }
    }
    else {
      resolved.src = []
    }

    return resolved;
    }
};

module.exports = HarkJulius;
