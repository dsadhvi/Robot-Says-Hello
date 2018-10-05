; Auto-generated. Do not edit!


(cl:in-package villa_audio-srv)


;//! \htmlinclude RequestSoundTranscript-request.msg.html

(cl:defclass <RequestSoundTranscript-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RequestSoundTranscript-request (<RequestSoundTranscript-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestSoundTranscript-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestSoundTranscript-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name villa_audio-srv:<RequestSoundTranscript-request> is deprecated: use villa_audio-srv:RequestSoundTranscript-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestSoundTranscript-request>) ostream)
  "Serializes a message object of type '<RequestSoundTranscript-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestSoundTranscript-request>) istream)
  "Deserializes a message object of type '<RequestSoundTranscript-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestSoundTranscript-request>)))
  "Returns string type for a service object of type '<RequestSoundTranscript-request>"
  "villa_audio/RequestSoundTranscriptRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestSoundTranscript-request)))
  "Returns string type for a service object of type 'RequestSoundTranscript-request"
  "villa_audio/RequestSoundTranscriptRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestSoundTranscript-request>)))
  "Returns md5sum for a message object of type '<RequestSoundTranscript-request>"
  "02c8de1031c790d65706e50834055714")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestSoundTranscript-request)))
  "Returns md5sum for a message object of type 'RequestSoundTranscript-request"
  "02c8de1031c790d65706e50834055714")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestSoundTranscript-request>)))
  "Returns full string definition for message of type '<RequestSoundTranscript-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestSoundTranscript-request)))
  "Returns full string definition for message of type 'RequestSoundTranscript-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestSoundTranscript-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestSoundTranscript-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestSoundTranscript-request
))
;//! \htmlinclude RequestSoundTranscript-response.msg.html

(cl:defclass <RequestSoundTranscript-response> (roslisp-msg-protocol:ros-message)
  ((isGood
    :reader isGood
    :initarg :isGood
    :type cl:boolean
    :initform cl:nil)
   (utterance
    :reader utterance
    :initarg :utterance
    :type cl:string
    :initform ""))
)

(cl:defclass RequestSoundTranscript-response (<RequestSoundTranscript-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestSoundTranscript-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestSoundTranscript-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name villa_audio-srv:<RequestSoundTranscript-response> is deprecated: use villa_audio-srv:RequestSoundTranscript-response instead.")))

(cl:ensure-generic-function 'isGood-val :lambda-list '(m))
(cl:defmethod isGood-val ((m <RequestSoundTranscript-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader villa_audio-srv:isGood-val is deprecated.  Use villa_audio-srv:isGood instead.")
  (isGood m))

(cl:ensure-generic-function 'utterance-val :lambda-list '(m))
(cl:defmethod utterance-val ((m <RequestSoundTranscript-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader villa_audio-srv:utterance-val is deprecated.  Use villa_audio-srv:utterance instead.")
  (utterance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestSoundTranscript-response>) ostream)
  "Serializes a message object of type '<RequestSoundTranscript-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isGood) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'utterance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'utterance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestSoundTranscript-response>) istream)
  "Deserializes a message object of type '<RequestSoundTranscript-response>"
    (cl:setf (cl:slot-value msg 'isGood) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'utterance) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'utterance) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestSoundTranscript-response>)))
  "Returns string type for a service object of type '<RequestSoundTranscript-response>"
  "villa_audio/RequestSoundTranscriptResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestSoundTranscript-response)))
  "Returns string type for a service object of type 'RequestSoundTranscript-response"
  "villa_audio/RequestSoundTranscriptResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestSoundTranscript-response>)))
  "Returns md5sum for a message object of type '<RequestSoundTranscript-response>"
  "02c8de1031c790d65706e50834055714")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestSoundTranscript-response)))
  "Returns md5sum for a message object of type 'RequestSoundTranscript-response"
  "02c8de1031c790d65706e50834055714")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestSoundTranscript-response>)))
  "Returns full string definition for message of type '<RequestSoundTranscript-response>"
  (cl:format cl:nil "bool isGood~%string utterance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestSoundTranscript-response)))
  "Returns full string definition for message of type 'RequestSoundTranscript-response"
  (cl:format cl:nil "bool isGood~%string utterance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestSoundTranscript-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'utterance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestSoundTranscript-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestSoundTranscript-response
    (cl:cons ':isGood (isGood msg))
    (cl:cons ':utterance (utterance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RequestSoundTranscript)))
  'RequestSoundTranscript-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RequestSoundTranscript)))
  'RequestSoundTranscript-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestSoundTranscript)))
  "Returns string type for a service object of type '<RequestSoundTranscript>"
  "villa_audio/RequestSoundTranscript")