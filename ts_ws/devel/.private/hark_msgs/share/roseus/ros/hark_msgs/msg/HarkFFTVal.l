;; Auto-generated. Do not edit!


(when (boundp 'hark_msgs::HarkFFTVal)
  (if (not (find-package "HARK_MSGS"))
    (make-package "HARK_MSGS"))
  (shadow 'HarkFFTVal (find-package "HARK_MSGS")))
(unless (find-package "HARK_MSGS::HARKFFTVAL")
  (make-package "HARK_MSGS::HARKFFTVAL"))

(in-package "ROS")
;;//! \htmlinclude HarkFFTVal.msg.html


(defclass hark_msgs::HarkFFTVal
  :super ros::object
  :slots (_fftdata_real _fftdata_imag ))

(defmethod hark_msgs::HarkFFTVal
  (:init
   (&key
    ((:fftdata_real __fftdata_real) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:fftdata_imag __fftdata_imag) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _fftdata_real __fftdata_real)
   (setq _fftdata_imag __fftdata_imag)
   self)
  (:fftdata_real
   (&optional __fftdata_real)
   (if __fftdata_real (setq _fftdata_real __fftdata_real)) _fftdata_real)
  (:fftdata_imag
   (&optional __fftdata_imag)
   (if __fftdata_imag (setq _fftdata_imag __fftdata_imag)) _fftdata_imag)
  (:serialization-length
   ()
   (+
    ;; float32[] _fftdata_real
    (* 4    (length _fftdata_real)) 4
    ;; float32[] _fftdata_imag
    (* 4    (length _fftdata_imag)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _fftdata_real
     (write-long (length _fftdata_real) s)
     (dotimes (i (length _fftdata_real))
       (sys::poke (elt _fftdata_real i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _fftdata_imag
     (write-long (length _fftdata_imag) s)
     (dotimes (i (length _fftdata_imag))
       (sys::poke (elt _fftdata_imag i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _fftdata_real
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fftdata_real (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fftdata_real i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _fftdata_imag
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fftdata_imag (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fftdata_imag i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hark_msgs::HarkFFTVal :md5sum-) "a7b9ef54d8fd113072a96e094d31eaff")
(setf (get hark_msgs::HarkFFTVal :datatype-) "hark_msgs/HarkFFTVal")
(setf (get hark_msgs::HarkFFTVal :definition-)
      "float32[] fftdata_real
float32[] fftdata_imag

")



(provide :hark_msgs/HarkFFTVal "a7b9ef54d8fd113072a96e094d31eaff")


