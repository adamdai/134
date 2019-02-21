;; Auto-generated. Do not edit!


(when (boundp 'hebiros::EntryMsg)
  (if (not (find-package "HEBIROS"))
    (make-package "HEBIROS"))
  (shadow 'EntryMsg (find-package "HEBIROS")))
(unless (find-package "HEBIROS::ENTRYMSG")
  (make-package "HEBIROS::ENTRYMSG"))

(in-package "ROS")
;;//! \htmlinclude EntryMsg.msg.html


(defclass hebiros::EntryMsg
  :super ros::object
  :slots (_name _family _mac_address ))

(defmethod hebiros::EntryMsg
  (:init
   (&key
    ((:name __name) "")
    ((:family __family) "")
    ((:mac_address __mac_address) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _family (string __family))
   (setq _mac_address (round __mac_address))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:family
   (&optional __family)
   (if __family (setq _family __family)) _family)
  (:mac_address
   (&optional __mac_address)
   (if __mac_address (setq _mac_address __mac_address)) _mac_address)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _family
    4 (length _family)
    ;; int64 _mac_address
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _family
       (write-long (length _family) s) (princ _family s)
     ;; int64 _mac_address
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mac_address (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mac_address) (= (length (_mac_address . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mac_address . bv) 0) 0) s)
              (write-long (ash (elt (_mac_address . bv) 1) -1) s))
             ((and (class _mac_address) (= (length (_mac_address . bv)) 1)) ;; big1
              (write-long (elt (_mac_address . bv) 0) s)
              (write-long (if (>= _mac_address 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mac_address s)(write-long (if (>= _mac_address 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _family
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _family (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _mac_address
#+(or :alpha :irix6 :x86_64)
      (setf _mac_address (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mac_address (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get hebiros::EntryMsg :md5sum-) "0ef1a1bc0bda92a32c695657f945626a")
(setf (get hebiros::EntryMsg :datatype-) "hebiros/EntryMsg")
(setf (get hebiros::EntryMsg :definition-)
      "string name
string family
int64 mac_address

")



(provide :hebiros/EntryMsg "0ef1a1bc0bda92a32c695657f945626a")


