;; Auto-generated. Do not edit!


(when (boundp 'hark_msgs::HarkWaveVal)
  (if (not (find-package "HARK_MSGS"))
    (make-package "HARK_MSGS"))
  (shadow 'HarkWaveVal (find-package "HARK_MSGS")))
(unless (find-package "HARK_MSGS::HARKWAVEVAL")
  (make-package "HARK_MSGS::HARKWAVEVAL"))

(in-package "ROS")
;;//! \htmlinclude HarkWaveVal.msg.html


(defclass hark_msgs::HarkWaveVal
  :super ros::object
  :slots (_wavedata ))

(defmethod hark_msgs::HarkWaveVal
  (:init
   (&key
    ((:wavedata __wavedata) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _wavedata __wavedata)
   self)
  (:wavedata
   (&optional __wavedata)
   (if __wavedata (setq _wavedata __wavedata)) _wavedata)
  (:serialization-length
   ()
   (+
    ;; float32[] _wavedata
    (* 4    (length _wavedata)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _wavedata
     (write-long (length _wavedata) s)
     (dotimes (i (length _wavedata))
       (sys::poke (elt _wavedata i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _wavedata
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wavedata (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wavedata i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hark_msgs::HarkWaveVal :md5sum-) "6d4ffa9fffe078365bb941098c16cdfd")
(setf (get hark_msgs::HarkWaveVal :datatype-) "hark_msgs/HarkWaveVal")
(setf (get hark_msgs::HarkWaveVal :definition-)
      "float32[] wavedata

")



(provide :hark_msgs/HarkWaveVal "6d4ffa9fffe078365bb941098c16cdfd")


