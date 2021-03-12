;; Auto-generated. Do not edit!


(when (boundp 'hello::TwoDimensional)
  (if (not (find-package "HELLO"))
    (make-package "HELLO"))
  (shadow 'TwoDimensional (find-package "HELLO")))
(unless (find-package "HELLO::TWODIMENSIONAL")
  (make-package "HELLO::TWODIMENSIONAL"))

(in-package "ROS")
;;//! \htmlinclude TwoDimensional.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hello::TwoDimensional
  :super ros::object
  :slots (_order _label _backgroundColor _borderColor _borderDash _borderWidth _pointBackgroundColor _pointBorderColor _pointBorderWidth _pointRadius _pointStyle _lineTension _data ))

(defmethod hello::TwoDimensional
  (:init
   (&key
    ((:order __order) 0)
    ((:label __label) "")
    ((:backgroundColor __backgroundColor) "")
    ((:borderColor __borderColor) "")
    ((:borderDash __borderDash) (make-array 0 :initial-element 0 :element-type :char))
    ((:borderWidth __borderWidth) 0)
    ((:pointBackgroundColor __pointBackgroundColor) "")
    ((:pointBorderColor __pointBorderColor) "")
    ((:pointBorderWidth __pointBorderWidth) "")
    ((:pointRadius __pointRadius) "")
    ((:pointStyle __pointStyle) "")
    ((:lineTension __lineTension) 0.0)
    ((:data __data) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _order (round __order))
   (setq _label (string __label))
   (setq _backgroundColor (string __backgroundColor))
   (setq _borderColor (string __borderColor))
   (setq _borderDash __borderDash)
   (setq _borderWidth (round __borderWidth))
   (setq _pointBackgroundColor (string __pointBackgroundColor))
   (setq _pointBorderColor (string __pointBorderColor))
   (setq _pointBorderWidth (string __pointBorderWidth))
   (setq _pointRadius (string __pointRadius))
   (setq _pointStyle (string __pointStyle))
   (setq _lineTension (float __lineTension))
   (setq _data __data)
   self)
  (:order
   (&optional __order)
   (if __order (setq _order __order)) _order)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:backgroundColor
   (&optional __backgroundColor)
   (if __backgroundColor (setq _backgroundColor __backgroundColor)) _backgroundColor)
  (:borderColor
   (&optional __borderColor)
   (if __borderColor (setq _borderColor __borderColor)) _borderColor)
  (:borderDash
   (&optional __borderDash)
   (if __borderDash (setq _borderDash __borderDash)) _borderDash)
  (:borderWidth
   (&optional __borderWidth)
   (if __borderWidth (setq _borderWidth __borderWidth)) _borderWidth)
  (:pointBackgroundColor
   (&optional __pointBackgroundColor)
   (if __pointBackgroundColor (setq _pointBackgroundColor __pointBackgroundColor)) _pointBackgroundColor)
  (:pointBorderColor
   (&optional __pointBorderColor)
   (if __pointBorderColor (setq _pointBorderColor __pointBorderColor)) _pointBorderColor)
  (:pointBorderWidth
   (&optional __pointBorderWidth)
   (if __pointBorderWidth (setq _pointBorderWidth __pointBorderWidth)) _pointBorderWidth)
  (:pointRadius
   (&optional __pointRadius)
   (if __pointRadius (setq _pointRadius __pointRadius)) _pointRadius)
  (:pointStyle
   (&optional __pointStyle)
   (if __pointStyle (setq _pointStyle __pointStyle)) _pointStyle)
  (:lineTension
   (&optional __lineTension)
   (if __lineTension (setq _lineTension __lineTension)) _lineTension)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _order
    1
    ;; string _label
    4 (length _label)
    ;; string _backgroundColor
    4 (length _backgroundColor)
    ;; string _borderColor
    4 (length _borderColor)
    ;; uint8[] _borderDash
    (* 1    (length _borderDash)) 4
    ;; uint8 _borderWidth
    1
    ;; string _pointBackgroundColor
    4 (length _pointBackgroundColor)
    ;; string _pointBorderColor
    4 (length _pointBorderColor)
    ;; string _pointBorderWidth
    4 (length _pointBorderWidth)
    ;; string _pointRadius
    4 (length _pointRadius)
    ;; string _pointStyle
    4 (length _pointStyle)
    ;; float32 _lineTension
    4
    ;; geometry_msgs/Point[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _order
       (write-byte _order s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; string _backgroundColor
       (write-long (length _backgroundColor) s) (princ _backgroundColor s)
     ;; string _borderColor
       (write-long (length _borderColor) s) (princ _borderColor s)
     ;; uint8[] _borderDash
     (write-long (length _borderDash) s)
     (princ _borderDash s)
     ;; uint8 _borderWidth
       (write-byte _borderWidth s)
     ;; string _pointBackgroundColor
       (write-long (length _pointBackgroundColor) s) (princ _pointBackgroundColor s)
     ;; string _pointBorderColor
       (write-long (length _pointBorderColor) s) (princ _pointBorderColor s)
     ;; string _pointBorderWidth
       (write-long (length _pointBorderWidth) s) (princ _pointBorderWidth s)
     ;; string _pointRadius
       (write-long (length _pointRadius) s) (princ _pointRadius s)
     ;; string _pointStyle
       (write-long (length _pointStyle) s) (princ _pointStyle s)
     ;; float32 _lineTension
       (sys::poke _lineTension (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _order
     (setq _order (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _backgroundColor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _backgroundColor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _borderColor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _borderColor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[] _borderDash
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _borderDash (make-array n :element-type :char))
     (replace _borderDash buf :start2 ptr-) (incf ptr- n))
   ;; uint8 _borderWidth
     (setq _borderWidth (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _pointBackgroundColor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pointBackgroundColor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pointBorderColor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pointBorderColor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pointBorderWidth
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pointBorderWidth (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pointRadius
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pointRadius (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pointStyle
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pointStyle (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _lineTension
     (setq _lineTension (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hello::TwoDimensional :md5sum-) "1d5235d6d90ee1297e306e5021a67801")
(setf (get hello::TwoDimensional :datatype-) "hello/TwoDimensional")
(setf (get hello::TwoDimensional :definition-)
      "# webviz_msgs/TwoDimensionalPlotDatapoint definition

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

")



(provide :hello/TwoDimensional "1d5235d6d90ee1297e306e5021a67801")


