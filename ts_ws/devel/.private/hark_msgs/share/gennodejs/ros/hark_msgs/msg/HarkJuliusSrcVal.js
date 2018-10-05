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

class HarkJuliusSrcVal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.word = null;
      this.classid = null;
      this.phone = null;
      this.cm = null;
    }
    else {
      if (initObj.hasOwnProperty('word')) {
        this.word = initObj.word
      }
      else {
        this.word = '';
      }
      if (initObj.hasOwnProperty('classid')) {
        this.classid = initObj.classid
      }
      else {
        this.classid = 0;
      }
      if (initObj.hasOwnProperty('phone')) {
        this.phone = initObj.phone
      }
      else {
        this.phone = '';
      }
      if (initObj.hasOwnProperty('cm')) {
        this.cm = initObj.cm
      }
      else {
        this.cm = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HarkJuliusSrcVal
    // Serialize message field [word]
    bufferOffset = _serializer.string(obj.word, buffer, bufferOffset);
    // Serialize message field [classid]
    bufferOffset = _serializer.int32(obj.classid, buffer, bufferOffset);
    // Serialize message field [phone]
    bufferOffset = _serializer.string(obj.phone, buffer, bufferOffset);
    // Serialize message field [cm]
    bufferOffset = _serializer.float32(obj.cm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HarkJuliusSrcVal
    let len;
    let data = new HarkJuliusSrcVal(null);
    // Deserialize message field [word]
    data.word = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [classid]
    data.classid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [phone]
    data.phone = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cm]
    data.cm = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.word.length;
    length += object.phone.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hark_msgs/HarkJuliusSrcVal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd68fa7d47b805f4384367952f7f8407e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new HarkJuliusSrcVal(null);
    if (msg.word !== undefined) {
      resolved.word = msg.word;
    }
    else {
      resolved.word = ''
    }

    if (msg.classid !== undefined) {
      resolved.classid = msg.classid;
    }
    else {
      resolved.classid = 0
    }

    if (msg.phone !== undefined) {
      resolved.phone = msg.phone;
    }
    else {
      resolved.phone = ''
    }

    if (msg.cm !== undefined) {
      resolved.cm = msg.cm;
    }
    else {
      resolved.cm = 0.0
    }

    return resolved;
    }
};

module.exports = HarkJuliusSrcVal;
