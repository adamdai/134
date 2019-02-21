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

class PidGainsMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.kp = null;
      this.ki = null;
      this.kd = null;
      this.feed_forward = null;
      this.dead_zone = null;
      this.i_clamp = null;
      this.punch = null;
      this.min_target = null;
      this.max_target = null;
      this.target_lowpass = null;
      this.min_output = null;
      this.max_output = null;
      this.output_lowpass = null;
      this.d_on_error = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('kp')) {
        this.kp = initObj.kp
      }
      else {
        this.kp = [];
      }
      if (initObj.hasOwnProperty('ki')) {
        this.ki = initObj.ki
      }
      else {
        this.ki = [];
      }
      if (initObj.hasOwnProperty('kd')) {
        this.kd = initObj.kd
      }
      else {
        this.kd = [];
      }
      if (initObj.hasOwnProperty('feed_forward')) {
        this.feed_forward = initObj.feed_forward
      }
      else {
        this.feed_forward = [];
      }
      if (initObj.hasOwnProperty('dead_zone')) {
        this.dead_zone = initObj.dead_zone
      }
      else {
        this.dead_zone = [];
      }
      if (initObj.hasOwnProperty('i_clamp')) {
        this.i_clamp = initObj.i_clamp
      }
      else {
        this.i_clamp = [];
      }
      if (initObj.hasOwnProperty('punch')) {
        this.punch = initObj.punch
      }
      else {
        this.punch = [];
      }
      if (initObj.hasOwnProperty('min_target')) {
        this.min_target = initObj.min_target
      }
      else {
        this.min_target = [];
      }
      if (initObj.hasOwnProperty('max_target')) {
        this.max_target = initObj.max_target
      }
      else {
        this.max_target = [];
      }
      if (initObj.hasOwnProperty('target_lowpass')) {
        this.target_lowpass = initObj.target_lowpass
      }
      else {
        this.target_lowpass = [];
      }
      if (initObj.hasOwnProperty('min_output')) {
        this.min_output = initObj.min_output
      }
      else {
        this.min_output = [];
      }
      if (initObj.hasOwnProperty('max_output')) {
        this.max_output = initObj.max_output
      }
      else {
        this.max_output = [];
      }
      if (initObj.hasOwnProperty('output_lowpass')) {
        this.output_lowpass = initObj.output_lowpass
      }
      else {
        this.output_lowpass = [];
      }
      if (initObj.hasOwnProperty('d_on_error')) {
        this.d_on_error = initObj.d_on_error
      }
      else {
        this.d_on_error = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PidGainsMsg
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [kp]
    bufferOffset = _arraySerializer.float64(obj.kp, buffer, bufferOffset, null);
    // Serialize message field [ki]
    bufferOffset = _arraySerializer.float64(obj.ki, buffer, bufferOffset, null);
    // Serialize message field [kd]
    bufferOffset = _arraySerializer.float64(obj.kd, buffer, bufferOffset, null);
    // Serialize message field [feed_forward]
    bufferOffset = _arraySerializer.float64(obj.feed_forward, buffer, bufferOffset, null);
    // Serialize message field [dead_zone]
    bufferOffset = _arraySerializer.float64(obj.dead_zone, buffer, bufferOffset, null);
    // Serialize message field [i_clamp]
    bufferOffset = _arraySerializer.float64(obj.i_clamp, buffer, bufferOffset, null);
    // Serialize message field [punch]
    bufferOffset = _arraySerializer.float64(obj.punch, buffer, bufferOffset, null);
    // Serialize message field [min_target]
    bufferOffset = _arraySerializer.float64(obj.min_target, buffer, bufferOffset, null);
    // Serialize message field [max_target]
    bufferOffset = _arraySerializer.float64(obj.max_target, buffer, bufferOffset, null);
    // Serialize message field [target_lowpass]
    bufferOffset = _arraySerializer.float64(obj.target_lowpass, buffer, bufferOffset, null);
    // Serialize message field [min_output]
    bufferOffset = _arraySerializer.float64(obj.min_output, buffer, bufferOffset, null);
    // Serialize message field [max_output]
    bufferOffset = _arraySerializer.float64(obj.max_output, buffer, bufferOffset, null);
    // Serialize message field [output_lowpass]
    bufferOffset = _arraySerializer.float64(obj.output_lowpass, buffer, bufferOffset, null);
    // Serialize message field [d_on_error]
    bufferOffset = _arraySerializer.bool(obj.d_on_error, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PidGainsMsg
    let len;
    let data = new PidGainsMsg(null);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [kp]
    data.kp = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ki]
    data.ki = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [kd]
    data.kd = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [feed_forward]
    data.feed_forward = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [dead_zone]
    data.dead_zone = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [i_clamp]
    data.i_clamp = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [punch]
    data.punch = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [min_target]
    data.min_target = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [max_target]
    data.max_target = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [target_lowpass]
    data.target_lowpass = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [min_output]
    data.min_output = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [max_output]
    data.max_output = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [output_lowpass]
    data.output_lowpass = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [d_on_error]
    data.d_on_error = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.kp.length;
    length += 8 * object.ki.length;
    length += 8 * object.kd.length;
    length += 8 * object.feed_forward.length;
    length += 8 * object.dead_zone.length;
    length += 8 * object.i_clamp.length;
    length += 8 * object.punch.length;
    length += 8 * object.min_target.length;
    length += 8 * object.max_target.length;
    length += 8 * object.target_lowpass.length;
    length += 8 * object.min_output.length;
    length += 8 * object.max_output.length;
    length += 8 * object.output_lowpass.length;
    length += object.d_on_error.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hebiros/PidGainsMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '409cfb8df90bde199674774f996b26c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PidGainsMsg(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.kp !== undefined) {
      resolved.kp = msg.kp;
    }
    else {
      resolved.kp = []
    }

    if (msg.ki !== undefined) {
      resolved.ki = msg.ki;
    }
    else {
      resolved.ki = []
    }

    if (msg.kd !== undefined) {
      resolved.kd = msg.kd;
    }
    else {
      resolved.kd = []
    }

    if (msg.feed_forward !== undefined) {
      resolved.feed_forward = msg.feed_forward;
    }
    else {
      resolved.feed_forward = []
    }

    if (msg.dead_zone !== undefined) {
      resolved.dead_zone = msg.dead_zone;
    }
    else {
      resolved.dead_zone = []
    }

    if (msg.i_clamp !== undefined) {
      resolved.i_clamp = msg.i_clamp;
    }
    else {
      resolved.i_clamp = []
    }

    if (msg.punch !== undefined) {
      resolved.punch = msg.punch;
    }
    else {
      resolved.punch = []
    }

    if (msg.min_target !== undefined) {
      resolved.min_target = msg.min_target;
    }
    else {
      resolved.min_target = []
    }

    if (msg.max_target !== undefined) {
      resolved.max_target = msg.max_target;
    }
    else {
      resolved.max_target = []
    }

    if (msg.target_lowpass !== undefined) {
      resolved.target_lowpass = msg.target_lowpass;
    }
    else {
      resolved.target_lowpass = []
    }

    if (msg.min_output !== undefined) {
      resolved.min_output = msg.min_output;
    }
    else {
      resolved.min_output = []
    }

    if (msg.max_output !== undefined) {
      resolved.max_output = msg.max_output;
    }
    else {
      resolved.max_output = []
    }

    if (msg.output_lowpass !== undefined) {
      resolved.output_lowpass = msg.output_lowpass;
    }
    else {
      resolved.output_lowpass = []
    }

    if (msg.d_on_error !== undefined) {
      resolved.d_on_error = msg.d_on_error;
    }
    else {
      resolved.d_on_error = []
    }

    return resolved;
    }
};

module.exports = PidGainsMsg;
