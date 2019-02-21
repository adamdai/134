;; Auto-generated. Do not edit!


(when (boundp 'hebiros::SetFeedbackFrequencySrv)
  (if (not (find-package "HEBIROS"))
    (make-package "HEBIROS"))
  (shadow 'SetFeedbackFrequencySrv (find-package "HEBIROS")))
(unless (find-package "HEBIROS::SETFEEDBACKFREQUENCYSRV")
  (make-package "HEBIROS::SETFEEDBACKFREQUENCYSRV"))
(unless (find-package "HEBIROS::SETFEEDBACKFREQUENCYSRVREQUEST")
  (make-package "HEBIROS::SETFEEDBACKFREQUENCYSRVREQUEST"))
(unless (find-package "HEBIROS::SETFEEDBACKFREQUENCYSRVRESPONSE")
  (make-package "HEBIROS::SETFEEDBACKFREQUENCYSRVRESPONSE"))

(in-package "ROS")





(defclass hebiros::SetFeedbackFrequencySrvRequest
  :super ros::object
  :slots (_feedback_frequency ))

(defmethod hebiros::SetFeedbackFrequencySrvRequest
  (:init
   (&key
    ((:feedback_frequency __feedback_frequency) 0)
    )
   (send-super :init)
   (setq _feedback_frequency (round __feedback_frequency))
   self)
  (:feedback_frequency
   (&optional __feedback_frequency)
   (if __feedback_frequency (setq _feedback_frequency __feedback_frequency)) _feedback_frequency)
  (:serialization-length
   ()
   (+
    ;; int32 _feedback_frequency
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _feedback_frequency
       (write-long _feedback_frequency s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _feedback_frequency
     (setq _feedback_frequency (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hebiros::SetFeedbackFrequencySrvResponse
  :super ros::object
  :slots ())

(defmethod hebiros::SetFeedbackFrequencySrvResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass hebiros::SetFeedbackFrequencySrv
  :super ros::object
  :slots ())

(setf (get hebiros::SetFeedbackFrequencySrv :md5sum-) "89e470a7bc482c7199fa75ef40009369")
(setf (get hebiros::SetFeedbackFrequencySrv :datatype-) "hebiros/SetFeedbackFrequencySrv")
(setf (get hebiros::SetFeedbackFrequencySrv :request) hebiros::SetFeedbackFrequencySrvRequest)
(setf (get hebiros::SetFeedbackFrequencySrv :response) hebiros::SetFeedbackFrequencySrvResponse)

(defmethod hebiros::SetFeedbackFrequencySrvRequest
  (:response () (instance hebiros::SetFeedbackFrequencySrvResponse :init)))

(setf (get hebiros::SetFeedbackFrequencySrvRequest :md5sum-) "89e470a7bc482c7199fa75ef40009369")
(setf (get hebiros::SetFeedbackFrequencySrvRequest :datatype-) "hebiros/SetFeedbackFrequencySrvRequest")
(setf (get hebiros::SetFeedbackFrequencySrvRequest :definition-)
      "int32 feedback_frequency
---

")

(setf (get hebiros::SetFeedbackFrequencySrvResponse :md5sum-) "89e470a7bc482c7199fa75ef40009369")
(setf (get hebiros::SetFeedbackFrequencySrvResponse :datatype-) "hebiros/SetFeedbackFrequencySrvResponse")
(setf (get hebiros::SetFeedbackFrequencySrvResponse :definition-)
      "int32 feedback_frequency
---

")



(provide :hebiros/SetFeedbackFrequencySrv "89e470a7bc482c7199fa75ef40009369")


