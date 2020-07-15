// Auto-generated. Do not edit!

// (in-package hello.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Num {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.first_name = null;
      this.coordinate = null;
      this.num = null;
    }
    else {
      if (initObj.hasOwnProperty('first_name')) {
        this.first_name = initObj.first_name
      }
      else {
        this.first_name = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('coordinate')) {
        this.coordinate = initObj.coordinate
      }
      else {
        this.coordinate = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Num
    // Serialize message field [first_name]
    bufferOffset = std_msgs.msg.String.serialize(obj.first_name, buffer, bufferOffset);
    // Serialize message field [coordinate]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.coordinate, buffer, bufferOffset);
    // Serialize message field [num]
    bufferOffset = _serializer.int64(obj.num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Num
    let len;
    let data = new Num(null);
    // Deserialize message field [first_name]
    data.first_name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [coordinate]
    data.coordinate = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [num]
    data.num = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.first_name);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hello/Num';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47f709c3ebbeb15e51c9821690dd7abd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String first_name
    geometry_msgs/Vector3 coordinate
    int64 num
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Num(null);
    if (msg.first_name !== undefined) {
      resolved.first_name = std_msgs.msg.String.Resolve(msg.first_name)
    }
    else {
      resolved.first_name = new std_msgs.msg.String()
    }

    if (msg.coordinate !== undefined) {
      resolved.coordinate = geometry_msgs.msg.Vector3.Resolve(msg.coordinate)
    }
    else {
      resolved.coordinate = new geometry_msgs.msg.Vector3()
    }

    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    return resolved;
    }
};

module.exports = Num;
