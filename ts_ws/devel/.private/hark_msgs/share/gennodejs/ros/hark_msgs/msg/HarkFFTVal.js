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

class HarkFFTVal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fftdata_real = null;
      this.fftdata_imag = null;
    }
    else {
      if (initObj.hasOwnProperty('fftdata_real')) {
        this.fftdata_real = initObj.fftdata_real
      }
      else {
        this.fftdata_real = [];
      }
      if (initObj.hasOwnProperty('fftdata_imag')) {
        this.fftdata_imag = initObj.fftdata_imag
      }
      else {
        this.fftdata_imag = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HarkFFTVal
    // Serialize message field [fftdata_real]
    bufferOffset = _arraySerializer.float32(obj.fftdata_real, buffer, bufferOffset, null);
    // Serialize message field [fftdata_imag]
    bufferOffset = _arraySerializer.float32(obj.fftdata_imag, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HarkFFTVal
    let len;
    let data = new HarkFFTVal(null);
    // Deserialize message field [fftdata_real]
    data.fftdata_real = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [fftdata_imag]
    data.fftdata_imag = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.fftdata_real.length;
    length += 4 * object.fftdata_imag.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hark_msgs/HarkFFTVal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7b9ef54d8fd113072a96e094d31eaff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] fftdata_real
    float32[] fftdata_imag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HarkFFTVal(null);
    if (msg.fftdata_real !== undefined) {
      resolved.fftdata_real = msg.fftdata_real;
    }
    else {
      resolved.fftdata_real = []
    }

    if (msg.fftdata_imag !== undefined) {
      resolved.fftdata_imag = msg.fftdata_imag;
    }
    else {
      resolved.fftdata_imag = []
    }

    return resolved;
    }
};

module.exports = HarkFFTVal;
