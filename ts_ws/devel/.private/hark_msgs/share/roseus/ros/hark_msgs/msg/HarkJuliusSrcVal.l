;; Auto-generated. Do not edit!


(when (boundp 'hark_msgs::HarkJuliusSrcVal)
  (if (not (find-package "HARK_MSGS"))
    (make-package "HARK_MSGS"))
  (shadow 'HarkJuliusSrcVal (find-package "HARK_MSGS")))
(unless (find-package "HARK_MSGS::HARKJULIUSSRCVAL")
  (make-package "HARK_MSGS::HARKJULIUSSRCVAL"))

(in-package "ROS")
;;//! \htmlinclude HarkJuliusSrcVal.msg.html


(defclass hark_msgs::HarkJuliusSrcVal
  :super ros::object
  :slots (_word _classid _phone _cm ))

(defmethod hark_msgs::HarkJuliusSrcVal
  (:init
   (&key
    ((:word __word) "")
    ((:classid __classid) 0)
    ((:phone __phone) "")
    ((:cm __cm) 0.0)
    )
   (send-super :init)
   (setq _word (string __word))
   (setq _classid (round __classid))
   (setq _phone (string __phone))
   (setq _cm (float __cm))
   self)
  (:word
   (&optional __word)
   (if __word (setq _word __word)) _word)
  (:classid
   (&optional __classid)
   (if __classid (setq _classid __classid)) _classid)
  (:phone
   (&optional __phone)
   (if __phone (setq _phone __phone)) _phone)
  (:cm
   (&optional __cm)
   (if __cm (setq _cm __cm)) _cm)
  (:serialization-length
   ()
   (+
    ;; string _word
    4 (length _word)
    ;; int32 _classid
    4
    ;; string _phone
    4 (length _phone)
    ;; float32 _cm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _word
       (write-long (length _word) s) (princ _word s)
     ;; int32 _classid
       (write-long _classid s)
     ;; string _phone
       (write-long (length _phone) s) (princ _phone s)
     ;; float32 _cm
       (sys::poke _cm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _word
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _word (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _classid
     (setq _classid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _phone
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _phone (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _cm
     (setq _cm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hark_msgs::HarkJuliusSrcVal :md5sum-) "d68fa7d47b805f4384367952f7f8407e")
(setf (get hark_msgs::HarkJuliusSrcVal :datatype-) "hark_msgs/HarkJuliusSrcVal")
(setf (get hark_msgs::HarkJuliusSrcVal :definition-)
      "string word
int32 classid
string phone
float32 cm

")



(provide :hark_msgs/HarkJuliusSrcVal "d68fa7d47b805f4384367952f7f8407e")


