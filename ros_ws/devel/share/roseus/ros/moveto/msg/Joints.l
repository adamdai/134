;; Auto-generated. Do not edit!


(when (boundp 'moveto::Joints)
  (if (not (find-package "MOVETO"))
    (make-package "MOVETO"))
  (shadow 'Joints (find-package "MOVETO")))
(unless (find-package "MOVETO::JOINTS")
  (make-package "MOVETO::JOINTS"))

(in-package "ROS")
;;//! \htmlinclude Joints.msg.html


(defclass moveto::Joints
  :super ros::object
  :slots (_joint ))

(defmethod moveto::Joints
  (:init
   (&key
    ((:joint __joint) (make-array 5 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint __joint)
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:serialization-length
   ()
   (+
    ;; float64[5] _joint
    (* 8    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[5] _joint
     (dotimes (i 5)
       (sys::poke (elt _joint i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[5] _joint
   (dotimes (i (length _joint))
     (setf (elt _joint i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get moveto::Joints :md5sum-) "a9cf03bac18e6f9d1321d10ce4de88b6")
(setf (get moveto::Joints :datatype-) "moveto/Joints")
(setf (get moveto::Joints :definition-)
      "# Message of joint values
float64[5] joint

")



(provide :moveto/Joints "a9cf03bac18e6f9d1321d10ce4de88b6")


