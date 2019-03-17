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
  :slots (_throw_b _max_v _shoulder_release _angle ))

(defmethod moveto::ThrowToRequest
  (:init
   (&key
    ((:throw_b __throw_b) nil)
    ((:max_v __max_v) 0.0)
    ((:shoulder_release __shoulder_release) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _throw_b __throw_b)
   (setq _max_v (float __max_v))
   (setq _shoulder_release (float __shoulder_release))
   (setq _angle (float __angle))
   self)
  (:throw_b
   (&optional __throw_b)
   (if __throw_b (setq _throw_b __throw_b)) _throw_b)
  (:max_v
   (&optional __max_v)
   (if __max_v (setq _max_v __max_v)) _max_v)
  (:shoulder_release
   (&optional __shoulder_release)
   (if __shoulder_release (setq _shoulder_release __shoulder_release)) _shoulder_release)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; bool _throw_b
    1
    ;; float64 _max_v
    8
    ;; float64 _shoulder_release
    8
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _throw_b
       (if _throw_b (write-byte -1 s) (write-byte 0 s))
     ;; float64 _max_v
       (sys::poke _max_v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _shoulder_release
       (sys::poke _shoulder_release (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _throw_b
     (setq _throw_b (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _max_v
     (setq _max_v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _shoulder_release
     (setq _shoulder_release (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(setf (get moveto::ThrowTo :md5sum-) "7a5dee11bcdbd664d3ebfe6ff4c1db9f")
(setf (get moveto::ThrowTo :datatype-) "moveto/ThrowTo")
(setf (get moveto::ThrowTo :request) moveto::ThrowToRequest)
(setf (get moveto::ThrowTo :response) moveto::ThrowToResponse)

(defmethod moveto::ThrowToRequest
  (:response () (instance moveto::ThrowToResponse :init)))

(setf (get moveto::ThrowToRequest :md5sum-) "7a5dee11bcdbd664d3ebfe6ff4c1db9f")
(setf (get moveto::ThrowToRequest :datatype-) "moveto/ThrowToRequest")
(setf (get moveto::ThrowToRequest :definition-)
      "


bool     throw_b
float64  max_v
float64  shoulder_release
float64  angle
---

float64 movetime

")

(setf (get moveto::ThrowToResponse :md5sum-) "7a5dee11bcdbd664d3ebfe6ff4c1db9f")
(setf (get moveto::ThrowToResponse :datatype-) "moveto/ThrowToResponse")
(setf (get moveto::ThrowToResponse :definition-)
      "


bool     throw_b
float64  max_v
float64  shoulder_release
float64  angle
---

float64 movetime

")



(provide :moveto/ThrowTo "7a5dee11bcdbd664d3ebfe6ff4c1db9f")


