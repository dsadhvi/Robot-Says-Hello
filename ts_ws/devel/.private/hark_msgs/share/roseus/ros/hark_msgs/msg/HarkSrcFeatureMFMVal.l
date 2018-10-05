;; Auto-generated. Do not edit!


(when (boundp 'hark_msgs::HarkSrcFeatureMFMVal)
  (if (not (find-package "HARK_MSGS"))
    (make-package "HARK_MSGS"))
  (shadow 'HarkSrcFeatureMFMVal (find-package "HARK_MSGS")))
(unless (find-package "HARK_MSGS::HARKSRCFEATUREMFMVAL")
  (make-package "HARK_MSGS::HARKSRCFEATUREMFMVAL"))

(in-package "ROS")
;;//! \htmlinclude HarkSrcFeatureMFMVal.msg.html


(defclass hark_msgs::HarkSrcFeatureMFMVal
  :super ros::object
  :slots (_id _power _x _y _z _azimuth _elevation _length_feature _data_bytes_feature _featuredata_feature _length_mfm _data_bytes_mfm _featuredata_mfm ))

(defmethod hark_msgs::HarkSrcFeatureMFMVal
  (:init
   (&key
    ((:id __id) 0)
    ((:power __power) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:elevation __elevation) 0.0)
    ((:length_feature __length_feature) 0)
    ((:data_bytes_feature __data_bytes_feature) 0)
    ((:featuredata_feature __featuredata_feature) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:length_mfm __length_mfm) 0)
    ((:data_bytes_mfm __data_bytes_mfm) 0)
    ((:featuredata_mfm __featuredata_mfm) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _power (float __power))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _azimuth (float __azimuth))
   (setq _elevation (float __elevation))
   (setq _length_feature (round __length_feature))
   (setq _data_bytes_feature (round __data_bytes_feature))
   (setq _featuredata_feature __featuredata_feature)
   (setq _length_mfm (round __length_mfm))
   (setq _data_bytes_mfm (round __data_bytes_mfm))
   (setq _featuredata_mfm __featuredata_mfm)
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
  (:length_feature
   (&optional __length_feature)
   (if __length_feature (setq _length_feature __length_feature)) _length_feature)
  (:data_bytes_feature
   (&optional __data_bytes_feature)
   (if __data_bytes_feature (setq _data_bytes_feature __data_bytes_feature)) _data_bytes_feature)
  (:featuredata_feature
   (&optional __featuredata_feature)
   (if __featuredata_feature (setq _featuredata_feature __featuredata_feature)) _featuredata_feature)
  (:length_mfm
   (&optional __length_mfm)
   (if __length_mfm (setq _length_mfm __length_mfm)) _length_mfm)
  (:data_bytes_mfm
   (&optional __data_bytes_mfm)
   (if __data_bytes_mfm (setq _data_bytes_mfm __data_bytes_mfm)) _data_bytes_mfm)
  (:featuredata_mfm
   (&optional __featuredata_mfm)
   (if __featuredata_mfm (setq _featuredata_mfm __featuredata_mfm)) _featuredata_mfm)
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
    ;; int32 _length_feature
    4
    ;; int32 _data_bytes_feature
    4
    ;; float32[] _featuredata_feature
    (* 4    (length _featuredata_feature)) 4
    ;; int32 _length_mfm
    4
    ;; int32 _data_bytes_mfm
    4
    ;; float32[] _featuredata_mfm
    (* 4    (length _featuredata_mfm)) 4
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
     ;; int32 _length_feature
       (write-long _length_feature s)
     ;; int32 _data_bytes_feature
       (write-long _data_bytes_feature s)
     ;; float32[] _featuredata_feature
     (write-long (length _featuredata_feature) s)
     (dotimes (i (length _featuredata_feature))
       (sys::poke (elt _featuredata_feature i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _length_mfm
       (write-long _length_mfm s)
     ;; int32 _data_bytes_mfm
       (write-long _data_bytes_mfm s)
     ;; float32[] _featuredata_mfm
     (write-long (length _featuredata_mfm) s)
     (dotimes (i (length _featuredata_mfm))
       (sys::poke (elt _featuredata_mfm i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; int32 _length_feature
     (setq _length_feature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _data_bytes_feature
     (setq _data_bytes_feature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _featuredata_feature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _featuredata_feature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _featuredata_feature i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _length_mfm
     (setq _length_mfm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _data_bytes_mfm
     (setq _data_bytes_mfm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _featuredata_mfm
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _featuredata_mfm (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _featuredata_mfm i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hark_msgs::HarkSrcFeatureMFMVal :md5sum-) "127ac60e264e1ad6ade4a918cf7daa0e")
(setf (get hark_msgs::HarkSrcFeatureMFMVal :datatype-) "hark_msgs/HarkSrcFeatureMFMVal")
(setf (get hark_msgs::HarkSrcFeatureMFMVal :definition-)
      "int32 id
float32 power
float32 x
float32 y
float32 z
float32 azimuth
float32 elevation
int32 length_feature
int32 data_bytes_feature
float32[] featuredata_feature
int32 length_mfm
int32 data_bytes_mfm
float32[] featuredata_mfm

")



(provide :hark_msgs/HarkSrcFeatureMFMVal "127ac60e264e1ad6ade4a918cf7daa0e")


