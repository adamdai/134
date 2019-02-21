// Auto-generated. Do not edit!

// (in-package moveto.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Joints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint = null;
    }
    else {
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = new Array(5).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Joints
    // Check that the constant length array field [joint] has the right length
    if (obj.joint.length !== 5) {
      throw new Error('Unable to serialize array field joint - length must be 5')
    }
    // Serialize message field [joint]
    bufferOffset = _arraySerializer.float64(obj.joint, buffer, bufferOffset, 5);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Joints
    let len;
    let data = new Joints(null);
    // Deserialize message field [joint]
    data.joint = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'moveto/Joints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9cf03bac18e6f9d1321d10ce4de88b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message of joint values
    float64[5] joint
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Joints(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = new Array(5).fill(0)
    }

    return resolved;
    }
};

module.exports = Joints;
