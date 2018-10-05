;; Auto-generated. Do not edit!


(when (boundp 'hark_msgs::HarkSrcFFTVal)
  (if (not (find-package "HARK_MSGS"))
    (make-package "HARK_MSGS"))
  (shadow 'HarkSrcFFTVal (find-package "HARK_MSGS")))
(unless (find-package "HARK_MSGS::HARKSRCFFTVAL")
  (make-package "HARK_MSGS::HARKSRCFFTVAL"))

(in-package "ROS")
;;//! \htmlinclude HarkSrcFFTVal.msg.html


(defclass hark_msgs::HarkSrcFFTVal
  :super ros::object
  :slots (_id _power _x _y _z _azimuth _elevation _length _fftdata_real _fftdata_imag ))

(defmethod hark_msgs::HarkSrcFFTVal
  (:init
   (&key
    ((:id __id) 0)
    ((:power __power) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:elevation __elevation) 0.0)
    ((:length __length) 0)
    ((:fftdata_real __fftdata_real) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:fftdata_imag __fftdata_imag) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _power (float __power))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _azimuth (float __azimuth))
   (setq _elevation (float __elevation))
   (setq _length (round __length))
   (setq _fftdata_real __fftdata_real)
   (setq _fftdata_imag __fftdata_imag)
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
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:fftdata_real
   (&optional __fftdata_real)
   (if __fftdata_real (setq _fftdata_real __fftdata_real)) _fftdata_real)
  (:fftdata_imag
   (&optional __fftdata_imag)
   (if __fftdata_imag (setq _fftdata_imag __fftdata_imag)) _fftdata_imag)
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
    ;; int32 _length
    4
    ;; float32[] _fftdata_real
    (* 4    (length _fftdata_real)) 4
    ;; float32[] _fftdata_imag
    (* 4    (length _fftdata_imag)) 4
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
     ;; int32 _length
       (write-long _length s)
     ;; float32[] _fftdata_real
     (write-long (length _fftdata_real) s)
     (dotimes (i (length _fftdata_real))
       (sys::poke (elt _fftdata_real i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _fftdata_imag
     (write-long (length _fftdata_imag) s)
     (dotimes (i (length _fftdata_imag))
       (sys::poke (elt _fftdata_imag i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
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
   ;; int32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _fftdata_real
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fftdata_real (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fftdata_real i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _fftdata_imag
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fftdata_imag (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fftdata_imag i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hark_msgs::HarkSrcFFTVal :md5sum-) "94acf8949ad4989403dee204649029bc")
(setf (get hark_msgs::HarkSrcFFTVal :datatype-) "hark_msgs/HarkSrcFFTVal")
(setf (get hark_msgs::HarkSrcFFTVal :definition-)
      "int32 id
float32 power
float32 x
float32 y
float32 z
float32 azimuth
float32 elevation
int32 length
float32[] fftdata_real
float32[] fftdata_imag

")



(provide :hark_msgs/HarkSrcFFTVal "94acf8949ad4989403dee204649029bc")


