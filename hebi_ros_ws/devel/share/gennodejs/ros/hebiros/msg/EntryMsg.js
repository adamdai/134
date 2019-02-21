// Auto-generated. Do not edit!

// (in-package hebiros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class EntryMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.family = null;
      this.mac_address = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('family')) {
        this.family = initObj.family
      }
      else {
        this.family = '';
      }
      if (initObj.hasOwnProperty('mac_address')) {
        this.mac_address = initObj.mac_address
      }
      else {
        this.mac_address = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EntryMsg
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [family]
    bufferOffset = _serializer.string(obj.family, buffer, bufferOffset);
    // Serialize message field [mac_address]
    bufferOffset = _serializer.int64(obj.mac_address, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EntryMsg
    let len;
    let data = new EntryMsg(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [family]
    data.family = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mac_address]
    data.mac_address = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.family.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hebiros/EntryMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ef1a1bc0bda92a32c695657f945626a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string family
    int64 mac_address
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EntryMsg(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.family !== undefined) {
      resolved.family = msg.family;
    }
    else {
      resolved.family = ''
    }

    if (msg.mac_address !== undefined) {
      resolved.mac_address = msg.mac_address;
    }
    else {
      resolved.mac_address = 0
    }

    return resolved;
    }
};

module.exports = EntryMsg;
