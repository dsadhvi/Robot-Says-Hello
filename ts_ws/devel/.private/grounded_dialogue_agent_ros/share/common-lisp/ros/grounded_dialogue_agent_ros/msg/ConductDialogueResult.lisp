; Auto-generated. Do not edit!


(cl:in-package grounded_dialogue_agent_ros-msg)


;//! \htmlinclude ConductDialogueResult.msg.html

(cl:defclass <ConductDialogueResult> (roslisp-msg-protocol:ros-message)
  ((command_type
    :reader command_type
    :initarg :command_type
    :type cl:string
    :initform "")
   (object_location
    :reader object_location
    :initarg :object_location
    :type cl:string
    :initform "")
   (destination_location
    :reader destination_location
    :initarg :destination_location
    :type cl:string
    :initform "")
   (object_id
    :reader object_id
    :initarg :object_id
    :type cl:string
    :initform ""))
)

(cl:defclass ConductDialogueResult (<ConductDialogueResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConductDialogueResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConductDialogueResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grounded_dialogue_agent_ros-msg:<ConductDialogueResult> is deprecated: use grounded_dialogue_agent_ros-msg:ConductDialogueResult instead.")))

(cl:ensure-generic-function 'command_type-val :lambda-list '(m))
(cl:defmethod command_type-val ((m <ConductDialogueResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grounded_dialogue_agent_ros-msg:command_type-val is deprecated.  Use grounded_dialogue_agent_ros-msg:command_type instead.")
  (command_type m))

(cl:ensure-generic-function 'object_location-val :lambda-list '(m))
(cl:defmethod object_location-val ((m <ConductDialogueResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grounded_dialogue_agent_ros-msg:object_location-val is deprecated.  Use grounded_dialogue_agent_ros-msg:object_location instead.")
  (object_location m))

(cl:ensure-generic-function 'destination_location-val :lambda-list '(m))
(cl:defmethod destination_location-val ((m <ConductDialogueResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grounded_dialogue_agent_ros-msg:destination_location-val is deprecated.  Use grounded_dialogue_agent_ros-msg:destination_location instead.")
  (destination_location m))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <ConductDialogueResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grounded_dialogue_agent_ros-msg:object_id-val is deprecated.  Use grounded_dialogue_agent_ros-msg:object_id instead.")
  (object_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConductDialogueResult>) ostream)
  "Serializes a message object of type '<ConductDialogueResult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_location))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'destination_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'destination_location))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConductDialogueResult>) istream)
  "Deserializes a message object of type '<ConductDialogueResult>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'destination_location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'destination_location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConductDialogueResult>)))
  "Returns string type for a message object of type '<ConductDialogueResult>"
  "grounded_dialogue_agent_ros/ConductDialogueResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConductDialogueResult)))
  "Returns string type for a message object of type 'ConductDialogueResult"
  "grounded_dialogue_agent_ros/ConductDialogueResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConductDialogueResult>)))
  "Returns md5sum for a message object of type '<ConductDialogueResult>"
  "f45bd961ad31a246c98f75305c1b0442")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConductDialogueResult)))
  "Returns md5sum for a message object of type 'ConductDialogueResult"
  "f45bd961ad31a246c98f75305c1b0442")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConductDialogueResult>)))
  "Returns full string definition for message of type '<ConductDialogueResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%string command_type~%string object_location~%string destination_location~%string object_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConductDialogueResult)))
  "Returns full string definition for message of type 'ConductDialogueResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%string command_type~%string object_location~%string destination_location~%string object_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConductDialogueResult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command_type))
     4 (cl:length (cl:slot-value msg 'object_location))
     4 (cl:length (cl:slot-value msg 'destination_location))
     4 (cl:length (cl:slot-value msg 'object_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConductDialogueResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ConductDialogueResult
    (cl:cons ':command_type (command_type msg))
    (cl:cons ':object_location (object_location msg))
    (cl:cons ':destination_location (destination_location msg))
    (cl:cons ':object_id (object_id msg))
))
