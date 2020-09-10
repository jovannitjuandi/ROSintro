; Auto-generated. Do not edit!


(cl:in-package hello-msg)


;//! \htmlinclude Num.msg.html

(cl:defclass <Num> (roslisp-msg-protocol:ros-message)
  ((first_name
    :reader first_name
    :initarg :first_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (coordinate
    :reader coordinate
    :initarg :coordinate
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass Num (<Num>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Num>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Num)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello-msg:<Num> is deprecated: use hello-msg:Num instead.")))

(cl:ensure-generic-function 'first_name-val :lambda-list '(m))
(cl:defmethod first_name-val ((m <Num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:first_name-val is deprecated.  Use hello-msg:first_name instead.")
  (first_name m))

(cl:ensure-generic-function 'coordinate-val :lambda-list '(m))
(cl:defmethod coordinate-val ((m <Num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:coordinate-val is deprecated.  Use hello-msg:coordinate instead.")
  (coordinate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Num>) ostream)
  "Serializes a message object of type '<Num>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'first_name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'coordinate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Num>) istream)
  "Deserializes a message object of type '<Num>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'first_name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'coordinate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Num>)))
  "Returns string type for a message object of type '<Num>"
  "hello/Num")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Num)))
  "Returns string type for a message object of type 'Num"
  "hello/Num")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Num>)))
  "Returns md5sum for a message object of type '<Num>"
  "f1d7a94780dfd063c66a59a7acca4aa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Num)))
  "Returns md5sum for a message object of type 'Num"
  "f1d7a94780dfd063c66a59a7acca4aa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Num>)))
  "Returns full string definition for message of type '<Num>"
  (cl:format cl:nil "# Num.msg~%~%std_msgs/String first_name~%geometry_msgs/Vector3 coordinate~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Num)))
  "Returns full string definition for message of type 'Num"
  (cl:format cl:nil "# Num.msg~%~%std_msgs/String first_name~%geometry_msgs/Vector3 coordinate~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Num>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'first_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'coordinate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Num>))
  "Converts a ROS message object to a list"
  (cl:list 'Num
    (cl:cons ':first_name (first_name msg))
    (cl:cons ':coordinate (coordinate msg))
))
