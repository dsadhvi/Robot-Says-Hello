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

class HarkFeatureVal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.length = null;
      this.data_bytes = null;
      this.featuredata = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
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
      if (initObj.hasOwnProperty('featuredata')) {
        this.featuredata = initObj.featuredata
      }
      else {
        this.featuredata = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HarkFeatureVal
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.int32(obj.length, buffer, bufferOffset);
    // Serialize message field [data_bytes]
    bufferOffset = _serializer.int32(obj.data_bytes, buffer, bufferOffset);
    // Serialize message field [featuredata]
    bufferOffset = _arraySerializer.float32(obj.featuredata, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HarkFeatureVal
    let len;
    let data = new HarkFeatureVal(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data_bytes]
    data.data_bytes = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [featuredata]
    data.featuredata = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.featuredata.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hark_msgs/HarkFeatureVal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a91db0f9f140ce90dece0bff7d606075';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    int32 length
    int32 data_bytes
    float32[] featuredata
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HarkFeatureVal(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
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

    if (msg.featuredata !== undefined) {
      resolved.featuredata = msg.featuredata;
    }
    else {
      resolved.featuredata = []
    }

    return resolved;
    }
};

module.exports = HarkFeatureVal;
