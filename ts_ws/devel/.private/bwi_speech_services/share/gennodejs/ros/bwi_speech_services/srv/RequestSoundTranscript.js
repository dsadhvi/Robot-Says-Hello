// Auto-generated. Do not edit!

// (in-package bwi_speech_services.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RequestSoundTranscriptRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestSoundTranscriptRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestSoundTranscriptRequest
    let len;
    let data = new RequestSoundTranscriptRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_speech_services/RequestSoundTranscriptRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestSoundTranscriptRequest(null);
    return resolved;
    }
};

class RequestSoundTranscriptResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isGood = null;
      this.utterance = null;
    }
    else {
      if (initObj.hasOwnProperty('isGood')) {
        this.isGood = initObj.isGood
      }
      else {
        this.isGood = false;
      }
      if (initObj.hasOwnProperty('utterance')) {
        this.utterance = initObj.utterance
      }
      else {
        this.utterance = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestSoundTranscriptResponse
    // Serialize message field [isGood]
    bufferOffset = _serializer.bool(obj.isGood, buffer, bufferOffset);
    // Serialize message field [utterance]
    bufferOffset = _serializer.string(obj.utterance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestSoundTranscriptResponse
    let len;
    let data = new RequestSoundTranscriptResponse(null);
    // Deserialize message field [isGood]
    data.isGood = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [utterance]
    data.utterance = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.utterance.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_speech_services/RequestSoundTranscriptResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02c8de1031c790d65706e50834055714';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isGood
    string utterance
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestSoundTranscriptResponse(null);
    if (msg.isGood !== undefined) {
      resolved.isGood = msg.isGood;
    }
    else {
      resolved.isGood = false
    }

    if (msg.utterance !== undefined) {
      resolved.utterance = msg.utterance;
    }
    else {
      resolved.utterance = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: RequestSoundTranscriptRequest,
  Response: RequestSoundTranscriptResponse,
  md5sum() { return '02c8de1031c790d65706e50834055714'; },
  datatype() { return 'bwi_speech_services/RequestSoundTranscript'; }
};
