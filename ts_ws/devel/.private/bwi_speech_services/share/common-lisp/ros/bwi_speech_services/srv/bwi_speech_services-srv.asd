
(cl:in-package :asdf)

(defsystem "bwi_speech_services-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RequestSoundTranscript" :depends-on ("_package_RequestSoundTranscript"))
    (:file "_package_RequestSoundTranscript" :depends-on ("_package"))
  ))