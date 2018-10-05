;; Auto-generated. Do not edit!


(when (boundp 'hark_msgs::HarkFeatureVal)
  (if (not (find-package "HARK_MSGS"))
    (make-package "HARK_MSGS"))
  (shadow 'HarkFeatureVal (find-package "HARK_MSGS")))
(unless (find-package "HARK_MSGS::HARKFEATUREVAL")
  (make-package "HARK_MSGS::HARKFEATUREVAL"))

(in-package "ROS")
;;//! \htmlinclude HarkFeatureVal.msg.html


(defclass hark_msgs::HarkFeatureVal
  :super ros::object
  :slots (_id _length _data_bytes _featuredata ))

(defmethod hark_msgs::HarkFeatureVal
  (:init
   (&key
    ((:id __id) 0)
    ((:length __length) 0)
    ((:data_bytes __data_bytes) 0)
    ((:featuredata __featuredata) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _length (round __length))
   (setq _data_bytes (round __data_bytes))
   (setq _featuredata __featuredata)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:data_bytes
   (&optional __data_bytes)
   (if __data_bytes (setq _data_bytes __data_bytes)) _data_bytes)
  (:featuredata
   (&optional __featuredata)
   (if __featuredata (setq _featuredata __featuredata)) _featuredata)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _length
    4
    ;; int32 _data_bytes
    4
    ;; float32[] _featuredata
    (* 4    (length _featuredata)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _length
       (write-long _length s)
     ;; int32 _data_bytes
       (write-long _data_bytes s)
     ;; float32[] _featuredata
     (write-long (length _featuredata) s)
     (dotimes (i (length _featuredata))
       (sys::poke (elt _featuredata i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _data_bytes
     (setq _data_bytes (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _featuredata
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _featuredata (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _featuredata i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hark_msgs::HarkFeatureVal :md5sum-) "a91db0f9f140ce90dece0bff7d606075")
(setf (get hark_msgs::HarkFeatureVal :datatype-) "hark_msgs/HarkFeatureVal")
(setf (get hark_msgs::HarkFeatureVal :definition-)
      "int32 id
int32 length
int32 data_bytes
float32[] featuredata

")



(provide :hark_msgs/HarkFeatureVal "a91db0f9f140ce90dece0bff7d606075")


