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

class SetCommandLifetimeSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command_lifetime = null;
    }
    else {
      if (initObj.hasOwnProperty('command_lifetime')) {
        this.command_lifetime = initObj.command_lifetime
      }
      else {
        this.command_lifetime = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCommandLifetimeSrvRequest
    // Serialize message field [command_lifetime]
    bufferOffset = _serializer.int32(obj.command_lifetime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCommandLifetimeSrvRequest
    let len;
    let data = new SetCommandLifetimeSrvRequest(null);
    // Deserialize message field [command_lifetime]
    data.command_lifetime = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hebiros/SetCommandLifetimeSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e6d0becb75f24a1f3c269f4469e5d38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 command_lifetime
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetCommandLifetimeSrvRequest(null);
    if (msg.command_lifetime !== undefined) {
      resolved.command_lifetime = msg.command_lifetime;
    }
    else {
      resolved.command_lifetime = 0
    }

    return resolved;
    }
};

class SetCommandLifetimeSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCommandLifetimeSrvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCommandLifetimeSrvResponse
    let len;
    let data = new SetCommandLifetimeSrvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hebiros/SetCommandLifetimeSrvResponse';
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
    const resolved = new SetCommandLifetimeSrvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetCommandLifetimeSrvRequest,
  Response: SetCommandLifetimeSrvResponse,
  md5sum() { return '9e6d0becb75f24a1f3c269f4469e5d38'; },
  datatype() { return 'hebiros/SetCommandLifetimeSrv'; }
};
