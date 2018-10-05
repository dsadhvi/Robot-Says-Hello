;; Auto-generated. Do not edit!


(when (boundp 'hark_msgs::HarkSourceVal)
  (if (not (find-package "HARK_MSGS"))
    (make-package "HARK_MSGS"))
  (shadow 'HarkSourceVal (find-package "HARK_MSGS")))
(unless (find-package "HARK_MSGS::HARKSOURCEVAL")
  (make-package "HARK_MSGS::HARKSOURCEVAL"))

(in-package "ROS")
;;//! \htmlinclude HarkSourceVal.msg.html


(defclass hark_msgs::HarkSourceVal
  :super ros::object
  :slots (_id _power _x _y _z _azimuth _elevation ))

(defmethod hark_msgs::HarkSourceVal
  (:init
   (&key
    ((:id __id) 0)
    ((:power __power) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:elevation __elevation) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _power (float __power))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _azimuth (float __azimuth))
   (setq _elevation (float __elevation))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float32 _power
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _azimuth
    4
    ;; float32 _elevation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float32 _power
       (sys::poke _power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _elevation
       (sys::poke _elevation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _power
     (setq _power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _azimuth
     (setq _azimuth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _elevation
     (setq _elevation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hark_msgs::HarkSourceVal :md5sum-) "ee0b7cc36255925b0a96b74055ee462f")
(setf (get hark_msgs::HarkSourceVal :datatype-) "hark_msgs/HarkSourceVal")
(setf (get hark_msgs::HarkSourceVal :definition-)
      "int32 id
float32 power
float32 x
float32 y
float32 z
float32 azimuth
float32 elevation

")



(provide :hark_msgs/HarkSourceVal "ee0b7cc36255925b0a96b74055ee462f")


