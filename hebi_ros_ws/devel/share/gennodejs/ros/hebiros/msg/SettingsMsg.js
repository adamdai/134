// Auto-generated. Do not edit!

// (in-package hebiros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PidGainsMsg = require('./PidGainsMsg.js');

//-----------------------------------------------------------

class SettingsMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.save_current_settings = null;
      this.control_strategy = null;
      this.position_gains = null;
      this.velocity_gains = null;
      this.effort_gains = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('save_current_settings')) {
        this.save_current_settings = initObj.save_current_settings
      }
      else {
        this.save_current_settings = [];
      }
      if (initObj.hasOwnProperty('control_strategy')) {
        this.control_strategy = initObj.control_strategy
      }
      else {
        this.control_strategy = [];
      }
      if (initObj.hasOwnProperty('position_gains')) {
        this.position_gains = initObj.position_gains
      }
      else {
        this.position_gains = new PidGainsMsg();
      }
      if (initObj.hasOwnProperty('velocity_gains')) {
        this.velocity_gains = initObj.velocity_gains
      }
      else {
        this.velocity_gains = new PidGainsMsg();
      }
      if (initObj.hasOwnProperty('effort_gains')) {
        this.effort_gains = initObj.effort_gains
      }
      else {
        this.effort_gains = new PidGainsMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SettingsMsg
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [save_current_settings]
    bufferOffset = _arraySerializer.bool(obj.save_current_settings, buffer, bufferOffset, null);
    // Serialize message field [control_strategy]
    bufferOffset = _arraySerializer.int8(obj.control_strategy, buffer, bufferOffset, null);
    // Serialize message field [position_gains]
    bufferOffset = PidGainsMsg.serialize(obj.position_gains, buffer, bufferOffset);
    // Serialize message field [velocity_gains]
    bufferOffset = PidGainsMsg.serialize(obj.velocity_gains, buffer, bufferOffset);
    // Serialize message field [effort_gains]
    bufferOffset = PidGainsMsg.serialize(obj.effort_gains, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SettingsMsg
    let len;
    let data = new SettingsMsg(null);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [save_current_settings]
    data.save_current_settings = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [control_strategy]
    data.control_strategy = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [position_gains]
    data.position_gains = PidGainsMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_gains]
    data.velocity_gains = PidGainsMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [effort_gains]
    data.effort_gains = PidGainsMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.save_current_settings.length;
    length += object.control_strategy.length;
    length += PidGainsMsg.getMessageSize(object.position_gains);
    length += PidGainsMsg.getMessageSize(object.velocity_gains);
    length += PidGainsMsg.getMessageSize(object.effort_gains);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hebiros/SettingsMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4333c3b24c39f74ad09d675d9b50f596';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SettingsMsg(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.save_current_settings !== undefined) {
      resolved.save_current_settings = msg.save_current_settings;
    }
    else {
      resolved.save_current_settings = []
    }

    if (msg.control_strategy !== undefined) {
      resolved.control_strategy = msg.control_strategy;
    }
    else {
      resolved.control_strategy = []
    }

    if (msg.position_gains !== undefined) {
      resolved.position_gains = PidGainsMsg.Resolve(msg.position_gains)
    }
    else {
      resolved.position_gains = new PidGainsMsg()
    }

    if (msg.velocity_gains !== undefined) {
      resolved.velocity_gains = PidGainsMsg.Resolve(msg.velocity_gains)
    }
    else {
      resolved.velocity_gains = new PidGainsMsg()
    }

    if (msg.effort_gains !== undefined) {
      resolved.effort_gains = PidGainsMsg.Resolve(msg.effort_gains)
    }
    else {
      resolved.effort_gains = new PidGainsMsg()
    }

    return resolved;
    }
};

module.exports = SettingsMsg;
