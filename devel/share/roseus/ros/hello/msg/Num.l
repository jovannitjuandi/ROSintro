;; Auto-generated. Do not edit!


(when (boundp 'hello::Num)
  (if (not (find-package "HELLO"))
    (make-package "HELLO"))
  (shadow 'Num (find-package "HELLO")))
(unless (find-package "HELLO::NUM")
  (make-package "HELLO::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hello::Num
  :super ros::object
  :slots (_first_name _coordinate ))

(defmethod hello::Num
  (:init
   (&key
    ((:first_name __first_name) (instance std_msgs::String :init))
    ((:coordinate __coordinate) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _first_name __first_name)
   (setq _coordinate __coordinate)
   self)
  (:first_name
   (&rest __first_name)
   (if (keywordp (car __first_name))
       (send* _first_name __first_name)
     (progn
       (if __first_name (setq _first_name (car __first_name)))
       _first_name)))
  (:coordinate
   (&rest __coordinate)
   (if (keywordp (car __coordinate))
       (send* _coordinate __coordinate)
     (progn
       (if __coordinate (setq _coordinate (car __coordinate)))
       _coordinate)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _first_name
    (send _first_name :serialization-length)
    ;; geometry_msgs/Vector3 _coordinate
    (send _coordinate :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _first_name
       (send _first_name :serialize s)
     ;; geometry_msgs/Vector3 _coordinate
       (send _coordinate :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _first_name
     (send _first_name :deserialize buf ptr-) (incf ptr- (send _first_name :serialization-length))
   ;; geometry_msgs/Vector3 _coordinate
     (send _coordinate :deserialize buf ptr-) (incf ptr- (send _coordinate :serialization-length))
   ;;
   self)
  )

(setf (get hello::Num :md5sum-) "f1d7a94780dfd063c66a59a7acca4aa5")
(setf (get hello::Num :datatype-) "hello/Num")
(setf (get hello::Num :definition-)
      "# Num.msg

std_msgs/String first_name
geometry_msgs/Vector3 coordinate

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
")



(provide :hello/Num "f1d7a94780dfd063c66a59a7acca4aa5")


