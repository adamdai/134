;; Auto-generated. Do not edit!


(when (boundp 'moveto::Grab)
  (if (not (find-package "MOVETO"))
    (make-package "MOVETO"))
  (shadow 'Grab (find-package "MOVETO")))
(unless (find-package "MOVETO::GRAB")
  (make-package "MOVETO::GRAB"))
(unless (find-package "MOVETO::GRABREQUEST")
  (make-package "MOVETO::GRABREQUEST"))
(unless (find-package "MOVETO::GRABRESPONSE")
  (make-package "MOVETO::GRABRESPONSE"))

(in-package "ROS")





(defclass moveto::GrabRequest
  :super ros::object
  :slots (_x _y _z ))

(defmethod moveto::GrabRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass moveto::GrabResponse
  :super ros::object
  :slots (_movetime ))

(defmethod moveto::GrabResponse
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

(defclass moveto::Grab
  :super ros::object
  :slots ())

(setf (get moveto::Grab :md5sum-) "7ef6f7fbf0f84bb5331bcdbdad3a6022")
(setf (get moveto::Grab :datatype-) "moveto/Grab")
(setf (get moveto::Grab :request) moveto::GrabRequest)
(setf (get moveto::Grab :response) moveto::GrabResponse)

(defmethod moveto::GrabRequest
  (:response () (instance moveto::GrabResponse :init)))

(setf (get moveto::GrabRequest :md5sum-) "7ef6f7fbf0f84bb5331bcdbdad3a6022")
(setf (get moveto::GrabRequest :datatype-) "moveto/GrabRequest")
(setf (get moveto::GrabRequest :definition-)
      "


float64  x
float64  y
float64  z
---

float64 movetime

")

(setf (get moveto::GrabResponse :md5sum-) "7ef6f7fbf0f84bb5331bcdbdad3a6022")
(setf (get moveto::GrabResponse :datatype-) "moveto/GrabResponse")
(setf (get moveto::GrabResponse :definition-)
      "


float64  x
float64  y
float64  z
---

float64 movetime

")



(provide :moveto/Grab "7ef6f7fbf0f84bb5331bcdbdad3a6022")


