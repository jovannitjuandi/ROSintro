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
  :slots (_first_name _coordinate _num ))

(defmethod hello::Num
  (:init
   (&key
    ((:first_name __first_name) (instance std_msgs::String :init))
    ((:coordinate __coordinate) (instance geometry_msgs::Vector3 :init))
    ((:num __num) 0)
    )
   (send-super :init)
   (setq _first_name __first_name)
   (setq _coordinate __coordinate)
   (setq _num (round __num))
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
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _first_name
    (send _first_name :serialization-length)
    ;; geometry_msgs/Vector3 _coordinate
    (send _coordinate :serialization-length)
    ;; int64 _num
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _first_name
       (send _first_name :serialize s)
     ;; geometry_msgs/Vector3 _coordinate
       (send _coordinate :serialize s)
     ;; int64 _num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num) (= (length (_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num . bv) 0) 0) s)
              (write-long (ash (elt (_num . bv) 1) -1) s))
             ((and (class _num) (= (length (_num . bv)) 1)) ;; big1
              (write-long (elt (_num . bv) 0) s)
              (write-long (if (>= _num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num s)(write-long (if (>= _num 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _first_name
     (send _first_name :deserialize buf ptr-) (incf ptr- (send _first_name :serialization-length))
   ;; geometry_msgs/Vector3 _coordinate
     (send _coordinate :deserialize buf ptr-) (incf ptr- (send _coordinate :serialization-length))
   ;; int64 _num
#+(or :alpha :irix6 :x86_64)
      (setf _num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get hello::Num :md5sum-) "47f709c3ebbeb15e51c9821690dd7abd")
(setf (get hello::Num :datatype-) "hello/Num")
(setf (get hello::Num :definition-)
      "std_msgs/String first_name
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
")



(provide :hello/Num "47f709c3ebbeb15e51c9821690dd7abd")


