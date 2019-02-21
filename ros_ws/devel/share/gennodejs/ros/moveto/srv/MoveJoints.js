// Auto-generated. Do not edit!

// (in-package moveto.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Joints = require('../msg/Joints.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MoveJointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints = null;
    }
    else {
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = new Joints();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveJointsRequest
    // Serialize message field [joints]
    bufferOffset = Joints.serialize(obj.joints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveJointsRequest
    let len;
    let data = new MoveJointsRequest(null);
    // Deserialize message field [joints]
    data.joints = Joints.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveto/MoveJointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '771b6b02d89cdab7e26a45b890c5b7bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    Joints  joints
    
    ================================================================================
    MSG: moveto/Joints
    # Message of joint values
    float64[5] joint
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveJointsRequest(null);
    if (msg.joints !== undefined) {
      resolved.joints = Joints.Resolve(msg.joints)
    }
    else {
      resolved.joints = new Joints()
    }

    return resolved;
    }
};

class MoveJointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.movetime = null;
    }
    else {
      if (initObj.hasOwnProperty('movetime')) {
        this.movetime = initObj.movetime
      }
      else {
        this.movetime = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveJointsResponse
    // Serialize message field [movetime]
    bufferOffset = _serializer.float64(obj.movetime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveJointsResponse
    let len;
    let data = new MoveJointsResponse(null);
    // Deserialize message field [movetime]
    data.movetime = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveto/MoveJointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d0a2b9ab4bb8369a38e876cace8b333';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 movetime
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveJointsResponse(null);
    if (msg.movetime !== undefined) {
      resolved.movetime = msg.movetime;
    }
    else {
      resolved.movetime = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: MoveJointsRequest,
  Response: MoveJointsResponse,
  md5sum() { return '3df56d60d4f290ecf5ea26686d6c3967'; },
  datatype() { return 'moveto/MoveJoints'; }
};
