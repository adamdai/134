;; Auto-generated. Do not edit!


(when (boundp 'hebiros::CommandMsg)
  (if (not (find-package "HEBIROS"))
    (make-package "HEBIROS"))
  (shadow 'CommandMsg (find-package "HEBIROS")))
(unless (find-package "HEBIROS::COMMANDMSG")
  (make-package "HEBIROS::COMMANDMSG"))

(in-package "ROS")
;;//! \htmlinclude CommandMsg.msg.html


(defclass hebiros::CommandMsg
  :super ros::object
  :slots (_name _position _velocity _effort _settings ))

(defmethod hebiros::CommandMsg
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:settings __settings) (instance hebiros::SettingsMsg :init))
    )
   (send-super :init)
   (setq _name __name)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _effort __effort)
   (setq _settings __settings)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:settings
   (&rest __settings)
   (if (keywordp (car __settings))
       (send* _settings __settings)
     (progn
       (if __settings (setq _settings (car __settings)))
       _settings)))
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _position
    (* 8    (length _position)) 4
    ;; float64[] _velocity
    (* 8    (length _velocity)) 4
    ;; float64[] _effort
    (* 8    (length _effort)) 4
    ;; hebiros/SettingsMsg _settings
    (send _settings :serialization-length)
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
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _effort
     (write-long (length _effort) s)
     (dotimes (i (length _effort))
       (sys::poke (elt _effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; hebiros/SettingsMsg _settings
       (send _settings :serialize s)
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
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; hebiros/SettingsMsg _settings
     (send _settings :deserialize buf ptr-) (incf ptr- (send _settings :serialization-length))
   ;;
   self)
  )

(setf (get hebiros::CommandMsg :md5sum-) "bfeea03edefa65b3e88462912543b8b6")
(setf (get hebiros::CommandMsg :datatype-) "hebiros/CommandMsg")
(setf (get hebiros::CommandMsg :definition-)
      "string[] name
float64[] position
float64[] velocity
float64[] effort
hebiros/SettingsMsg settings


================================================================================
MSG: hebiros/SettingsMsg
string[] name
bool[] save_current_settings
int8[] control_strategy
hebiros/PidGainsMsg position_gains
hebiros/PidGainsMsg velocity_gains
hebiros/PidGainsMsg effort_gains


================================================================================
MSG: hebiros/PidGainsMsg
string[] name
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



(provide :hebiros/CommandMsg "bfeea03edefa65b3e88462912543b8b6")


