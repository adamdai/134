;; Auto-generated. Do not edit!


(when (boundp 'detection::Coord)
  (if (not (find-package "DETECTION"))
    (make-package "DETECTION"))
  (shadow 'Coord (find-package "DETECTION")))
(unless (find-package "DETECTION::COORD")
  (make-package "DETECTION::COORD"))

(in-package "ROS")
;;//! \htmlinclude Coord.msg.html


(defclass detection::Coord
  :super ros::object
  :slots (_dist _angle ))

(defmethod detection::Coord
  (:init
   (&key
    ((:dist __dist) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _dist (float __dist))
   (setq _angle (float __angle))
   self)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float64 _dist
    8
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _dist
     (setq _dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get detection::Coord :md5sum-) "91402bd440d1ef690efc522751a6276e")
(setf (get detection::Coord :datatype-) "detection/Coord")
(setf (get detection::Coord :definition-)
      "# Message definition of a coordinate
float64 dist
float64 angle

")



(provide :detection/Coord "91402bd440d1ef690efc522751a6276e")


