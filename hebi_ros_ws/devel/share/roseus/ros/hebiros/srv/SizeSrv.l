;; Auto-generated. Do not edit!


(when (boundp 'hebiros::SizeSrv)
  (if (not (find-package "HEBIROS"))
    (make-package "HEBIROS"))
  (shadow 'SizeSrv (find-package "HEBIROS")))
(unless (find-package "HEBIROS::SIZESRV")
  (make-package "HEBIROS::SIZESRV"))
(unless (find-package "HEBIROS::SIZESRVREQUEST")
  (make-package "HEBIROS::SIZESRVREQUEST"))
(unless (find-package "HEBIROS::SIZESRVRESPONSE")
  (make-package "HEBIROS::SIZESRVRESPONSE"))

(in-package "ROS")





(defclass hebiros::SizeSrvRequest
  :super ros::object
  :slots ())

(defmethod hebiros::SizeSrvRequest
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

(defclass hebiros::SizeSrvResponse
  :super ros::object
  :slots (_size ))

(defmethod hebiros::SizeSrvResponse
  (:init
   (&key
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _size (round __size))
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; int32 _size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _size
       (write-long _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hebiros::SizeSrv
  :super ros::object
  :slots ())

(setf (get hebiros::SizeSrv :md5sum-) "97da5de9999c5ce84f539773c8d0b2a3")
(setf (get hebiros::SizeSrv :datatype-) "hebiros/SizeSrv")
(setf (get hebiros::SizeSrv :request) hebiros::SizeSrvRequest)
(setf (get hebiros::SizeSrv :response) hebiros::SizeSrvResponse)

(defmethod hebiros::SizeSrvRequest
  (:response () (instance hebiros::SizeSrvResponse :init)))

(setf (get hebiros::SizeSrvRequest :md5sum-) "97da5de9999c5ce84f539773c8d0b2a3")
(setf (get hebiros::SizeSrvRequest :datatype-) "hebiros/SizeSrvRequest")
(setf (get hebiros::SizeSrvRequest :definition-)
      "---
int32 size

")

(setf (get hebiros::SizeSrvResponse :md5sum-) "97da5de9999c5ce84f539773c8d0b2a3")
(setf (get hebiros::SizeSrvResponse :datatype-) "hebiros/SizeSrvResponse")
(setf (get hebiros::SizeSrvResponse :definition-)
      "---
int32 size

")



(provide :hebiros/SizeSrv "97da5de9999c5ce84f539773c8d0b2a3")


