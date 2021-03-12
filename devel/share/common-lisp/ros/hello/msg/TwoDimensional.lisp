; Auto-generated. Do not edit!


(cl:in-package hello-msg)


;//! \htmlinclude TwoDimensional.msg.html

(cl:defclass <TwoDimensional> (roslisp-msg-protocol:ros-message)
  ((order
    :reader order
    :initarg :order
    :type cl:fixnum
    :initform 0)
   (label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (backgroundColor
    :reader backgroundColor
    :initarg :backgroundColor
    :type cl:string
    :initform "")
   (borderColor
    :reader borderColor
    :initarg :borderColor
    :type cl:string
    :initform "")
   (borderDash
    :reader borderDash
    :initarg :borderDash
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (borderWidth
    :reader borderWidth
    :initarg :borderWidth
    :type cl:fixnum
    :initform 0)
   (pointBackgroundColor
    :reader pointBackgroundColor
    :initarg :pointBackgroundColor
    :type cl:string
    :initform "")
   (pointBorderColor
    :reader pointBorderColor
    :initarg :pointBorderColor
    :type cl:string
    :initform "")
   (pointBorderWidth
    :reader pointBorderWidth
    :initarg :pointBorderWidth
    :type cl:string
    :initform "")
   (pointRadius
    :reader pointRadius
    :initarg :pointRadius
    :type cl:string
    :initform "")
   (pointStyle
    :reader pointStyle
    :initarg :pointStyle
    :type cl:string
    :initform "")
   (lineTension
    :reader lineTension
    :initarg :lineTension
    :type cl:float
    :initform 0.0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass TwoDimensional (<TwoDimensional>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TwoDimensional>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TwoDimensional)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello-msg:<TwoDimensional> is deprecated: use hello-msg:TwoDimensional instead.")))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <TwoDimensional>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:order-val is deprecated.  Use hello-msg:order instead.")
  (order m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <TwoDimensional>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:label-val is deprecated.  Use hello-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'backgroundColor-val :lambda-list '(m))
(cl:defmethod backgroundColor-val ((m <TwoDimensional>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:backgroundColor-val is deprecated.  Use hello-msg:backgroundColor instead.")
  (backgroundColor m))

(cl:ensure-generic-function 'borderColor-val :lambda-list '(m))
(cl:defmethod borderColor-val ((m <TwoDimensional>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:borderColor-val is deprecated.  Use hello-msg:borderColor instead.")
  (borderColor m))

(cl:ensure-generic-function 'borderDash-val :lambda-list '(m))
(cl:defmethod borderDash-val ((m <TwoDimensional>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:borderDash-val is deprecated.  Use hello-msg:borderDash instead.")
  (borderDash m))

(cl:ensure-generic-function 'borderWidth-val :lambda-list '(m))
(cl:defmethod borderWidth-val ((m <TwoDimensional>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:borderWidth-val is deprecated.  Use hello-msg:borderWidth instead.")
  (borderWidth m))

(cl:ensure-generic-function 'pointBackgroundColor-val :lambda-list '(m))
(cl:defmethod pointBackgroundColor-val ((m <TwoDimensional>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:pointBackgroundColor-val is deprecated.  Use hello-msg:pointBackgroundColor instead.")
  (pointBackgroundColor m))

(cl:ensure-generic-function 'pointBorderColor-val :lambda-list '(m))
(cl:defmethod pointBorderColor-val ((m <TwoDimensional>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:pointBorderColor-val is deprecated.  Use hello-msg:pointBorderColor instead.")
  (pointBorderColor m))

(cl:ensure-generic-function 'pointBorderWidth-val :lambda-list '(m))
(cl:defmethod pointBorderWidth-val ((m <TwoDimensional>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:pointBorderWidth-val is deprecated.  Use hello-msg:pointBorderWidth instead.")
  (pointBorderWidth m))

(cl:ensure-generic-function 'pointRadius-val :lambda-list '(m))
(cl:defmethod pointRadius-val ((m <TwoDimensional>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:pointRadius-val is deprecated.  Use hello-msg:pointRadius instead.")
  (pointRadius m))

(cl:ensure-generic-function 'pointStyle-val :lambda-list '(m))
(cl:defmethod pointStyle-val ((m <TwoDimensional>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:pointStyle-val is deprecated.  Use hello-msg:pointStyle instead.")
  (pointStyle m))

(cl:ensure-generic-function 'lineTension-val :lambda-list '(m))
(cl:defmethod lineTension-val ((m <TwoDimensional>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:lineTension-val is deprecated.  Use hello-msg:lineTension instead.")
  (lineTension m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TwoDimensional>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:data-val is deprecated.  Use hello-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TwoDimensional>) ostream)
  "Serializes a message object of type '<TwoDimensional>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'order)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'backgroundColor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'backgroundColor))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'borderColor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'borderColor))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'borderDash))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'borderDash))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'borderWidth)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pointBackgroundColor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pointBackgroundColor))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pointBorderColor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pointBorderColor))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pointBorderWidth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pointBorderWidth))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pointRadius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pointRadius))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pointStyle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pointStyle))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lineTension))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TwoDimensional>) istream)
  "Deserializes a message object of type '<TwoDimensional>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'order)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'backgroundColor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'backgroundColor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'borderColor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'borderColor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'borderDash) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'borderDash)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'borderWidth)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pointBackgroundColor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pointBackgroundColor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pointBorderColor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pointBorderColor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pointBorderWidth) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pointBorderWidth) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pointRadius) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pointRadius) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pointStyle) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pointStyle) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lineTension) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TwoDimensional>)))
  "Returns string type for a message object of type '<TwoDimensional>"
  "hello/TwoDimensional")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TwoDimensional)))
  "Returns string type for a message object of type 'TwoDimensional"
  "hello/TwoDimensional")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TwoDimensional>)))
  "Returns md5sum for a message object of type '<TwoDimensional>"
  "1d5235d6d90ee1297e306e5021a67801")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TwoDimensional)))
  "Returns md5sum for a message object of type 'TwoDimensional"
  "1d5235d6d90ee1297e306e5021a67801")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TwoDimensional>)))
  "Returns full string definition for message of type '<TwoDimensional>"
  (cl:format cl:nil "# webviz_msgs/TwoDimensionalPlotDatapoint definition~%~%uint8 order~%string label~%string backgroundColor~%string borderColor~%uint8[] borderDash~%uint8 borderWidth~%string pointBackgroundColor~%string pointBorderColor~%string pointBorderWidth~%string pointRadius~%~%# pointStyle can be 'circle', 'cross', 'crossRot', 'dash', 'line', 'rect', 'rectRounded', 'rectRot', or 'star'~%string pointStyle~%float32 lineTension~%~%# z field in geometry_msgs/Point is ignored~%geometry_msgs/Point[] data~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TwoDimensional)))
  "Returns full string definition for message of type 'TwoDimensional"
  (cl:format cl:nil "# webviz_msgs/TwoDimensionalPlotDatapoint definition~%~%uint8 order~%string label~%string backgroundColor~%string borderColor~%uint8[] borderDash~%uint8 borderWidth~%string pointBackgroundColor~%string pointBorderColor~%string pointBorderWidth~%string pointRadius~%~%# pointStyle can be 'circle', 'cross', 'crossRot', 'dash', 'line', 'rect', 'rectRounded', 'rectRot', or 'star'~%string pointStyle~%float32 lineTension~%~%# z field in geometry_msgs/Point is ignored~%geometry_msgs/Point[] data~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TwoDimensional>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'label))
     4 (cl:length (cl:slot-value msg 'backgroundColor))
     4 (cl:length (cl:slot-value msg 'borderColor))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'borderDash) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     4 (cl:length (cl:slot-value msg 'pointBackgroundColor))
     4 (cl:length (cl:slot-value msg 'pointBorderColor))
     4 (cl:length (cl:slot-value msg 'pointBorderWidth))
     4 (cl:length (cl:slot-value msg 'pointRadius))
     4 (cl:length (cl:slot-value msg 'pointStyle))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TwoDimensional>))
  "Converts a ROS message object to a list"
  (cl:list 'TwoDimensional
    (cl:cons ':order (order msg))
    (cl:cons ':label (label msg))
    (cl:cons ':backgroundColor (backgroundColor msg))
    (cl:cons ':borderColor (borderColor msg))
    (cl:cons ':borderDash (borderDash msg))
    (cl:cons ':borderWidth (borderWidth msg))
    (cl:cons ':pointBackgroundColor (pointBackgroundColor msg))
    (cl:cons ':pointBorderColor (pointBorderColor msg))
    (cl:cons ':pointBorderWidth (pointBorderWidth msg))
    (cl:cons ':pointRadius (pointRadius msg))
    (cl:cons ':pointStyle (pointStyle msg))
    (cl:cons ':lineTension (lineTension msg))
    (cl:cons ':data (data msg))
))
