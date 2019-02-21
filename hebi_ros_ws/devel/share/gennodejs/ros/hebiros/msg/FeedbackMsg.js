// Auto-generated. Do not edit!

// (in-package hebiros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class FeedbackMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.position = null;
      this.velocity = null;
      this.effort = null;
      this.position_command = null;
      this.velocity_command = null;
      this.effort_command = null;
      this.accelerometer = null;
      this.gyro = null;
      this.orientation = null;
      this.deflection = null;
      this.deflection_velocity = null;
      this.motor_velocity = null;
      this.motor_current = null;
      this.motor_winding_current = null;
      this.motor_sensor_temperature = null;
      this.motor_winding_temperature = null;
      this.motor_housing_temperature = null;
      this.board_temperature = null;
      this.processor_temperature = null;
      this.voltage = null;
      this.led_color = null;
      this.sequence_number = null;
      this.receive_time = null;
      this.transmit_time = null;
      this.hardware_receive_time = null;
      this.hardware_transmit_time = null;
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
      if (initObj.hasOwnProperty('position_command')) {
        this.position_command = initObj.position_command
      }
      else {
        this.position_command = [];
      }
      if (initObj.hasOwnProperty('velocity_command')) {
        this.velocity_command = initObj.velocity_command
      }
      else {
        this.velocity_command = [];
      }
      if (initObj.hasOwnProperty('effort_command')) {
        this.effort_command = initObj.effort_command
      }
      else {
        this.effort_command = [];
      }
      if (initObj.hasOwnProperty('accelerometer')) {
        this.accelerometer = initObj.accelerometer
      }
      else {
        this.accelerometer = [];
      }
      if (initObj.hasOwnProperty('gyro')) {
        this.gyro = initObj.gyro
      }
      else {
        this.gyro = [];
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = [];
      }
      if (initObj.hasOwnProperty('deflection')) {
        this.deflection = initObj.deflection
      }
      else {
        this.deflection = [];
      }
      if (initObj.hasOwnProperty('deflection_velocity')) {
        this.deflection_velocity = initObj.deflection_velocity
      }
      else {
        this.deflection_velocity = [];
      }
      if (initObj.hasOwnProperty('motor_velocity')) {
        this.motor_velocity = initObj.motor_velocity
      }
      else {
        this.motor_velocity = [];
      }
      if (initObj.hasOwnProperty('motor_current')) {
        this.motor_current = initObj.motor_current
      }
      else {
        this.motor_current = [];
      }
      if (initObj.hasOwnProperty('motor_winding_current')) {
        this.motor_winding_current = initObj.motor_winding_current
      }
      else {
        this.motor_winding_current = [];
      }
      if (initObj.hasOwnProperty('motor_sensor_temperature')) {
        this.motor_sensor_temperature = initObj.motor_sensor_temperature
      }
      else {
        this.motor_sensor_temperature = [];
      }
      if (initObj.hasOwnProperty('motor_winding_temperature')) {
        this.motor_winding_temperature = initObj.motor_winding_temperature
      }
      else {
        this.motor_winding_temperature = [];
      }
      if (initObj.hasOwnProperty('motor_housing_temperature')) {
        this.motor_housing_temperature = initObj.motor_housing_temperature
      }
      else {
        this.motor_housing_temperature = [];
      }
      if (initObj.hasOwnProperty('board_temperature')) {
        this.board_temperature = initObj.board_temperature
      }
      else {
        this.board_temperature = [];
      }
      if (initObj.hasOwnProperty('processor_temperature')) {
        this.processor_temperature = initObj.processor_temperature
      }
      else {
        this.processor_temperature = [];
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = [];
      }
      if (initObj.hasOwnProperty('led_color')) {
        this.led_color = initObj.led_color
      }
      else {
        this.led_color = [];
      }
      if (initObj.hasOwnProperty('sequence_number')) {
        this.sequence_number = initObj.sequence_number
      }
      else {
        this.sequence_number = [];
      }
      if (initObj.hasOwnProperty('receive_time')) {
        this.receive_time = initObj.receive_time
      }
      else {
        this.receive_time = [];
      }
      if (initObj.hasOwnProperty('transmit_time')) {
        this.transmit_time = initObj.transmit_time
      }
      else {
        this.transmit_time = [];
      }
      if (initObj.hasOwnProperty('hardware_receive_time')) {
        this.hardware_receive_time = initObj.hardware_receive_time
      }
      else {
        this.hardware_receive_time = [];
      }
      if (initObj.hasOwnProperty('hardware_transmit_time')) {
        this.hardware_transmit_time = initObj.hardware_transmit_time
      }
      else {
        this.hardware_transmit_time = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeedbackMsg
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, null);
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float64(obj.velocity, buffer, bufferOffset, null);
    // Serialize message field [effort]
    bufferOffset = _arraySerializer.float64(obj.effort, buffer, bufferOffset, null);
    // Serialize message field [position_command]
    bufferOffset = _arraySerializer.float64(obj.position_command, buffer, bufferOffset, null);
    // Serialize message field [velocity_command]
    bufferOffset = _arraySerializer.float64(obj.velocity_command, buffer, bufferOffset, null);
    // Serialize message field [effort_command]
    bufferOffset = _arraySerializer.float64(obj.effort_command, buffer, bufferOffset, null);
    // Serialize message field [accelerometer]
    // Serialize the length for message field [accelerometer]
    bufferOffset = _serializer.uint32(obj.accelerometer.length, buffer, bufferOffset);
    obj.accelerometer.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [gyro]
    // Serialize the length for message field [gyro]
    bufferOffset = _serializer.uint32(obj.gyro.length, buffer, bufferOffset);
    obj.gyro.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [orientation]
    // Serialize the length for message field [orientation]
    bufferOffset = _serializer.uint32(obj.orientation.length, buffer, bufferOffset);
    obj.orientation.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Quaternion.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [deflection]
    bufferOffset = _arraySerializer.float64(obj.deflection, buffer, bufferOffset, null);
    // Serialize message field [deflection_velocity]
    bufferOffset = _arraySerializer.float64(obj.deflection_velocity, buffer, bufferOffset, null);
    // Serialize message field [motor_velocity]
    bufferOffset = _arraySerializer.float64(obj.motor_velocity, buffer, bufferOffset, null);
    // Serialize message field [motor_current]
    bufferOffset = _arraySerializer.float64(obj.motor_current, buffer, bufferOffset, null);
    // Serialize message field [motor_winding_current]
    bufferOffset = _arraySerializer.float64(obj.motor_winding_current, buffer, bufferOffset, null);
    // Serialize message field [motor_sensor_temperature]
    bufferOffset = _arraySerializer.float64(obj.motor_sensor_temperature, buffer, bufferOffset, null);
    // Serialize message field [motor_winding_temperature]
    bufferOffset = _arraySerializer.float64(obj.motor_winding_temperature, buffer, bufferOffset, null);
    // Serialize message field [motor_housing_temperature]
    bufferOffset = _arraySerializer.float64(obj.motor_housing_temperature, buffer, bufferOffset, null);
    // Serialize message field [board_temperature]
    bufferOffset = _arraySerializer.float64(obj.board_temperature, buffer, bufferOffset, null);
    // Serialize message field [processor_temperature]
    bufferOffset = _arraySerializer.float64(obj.processor_temperature, buffer, bufferOffset, null);
    // Serialize message field [voltage]
    bufferOffset = _arraySerializer.float64(obj.voltage, buffer, bufferOffset, null);
    // Serialize message field [led_color]
    // Serialize the length for message field [led_color]
    bufferOffset = _serializer.uint32(obj.led_color.length, buffer, bufferOffset);
    obj.led_color.forEach((val) => {
      bufferOffset = std_msgs.msg.ColorRGBA.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sequence_number]
    bufferOffset = _arraySerializer.uint64(obj.sequence_number, buffer, bufferOffset, null);
    // Serialize message field [receive_time]
    bufferOffset = _arraySerializer.uint64(obj.receive_time, buffer, bufferOffset, null);
    // Serialize message field [transmit_time]
    bufferOffset = _arraySerializer.uint64(obj.transmit_time, buffer, bufferOffset, null);
    // Serialize message field [hardware_receive_time]
    bufferOffset = _arraySerializer.uint64(obj.hardware_receive_time, buffer, bufferOffset, null);
    // Serialize message field [hardware_transmit_time]
    bufferOffset = _arraySerializer.uint64(obj.hardware_transmit_time, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeedbackMsg
    let len;
    let data = new FeedbackMsg(null);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [effort]
    data.effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [position_command]
    data.position_command = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity_command]
    data.velocity_command = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [effort_command]
    data.effort_command = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [accelerometer]
    // Deserialize array length for message field [accelerometer]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.accelerometer = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.accelerometer[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [gyro]
    // Deserialize array length for message field [gyro]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.gyro = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.gyro[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [orientation]
    // Deserialize array length for message field [orientation]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.orientation = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.orientation[i] = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [deflection]
    data.deflection = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [deflection_velocity]
    data.deflection_velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motor_velocity]
    data.motor_velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motor_current]
    data.motor_current = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motor_winding_current]
    data.motor_winding_current = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motor_sensor_temperature]
    data.motor_sensor_temperature = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motor_winding_temperature]
    data.motor_winding_temperature = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motor_housing_temperature]
    data.motor_housing_temperature = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [board_temperature]
    data.board_temperature = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [processor_temperature]
    data.processor_temperature = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [voltage]
    data.voltage = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [led_color]
    // Deserialize array length for message field [led_color]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.led_color = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.led_color[i] = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sequence_number]
    data.sequence_number = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [receive_time]
    data.receive_time = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [transmit_time]
    data.transmit_time = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [hardware_receive_time]
    data.hardware_receive_time = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [hardware_transmit_time]
    data.hardware_transmit_time = _arrayDeserializer.uint64(buffer, bufferOffset, null)
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
    length += 8 * object.position_command.length;
    length += 8 * object.velocity_command.length;
    length += 8 * object.effort_command.length;
    length += 24 * object.accelerometer.length;
    length += 24 * object.gyro.length;
    length += 32 * object.orientation.length;
    length += 8 * object.deflection.length;
    length += 8 * object.deflection_velocity.length;
    length += 8 * object.motor_velocity.length;
    length += 8 * object.motor_current.length;
    length += 8 * object.motor_winding_current.length;
    length += 8 * object.motor_sensor_temperature.length;
    length += 8 * object.motor_winding_temperature.length;
    length += 8 * object.motor_housing_temperature.length;
    length += 8 * object.board_temperature.length;
    length += 8 * object.processor_temperature.length;
    length += 8 * object.voltage.length;
    length += 16 * object.led_color.length;
    length += 8 * object.sequence_number.length;
    length += 8 * object.receive_time.length;
    length += 8 * object.transmit_time.length;
    length += 8 * object.hardware_receive_time.length;
    length += 8 * object.hardware_transmit_time.length;
    return length + 108;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hebiros/FeedbackMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f4e368b929bb5d796beb629cf975333e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    float64[] position_command
    float64[] velocity_command
    float64[] effort_command
    geometry_msgs/Vector3[] accelerometer
    geometry_msgs/Vector3[] gyro
    geometry_msgs/Quaternion[] orientation
    float64[] deflection
    float64[] deflection_velocity
    float64[] motor_velocity
    float64[] motor_current
    float64[] motor_winding_current
    float64[] motor_sensor_temperature
    float64[] motor_winding_temperature
    float64[] motor_housing_temperature
    float64[] board_temperature
    float64[] processor_temperature
    float64[] voltage
    std_msgs/ColorRGBA[] led_color
    uint64[] sequence_number
    uint64[] receive_time
    uint64[] transmit_time
    uint64[] hardware_receive_time
    uint64[] hardware_transmit_time
    
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeedbackMsg(null);
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

    if (msg.position_command !== undefined) {
      resolved.position_command = msg.position_command;
    }
    else {
      resolved.position_command = []
    }

    if (msg.velocity_command !== undefined) {
      resolved.velocity_command = msg.velocity_command;
    }
    else {
      resolved.velocity_command = []
    }

    if (msg.effort_command !== undefined) {
      resolved.effort_command = msg.effort_command;
    }
    else {
      resolved.effort_command = []
    }

    if (msg.accelerometer !== undefined) {
      resolved.accelerometer = new Array(msg.accelerometer.length);
      for (let i = 0; i < resolved.accelerometer.length; ++i) {
        resolved.accelerometer[i] = geometry_msgs.msg.Vector3.Resolve(msg.accelerometer[i]);
      }
    }
    else {
      resolved.accelerometer = []
    }

    if (msg.gyro !== undefined) {
      resolved.gyro = new Array(msg.gyro.length);
      for (let i = 0; i < resolved.gyro.length; ++i) {
        resolved.gyro[i] = geometry_msgs.msg.Vector3.Resolve(msg.gyro[i]);
      }
    }
    else {
      resolved.gyro = []
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = new Array(msg.orientation.length);
      for (let i = 0; i < resolved.orientation.length; ++i) {
        resolved.orientation[i] = geometry_msgs.msg.Quaternion.Resolve(msg.orientation[i]);
      }
    }
    else {
      resolved.orientation = []
    }

    if (msg.deflection !== undefined) {
      resolved.deflection = msg.deflection;
    }
    else {
      resolved.deflection = []
    }

    if (msg.deflection_velocity !== undefined) {
      resolved.deflection_velocity = msg.deflection_velocity;
    }
    else {
      resolved.deflection_velocity = []
    }

    if (msg.motor_velocity !== undefined) {
      resolved.motor_velocity = msg.motor_velocity;
    }
    else {
      resolved.motor_velocity = []
    }

    if (msg.motor_current !== undefined) {
      resolved.motor_current = msg.motor_current;
    }
    else {
      resolved.motor_current = []
    }

    if (msg.motor_winding_current !== undefined) {
      resolved.motor_winding_current = msg.motor_winding_current;
    }
    else {
      resolved.motor_winding_current = []
    }

    if (msg.motor_sensor_temperature !== undefined) {
      resolved.motor_sensor_temperature = msg.motor_sensor_temperature;
    }
    else {
      resolved.motor_sensor_temperature = []
    }

    if (msg.motor_winding_temperature !== undefined) {
      resolved.motor_winding_temperature = msg.motor_winding_temperature;
    }
    else {
      resolved.motor_winding_temperature = []
    }

    if (msg.motor_housing_temperature !== undefined) {
      resolved.motor_housing_temperature = msg.motor_housing_temperature;
    }
    else {
      resolved.motor_housing_temperature = []
    }

    if (msg.board_temperature !== undefined) {
      resolved.board_temperature = msg.board_temperature;
    }
    else {
      resolved.board_temperature = []
    }

    if (msg.processor_temperature !== undefined) {
      resolved.processor_temperature = msg.processor_temperature;
    }
    else {
      resolved.processor_temperature = []
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = []
    }

    if (msg.led_color !== undefined) {
      resolved.led_color = new Array(msg.led_color.length);
      for (let i = 0; i < resolved.led_color.length; ++i) {
        resolved.led_color[i] = std_msgs.msg.ColorRGBA.Resolve(msg.led_color[i]);
      }
    }
    else {
      resolved.led_color = []
    }

    if (msg.sequence_number !== undefined) {
      resolved.sequence_number = msg.sequence_number;
    }
    else {
      resolved.sequence_number = []
    }

    if (msg.receive_time !== undefined) {
      resolved.receive_time = msg.receive_time;
    }
    else {
      resolved.receive_time = []
    }

    if (msg.transmit_time !== undefined) {
      resolved.transmit_time = msg.transmit_time;
    }
    else {
      resolved.transmit_time = []
    }

    if (msg.hardware_receive_time !== undefined) {
      resolved.hardware_receive_time = msg.hardware_receive_time;
    }
    else {
      resolved.hardware_receive_time = []
    }

    if (msg.hardware_transmit_time !== undefined) {
      resolved.hardware_transmit_time = msg.hardware_transmit_time;
    }
    else {
      resolved.hardware_transmit_time = []
    }

    return resolved;
    }
};

module.exports = FeedbackMsg;
