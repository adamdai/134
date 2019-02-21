;; Auto-generated. Do not edit!


(when (boundp 'hebiros::SetCommandLifetimeSrv)
  (if (not (find-package "HEBIROS"))
    (make-package "HEBIROS"))
  (shadow 'SetCommandLifetimeSrv (find-package "HEBIROS")))
(unless (find-package "HEBIROS::SETCOMMANDLIFETIMESRV")
  (make-package "HEBIROS::SETCOMMANDLIFETIMESRV"))
(unless (find-package "HEBIROS::SETCOMMANDLIFETIMESRVREQUEST")
  (make-package "HEBIROS::SETCOMMANDLIFETIMESRVREQUEST"))
(unless (find-package "HEBIROS::SETCOMMANDLIFETIMESRVRESPONSE")
  (make-package "HEBIROS::SETCOMMANDLIFETIMESRVRESPONSE"))

(in-package "ROS")





(defclass hebiros::SetCommandLifetimeSrvRequest
  :super ros::object
  :slots (_command_lifetime ))

(defmethod hebiros::SetCommandLifetimeSrvRequest
  (:init
   (&key
    ((:command_lifetime __command_lifetime) 0)
    )
   (send-super :init)
   (setq _command_lifetime (round __command_lifetime))
   self)
  (:command_lifetime
   (&optional __command_lifetime)
   (if __command_lifetime (setq _command_lifetime __command_lifetime)) _command_lifetime)
  (:serialization-length
   ()
   (+
    ;; int32 _command_lifetime
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _command_lifetime
       (write-long _command_lifetime s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _command_lifetime
     (setq _command_lifetime (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hebiros::SetCommandLifetimeSrvResponse
  :super ros::object
  :slots ())

(defmethod hebiros::SetCommandLifetimeSrvResponse
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

(defclass hebiros::SetCommandLifetimeSrv
  :super ros::object
  :slots ())

(setf (get hebiros::SetCommandLifetimeSrv :md5sum-) "9e6d0becb75f24a1f3c269f4469e5d38")
(setf (get hebiros::SetCommandLifetimeSrv :datatype-) "hebiros/SetCommandLifetimeSrv")
(setf (get hebiros::SetCommandLifetimeSrv :request) hebiros::SetCommandLifetimeSrvRequest)
(setf (get hebiros::SetCommandLifetimeSrv :response) hebiros::SetCommandLifetimeSrvResponse)

(defmethod hebiros::SetCommandLifetimeSrvRequest
  (:response () (instance hebiros::SetCommandLifetimeSrvResponse :init)))

(setf (get hebiros::SetCommandLifetimeSrvRequest :md5sum-) "9e6d0becb75f24a1f3c269f4469e5d38")
(setf (get hebiros::SetCommandLifetimeSrvRequest :datatype-) "hebiros/SetCommandLifetimeSrvRequest")
(setf (get hebiros::SetCommandLifetimeSrvRequest :definition-)
      "int32 command_lifetime
---

")

(setf (get hebiros::SetCommandLifetimeSrvResponse :md5sum-) "9e6d0becb75f24a1f3c269f4469e5d38")
(setf (get hebiros::SetCommandLifetimeSrvResponse :datatype-) "hebiros/SetCommandLifetimeSrvResponse")
(setf (get hebiros::SetCommandLifetimeSrvResponse :definition-)
      "int32 command_lifetime
---

")



(provide :hebiros/SetCommandLifetimeSrv "9e6d0becb75f24a1f3c269f4469e5d38")


