// Auto-generated. Do not edit!

// (in-package hark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HarkSrcFFTVal = require('./HarkSrcFFTVal.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HarkSrcFFT {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.count = null;
      this.exist_src_num = null;
      this.src = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('exist_src_num')) {
        this.exist_src_num = initObj.exist_src_num
      }
      else {
        this.exist_src_num = 0;
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
    // Serializes a message object of type HarkSrcFFT
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [exist_src_num]
    bufferOffset = _serializer.int32(obj.exist_src_num, buffer, bufferOffset);
    // Serialize message field [src]
    // Serialize the length for message field [src]
    bufferOffset = _serializer.uint32(obj.src.length, buffer, bufferOffset);
    obj.src.forEach((val) => {
      bufferOffset = HarkSrcFFTVal.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HarkSrcFFT
    let len;
    let data = new HarkSrcFFT(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [exist_src_num]
    data.exist_src_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [src]
    // Deserialize array length for message field [src]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.src = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.src[i] = HarkSrcFFTVal.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.src.forEach((val) => {
      length += HarkSrcFFTVal.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hark_msgs/HarkSrcFFT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b5eabf2db115daafd1929becc2a3f68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 count
    int32 exist_src_num
    HarkSrcFFTVal[] src  # FFT signal and source info of each source
    
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
    MSG: hark_msgs/HarkSrcFFTVal
    int32 id
    float32 power
    float32 x
    float32 y
    float32 z
    float32 azimuth
    float32 elevation
    int32 length
    float32[] fftdata_real
    float32[] fftdata_imag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HarkSrcFFT(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.exist_src_num !== undefined) {
      resolved.exist_src_num = msg.exist_src_num;
    }
    else {
      resolved.exist_src_num = 0
    }

    if (msg.src !== undefined) {
      resolved.src = new Array(msg.src.length);
      for (let i = 0; i < resolved.src.length; ++i) {
        resolved.src[i] = HarkSrcFFTVal.Resolve(msg.src[i]);
      }
    }
    else {
      resolved.src = []
    }

    return resolved;
    }
};

module.exports = HarkSrcFFT;
