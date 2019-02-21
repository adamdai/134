;; Auto-generated. Do not edit!


(when (boundp 'hebiros::PidGainsMsg)
  (if (not (find-package "HEBIROS"))
    (make-package "HEBIROS"))
  (shadow 'PidGainsMsg (find-package "HEBIROS")))
(unless (find-package "HEBIROS::PIDGAINSMSG")
  (make-package "HEBIROS::PIDGAINSMSG"))

(in-package "ROS")
;;//! \htmlinclude PidGainsMsg.msg.html


(defclass hebiros::PidGainsMsg
  :super ros::object
  :slots (_name _kp _ki _kd _feed_forward _dead_zone _i_clamp _punch _min_target _max_target _target_lowpass _min_output _max_output _output_lowpass _d_on_error ))

(defmethod hebiros::PidGainsMsg
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:kp __kp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ki __ki) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:kd __kd) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:feed_forward __feed_forward) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dead_zone __dead_zone) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:i_clamp __i_clamp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:punch __punch) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:min_target __min_target) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_target __max_target) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:target_lowpass __target_lowpass) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:min_output __min_output) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_output __max_output) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:output_lowpass __output_lowpass) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:d_on_error __d_on_error) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _name __name)
   (setq _kp __kp)
   (setq _ki __ki)
   (setq _kd __kd)
   (setq _feed_forward __feed_forward)
   (setq _dead_zone __dead_zone)
   (setq _i_clamp __i_clamp)
   (setq _punch __punch)
   (setq _min_target __min_target)
   (setq _max_target __max_target)
   (setq _target_lowpass __target_lowpass)
   (setq _min_output __min_output)
   (setq _max_output __max_output)
   (setq _output_lowpass __output_lowpass)
   (setq _d_on_error __d_on_error)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:ki
   (&optional __ki)
   (if __ki (setq _ki __ki)) _ki)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:feed_forward
   (&optional __feed_forward)
   (if __feed_forward (setq _feed_forward __feed_forward)) _feed_forward)
  (:dead_zone
   (&optional __dead_zone)
   (if __dead_zone (setq _dead_zone __dead_zone)) _dead_zone)
  (:i_clamp
   (&optional __i_clamp)
   (if __i_clamp (setq _i_clamp __i_clamp)) _i_clamp)
  (:punch
   (&optional __punch)
   (if __punch (setq _punch __punch)) _punch)
  (:min_target
   (&optional __min_target)
   (if __min_target (setq _min_target __min_target)) _min_target)
  (:max_target
   (&optional __max_target)
   (if __max_target (setq _max_target __max_target)) _max_target)
  (:target_lowpass
   (&optional __target_lowpass)
   (if __target_lowpass (setq _target_lowpass __target_lowpass)) _target_lowpass)
  (:min_output
   (&optional __min_output)
   (if __min_output (setq _min_output __min_output)) _min_output)
  (:max_output
   (&optional __max_output)
   (if __max_output (setq _max_output __max_output)) _max_output)
  (:output_lowpass
   (&optional __output_lowpass)
   (if __output_lowpass (setq _output_lowpass __output_lowpass)) _output_lowpass)
  (:d_on_error
   (&optional __d_on_error)
   (if __d_on_error (setq _d_on_error __d_on_error)) _d_on_error)
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _kp
    (* 8    (length _kp)) 4
    ;; float64[] _ki
    (* 8    (length _ki)) 4
    ;; float64[] _kd
    (* 8    (length _kd)) 4
    ;; float64[] _feed_forward
    (* 8    (length _feed_forward)) 4
    ;; float64[] _dead_zone
    (* 8    (length _dead_zone)) 4
    ;; float64[] _i_clamp
    (* 8    (length _i_clamp)) 4
    ;; float64[] _punch
    (* 8    (length _punch)) 4
    ;; float64[] _min_target
    (* 8    (length _min_target)) 4
    ;; float64[] _max_target
    (* 8    (length _max_target)) 4
    ;; float64[] _target_lowpass
    (* 8    (length _target_lowpass)) 4
    ;; float64[] _min_output
    (* 8    (length _min_output)) 4
    ;; float64[] _max_output
    (* 8    (length _max_output)) 4
    ;; float64[] _output_lowpass
    (* 8    (length _output_lowpass)) 4
    ;; bool[] _d_on_error
    (* 1    (length _d_on_error)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _kp
     (write-long (length _kp) s)
     (dotimes (i (length _kp))
       (sys::poke (elt _kp i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _ki
     (write-long (length _ki) s)
     (dotimes (i (length _ki))
       (sys::poke (elt _ki i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _kd
     (write-long (length _kd) s)
     (dotimes (i (length _kd))
       (sys::poke (elt _kd i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _feed_forward
     (write-long (length _feed_forward) s)
     (dotimes (i (length _feed_forward))
       (sys::poke (elt _feed_forward i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _dead_zone
     (write-long (length _dead_zone) s)
     (dotimes (i (length _dead_zone))
       (sys::poke (elt _dead_zone i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _i_clamp
     (write-long (length _i_clamp) s)
     (dotimes (i (length _i_clamp))
       (sys::poke (elt _i_clamp i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _punch
     (write-long (length _punch) s)
     (dotimes (i (length _punch))
       (sys::poke (elt _punch i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _min_target
     (write-long (length _min_target) s)
     (dotimes (i (length _min_target))
       (sys::poke (elt _min_target i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _max_target
     (write-long (length _max_target) s)
     (dotimes (i (length _max_target))
       (sys::poke (elt _max_target i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _target_lowpass
     (write-long (length _target_lowpass) s)
     (dotimes (i (length _target_lowpass))
       (sys::poke (elt _target_lowpass i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _min_output
     (write-long (length _min_output) s)
     (dotimes (i (length _min_output))
       (sys::poke (elt _min_output i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _max_output
     (write-long (length _max_output) s)
     (dotimes (i (length _max_output))
       (sys::poke (elt _max_output i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _output_lowpass
     (write-long (length _output_lowpass) s)
     (dotimes (i (length _output_lowpass))
       (sys::poke (elt _output_lowpass i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool[] _d_on_error
     (write-long (length _d_on_error) s)
     (dotimes (i (length _d_on_error))
       (if (elt _d_on_error i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _kp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _kp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _kp i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _ki
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ki (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ki i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _kd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _kd (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _kd i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _feed_forward
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feed_forward (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _feed_forward i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _dead_zone
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dead_zone (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dead_zone i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _i_clamp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _i_clamp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _i_clamp i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _punch
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _punch (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _punch i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _min_target
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _min_target (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _min_target i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _max_target
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_target (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _max_target i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _target_lowpass
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_lowpass (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _target_lowpass i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _min_output
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _min_output (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _min_output i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _max_output
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_output (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _max_output i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _output_lowpass
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _output_lowpass (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _output_lowpass i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool[] _d_on_error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _d_on_error (make-list n))
     (dotimes (i n)
     (setf (elt _d_on_error i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get hebiros::PidGainsMsg :md5sum-) "409cfb8df90bde199674774f996b26c5")
(setf (get hebiros::PidGainsMsg :datatype-) "hebiros/PidGainsMsg")
(setf (get hebiros::PidGainsMsg :definition-)
      "string[] name
float64[] kp
float64[] ki
float64[] kd
float64[] feed_forward
float64[] dead_zone
float64[] i_clamp
float64[] punch
float64[] min_target
float64[] max_target
float64[] target_lowpass
float64[] min_output
float64[] max_output
float64[] output_lowpass
bool[] d_on_error


")



(provide :hebiros/PidGainsMsg "409cfb8df90bde199674774f996b26c5")


