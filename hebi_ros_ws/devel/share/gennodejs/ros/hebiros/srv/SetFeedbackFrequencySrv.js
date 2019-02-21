// Auto-generated. Do not edit!

// (in-package hebiros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetFeedbackFrequencySrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback_frequency = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback_frequency')) {
        this.feedback_frequency = initObj.feedback_frequency
      }
      else {
        this.feedback_frequency = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetFeedbackFrequencySrvRequest
    // Serialize message field [feedback_frequency]
    bufferOffset = _serializer.int32(obj.feedback_frequency, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetFeedbackFrequencySrvRequest
    let len;
    let data = new SetFeedbackFrequencySrvRequest(null);
    // Deserialize message field [feedback_frequency]
    data.feedback_frequency = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hebiros/SetFeedbackFrequencySrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89e470a7bc482c7199fa75ef40009369';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 feedback_frequency
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetFeedbackFrequencySrvRequest(null);
    if (msg.feedback_frequency !== undefined) {
      resolved.feedback_frequency = msg.feedback_frequency;
    }
    else {
      resolved.feedback_frequency = 0
    }

    return resolved;
    }
};

class SetFeedbackFrequencySrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetFeedbackFrequencySrvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetFeedbackFrequencySrvResponse
    let len;
    let data = new SetFeedbackFrequencySrvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hebiros/SetFeedbackFrequencySrvResponse';
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
    const resolved = new SetFeedbackFrequencySrvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetFeedbackFrequencySrvRequest,
  Response: SetFeedbackFrequencySrvResponse,
  md5sum() { return '89e470a7bc482c7199fa75ef40009369'; },
  datatype() { return 'hebiros/SetFeedbackFrequencySrv'; }
};
