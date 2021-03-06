;; Auto-generated. Do not edit!


(when (boundp 'grounded_dialogue_agent_ros::ConductDialogueResult)
  (if (not (find-package "GROUNDED_DIALOGUE_AGENT_ROS"))
    (make-package "GROUNDED_DIALOGUE_AGENT_ROS"))
  (shadow 'ConductDialogueResult (find-package "GROUNDED_DIALOGUE_AGENT_ROS")))
(unless (find-package "GROUNDED_DIALOGUE_AGENT_ROS::CONDUCTDIALOGUERESULT")
  (make-package "GROUNDED_DIALOGUE_AGENT_ROS::CONDUCTDIALOGUERESULT"))

(in-package "ROS")
;;//! \htmlinclude ConductDialogueResult.msg.html


(defclass grounded_dialogue_agent_ros::ConductDialogueResult
  :super ros::object
  :slots (_command_type _object_location _destination_location _object_id ))

(defmethod grounded_dialogue_agent_ros::ConductDialogueResult
  (:init
   (&key
    ((:command_type __command_type) "")
    ((:object_location __object_location) "")
    ((:destination_location __destination_location) "")
    ((:object_id __object_id) "")
    )
   (send-super :init)
   (setq _command_type (string __command_type))
   (setq _object_location (string __object_location))
   (setq _destination_location (string __destination_location))
   (setq _object_id (string __object_id))
   self)
  (:command_type
   (&optional __command_type)
   (if __command_type (setq _command_type __command_type)) _command_type)
  (:object_location
   (&optional __object_location)
   (if __object_location (setq _object_location __object_location)) _object_location)
  (:destination_location
   (&optional __destination_location)
   (if __destination_location (setq _destination_location __destination_location)) _destination_location)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:serialization-length
   ()
   (+
    ;; string _command_type
    4 (length _command_type)
    ;; string _object_location
    4 (length _object_location)
    ;; string _destination_location
    4 (length _destination_location)
    ;; string _object_id
    4 (length _object_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command_type
       (write-long (length _command_type) s) (princ _command_type s)
     ;; string _object_location
       (write-long (length _object_location) s) (princ _object_location s)
     ;; string _destination_location
       (write-long (length _destination_location) s) (princ _destination_location s)
     ;; string _object_id
       (write-long (length _object_id) s) (princ _object_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object_location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _destination_location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _destination_location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get grounded_dialogue_agent_ros::ConductDialogueResult :md5sum-) "f45bd961ad31a246c98f75305c1b0442")
(setf (get grounded_dialogue_agent_ros::ConductDialogueResult :datatype-) "grounded_dialogue_agent_ros/ConductDialogueResult")
(setf (get grounded_dialogue_agent_ros::ConductDialogueResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Result
string command_type
string object_location
string destination_location
string object_id

")



(provide :grounded_dialogue_agent_ros/ConductDialogueResult "f45bd961ad31a246c98f75305c1b0442")


