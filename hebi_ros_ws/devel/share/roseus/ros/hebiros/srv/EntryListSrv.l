;; Auto-generated. Do not edit!


(when (boundp 'hebiros::EntryListSrv)
  (if (not (find-package "HEBIROS"))
    (make-package "HEBIROS"))
  (shadow 'EntryListSrv (find-package "HEBIROS")))
(unless (find-package "HEBIROS::ENTRYLISTSRV")
  (make-package "HEBIROS::ENTRYLISTSRV"))
(unless (find-package "HEBIROS::ENTRYLISTSRVREQUEST")
  (make-package "HEBIROS::ENTRYLISTSRVREQUEST"))
(unless (find-package "HEBIROS::ENTRYLISTSRVRESPONSE")
  (make-package "HEBIROS::ENTRYLISTSRVRESPONSE"))

(in-package "ROS")





(defclass hebiros::EntryListSrvRequest
  :super ros::object
  :slots ())

(defmethod hebiros::EntryListSrvRequest
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

(defclass hebiros::EntryListSrvResponse
  :super ros::object
  :slots (_entry_list ))

(defmethod hebiros::EntryListSrvResponse
  (:init
   (&key
    ((:entry_list __entry_list) (instance hebiros::EntryListMsg :init))
    )
   (send-super :init)
   (setq _entry_list __entry_list)
   self)
  (:entry_list
   (&rest __entry_list)
   (if (keywordp (car __entry_list))
       (send* _entry_list __entry_list)
     (progn
       (if __entry_list (setq _entry_list (car __entry_list)))
       _entry_list)))
  (:serialization-length
   ()
   (+
    ;; hebiros/EntryListMsg _entry_list
    (send _entry_list :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hebiros/EntryListMsg _entry_list
       (send _entry_list :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hebiros/EntryListMsg _entry_list
     (send _entry_list :deserialize buf ptr-) (incf ptr- (send _entry_list :serialization-length))
   ;;
   self)
  )

(defclass hebiros::EntryListSrv
  :super ros::object
  :slots ())

(setf (get hebiros::EntryListSrv :md5sum-) "019fcca877608da550bd2d6857203482")
(setf (get hebiros::EntryListSrv :datatype-) "hebiros/EntryListSrv")
(setf (get hebiros::EntryListSrv :request) hebiros::EntryListSrvRequest)
(setf (get hebiros::EntryListSrv :response) hebiros::EntryListSrvResponse)

(defmethod hebiros::EntryListSrvRequest
  (:response () (instance hebiros::EntryListSrvResponse :init)))

(setf (get hebiros::EntryListSrvRequest :md5sum-) "019fcca877608da550bd2d6857203482")
(setf (get hebiros::EntryListSrvRequest :datatype-) "hebiros/EntryListSrvRequest")
(setf (get hebiros::EntryListSrvRequest :definition-)
      "---
EntryListMsg entry_list


================================================================================
MSG: hebiros/EntryListMsg
int32 size
hebiros/EntryMsg[] entries

================================================================================
MSG: hebiros/EntryMsg
string name
string family
int64 mac_address
")

(setf (get hebiros::EntryListSrvResponse :md5sum-) "019fcca877608da550bd2d6857203482")
(setf (get hebiros::EntryListSrvResponse :datatype-) "hebiros/EntryListSrvResponse")
(setf (get hebiros::EntryListSrvResponse :definition-)
      "---
EntryListMsg entry_list


================================================================================
MSG: hebiros/EntryListMsg
int32 size
hebiros/EntryMsg[] entries

================================================================================
MSG: hebiros/EntryMsg
string name
string family
int64 mac_address
")



(provide :hebiros/EntryListSrv "019fcca877608da550bd2d6857203482")


