; Auto-generated. Do not edit!


(cl:in-package grounded_dialogue_agent_ros-msg)


;//! \htmlinclude ConductDialogueFeedback.msg.html

(cl:defclass <ConductDialogueFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ConductDialogueFeedback (<ConductDialogueFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConductDialogueFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConductDialogueFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grounded_dialogue_agent_ros-msg:<ConductDialogueFeedback> is deprecated: use grounded_dialogue_agent_ros-msg:ConductDialogueFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConductDialogueFeedback>) ostream)
  "Serializes a message object of type '<ConductDialogueFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConductDialogueFeedback>) istream)
  "Deserializes a message object of type '<ConductDialogueFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConductDialogueFeedback>)))
  "Returns string type for a message object of type '<ConductDialogueFeedback>"
  "grounded_dialogue_agent_ros/ConductDialogueFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConductDialogueFeedback)))
  "Returns string type for a message object of type 'ConductDialogueFeedback"
  "grounded_dialogue_agent_ros/ConductDialogueFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConductDialogueFeedback>)))
  "Returns md5sum for a message object of type '<ConductDialogueFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConductDialogueFeedback)))
  "Returns md5sum for a message object of type 'ConductDialogueFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConductDialogueFeedback>)))
  "Returns full string definition for message of type '<ConductDialogueFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConductDialogueFeedback)))
  "Returns full string definition for message of type 'ConductDialogueFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConductDialogueFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConductDialogueFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ConductDialogueFeedback
))
