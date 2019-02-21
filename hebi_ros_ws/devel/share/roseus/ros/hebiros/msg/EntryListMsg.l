;; Auto-generated. Do not edit!


(when (boundp 'hebiros::EntryListMsg)
  (if (not (find-package "HEBIROS"))
    (make-package "HEBIROS"))
  (shadow 'EntryListMsg (find-package "HEBIROS")))
(unless (find-package "HEBIROS::ENTRYLISTMSG")
  (make-package "HEBIROS::ENTRYLISTMSG"))

(in-package "ROS")
;;//! \htmlinclude EntryListMsg.msg.html


(defclass hebiros::EntryListMsg
  :super ros::object
  :slots (_size _entries ))

(defmethod hebiros::EntryListMsg
  (:init
   (&key
    ((:size __size) 0)
    ((:entries __entries) (let (r) (dotimes (i 0) (push (instance hebiros::EntryMsg :init) r)) r))
    )
   (send-super :init)
   (setq _size (round __size))
   (setq _entries __entries)
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:entries
   (&rest __entries)
   (if (keywordp (car __entries))
       (send* _entries __entries)
     (progn
       (if __entries (setq _entries (car __entries)))
       _entries)))
  (:serialization-length
   ()
   (+
    ;; int32 _size
    4
    ;; hebiros/EntryMsg[] _entries
    (apply #'+ (send-all _entries :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _size
       (write-long _size s)
     ;; hebiros/EntryMsg[] _entries
     (write-long (length _entries) s)
     (dolist (elem _entries)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; hebiros/EntryMsg[] _entries
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _entries (let (r) (dotimes (i n) (push (instance hebiros::EntryMsg :init) r)) r))
     (dolist (elem- _entries)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hebiros::EntryListMsg :md5sum-) "ce4dffca09542f7d73eaedf72b9274c0")
(setf (get hebiros::EntryListMsg :datatype-) "hebiros/EntryListMsg")
(setf (get hebiros::EntryListMsg :definition-)
      "int32 size
hebiros/EntryMsg[] entries

================================================================================
MSG: hebiros/EntryMsg
string name
string family
int64 mac_address

")



(provide :hebiros/EntryListMsg "ce4dffca09542f7d73eaedf72b9274c0")


