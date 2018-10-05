// Auto-generated. Do not edit!

// (in-package hark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HarkJuliusSrcVal = require('./HarkJuliusSrcVal.js');

//-----------------------------------------------------------

class HarkJuliusSrc {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.azimuth = null;
      this.elevation = null;
      this.sec = null;
      this.usec = null;
      this.frames = null;
      this.msec = null;
      this.status = null;
      this.src = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = 0.0;
      }
      if (initObj.hasOwnProperty('elevation')) {
        this.elevation = initObj.elevation
      }
      else {
        this.elevation = 0.0;
      }
      if (initObj.hasOwnProperty('sec')) {
        this.sec = initObj.sec
      }
      else {
        this.sec = 0;
      }
      if (initObj.hasOwnProperty('usec')) {
        this.usec = initObj.usec
      }
      else {
        this.usec = 0;
      }
      if (initObj.hasOwnProperty('frames')) {
        this.frames = initObj.frames
      }
      else {
        this.frames = 0;
      }
      if (initObj.hasOwnProperty('msec')) {
        this.msec = initObj.msec
      }
      else {
        this.msec = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
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
    // Serializes a message object of type HarkJuliusSrc
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.float32(obj.azimuth, buffer, bufferOffset);
    // Serialize message field [elevation]
    bufferOffset = _serializer.float32(obj.elevation, buffer, bufferOffset);
    // Serialize message field [sec]
    bufferOffset = _serializer.int32(obj.sec, buffer, bufferOffset);
    // Serialize message field [usec]
    bufferOffset = _serializer.int32(obj.usec, buffer, bufferOffset);
    // Serialize message field [frames]
    bufferOffset = _serializer.int32(obj.frames, buffer, bufferOffset);
    // Serialize message field [msec]
    bufferOffset = _serializer.int32(obj.msec, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    // Serialize message field [src]
    // Serialize the length for message field [src]
    bufferOffset = _serializer.uint32(obj.src.length, buffer, bufferOffset);
    obj.src.forEach((val) => {
      bufferOffset = HarkJuliusSrcVal.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HarkJuliusSrc
    let len;
    let data = new HarkJuliusSrc(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [elevation]
    data.elevation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sec]
    data.sec = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [usec]
    data.usec = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [frames]
    data.frames = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [msec]
    data.msec = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [src]
    // Deserialize array length for message field [src]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.src = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.src[i] = HarkJuliusSrcVal.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.src.forEach((val) => {
      length += HarkJuliusSrcVal.getMessageSize(val);
    });
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hark_msgs/HarkJuliusSrc';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1aff8127ead3951895e7fd2d0cb19ac9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new HarkJuliusSrc(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = 0.0
    }

    if (msg.elevation !== undefined) {
      resolved.elevation = msg.elevation;
    }
    else {
      resolved.elevation = 0.0
    }

    if (msg.sec !== undefined) {
      resolved.sec = msg.sec;
    }
    else {
      resolved.sec = 0
    }

    if (msg.usec !== undefined) {
      resolved.usec = msg.usec;
    }
    else {
      resolved.usec = 0
    }

    if (msg.frames !== undefined) {
      resolved.frames = msg.frames;
    }
    else {
      resolved.frames = 0
    }

    if (msg.msec !== undefined) {
      resolved.msec = msg.msec;
    }
    else {
      resolved.msec = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.src !== undefined) {
      resolved.src = new Array(msg.src.length);
      for (let i = 0; i < resolved.src.length; ++i) {
        resolved.src[i] = HarkJuliusSrcVal.Resolve(msg.src[i]);
      }
    }
    else {
      resolved.src = []
    }

    return resolved;
    }
};

// Constants for message
HarkJuliusSrc.Constants = {
  TERMINATED: 0,
  STARTRECOG: 1,
  INPUTPARAM: 2,
  SOURCEINFO: 3,
  RECOGOUT: 4,
  RECOGFAIL: 5,
}

module.exports = HarkJuliusSrc;
