;; Auto-generated. Do not edit!


(when (boundp 'bwi_speech_services::RequestSoundTranscript)
  (if (not (find-package "BWI_SPEECH_SERVICES"))
    (make-package "BWI_SPEECH_SERVICES"))
  (shadow 'RequestSoundTranscript (find-package "BWI_SPEECH_SERVICES")))
(unless (find-package "BWI_SPEECH_SERVICES::REQUESTSOUNDTRANSCRIPT")
  (make-package "BWI_SPEECH_SERVICES::REQUESTSOUNDTRANSCRIPT"))
(unless (find-package "BWI_SPEECH_SERVICES::REQUESTSOUNDTRANSCRIPTREQUEST")
  (make-package "BWI_SPEECH_SERVICES::REQUESTSOUNDTRANSCRIPTREQUEST"))
(unless (find-package "BWI_SPEECH_SERVICES::REQUESTSOUNDTRANSCRIPTRESPONSE")
  (make-package "BWI_SPEECH_SERVICES::REQUESTSOUNDTRANSCRIPTRESPONSE"))

(in-package "ROS")





(defclass bwi_speech_services::RequestSoundTranscriptRequest
  :super ros::object
  :slots ())

(defmethod bwi_speech_services::RequestSoundTranscriptRequest
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

(defclass bwi_speech_services::RequestSoundTranscriptResponse
  :super ros::object
  :slots (_isGood _utterance ))

(defmethod bwi_speech_services::RequestSoundTranscriptResponse
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

(defclass bwi_speech_services::RequestSoundTranscript
  :super ros::object
  :slots ())

(setf (get bwi_speech_services::RequestSoundTranscript :md5sum-) "02c8de1031c790d65706e50834055714")
(setf (get bwi_speech_services::RequestSoundTranscript :datatype-) "bwi_speech_services/RequestSoundTranscript")
(setf (get bwi_speech_services::RequestSoundTranscript :request) bwi_speech_services::RequestSoundTranscriptRequest)
(setf (get bwi_speech_services::RequestSoundTranscript :response) bwi_speech_services::RequestSoundTranscriptResponse)

(defmethod bwi_speech_services::RequestSoundTranscriptRequest
  (:response () (instance bwi_speech_services::RequestSoundTranscriptResponse :init)))

(setf (get bwi_speech_services::RequestSoundTranscriptRequest :md5sum-) "02c8de1031c790d65706e50834055714")
(setf (get bwi_speech_services::RequestSoundTranscriptRequest :datatype-) "bwi_speech_services/RequestSoundTranscriptRequest")
(setf (get bwi_speech_services::RequestSoundTranscriptRequest :definition-)
      "---
bool isGood
string utterance

")

(setf (get bwi_speech_services::RequestSoundTranscriptResponse :md5sum-) "02c8de1031c790d65706e50834055714")
(setf (get bwi_speech_services::RequestSoundTranscriptResponse :datatype-) "bwi_speech_services/RequestSoundTranscriptResponse")
(setf (get bwi_speech_services::RequestSoundTranscriptResponse :definition-)
      "---
bool isGood
string utterance

")



(provide :bwi_speech_services/RequestSoundTranscript "02c8de1031c790d65706e50834055714")


