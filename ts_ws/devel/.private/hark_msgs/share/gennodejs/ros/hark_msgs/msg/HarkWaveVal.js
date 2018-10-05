// Auto-generated. Do not edit!

// (in-package hark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HarkWaveVal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wavedata = null;
    }
    else {
      if (initObj.hasOwnProperty('wavedata')) {
        this.wavedata = initObj.wavedata
      }
      else {
        this.wavedata = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HarkWaveVal
    // Serialize message field [wavedata]
    bufferOffset = _arraySerializer.float32(obj.wavedata, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HarkWaveVal
    let len;
    let data = new HarkWaveVal(null);
    // Deserialize message field [wavedata]
    data.wavedata = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.wavedata.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hark_msgs/HarkWaveVal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d4ffa9fffe078365bb941098c16cdfd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] wavedata
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HarkWaveVal(null);
    if (msg.wavedata !== undefined) {
      resolved.wavedata = msg.wavedata;
    }
    else {
      resolved.wavedata = []
    }

    return resolved;
    }
};

module.exports = HarkWaveVal;
