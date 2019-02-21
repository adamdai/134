;; Auto-generated. Do not edit!


(when (boundp 'moveto::IKin)
  (if (not (find-package "MOVETO"))
    (make-package "MOVETO"))
  (shadow 'IKin (find-package "MOVETO")))
(unless (find-package "MOVETO::IKIN")
  (make-package "MOVETO::IKIN"))
(unless (find-package "MOVETO::IKINREQUEST")
  (make-package "MOVETO::IKINREQUEST"))
(unless (find-package "MOVETO::IKINRESPONSE")
  (make-package "MOVETO::IKINRESPONSE"))

(in-package "ROS")





(defclass moveto::IKinRequest
  :super ros::object
  :slots (_tip ))

(defmethod moveto::IKinRequest
  (:init
   (&key
    ((:tip __tip) (instance moveto::Tip :init))
    )
   (send-super :init)
   (setq _tip __tip)
   self)
  (:tip
   (&rest __tip)
   (if (keywordp (car __tip))
       (send* _tip __tip)
     (progn
       (if __tip (setq _tip (car __tip)))
       _tip)))
  (:serialization-length
   ()
   (+
    ;; moveto/Tip _tip
    (send _tip :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; moveto/Tip _tip
       (send _tip :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; moveto/Tip _tip
     (send _tip :deserialize buf ptr-) (incf ptr- (send _tip :serialization-length))
   ;;
   self)
  )

(defclass moveto::IKinResponse
  :super ros::object
  :slots (_singular _joints ))

(defmethod moveto::IKinResponse
  (:init
   (&key
    ((:singular __singular) nil)
    ((:joints __joints) (instance moveto::Joints :init))
    )
   (send-super :init)
   (setq _singular __singular)
   (setq _joints __joints)
   self)
  (:singular
   (&optional __singular)
   (if __singular (setq _singular __singular)) _singular)
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
    ;; bool _singular
    1
    ;; moveto/Joints _joints
    (send _joints :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _singular
       (if _singular (write-byte -1 s) (write-byte 0 s))
     ;; moveto/Joints _joints
       (send _joints :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _singular
     (setq _singular (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; moveto/Joints _joints
     (send _joints :deserialize buf ptr-) (incf ptr- (send _joints :serialization-length))
   ;;
   self)
  )

(defclass moveto::IKin
  :super ros::object
  :slots ())

(setf (get moveto::IKin :md5sum-) "1e8f025e4a7f0e73d00d1166f7ab7aff")
(setf (get moveto::IKin :datatype-) "moveto/IKin")
(setf (get moveto::IKin :request) moveto::IKinRequest)
(setf (get moveto::IKin :response) moveto::IKinResponse)

(defmethod moveto::IKinRequest
  (:response () (instance moveto::IKinResponse :init)))

(setf (get moveto::IKinRequest :md5sum-) "1e8f025e4a7f0e73d00d1166f7ab7aff")
(setf (get moveto::IKinRequest :datatype-) "moveto/IKinRequest")
(setf (get moveto::IKinRequest :definition-)
      "


Tip     tip

================================================================================
MSG: moveto/Tip
# Message of tip values
float64 x
float64 y
float64 z
float64 pitch
float64 roll
---



bool    singular
Joints  joints


================================================================================
MSG: moveto/Joints
# Message of joint values
float64[5] joint
")

(setf (get moveto::IKinResponse :md5sum-) "1e8f025e4a7f0e73d00d1166f7ab7aff")
(setf (get moveto::IKinResponse :datatype-) "moveto/IKinResponse")
(setf (get moveto::IKinResponse :definition-)
      "


Tip     tip

================================================================================
MSG: moveto/Tip
# Message of tip values
float64 x
float64 y
float64 z
float64 pitch
float64 roll
---



bool    singular
Joints  joints


================================================================================
MSG: moveto/Joints
# Message of joint values
float64[5] joint
")



(provide :moveto/IKin "1e8f025e4a7f0e73d00d1166f7ab7aff")


