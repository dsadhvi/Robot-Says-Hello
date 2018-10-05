;; Auto-generated. Do not edit!


(when (boundp 'hark_msgs::HarkFFT)
  (if (not (find-package "HARK_MSGS"))
    (make-package "HARK_MSGS"))
  (shadow 'HarkFFT (find-package "HARK_MSGS")))
(unless (find-package "HARK_MSGS::HARKFFT")
  (make-package "HARK_MSGS::HARKFFT"))

(in-package "ROS")
;;//! \htmlinclude HarkFFT.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hark_msgs::HarkFFT
  :super ros::object
  :slots (_header _count _nch _length _src ))

(defmethod hark_msgs::HarkFFT
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:count __count) 0)
    ((:nch __nch) 0)
    ((:length __length) 0)
    ((:src __src) (let (r) (dotimes (i 0) (push (instance hark_msgs::HarkFFTVal :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _count (round __count))
   (setq _nch (round __nch))
   (setq _length (round __length))
   (setq _src __src)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:nch
   (&optional __nch)
   (if __nch (setq _nch __nch)) _nch)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:src
   (&rest __src)
   (if (keywordp (car __src))
       (send* _src __src)
     (progn
       (if __src (setq _src (car __src)))
       _src)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _count
    4
    ;; int32 _nch
    4
    ;; int32 _length
    4
    ;; hark_msgs/HarkFFTVal[] _src
    (apply #'+ (send-all _src :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _count
       (write-long _count s)
     ;; int32 _nch
       (write-long _nch s)
     ;; int32 _length
       (write-long _length s)
     ;; hark_msgs/HarkFFTVal[] _src
     (write-long (length _src) s)
     (dolist (elem _src)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _nch
     (setq _nch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; hark_msgs/HarkFFTVal[] _src
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _src (let (r) (dotimes (i n) (push (instance hark_msgs::HarkFFTVal :init) r)) r))
     (dolist (elem- _src)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hark_msgs::HarkFFT :md5sum-) "8aab5c2ab0dcabc23cdf16e2742a6c6d")
(setf (get hark_msgs::HarkFFT :datatype-) "hark_msgs/HarkFFT")
(setf (get hark_msgs::HarkFFT :definition-)
      "Header header
int32 count
int32 nch
int32 length
HarkFFTVal[] src # FFT signal of each channel

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: hark_msgs/HarkFFTVal
float32[] fftdata_real
float32[] fftdata_imag

")



(provide :hark_msgs/HarkFFT "8aab5c2ab0dcabc23cdf16e2742a6c6d")


