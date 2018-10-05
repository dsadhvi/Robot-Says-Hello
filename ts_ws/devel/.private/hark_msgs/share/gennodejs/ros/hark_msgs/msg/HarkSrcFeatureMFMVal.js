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

class HarkSrcFeatureMFMVal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.power = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.azimuth = null;
      this.elevation = null;
      this.length_feature = null;
      this.data_bytes_feature = null;
      this.featuredata_feature = null;
      this.length_mfm = null;
      this.data_bytes_mfm = null;
      this.featuredata_mfm = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('power')) {
        this.power = initObj.power
      }
      else {
        this.power = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
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
      if (initObj.hasOwnProperty('length_feature')) {
        this.length_feature = initObj.length_feature
      }
      else {
        this.length_feature = 0;
      }
      if (initObj.hasOwnProperty('data_bytes_feature')) {
        this.data_bytes_feature = initObj.data_bytes_feature
      }
      else {
        this.data_bytes_feature = 0;
      }
      if (initObj.hasOwnProperty('featuredata_feature')) {
        this.featuredata_feature = initObj.featuredata_feature
      }
      else {
        this.featuredata_feature = [];
      }
      if (initObj.hasOwnProperty('length_mfm')) {
        this.length_mfm = initObj.length_mfm
      }
      else {
        this.length_mfm = 0;
      }
      if (initObj.hasOwnProperty('data_bytes_mfm')) {
        this.data_bytes_mfm = initObj.data_bytes_mfm
      }
      else {
        this.data_bytes_mfm = 0;
      }
      if (initObj.hasOwnProperty('featuredata_mfm')) {
        this.featuredata_mfm = initObj.featuredata_mfm
      }
      else {
        this.featuredata_mfm = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HarkSrcFeatureMFMVal
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [power]
    bufferOffset = _serializer.float32(obj.power, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.float32(obj.azimuth, buffer, bufferOffset);
    // Serialize message field [elevation]
    bufferOffset = _serializer.float32(obj.elevation, buffer, bufferOffset);
    // Serialize message field [length_feature]
    bufferOffset = _serializer.int32(obj.length_feature, buffer, bufferOffset);
    // Serialize message field [data_bytes_feature]
    bufferOffset = _serializer.int32(obj.data_bytes_feature, buffer, bufferOffset);
    // Serialize message field [featuredata_feature]
    bufferOffset = _arraySerializer.float32(obj.featuredata_feature, buffer, bufferOffset, null);
    // Serialize message field [length_mfm]
    bufferOffset = _serializer.int32(obj.length_mfm, buffer, bufferOffset);
    // Serialize message field [data_bytes_mfm]
    bufferOffset = _serializer.int32(obj.data_bytes_mfm, buffer, bufferOffset);
    // Serialize message field [featuredata_mfm]
    bufferOffset = _arraySerializer.float32(obj.featuredata_mfm, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HarkSrcFeatureMFMVal
    let len;
    let data = new HarkSrcFeatureMFMVal(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [power]
    data.power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [elevation]
    data.elevation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length_feature]
    data.length_feature = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data_bytes_feature]
    data.data_bytes_feature = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [featuredata_feature]
    data.featuredata_feature = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [length_mfm]
    data.length_mfm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data_bytes_mfm]
    data.data_bytes_mfm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [featuredata_mfm]
    data.featuredata_mfm = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.featuredata_feature.length;
    length += 4 * object.featuredata_mfm.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hark_msgs/HarkSrcFeatureMFMVal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '127ac60e264e1ad6ade4a918cf7daa0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    float32 power
    float32 x
    float32 y
    float32 z
    float32 azimuth
    float32 elevation
    int32 length_feature
    int32 data_bytes_feature
    float32[] featuredata_feature
    int32 length_mfm
    int32 data_bytes_mfm
    float32[] featuredata_mfm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HarkSrcFeatureMFMVal(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.power !== undefined) {
      resolved.power = msg.power;
    }
    else {
      resolved.power = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
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

    if (msg.length_feature !== undefined) {
      resolved.length_feature = msg.length_feature;
    }
    else {
      resolved.length_feature = 0
    }

    if (msg.data_bytes_feature !== undefined) {
      resolved.data_bytes_feature = msg.data_bytes_feature;
    }
    else {
      resolved.data_bytes_feature = 0
    }

    if (msg.featuredata_feature !== undefined) {
      resolved.featuredata_feature = msg.featuredata_feature;
    }
    else {
      resolved.featuredata_feature = []
    }

    if (msg.length_mfm !== undefined) {
      resolved.length_mfm = msg.length_mfm;
    }
    else {
      resolved.length_mfm = 0
    }

    if (msg.data_bytes_mfm !== undefined) {
      resolved.data_bytes_mfm = msg.data_bytes_mfm;
    }
    else {
      resolved.data_bytes_mfm = 0
    }

    if (msg.featuredata_mfm !== undefined) {
      resolved.featuredata_mfm = msg.featuredata_mfm;
    }
    else {
      resolved.featuredata_mfm = []
    }

    return resolved;
    }
};

module.exports = HarkSrcFeatureMFMVal;
