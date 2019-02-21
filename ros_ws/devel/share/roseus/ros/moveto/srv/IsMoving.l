;; Auto-generated. Do not edit!


(when (boundp 'moveto::IsMoving)
  (if (not (find-package "MOVETO"))
    (make-package "MOVETO"))
  (shadow 'IsMoving (find-package "MOVETO")))
(unless (find-package "MOVETO::ISMOVING")
  (make-package "MOVETO::ISMOVING"))
(unless (find-package "MOVETO::ISMOVINGREQUEST")
  (make-package "MOVETO::ISMOVINGREQUEST"))
(unless (find-package "MOVETO::ISMOVINGRESPONSE")
  (make-package "MOVETO::ISMOVINGRESPONSE"))

(in-package "ROS")





(defclass moveto::IsMovingRequest
  :super ros::object
  :slots ())

(defmethod moveto::IsMovingRequest
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

(defclass moveto::IsMovingResponse
  :super ros::object
  :slots (_moving ))

(defmethod moveto::IsMovingResponse
  (:init
   (&key
    ((:moving __moving) nil)
    )
   (send-super :init)
   (setq _moving __moving)
   self)
  (:moving
   (&optional __moving)
   (if __moving (setq _moving __moving)) _moving)
  (:serialization-length
   ()
   (+
    ;; bool _moving
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _moving
       (if _moving (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _moving
     (setq _moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass moveto::IsMoving
  :super ros::object
  :slots ())

(setf (get moveto::IsMoving :md5sum-) "9104f1a32b4fbf4d3c8c80d9b9493250")
(setf (get moveto::IsMoving :datatype-) "moveto/IsMoving")
(setf (get moveto::IsMoving :request) moveto::IsMovingRequest)
(setf (get moveto::IsMoving :response) moveto::IsMovingResponse)

(defmethod moveto::IsMovingRequest
  (:response () (instance moveto::IsMovingResponse :init)))

(setf (get moveto::IsMovingRequest :md5sum-) "9104f1a32b4fbf4d3c8c80d9b9493250")
(setf (get moveto::IsMovingRequest :datatype-) "moveto/IsMovingRequest")
(setf (get moveto::IsMovingRequest :definition-)
      "


---

bool  moving

")

(setf (get moveto::IsMovingResponse :md5sum-) "9104f1a32b4fbf4d3c8c80d9b9493250")
(setf (get moveto::IsMovingResponse :datatype-) "moveto/IsMovingResponse")
(setf (get moveto::IsMovingResponse :definition-)
      "


---

bool  moving

")



(provide :moveto/IsMoving "9104f1a32b4fbf4d3c8c80d9b9493250")


