;; Auto-generated. Do not edit!


(when (boundp 'hebiros::AddGroupFromNamesSrv)
  (if (not (find-package "HEBIROS"))
    (make-package "HEBIROS"))
  (shadow 'AddGroupFromNamesSrv (find-package "HEBIROS")))
(unless (find-package "HEBIROS::ADDGROUPFROMNAMESSRV")
  (make-package "HEBIROS::ADDGROUPFROMNAMESSRV"))
(unless (find-package "HEBIROS::ADDGROUPFROMNAMESSRVREQUEST")
  (make-package "HEBIROS::ADDGROUPFROMNAMESSRVREQUEST"))
(unless (find-package "HEBIROS::ADDGROUPFROMNAMESSRVRESPONSE")
  (make-package "HEBIROS::ADDGROUPFROMNAMESSRVRESPONSE"))

(in-package "ROS")





(defclass hebiros::AddGroupFromNamesSrvRequest
  :super ros::object
  :slots (_group_name _names _families ))

(defmethod hebiros::AddGroupFromNamesSrvRequest
  (:init
   (&key
    ((:group_name __group_name) "")
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:families __families) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _group_name (string __group_name))
   (setq _names __names)
   (setq _families __families)
   self)
  (:group_name
   (&optional __group_name)
   (if __group_name (setq _group_name __group_name)) _group_name)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:families
   (&optional __families)
   (if __families (setq _families __families)) _families)
  (:serialization-length
   ()
   (+
    ;; string _group_name
    4 (length _group_name)
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; string[] _families
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _families)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _group_name
       (write-long (length _group_name) s) (princ _group_name s)
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _families
     (write-long (length _families) s)
     (dolist (elem _families)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _group_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _families
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _families (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _families i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass hebiros::AddGroupFromNamesSrvResponse
  :super ros::object
  :slots ())

(defmethod hebiros::AddGroupFromNamesSrvResponse
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

(defclass hebiros::AddGroupFromNamesSrv
  :super ros::object
  :slots ())

(setf (get hebiros::AddGroupFromNamesSrv :md5sum-) "a31d701a4ec2a831130fc40890ab943d")
(setf (get hebiros::AddGroupFromNamesSrv :datatype-) "hebiros/AddGroupFromNamesSrv")
(setf (get hebiros::AddGroupFromNamesSrv :request) hebiros::AddGroupFromNamesSrvRequest)
(setf (get hebiros::AddGroupFromNamesSrv :response) hebiros::AddGroupFromNamesSrvResponse)

(defmethod hebiros::AddGroupFromNamesSrvRequest
  (:response () (instance hebiros::AddGroupFromNamesSrvResponse :init)))

(setf (get hebiros::AddGroupFromNamesSrvRequest :md5sum-) "a31d701a4ec2a831130fc40890ab943d")
(setf (get hebiros::AddGroupFromNamesSrvRequest :datatype-) "hebiros/AddGroupFromNamesSrvRequest")
(setf (get hebiros::AddGroupFromNamesSrvRequest :definition-)
      "string group_name
string[] names
string[] families
---

")

(setf (get hebiros::AddGroupFromNamesSrvResponse :md5sum-) "a31d701a4ec2a831130fc40890ab943d")
(setf (get hebiros::AddGroupFromNamesSrvResponse :datatype-) "hebiros/AddGroupFromNamesSrvResponse")
(setf (get hebiros::AddGroupFromNamesSrvResponse :definition-)
      "string group_name
string[] names
string[] families
---

")



(provide :hebiros/AddGroupFromNamesSrv "a31d701a4ec2a831130fc40890ab943d")


