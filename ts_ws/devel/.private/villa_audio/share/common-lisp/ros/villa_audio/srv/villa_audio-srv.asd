
(cl:in-package :asdf)

(defsystem "villa_audio-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RequestSoundTranscript" :depends-on ("_package_RequestSoundTranscript"))
    (:file "_package_RequestSoundTranscript" :depends-on ("_package"))
  ))