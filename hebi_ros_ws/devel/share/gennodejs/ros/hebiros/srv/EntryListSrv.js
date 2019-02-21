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

let EntryListMsg = require('../msg/EntryListMsg.js');

//-----------------------------------------------------------

class EntryListSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EntryListSrvRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EntryListSrvRequest
    let len;
    let data = new EntryListSrvRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hebiros/EntryListSrvRequest';
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
    const resolved = new EntryListSrvRequest(null);
    return resolved;
    }
};

class EntryListSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.entry_list = null;
    }
    else {
      if (initObj.hasOwnProperty('entry_list')) {
        this.entry_list = initObj.entry_list
      }
      else {
        this.entry_list = new EntryListMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EntryListSrvResponse
    // Serialize message field [entry_list]
    bufferOffset = EntryListMsg.serialize(obj.entry_list, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EntryListSrvResponse
    let len;
    let data = new EntryListSrvResponse(null);
    // Deserialize message field [entry_list]
    data.entry_list = EntryListMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += EntryListMsg.getMessageSize(object.entry_list);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hebiros/EntryListSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '019fcca877608da550bd2d6857203482';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    EntryListMsg entry_list
    
    
    ================================================================================
    MSG: hebiros/EntryListMsg
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
    const resolved = new EntryListSrvResponse(null);
    if (msg.entry_list !== undefined) {
      resolved.entry_list = EntryListMsg.Resolve(msg.entry_list)
    }
    else {
      resolved.entry_list = new EntryListMsg()
    }

    return resolved;
    }
};

module.exports = {
  Request: EntryListSrvRequest,
  Response: EntryListSrvResponse,
  md5sum() { return '019fcca877608da550bd2d6857203482'; },
  datatype() { return 'hebiros/EntryListSrv'; }
};
