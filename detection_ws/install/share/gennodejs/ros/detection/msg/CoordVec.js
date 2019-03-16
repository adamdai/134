// Auto-generated. Do not edit!

// (in-package detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Coord = require('./Coord.js');

//-----------------------------------------------------------

class CoordVec {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.coord_vec = null;
    }
    else {
      if (initObj.hasOwnProperty('coord_vec')) {
        this.coord_vec = initObj.coord_vec
      }
      else {
        this.coord_vec = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CoordVec
    // Serialize message field [coord_vec]
    // Serialize the length for message field [coord_vec]
    bufferOffset = _serializer.uint32(obj.coord_vec.length, buffer, bufferOffset);
    obj.coord_vec.forEach((val) => {
      bufferOffset = Coord.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CoordVec
    let len;
    let data = new CoordVec(null);
    // Deserialize message field [coord_vec]
    // Deserialize array length for message field [coord_vec]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.coord_vec = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.coord_vec[i] = Coord.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.coord_vec.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'detection/CoordVec';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a95346ca5d86737e817fb86cf6d9b5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition of a vector of coordinates.
    
    Coord[] coord_vec
    ================================================================================
    MSG: detection/Coord
    # Message definition of a coordinate
    float64 rad
    float64 angle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CoordVec(null);
    if (msg.coord_vec !== undefined) {
      resolved.coord_vec = new Array(msg.coord_vec.length);
      for (let i = 0; i < resolved.coord_vec.length; ++i) {
        resolved.coord_vec[i] = Coord.Resolve(msg.coord_vec[i]);
      }
    }
    else {
      resolved.coord_vec = []
    }

    return resolved;
    }
};

module.exports = CoordVec;
