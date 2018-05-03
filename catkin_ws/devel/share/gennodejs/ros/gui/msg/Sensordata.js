// Auto-generated. Do not edit!

// (in-package gui.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Sensordata {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.acc = null;
      this.angle = null;
      this.ir = null;
      this.dist = null;
    }
    else {
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('ir')) {
        this.ir = initObj.ir
      }
      else {
        this.ir = new Array(64).fill(0);
      }
      if (initObj.hasOwnProperty('dist')) {
        this.dist = initObj.dist
      }
      else {
        this.dist = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Sensordata
    // Check that the constant length array field [acc] has the right length
    if (obj.acc.length !== 3) {
      throw new Error('Unable to serialize array field acc - length must be 3')
    }
    // Serialize message field [acc]
    bufferOffset = _arraySerializer.float32(obj.acc, buffer, bufferOffset, 3);
    // Check that the constant length array field [angle] has the right length
    if (obj.angle.length !== 3) {
      throw new Error('Unable to serialize array field angle - length must be 3')
    }
    // Serialize message field [angle]
    bufferOffset = _arraySerializer.float32(obj.angle, buffer, bufferOffset, 3);
    // Check that the constant length array field [ir] has the right length
    if (obj.ir.length !== 64) {
      throw new Error('Unable to serialize array field ir - length must be 64')
    }
    // Serialize message field [ir]
    bufferOffset = _arraySerializer.float32(obj.ir, buffer, bufferOffset, 64);
    // Serialize message field [dist]
    bufferOffset = _serializer.float32(obj.dist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sensordata
    let len;
    let data = new Sensordata(null);
    // Deserialize message field [acc]
    data.acc = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [angle]
    data.angle = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [ir]
    data.ir = _arrayDeserializer.float32(buffer, bufferOffset, 64)
    // Deserialize message field [dist]
    data.dist = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 284;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gui/Sensordata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c229e2648232c4169508279d6fdeb33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[3] acc
    float32[3] angle
    float32[64] ir
    float32 dist
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sensordata(null);
    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = new Array(3).fill(0)
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = new Array(3).fill(0)
    }

    if (msg.ir !== undefined) {
      resolved.ir = msg.ir;
    }
    else {
      resolved.ir = new Array(64).fill(0)
    }

    if (msg.dist !== undefined) {
      resolved.dist = msg.dist;
    }
    else {
      resolved.dist = 0.0
    }

    return resolved;
    }
};

module.exports = Sensordata;
