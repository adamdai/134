;; Auto-generated. Do not edit!


(when (boundp 'moveto::MoveTip)
  (if (not (find-package "MOVETO"))
    (make-package "MOVETO"))
  (shadow 'MoveTip (find-package "MOVETO")))
(unless (find-package "MOVETO::MOVETIP")
  (make-package "MOVETO::MOVETIP"))
(unless (find-package "MOVETO::MOVETIPREQUEST")
  (make-package "MOVETO::MOVETIPREQUEST"))
(unless (find-package "MOVETO::MOVETIPRESPONSE")
  (make-package "MOVETO::MOVETIPRESPONSE"))

(in-package "ROS")





(defclass moveto::MoveTipRequest
  :super ros::object
  :slots (_tip ))

(defmethod moveto::MoveTipRequest
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

(defclass moveto::MoveTipResponse
  :super ros::object
  :slots (_movetime ))

(defmethod moveto::MoveTipResponse
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

(defclass moveto::MoveTip
  :super ros::object
  :slots ())

(setf (get moveto::MoveTip :md5sum-) "65443b37ef9ffb7ce8e57e065d5f7bf9")
(setf (get moveto::MoveTip :datatype-) "moveto/MoveTip")
(setf (get moveto::MoveTip :request) moveto::MoveTipRequest)
(setf (get moveto::MoveTip :response) moveto::MoveTipResponse)

(defmethod moveto::MoveTipRequest
  (:response () (instance moveto::MoveTipResponse :init)))

(setf (get moveto::MoveTipRequest :md5sum-) "65443b37ef9ffb7ce8e57e065d5f7bf9")
(setf (get moveto::MoveTipRequest :datatype-) "moveto/MoveTipRequest")
(setf (get moveto::MoveTipRequest :definition-)
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

float64 movetime

")

(setf (get moveto::MoveTipResponse :md5sum-) "65443b37ef9ffb7ce8e57e065d5f7bf9")
(setf (get moveto::MoveTipResponse :datatype-) "moveto/MoveTipResponse")
(setf (get moveto::MoveTipResponse :definition-)
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

float64 movetime

")



(provide :moveto/MoveTip "65443b37ef9ffb7ce8e57e065d5f7bf9")


