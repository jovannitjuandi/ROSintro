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

//-----------------------------------------------------------

class TwoDimensional {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.order = null;
      this.label = null;
      this.backgroundColor = null;
      this.borderColor = null;
      this.borderDash = null;
      this.borderWidth = null;
      this.pointBackgroundColor = null;
      this.pointBorderColor = null;
      this.pointBorderWidth = null;
      this.pointRadius = null;
      this.pointStyle = null;
      this.lineTension = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('order')) {
        this.order = initObj.order
      }
      else {
        this.order = 0;
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('backgroundColor')) {
        this.backgroundColor = initObj.backgroundColor
      }
      else {
        this.backgroundColor = '';
      }
      if (initObj.hasOwnProperty('borderColor')) {
        this.borderColor = initObj.borderColor
      }
      else {
        this.borderColor = '';
      }
      if (initObj.hasOwnProperty('borderDash')) {
        this.borderDash = initObj.borderDash
      }
      else {
        this.borderDash = [];
      }
      if (initObj.hasOwnProperty('borderWidth')) {
        this.borderWidth = initObj.borderWidth
      }
      else {
        this.borderWidth = 0;
      }
      if (initObj.hasOwnProperty('pointBackgroundColor')) {
        this.pointBackgroundColor = initObj.pointBackgroundColor
      }
      else {
        this.pointBackgroundColor = '';
      }
      if (initObj.hasOwnProperty('pointBorderColor')) {
        this.pointBorderColor = initObj.pointBorderColor
      }
      else {
        this.pointBorderColor = '';
      }
      if (initObj.hasOwnProperty('pointBorderWidth')) {
        this.pointBorderWidth = initObj.pointBorderWidth
      }
      else {
        this.pointBorderWidth = '';
      }
      if (initObj.hasOwnProperty('pointRadius')) {
        this.pointRadius = initObj.pointRadius
      }
      else {
        this.pointRadius = '';
      }
      if (initObj.hasOwnProperty('pointStyle')) {
        this.pointStyle = initObj.pointStyle
      }
      else {
        this.pointStyle = '';
      }
      if (initObj.hasOwnProperty('lineTension')) {
        this.lineTension = initObj.lineTension
      }
      else {
        this.lineTension = 0.0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TwoDimensional
    // Serialize message field [order]
    bufferOffset = _serializer.uint8(obj.order, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [backgroundColor]
    bufferOffset = _serializer.string(obj.backgroundColor, buffer, bufferOffset);
    // Serialize message field [borderColor]
    bufferOffset = _serializer.string(obj.borderColor, buffer, bufferOffset);
    // Serialize message field [borderDash]
    bufferOffset = _arraySerializer.uint8(obj.borderDash, buffer, bufferOffset, null);
    // Serialize message field [borderWidth]
    bufferOffset = _serializer.uint8(obj.borderWidth, buffer, bufferOffset);
    // Serialize message field [pointBackgroundColor]
    bufferOffset = _serializer.string(obj.pointBackgroundColor, buffer, bufferOffset);
    // Serialize message field [pointBorderColor]
    bufferOffset = _serializer.string(obj.pointBorderColor, buffer, bufferOffset);
    // Serialize message field [pointBorderWidth]
    bufferOffset = _serializer.string(obj.pointBorderWidth, buffer, bufferOffset);
    // Serialize message field [pointRadius]
    bufferOffset = _serializer.string(obj.pointRadius, buffer, bufferOffset);
    // Serialize message field [pointStyle]
    bufferOffset = _serializer.string(obj.pointStyle, buffer, bufferOffset);
    // Serialize message field [lineTension]
    bufferOffset = _serializer.float32(obj.lineTension, buffer, bufferOffset);
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TwoDimensional
    let len;
    let data = new TwoDimensional(null);
    // Deserialize message field [order]
    data.order = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [backgroundColor]
    data.backgroundColor = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [borderColor]
    data.borderColor = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [borderDash]
    data.borderDash = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [borderWidth]
    data.borderWidth = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pointBackgroundColor]
    data.pointBackgroundColor = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pointBorderColor]
    data.pointBorderColor = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pointBorderWidth]
    data.pointBorderWidth = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pointRadius]
    data.pointRadius = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pointStyle]
    data.pointStyle = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lineTension]
    data.lineTension = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.label.length;
    length += object.backgroundColor.length;
    length += object.borderColor.length;
    length += object.borderDash.length;
    length += object.pointBackgroundColor.length;
    length += object.pointBorderColor.length;
    length += object.pointBorderWidth.length;
    length += object.pointRadius.length;
    length += object.pointStyle.length;
    length += 24 * object.data.length;
    return length + 46;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hello/TwoDimensional';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d5235d6d90ee1297e306e5021a67801';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # webviz_msgs/TwoDimensionalPlotDatapoint definition
    
    uint8 order
    string label
    string backgroundColor
    string borderColor
    uint8[] borderDash
    uint8 borderWidth
    string pointBackgroundColor
    string pointBorderColor
    string pointBorderWidth
    string pointRadius
    
    # pointStyle can be 'circle', 'cross', 'crossRot', 'dash', 'line', 'rect', 'rectRounded', 'rectRot', or 'star'
    string pointStyle
    float32 lineTension
    
    # z field in geometry_msgs/Point is ignored
    geometry_msgs/Point[] data
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new TwoDimensional(null);
    if (msg.order !== undefined) {
      resolved.order = msg.order;
    }
    else {
      resolved.order = 0
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.backgroundColor !== undefined) {
      resolved.backgroundColor = msg.backgroundColor;
    }
    else {
      resolved.backgroundColor = ''
    }

    if (msg.borderColor !== undefined) {
      resolved.borderColor = msg.borderColor;
    }
    else {
      resolved.borderColor = ''
    }

    if (msg.borderDash !== undefined) {
      resolved.borderDash = msg.borderDash;
    }
    else {
      resolved.borderDash = []
    }

    if (msg.borderWidth !== undefined) {
      resolved.borderWidth = msg.borderWidth;
    }
    else {
      resolved.borderWidth = 0
    }

    if (msg.pointBackgroundColor !== undefined) {
      resolved.pointBackgroundColor = msg.pointBackgroundColor;
    }
    else {
      resolved.pointBackgroundColor = ''
    }

    if (msg.pointBorderColor !== undefined) {
      resolved.pointBorderColor = msg.pointBorderColor;
    }
    else {
      resolved.pointBorderColor = ''
    }

    if (msg.pointBorderWidth !== undefined) {
      resolved.pointBorderWidth = msg.pointBorderWidth;
    }
    else {
      resolved.pointBorderWidth = ''
    }

    if (msg.pointRadius !== undefined) {
      resolved.pointRadius = msg.pointRadius;
    }
    else {
      resolved.pointRadius = ''
    }

    if (msg.pointStyle !== undefined) {
      resolved.pointStyle = msg.pointStyle;
    }
    else {
      resolved.pointStyle = ''
    }

    if (msg.lineTension !== undefined) {
      resolved.lineTension = msg.lineTension;
    }
    else {
      resolved.lineTension = 0.0
    }

    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = geometry_msgs.msg.Point.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = TwoDimensional;
