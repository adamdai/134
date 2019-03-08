;; Auto-generated. Do not edit!


(when (boundp 'moveto::ThrowTo)
  (if (not (find-package "MOVETO"))
    (make-package "MOVETO"))
  (shadow 'ThrowTo (find-package "MOVETO")))
(unless (find-package "MOVETO::THROWTO")
  (make-package "MOVETO::THROWTO"))
(unless (find-package "MOVETO::THROWTOREQUEST")
  (make-package "MOVETO::THROWTOREQUEST"))
(unless (find-package "MOVETO::THROWTORESPONSE")
  (make-package "MOVETO::THROWTORESPONSE"))

(in-package "ROS")





(defclass moveto::ThrowToRequest
  :super ros::object
  :slots (_point ))

(defmethod moveto::ThrowToRequest
  (:init
   (&key
    ((:point __point) (instance moveto::Point :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; moveto/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; moveto/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; moveto/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass moveto::ThrowToResponse
  :super ros::object
  :slots (_movetime ))

(defmethod moveto::ThrowToResponse
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

(defclass moveto::ThrowTo
  :super ros::object
  :slots ())

(setf (get moveto::ThrowTo :md5sum-) "f5d911aee700e2e2bb9670f06078b78f")
(setf (get moveto::ThrowTo :datatype-) "moveto/ThrowTo")
(setf (get moveto::ThrowTo :request) moveto::ThrowToRequest)
(setf (get moveto::ThrowTo :response) moveto::ThrowToResponse)

(defmethod moveto::ThrowToRequest
  (:response () (instance moveto::ThrowToResponse :init)))

(setf (get moveto::ThrowToRequest :md5sum-) "f5d911aee700e2e2bb9670f06078b78f")
(setf (get moveto::ThrowToRequest :datatype-) "moveto/ThrowToRequest")
(setf (get moveto::ThrowToRequest :definition-)
      "


Point     point

================================================================================
MSG: moveto/Point
# Message of tip values
float64 x
float64 y
float64 z

---

float64 movetime

")

(setf (get moveto::ThrowToResponse :md5sum-) "f5d911aee700e2e2bb9670f06078b78f")
(setf (get moveto::ThrowToResponse :datatype-) "moveto/ThrowToResponse")
(setf (get moveto::ThrowToResponse :definition-)
      "


Point     point

================================================================================
MSG: moveto/Point
# Message of tip values
float64 x
float64 y
float64 z

---

float64 movetime

")



(provide :moveto/ThrowTo "f5d911aee700e2e2bb9670f06078b78f")


