// Auto-generated. Do not edit!

// (in-package hark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HarkWaveVal = require('./HarkWaveVal.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HarkWave {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.count = null;
      this.nch = null;
      this.length = null;
      this.data_bytes = null;
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
      if (initObj.hasOwnProperty('nch')) {
        this.nch = initObj.nch
      }
      else {
        this.nch = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
      if (initObj.hasOwnProperty('data_bytes')) {
        this.data_bytes = initObj.data_bytes
      }
      else {
        this.data_bytes = 0;
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
    // Serializes a message object of type HarkWave
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [nch]
    bufferOffset = _serializer.int32(obj.nch, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.int32(obj.length, buffer, bufferOffset);
    // Serialize message field [data_bytes]
    bufferOffset = _serializer.int32(obj.data_bytes, buffer, bufferOffset);
    // Serialize message field [src]
    // Serialize the length for message field [src]
    bufferOffset = _serializer.uint32(obj.src.length, buffer, bufferOffset);
    obj.src.forEach((val) => {
      bufferOffset = HarkWaveVal.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HarkWave
    let len;
    let data = new HarkWave(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [nch]
    data.nch = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data_bytes]
    data.data_bytes = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [src]
    // Deserialize array length for message field [src]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.src = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.src[i] = HarkWaveVal.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.src.forEach((val) => {
      length += HarkWaveVal.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hark_msgs/HarkWave';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24c5654436a3ff03c563377fdbcc56a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 count
    int32 nch
    int32 length
    int32 data_bytes
    HarkWaveVal[] src # Audio stream and source info for each source
    
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
    MSG: hark_msgs/HarkWaveVal
    float32[] wavedata
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HarkWave(null);
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

    if (msg.nch !== undefined) {
      resolved.nch = msg.nch;
    }
    else {
      resolved.nch = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    if (msg.data_bytes !== undefined) {
      resolved.data_bytes = msg.data_bytes;
    }
    else {
      resolved.data_bytes = 0
    }

    if (msg.src !== undefined) {
      resolved.src = new Array(msg.src.length);
      for (let i = 0; i < resolved.src.length; ++i) {
        resolved.src[i] = HarkWaveVal.Resolve(msg.src[i]);
      }
    }
    else {
      resolved.src = []
    }

    return resolved;
    }
};

module.exports = HarkWave;
