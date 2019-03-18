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


//-----------------------------------------------------------

class MoveTipRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tip = null;
      this.movetime = null;
    }
    else {
      if (initObj.hasOwnProperty('tip')) {
        this.tip = initObj.tip
      }
      else {
        this.tip = new Tip();
      }
      if (initObj.hasOwnProperty('movetime')) {
        this.movetime = initObj.movetime
      }
      else {
        this.movetime = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveTipRequest
    // Serialize message field [tip]
    bufferOffset = Tip.serialize(obj.tip, buffer, bufferOffset);
    // Serialize message field [movetime]
    bufferOffset = _serializer.float64(obj.movetime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveTipRequest
    let len;
    let data = new MoveTipRequest(null);
    // Deserialize message field [tip]
    data.tip = Tip.deserialize(buffer, bufferOffset);
    // Deserialize message field [movetime]
    data.movetime = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveto/MoveTipRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a08b6b99f95146724f64dfacea44be6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    Tip     tip
    float64 movetime
    
    ================================================================================
    MSG: moveto/Tip
    # Message of tip values
    float64 x
    float64 y
    float64 z
    #float64 pitch
    #float64 roll
    bool grip
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveTipRequest(null);
    if (msg.tip !== undefined) {
      resolved.tip = Tip.Resolve(msg.tip)
    }
    else {
      resolved.tip = new Tip()
    }

    if (msg.movetime !== undefined) {
      resolved.movetime = msg.movetime;
    }
    else {
      resolved.movetime = 0.0
    }

    return resolved;
    }
};

class MoveTipResponse {
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
    // Serializes a message object of type MoveTipResponse
    // Serialize message field [movetime]
    bufferOffset = _serializer.float64(obj.movetime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveTipResponse
    let len;
    let data = new MoveTipResponse(null);
    // Deserialize message field [movetime]
    data.movetime = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveto/MoveTipResponse';
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
    const resolved = new MoveTipResponse(null);
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
  Request: MoveTipRequest,
  Response: MoveTipResponse,
  md5sum() { return 'd8b70359542abe8c9014a48d2925814e'; },
  datatype() { return 'moveto/MoveTip'; }
};
