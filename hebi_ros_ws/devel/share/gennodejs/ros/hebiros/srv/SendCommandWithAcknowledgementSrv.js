// Auto-generated. Do not edit!

// (in-package hebiros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CommandMsg = require('../msg/CommandMsg.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SendCommandWithAcknowledgementSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new CommandMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendCommandWithAcknowledgementSrvRequest
    // Serialize message field [command]
    bufferOffset = CommandMsg.serialize(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendCommandWithAcknowledgementSrvRequest
    let len;
    let data = new SendCommandWithAcknowledgementSrvRequest(null);
    // Deserialize message field [command]
    data.command = CommandMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CommandMsg.getMessageSize(object.command);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hebiros/SendCommandWithAcknowledgementSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc4cfbf8596ddaff00c6c17ca78326b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    CommandMsg command
    
    ================================================================================
    MSG: hebiros/CommandMsg
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    hebiros/SettingsMsg settings
    
    
    ================================================================================
    MSG: hebiros/SettingsMsg
    string[] name
    bool[] save_current_settings
    int8[] control_strategy
    hebiros/PidGainsMsg position_gains
    hebiros/PidGainsMsg velocity_gains
    hebiros/PidGainsMsg effort_gains
    
    
    ================================================================================
    MSG: hebiros/PidGainsMsg
    string[] name
    float64[] kp
    float64[] ki
    float64[] kd
    float64[] feed_forward
    float64[] dead_zone
    float64[] i_clamp
    float64[] punch
    float64[] min_target
    float64[] max_target
    float64[] target_lowpass
    float64[] min_output
    float64[] max_output
    float64[] output_lowpass
    bool[] d_on_error
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendCommandWithAcknowledgementSrvRequest(null);
    if (msg.command !== undefined) {
      resolved.command = CommandMsg.Resolve(msg.command)
    }
    else {
      resolved.command = new CommandMsg()
    }

    return resolved;
    }
};

class SendCommandWithAcknowledgementSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendCommandWithAcknowledgementSrvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendCommandWithAcknowledgementSrvResponse
    let len;
    let data = new SendCommandWithAcknowledgementSrvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hebiros/SendCommandWithAcknowledgementSrvResponse';
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
    const resolved = new SendCommandWithAcknowledgementSrvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SendCommandWithAcknowledgementSrvRequest,
  Response: SendCommandWithAcknowledgementSrvResponse,
  md5sum() { return 'dc4cfbf8596ddaff00c6c17ca78326b7'; },
  datatype() { return 'hebiros/SendCommandWithAcknowledgementSrv'; }
};
