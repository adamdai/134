;; Auto-generated. Do not edit!


(when (boundp 'detection::CoordVec)
  (if (not (find-package "DETECTION"))
    (make-package "DETECTION"))
  (shadow 'CoordVec (find-package "DETECTION")))
(unless (find-package "DETECTION::COORDVEC")
  (make-package "DETECTION::COORDVEC"))

(in-package "ROS")
;;//! \htmlinclude CoordVec.msg.html


(defclass detection::CoordVec
  :super ros::object
  :slots (_coord_vec ))

(defmethod detection::CoordVec
  (:init
   (&key
    ((:coord_vec __coord_vec) (let (r) (dotimes (i 0) (push (instance detection::Coord :init) r)) r))
    )
   (send-super :init)
   (setq _coord_vec __coord_vec)
   self)
  (:coord_vec
   (&rest __coord_vec)
   (if (keywordp (car __coord_vec))
       (send* _coord_vec __coord_vec)
     (progn
       (if __coord_vec (setq _coord_vec (car __coord_vec)))
       _coord_vec)))
  (:serialization-length
   ()
   (+
    ;; detection/Coord[] _coord_vec
    (apply #'+ (send-all _coord_vec :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; detection/Coord[] _coord_vec
     (write-long (length _coord_vec) s)
     (dolist (elem _coord_vec)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; detection/Coord[] _coord_vec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coord_vec (let (r) (dotimes (i n) (push (instance detection::Coord :init) r)) r))
     (dolist (elem- _coord_vec)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get detection::CoordVec :md5sum-) "174b4c9844889818f886eb583690704e")
(setf (get detection::CoordVec :datatype-) "detection/CoordVec")
(setf (get detection::CoordVec :definition-)
      "# Message definition of a vector of coordinates.

Coord[] coord_vec
================================================================================
MSG: detection/Coord
# Message definition of a coordinate
float64 dist
float64 angle

")



(provide :detection/CoordVec "174b4c9844889818f886eb583690704e")


