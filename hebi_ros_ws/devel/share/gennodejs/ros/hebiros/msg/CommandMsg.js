// Auto-generated. Do not edit!

// (in-package hebiros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SettingsMsg = require('./SettingsMsg.js');

//-----------------------------------------------------------

class CommandMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.position = null;
      this.velocity = null;
      this.effort = null;
      this.settings = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = [];
      }
      if (initObj.hasOwnProperty('effort')) {
        this.effort = initObj.effort
      }
      else {
        this.effort = [];
      }
      if (initObj.hasOwnProperty('settings')) {
        this.settings = initObj.settings
      }
      else {
        this.settings = new SettingsMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandMsg
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, null);
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float64(obj.velocity, buffer, bufferOffset, null);
    // Serialize message field [effort]
    bufferOffset = _arraySerializer.float64(obj.effort, buffer, bufferOffset, null);
    // Serialize message field [settings]
    bufferOffset = SettingsMsg.serialize(obj.settings, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandMsg
    let len;
    let data = new CommandMsg(null);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [effort]
    data.effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [settings]
    data.settings = SettingsMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.position.length;
    length += 8 * object.velocity.length;
    length += 8 * object.effort.length;
    length += SettingsMsg.getMessageSize(object.settings);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hebiros/CommandMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bfeea03edefa65b3e88462912543b8b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CommandMsg(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = []
    }

    if (msg.effort !== undefined) {
      resolved.effort = msg.effort;
    }
    else {
      resolved.effort = []
    }

    if (msg.settings !== undefined) {
      resolved.settings = SettingsMsg.Resolve(msg.settings)
    }
    else {
      resolved.settings = new SettingsMsg()
    }

    return resolved;
    }
};

module.exports = CommandMsg;
