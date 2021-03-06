; Auto-generated. Do not edit!


(cl:in-package grounded_dialogue_agent_ros-msg)


;//! \htmlinclude ConductDialogueAction.msg.html

(cl:defclass <ConductDialogueAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type grounded_dialogue_agent_ros-msg:ConductDialogueActionGoal
    :initform (cl:make-instance 'grounded_dialogue_agent_ros-msg:ConductDialogueActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type grounded_dialogue_agent_ros-msg:ConductDialogueActionResult
    :initform (cl:make-instance 'grounded_dialogue_agent_ros-msg:ConductDialogueActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type grounded_dialogue_agent_ros-msg:ConductDialogueActionFeedback
    :initform (cl:make-instance 'grounded_dialogue_agent_ros-msg:ConductDialogueActionFeedback)))
)

(cl:defclass ConductDialogueAction (<ConductDialogueAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConductDialogueAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConductDialogueAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grounded_dialogue_agent_ros-msg:<ConductDialogueAction> is deprecated: use grounded_dialogue_agent_ros-msg:ConductDialogueAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <ConductDialogueAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grounded_dialogue_agent_ros-msg:action_goal-val is deprecated.  Use grounded_dialogue_agent_ros-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <ConductDialogueAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grounded_dialogue_agent_ros-msg:action_result-val is deprecated.  Use grounded_dialogue_agent_ros-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <ConductDialogueAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grounded_dialogue_agent_ros-msg:action_feedback-val is deprecated.  Use grounded_dialogue_agent_ros-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConductDialogueAction>) ostream)
  "Serializes a message object of type '<ConductDialogueAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConductDialogueAction>) istream)
  "Deserializes a message object of type '<ConductDialogueAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConductDialogueAction>)))
  "Returns string type for a message object of type '<ConductDialogueAction>"
  "grounded_dialogue_agent_ros/ConductDialogueAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConductDialogueAction)))
  "Returns string type for a message object of type 'ConductDialogueAction"
  "grounded_dialogue_agent_ros/ConductDialogueAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConductDialogueAction>)))
  "Returns md5sum for a message object of type '<ConductDialogueAction>"
  "304af26bba45c96603d629c392d10383")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConductDialogueAction)))
  "Returns md5sum for a message object of type 'ConductDialogueAction"
  "304af26bba45c96603d629c392d10383")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConductDialogueAction>)))
  "Returns full string definition for message of type '<ConductDialogueAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%ConductDialogueActionGoal action_goal~%ConductDialogueActionResult action_result~%ConductDialogueActionFeedback action_feedback~%~%================================================================================~%MSG: grounded_dialogue_agent_ros/ConductDialogueActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ConductDialogueGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: grounded_dialogue_agent_ros/ConductDialogueGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%~%================================================================================~%MSG: grounded_dialogue_agent_ros/ConductDialogueActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ConductDialogueResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: grounded_dialogue_agent_ros/ConductDialogueResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%string command_type~%string object_location~%string destination_location~%string object_id~%~%================================================================================~%MSG: grounded_dialogue_agent_ros/ConductDialogueActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ConductDialogueFeedback feedback~%~%================================================================================~%MSG: grounded_dialogue_agent_ros/ConductDialogueFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConductDialogueAction)))
  "Returns full string definition for message of type 'ConductDialogueAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%ConductDialogueActionGoal action_goal~%ConductDialogueActionResult action_result~%ConductDialogueActionFeedback action_feedback~%~%================================================================================~%MSG: grounded_dialogue_agent_ros/ConductDialogueActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ConductDialogueGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: grounded_dialogue_agent_ros/ConductDialogueGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%~%================================================================================~%MSG: grounded_dialogue_agent_ros/ConductDialogueActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ConductDialogueResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: grounded_dialogue_agent_ros/ConductDialogueResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%string command_type~%string object_location~%string destination_location~%string object_id~%~%================================================================================~%MSG: grounded_dialogue_agent_ros/ConductDialogueActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ConductDialogueFeedback feedback~%~%================================================================================~%MSG: grounded_dialogue_agent_ros/ConductDialogueFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConductDialogueAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConductDialogueAction>))
  "Converts a ROS message object to a list"
  (cl:list 'ConductDialogueAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
