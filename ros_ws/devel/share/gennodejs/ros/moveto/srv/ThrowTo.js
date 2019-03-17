// Auto-generated. Do not edit!

// (in-package moveto.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ThrowToRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.throw_b = null;
      this.max_v = null;
      this.shoulder_release = null;
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('throw_b')) {
        this.throw_b = initObj.throw_b
      }
      else {
        this.throw_b = false;
      }
      if (initObj.hasOwnProperty('max_v')) {
        this.max_v = initObj.max_v
      }
      else {
        this.max_v = 0.0;
      }
      if (initObj.hasOwnProperty('shoulder_release')) {
        this.shoulder_release = initObj.shoulder_release
      }
      else {
        this.shoulder_release = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThrowToRequest
    // Serialize message field [throw_b]
    bufferOffset = _serializer.bool(obj.throw_b, buffer, bufferOffset);
    // Serialize message field [max_v]
    bufferOffset = _serializer.float64(obj.max_v, buffer, bufferOffset);
    // Serialize message field [shoulder_release]
    bufferOffset = _serializer.float64(obj.shoulder_release, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float64(obj.angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThrowToRequest
    let len;
    let data = new ThrowToRequest(null);
    // Deserialize message field [throw_b]
    data.throw_b = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [max_v]
    data.max_v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [shoulder_release]
    data.shoulder_release = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveto/ThrowToRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '402b62759e0bcb3334bcc3da42a3ecd9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    bool     throw_b
    float64  max_v
    float64  shoulder_release
    float64  angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThrowToRequest(null);
    if (msg.throw_b !== undefined) {
      resolved.throw_b = msg.throw_b;
    }
    else {
      resolved.throw_b = false
    }

    if (msg.max_v !== undefined) {
      resolved.max_v = msg.max_v;
    }
    else {
      resolved.max_v = 0.0
    }

    if (msg.shoulder_release !== undefined) {
      resolved.shoulder_release = msg.shoulder_release;
    }
    else {
      resolved.shoulder_release = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    return resolved;
    }
};

class ThrowToResponse {
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
    // Serializes a message object of type ThrowToResponse
    // Serialize message field [movetime]
    bufferOffset = _serializer.float64(obj.movetime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThrowToResponse
    let len;
    let data = new ThrowToResponse(null);
    // Deserialize message field [movetime]
    data.movetime = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveto/ThrowToResponse';
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
    const resolved = new ThrowToResponse(null);
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
  Request: ThrowToRequest,
  Response: ThrowToResponse,
  md5sum() { return '7a5dee11bcdbd664d3ebfe6ff4c1db9f'; },
  datatype() { return 'moveto/ThrowTo'; }
};
