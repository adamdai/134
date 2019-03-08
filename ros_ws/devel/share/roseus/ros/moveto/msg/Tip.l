;; Auto-generated. Do not edit!


(when (boundp 'moveto::Tip)
  (if (not (find-package "MOVETO"))
    (make-package "MOVETO"))
  (shadow 'Tip (find-package "MOVETO")))
(unless (find-package "MOVETO::TIP")
  (make-package "MOVETO::TIP"))

(in-package "ROS")
;;//! \htmlinclude Tip.msg.html


(defclass moveto::Tip
  :super ros::object
  :slots (_x _y _z _grip ))

(defmethod moveto::Tip
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:grip __grip) nil)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _grip __grip)
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
  (:grip
   (&optional __grip)
   (if __grip (setq _grip __grip)) _grip)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; bool _grip
    1
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
     ;; bool _grip
       (if _grip (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _grip
     (setq _grip (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get moveto::Tip :md5sum-) "21aca35e90d85b00f470ba50ab650aa7")
(setf (get moveto::Tip :datatype-) "moveto/Tip")
(setf (get moveto::Tip :definition-)
      "# Message of tip values
float64 x
float64 y
float64 z
#float64 pitch
#float64 roll
bool grip

")



(provide :moveto/Tip "21aca35e90d85b00f470ba50ab650aa7")


