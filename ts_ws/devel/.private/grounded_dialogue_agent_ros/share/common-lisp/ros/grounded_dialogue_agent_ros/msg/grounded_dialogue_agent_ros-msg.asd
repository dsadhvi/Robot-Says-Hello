
(cl:in-package :asdf)

(defsystem "grounded_dialogue_agent_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ConductDialogueAction" :depends-on ("_package_ConductDialogueAction"))
    (:file "_package_ConductDialogueAction" :depends-on ("_package"))
    (:file "ConductDialogueActionFeedback" :depends-on ("_package_ConductDialogueActionFeedback"))
    (:file "_package_ConductDialogueActionFeedback" :depends-on ("_package"))
    (:file "ConductDialogueActionGoal" :depends-on ("_package_ConductDialogueActionGoal"))
    (:file "_package_ConductDialogueActionGoal" :depends-on ("_package"))
    (:file "ConductDialogueActionResult" :depends-on ("_package_ConductDialogueActionResult"))
    (:file "_package_ConductDialogueActionResult" :depends-on ("_package"))
    (:file "ConductDialogueFeedback" :depends-on ("_package_ConductDialogueFeedback"))
    (:file "_package_ConductDialogueFeedback" :depends-on ("_package"))
    (:file "ConductDialogueGoal" :depends-on ("_package_ConductDialogueGoal"))
    (:file "_package_ConductDialogueGoal" :depends-on ("_package"))
    (:file "ConductDialogueResult" :depends-on ("_package_ConductDialogueResult"))
    (:file "_package_ConductDialogueResult" :depends-on ("_package"))
  ))