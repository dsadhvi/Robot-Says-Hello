;; Auto-generated. Do not edit!


(when (boundp 'villa_audio::RequestSoundTranscript)
  (if (not (find-package "VILLA_AUDIO"))
    (make-package "VILLA_AUDIO"))
  (shadow 'RequestSoundTranscript (find-package "VILLA_AUDIO")))
(unless (find-package "VILLA_AUDIO::REQUESTSOUNDTRANSCRIPT")
  (make-package "VILLA_AUDIO::REQUESTSOUNDTRANSCRIPT"))
(unless (find-package "VILLA_AUDIO::REQUESTSOUNDTRANSCRIPTREQUEST")
  (make-package "VILLA_AUDIO::REQUESTSOUNDTRANSCRIPTREQUEST"))
(unless (find-package "VILLA_AUDIO::REQUESTSOUNDTRANSCRIPTRESPONSE")
  (make-package "VILLA_AUDIO::REQUESTSOUNDTRANSCRIPTRESPONSE"))

(in-package "ROS")





(defclass villa_audio::RequestSoundTranscriptRequest
  :super ros::object
  :slots ())

(defmethod villa_audio::RequestSoundTranscriptRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass villa_audio::RequestSoundTranscriptResponse
  :super ros::object
  :slots (_isGood _utterance ))

(defmethod villa_audio::RequestSoundTranscriptResponse
  (:init
   (&key
    ((:isGood __isGood) nil)
    ((:utterance __utterance) "")
    )
   (send-super :init)
   (setq _isGood __isGood)
   (setq _utterance (string __utterance))
   self)
  (:isGood
   (&optional __isGood)
   (if __isGood (setq _isGood __isGood)) _isGood)
  (:utterance
   (&optional __utterance)
   (if __utterance (setq _utterance __utterance)) _utterance)
  (:serialization-length
   ()
   (+
    ;; bool _isGood
    1
    ;; string _utterance
    4 (length _utterance)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isGood
       (if _isGood (write-byte -1 s) (write-byte 0 s))
     ;; string _utterance
       (write-long (length _utterance) s) (princ _utterance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isGood
     (setq _isGood (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _utterance
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _utterance (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass villa_audio::RequestSoundTranscript
  :super ros::object
  :slots ())

(setf (get villa_audio::RequestSoundTranscript :md5sum-) "02c8de1031c790d65706e50834055714")
(setf (get villa_audio::RequestSoundTranscript :datatype-) "villa_audio/RequestSoundTranscript")
(setf (get villa_audio::RequestSoundTranscript :request) villa_audio::RequestSoundTranscriptRequest)
(setf (get villa_audio::RequestSoundTranscript :response) villa_audio::RequestSoundTranscriptResponse)

(defmethod villa_audio::RequestSoundTranscriptRequest
  (:response () (instance villa_audio::RequestSoundTranscriptResponse :init)))

(setf (get villa_audio::RequestSoundTranscriptRequest :md5sum-) "02c8de1031c790d65706e50834055714")
(setf (get villa_audio::RequestSoundTranscriptRequest :datatype-) "villa_audio/RequestSoundTranscriptRequest")
(setf (get villa_audio::RequestSoundTranscriptRequest :definition-)
      "---
bool isGood
string utterance

")

(setf (get villa_audio::RequestSoundTranscriptResponse :md5sum-) "02c8de1031c790d65706e50834055714")
(setf (get villa_audio::RequestSoundTranscriptResponse :datatype-) "villa_audio/RequestSoundTranscriptResponse")
(setf (get villa_audio::RequestSoundTranscriptResponse :definition-)
      "---
bool isGood
string utterance

")



(provide :villa_audio/RequestSoundTranscript "02c8de1031c790d65706e50834055714")


