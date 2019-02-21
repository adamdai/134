;; Auto-generated. Do not edit!


(when (boundp 'hebiros::AddGroupFromUrdfSrv)
  (if (not (find-package "HEBIROS"))
    (make-package "HEBIROS"))
  (shadow 'AddGroupFromUrdfSrv (find-package "HEBIROS")))
(unless (find-package "HEBIROS::ADDGROUPFROMURDFSRV")
  (make-package "HEBIROS::ADDGROUPFROMURDFSRV"))
(unless (find-package "HEBIROS::ADDGROUPFROMURDFSRVREQUEST")
  (make-package "HEBIROS::ADDGROUPFROMURDFSRVREQUEST"))
(unless (find-package "HEBIROS::ADDGROUPFROMURDFSRVRESPONSE")
  (make-package "HEBIROS::ADDGROUPFROMURDFSRVRESPONSE"))

(in-package "ROS")





(defclass hebiros::AddGroupFromUrdfSrvRequest
  :super ros::object
  :slots (_group_name ))

(defmethod hebiros::AddGroupFromUrdfSrvRequest
  (:init
   (&key
    ((:group_name __group_name) "")
    )
   (send-super :init)
   (setq _group_name (string __group_name))
   self)
  (:group_name
   (&optional __group_name)
   (if __group_name (setq _group_name __group_name)) _group_name)
  (:serialization-length
   ()
   (+
    ;; string _group_name
    4 (length _group_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _group_name
       (write-long (length _group_name) s) (princ _group_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _group_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hebiros::AddGroupFromUrdfSrvResponse
  :super ros::object
  :slots ())

(defmethod hebiros::AddGroupFromUrdfSrvResponse
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

(defclass hebiros::AddGroupFromUrdfSrv
  :super ros::object
  :slots ())

(setf (get hebiros::AddGroupFromUrdfSrv :md5sum-) "967d0b0c0d858ded8a6a69abbce0c981")
(setf (get hebiros::AddGroupFromUrdfSrv :datatype-) "hebiros/AddGroupFromUrdfSrv")
(setf (get hebiros::AddGroupFromUrdfSrv :request) hebiros::AddGroupFromUrdfSrvRequest)
(setf (get hebiros::AddGroupFromUrdfSrv :response) hebiros::AddGroupFromUrdfSrvResponse)

(defmethod hebiros::AddGroupFromUrdfSrvRequest
  (:response () (instance hebiros::AddGroupFromUrdfSrvResponse :init)))

(setf (get hebiros::AddGroupFromUrdfSrvRequest :md5sum-) "967d0b0c0d858ded8a6a69abbce0c981")
(setf (get hebiros::AddGroupFromUrdfSrvRequest :datatype-) "hebiros/AddGroupFromUrdfSrvRequest")
(setf (get hebiros::AddGroupFromUrdfSrvRequest :definition-)
      "string group_name
---

")

(setf (get hebiros::AddGroupFromUrdfSrvResponse :md5sum-) "967d0b0c0d858ded8a6a69abbce0c981")
(setf (get hebiros::AddGroupFromUrdfSrvResponse :datatype-) "hebiros/AddGroupFromUrdfSrvResponse")
(setf (get hebiros::AddGroupFromUrdfSrvResponse :definition-)
      "string group_name
---

")



(provide :hebiros/AddGroupFromUrdfSrv "967d0b0c0d858ded8a6a69abbce0c981")


