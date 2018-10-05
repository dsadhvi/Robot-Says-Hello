;; Auto-generated. Do not edit!


(when (boundp 'hark_msgs::HarkJulius)
  (if (not (find-package "HARK_MSGS"))
    (make-package "HARK_MSGS"))
  (shadow 'HarkJulius (find-package "HARK_MSGS")))
(unless (find-package "HARK_MSGS::HARKJULIUS")
  (make-package "HARK_MSGS::HARKJULIUS"))

(in-package "ROS")
;;//! \htmlinclude HarkJulius.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hark_msgs::HarkJulius
  :super ros::object
  :slots (_header _src ))

(defmethod hark_msgs::HarkJulius
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:src __src) (let (r) (dotimes (i 0) (push (instance hark_msgs::HarkJuliusSrc :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _src __src)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
    ;; hark_msgs/HarkJuliusSrc[] _src
    (apply #'+ (send-all _src :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hark_msgs/HarkJuliusSrc[] _src
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
   ;; hark_msgs/HarkJuliusSrc[] _src
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _src (let (r) (dotimes (i n) (push (instance hark_msgs::HarkJuliusSrc :init) r)) r))
     (dolist (elem- _src)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hark_msgs::HarkJulius :md5sum-) "18ac98bafa65529bae1ef5042e324284")
(setf (get hark_msgs::HarkJulius :datatype-) "hark_msgs/HarkJulius")
(setf (get hark_msgs::HarkJulius :definition-)
      "Header header
HarkJuliusSrc[] src # Detail of Julius recognition result

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
MSG: hark_msgs/HarkJuliusSrc
int32 id
float32 azimuth
float32 elevation
int32 sec
int32 usec
int32 frames
int32 msec
int8 status            # status of recognition process defined below
HarkJuliusSrcVal[] src # WHYPO results for each source

int8 TERMINATED=0
int8 STARTRECOG=1
int8 INPUTPARAM=2
int8 SOURCEINFO=3
int8 RECOGOUT=4
int8 RECOGFAIL=5

================================================================================
MSG: hark_msgs/HarkJuliusSrcVal
string word
int32 classid
string phone
float32 cm

")



(provide :hark_msgs/HarkJulius "18ac98bafa65529bae1ef5042e324284")


