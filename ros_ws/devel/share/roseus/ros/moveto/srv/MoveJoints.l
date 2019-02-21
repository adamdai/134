;; Auto-generated. Do not edit!


(when (boundp 'moveto::MoveJoints)
  (if (not (find-package "MOVETO"))
    (make-package "MOVETO"))
  (shadow 'MoveJoints (find-package "MOVETO")))
(unless (find-package "MOVETO::MOVEJOINTS")
  (make-package "MOVETO::MOVEJOINTS"))
(unless (find-package "MOVETO::MOVEJOINTSREQUEST")
  (make-package "MOVETO::MOVEJOINTSREQUEST"))
(unless (find-package "MOVETO::MOVEJOINTSRESPONSE")
  (make-package "MOVETO::MOVEJOINTSRESPONSE"))

(in-package "ROS")





(defclass moveto::MoveJointsRequest
  :super ros::object
  :slots (_joints ))

(defmethod moveto::MoveJointsRequest
  (:init
   (&key
    ((:joints __joints) (instance moveto::Joints :init))
    )
   (send-super :init)
   (setq _joints __joints)
   self)
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:serialization-length
   ()
   (+
    ;; moveto/Joints _joints
    (send _joints :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; moveto/Joints _joints
       (send _joints :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; moveto/Joints _joints
     (send _joints :deserialize buf ptr-) (incf ptr- (send _joints :serialization-length))
   ;;
   self)
  )

(defclass moveto::MoveJointsResponse
  :super ros::object
  :slots (_movetime ))

(defmethod moveto::MoveJointsResponse
  (:init
   (&key
    ((:movetime __movetime) 0.0)
    )
   (send-super :init)
   (setq _movetime (float __movetime))
   self)
  (:movetime
   (&optional __movetime)
   (if __movetime (setq _movetime __movetime)) _movetime)
  (:serialization-length
   ()
   (+
    ;; float64 _movetime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _movetime
       (sys::poke _movetime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _movetime
     (setq _movetime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass moveto::MoveJoints
  :super ros::object
  :slots ())

(setf (get moveto::MoveJoints :md5sum-) "3df56d60d4f290ecf5ea26686d6c3967")
(setf (get moveto::MoveJoints :datatype-) "moveto/MoveJoints")
(setf (get moveto::MoveJoints :request) moveto::MoveJointsRequest)
(setf (get moveto::MoveJoints :response) moveto::MoveJointsResponse)

(defmethod moveto::MoveJointsRequest
  (:response () (instance moveto::MoveJointsResponse :init)))

(setf (get moveto::MoveJointsRequest :md5sum-) "3df56d60d4f290ecf5ea26686d6c3967")
(setf (get moveto::MoveJointsRequest :datatype-) "moveto/MoveJointsRequest")
(setf (get moveto::MoveJointsRequest :definition-)
      "


Joints  joints

================================================================================
MSG: moveto/Joints
# Message of joint values
float64[5] joint
---

float64 movetime

")

(setf (get moveto::MoveJointsResponse :md5sum-) "3df56d60d4f290ecf5ea26686d6c3967")
(setf (get moveto::MoveJointsResponse :datatype-) "moveto/MoveJointsResponse")
(setf (get moveto::MoveJointsResponse :definition-)
      "


Joints  joints

================================================================================
MSG: moveto/Joints
# Message of joint values
float64[5] joint
---

float64 movetime

")



(provide :moveto/MoveJoints "3df56d60d4f290ecf5ea26686d6c3967")


