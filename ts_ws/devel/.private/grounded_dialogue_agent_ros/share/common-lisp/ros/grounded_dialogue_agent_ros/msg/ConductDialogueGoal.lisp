; Auto-generated. Do not edit!


(cl:in-package grounded_dialogue_agent_ros-msg)


;//! \htmlinclude ConductDialogueGoal.msg.html

(cl:defclass <ConductDialogueGoal> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ConductDialogueGoal (<ConductDialogueGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConductDialogueGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConductDialogueGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grounded_dialogue_agent_ros-msg:<ConductDialogueGoal> is deprecated: use grounded_dialogue_agent_ros-msg:ConductDialogueGoal instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConductDialogueGoal>) ostream)
  "Serializes a message object of type '<ConductDialogueGoal>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConductDialogueGoal>) istream)
  "Deserializes a message object of type '<ConductDialogueGoal>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConductDialogueGoal>)))
  "Returns string type for a message object of type '<ConductDialogueGoal>"
  "grounded_dialogue_agent_ros/ConductDialogueGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConductDialogueGoal)))
  "Returns string type for a message object of type 'ConductDialogueGoal"
  "grounded_dialogue_agent_ros/ConductDialogueGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConductDialogueGoal>)))
  "Returns md5sum for a message object of type '<ConductDialogueGoal>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConductDialogueGoal)))
  "Returns md5sum for a message object of type 'ConductDialogueGoal"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConductDialogueGoal>)))
  "Returns full string definition for message of type '<ConductDialogueGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConductDialogueGoal)))
  "Returns full string definition for message of type 'ConductDialogueGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConductDialogueGoal>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConductDialogueGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ConductDialogueGoal
))
