;; Auto-generated. Do not edit!


(when (boundp 'hark_msgs::HarkJuliusSrc)
  (if (not (find-package "HARK_MSGS"))
    (make-package "HARK_MSGS"))
  (shadow 'HarkJuliusSrc (find-package "HARK_MSGS")))
(unless (find-package "HARK_MSGS::HARKJULIUSSRC")
  (make-package "HARK_MSGS::HARKJULIUSSRC"))

(in-package "ROS")
;;//! \htmlinclude HarkJuliusSrc.msg.html


(intern "*TERMINATED*" (find-package "HARK_MSGS::HARKJULIUSSRC"))
(shadow '*TERMINATED* (find-package "HARK_MSGS::HARKJULIUSSRC"))
(defconstant hark_msgs::HarkJuliusSrc::*TERMINATED* 0)
(intern "*STARTRECOG*" (find-package "HARK_MSGS::HARKJULIUSSRC"))
(shadow '*STARTRECOG* (find-package "HARK_MSGS::HARKJULIUSSRC"))
(defconstant hark_msgs::HarkJuliusSrc::*STARTRECOG* 1)
(intern "*INPUTPARAM*" (find-package "HARK_MSGS::HARKJULIUSSRC"))
(shadow '*INPUTPARAM* (find-package "HARK_MSGS::HARKJULIUSSRC"))
(defconstant hark_msgs::HarkJuliusSrc::*INPUTPARAM* 2)
(intern "*SOURCEINFO*" (find-package "HARK_MSGS::HARKJULIUSSRC"))
(shadow '*SOURCEINFO* (find-package "HARK_MSGS::HARKJULIUSSRC"))
(defconstant hark_msgs::HarkJuliusSrc::*SOURCEINFO* 3)
(intern "*RECOGOUT*" (find-package "HARK_MSGS::HARKJULIUSSRC"))
(shadow '*RECOGOUT* (find-package "HARK_MSGS::HARKJULIUSSRC"))
(defconstant hark_msgs::HarkJuliusSrc::*RECOGOUT* 4)
(intern "*RECOGFAIL*" (find-package "HARK_MSGS::HARKJULIUSSRC"))
(shadow '*RECOGFAIL* (find-package "HARK_MSGS::HARKJULIUSSRC"))
(defconstant hark_msgs::HarkJuliusSrc::*RECOGFAIL* 5)
(defclass hark_msgs::HarkJuliusSrc
  :super ros::object
  :slots (_id _azimuth _elevation _sec _usec _frames _msec _status _src ))

(defmethod hark_msgs::HarkJuliusSrc
  (:init
   (&key
    ((:id __id) 0)
    ((:azimuth __azimuth) 0.0)
    ((:elevation __elevation) 0.0)
    ((:sec __sec) 0)
    ((:usec __usec) 0)
    ((:frames __frames) 0)
    ((:msec __msec) 0)
    ((:status __status) 0)
    ((:src __src) (let (r) (dotimes (i 0) (push (instance hark_msgs::HarkJuliusSrcVal :init) r)) r))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _azimuth (float __azimuth))
   (setq _elevation (float __elevation))
   (setq _sec (round __sec))
   (setq _usec (round __usec))
   (setq _frames (round __frames))
   (setq _msec (round __msec))
   (setq _status (round __status))
   (setq _src __src)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:sec
   (&optional __sec)
   (if __sec (setq _sec __sec)) _sec)
  (:usec
   (&optional __usec)
   (if __usec (setq _usec __usec)) _usec)
  (:frames
   (&optional __frames)
   (if __frames (setq _frames __frames)) _frames)
  (:msec
   (&optional __msec)
   (if __msec (setq _msec __msec)) _msec)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
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
    ;; int32 _id
    4
    ;; float32 _azimuth
    4
    ;; float32 _elevation
    4
    ;; int32 _sec
    4
    ;; int32 _usec
    4
    ;; int32 _frames
    4
    ;; int32 _msec
    4
    ;; int8 _status
    1
    ;; hark_msgs/HarkJuliusSrcVal[] _src
    (apply #'+ (send-all _src :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float32 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _elevation
       (sys::poke _elevation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _sec
       (write-long _sec s)
     ;; int32 _usec
       (write-long _usec s)
     ;; int32 _frames
       (write-long _frames s)
     ;; int32 _msec
       (write-long _msec s)
     ;; int8 _status
       (write-byte _status s)
     ;; hark_msgs/HarkJuliusSrcVal[] _src
     (write-long (length _src) s)
     (dolist (elem _src)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _azimuth
     (setq _azimuth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _elevation
     (setq _elevation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _sec
     (setq _sec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _usec
     (setq _usec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _frames
     (setq _frames (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _msec
     (setq _msec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; hark_msgs/HarkJuliusSrcVal[] _src
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _src (let (r) (dotimes (i n) (push (instance hark_msgs::HarkJuliusSrcVal :init) r)) r))
     (dolist (elem- _src)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hark_msgs::HarkJuliusSrc :md5sum-) "1aff8127ead3951895e7fd2d0cb19ac9")
(setf (get hark_msgs::HarkJuliusSrc :datatype-) "hark_msgs/HarkJuliusSrc")
(setf (get hark_msgs::HarkJuliusSrc :definition-)
      "int32 id
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



(provide :hark_msgs/HarkJuliusSrc "1aff8127ead3951895e7fd2d0cb19ac9")


