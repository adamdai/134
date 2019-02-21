// Auto-generated. Do not edit!

// (in-package moveto.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Tip = require('../msg/Tip.js');

//-----------------------------------------------------------

let Joints = require('../msg/Joints.js');

//-----------------------------------------------------------

class IKinRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tip = null;
    }
    else {
      if (initObj.hasOwnProperty('tip')) {
        this.tip = initObj.tip
      }
      else {
        this.tip = new Tip();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IKinRequest
    // Serialize message field [tip]
    bufferOffset = Tip.serialize(obj.tip, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IKinRequest
    let len;
    let data = new IKinRequest(null);
    // Deserialize message field [tip]
    data.tip = Tip.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveto/IKinRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8cbaf4d4c4662d317de5c178f210e33f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    Tip     tip
    
    ================================================================================
    MSG: moveto/Tip
    # Message of tip values
    float64 x
    float64 y
    float64 z
    float64 pitch
    float64 roll
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IKinRequest(null);
    if (msg.tip !== undefined) {
      resolved.tip = Tip.Resolve(msg.tip)
    }
    else {
      resolved.tip = new Tip()
    }

    return resolved;
    }
};

class IKinResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.singular = null;
      this.joints = null;
    }
    else {
      if (initObj.hasOwnProperty('singular')) {
        this.singular = initObj.singular
      }
      else {
        this.singular = false;
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = new Joints();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IKinResponse
    // Serialize message field [singular]
    bufferOffset = _serializer.bool(obj.singular, buffer, bufferOffset);
    // Serialize message field [joints]
    bufferOffset = Joints.serialize(obj.joints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IKinResponse
    let len;
    let data = new IKinResponse(null);
    // Deserialize message field [singular]
    data.singular = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [joints]
    data.joints = Joints.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveto/IKinResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b88afb7b371e9f0c4b005efd5498579';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    bool    singular
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
    const resolved = new IKinResponse(null);
    if (msg.singular !== undefined) {
      resolved.singular = msg.singular;
    }
    else {
      resolved.singular = false
    }

    if (msg.joints !== undefined) {
      resolved.joints = Joints.Resolve(msg.joints)
    }
    else {
      resolved.joints = new Joints()
    }

    return resolved;
    }
};

module.exports = {
  Request: IKinRequest,
  Response: IKinResponse,
  md5sum() { return '1e8f025e4a7f0e73d00d1166f7ab7aff'; },
  datatype() { return 'moveto/IKin'; }
};
