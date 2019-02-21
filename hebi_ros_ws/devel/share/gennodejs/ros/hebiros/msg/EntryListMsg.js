// Auto-generated. Do not edit!

// (in-package hebiros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EntryMsg = require('./EntryMsg.js');

//-----------------------------------------------------------

class EntryListMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.size = null;
      this.entries = null;
    }
    else {
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('entries')) {
        this.entries = initObj.entries
      }
      else {
        this.entries = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EntryListMsg
    // Serialize message field [size]
    bufferOffset = _serializer.int32(obj.size, buffer, bufferOffset);
    // Serialize message field [entries]
    // Serialize the length for message field [entries]
    bufferOffset = _serializer.uint32(obj.entries.length, buffer, bufferOffset);
    obj.entries.forEach((val) => {
      bufferOffset = EntryMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EntryListMsg
    let len;
    let data = new EntryListMsg(null);
    // Deserialize message field [size]
    data.size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [entries]
    // Deserialize array length for message field [entries]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.entries = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.entries[i] = EntryMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.entries.forEach((val) => {
      length += EntryMsg.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hebiros/EntryListMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce4dffca09542f7d73eaedf72b9274c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 size
    hebiros/EntryMsg[] entries
    
    ================================================================================
    MSG: hebiros/EntryMsg
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
    const resolved = new EntryListMsg(null);
    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.entries !== undefined) {
      resolved.entries = new Array(msg.entries.length);
      for (let i = 0; i < resolved.entries.length; ++i) {
        resolved.entries[i] = EntryMsg.Resolve(msg.entries[i]);
      }
    }
    else {
      resolved.entries = []
    }

    return resolved;
    }
};

module.exports = EntryListMsg;
