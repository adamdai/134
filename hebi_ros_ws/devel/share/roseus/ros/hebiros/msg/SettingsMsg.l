;; Auto-generated. Do not edit!


(when (boundp 'hebiros::SettingsMsg)
  (if (not (find-package "HEBIROS"))
    (make-package "HEBIROS"))
  (shadow 'SettingsMsg (find-package "HEBIROS")))
(unless (find-package "HEBIROS::SETTINGSMSG")
  (make-package "HEBIROS::SETTINGSMSG"))

(in-package "ROS")
;;//! \htmlinclude SettingsMsg.msg.html


(defclass hebiros::SettingsMsg
  :super ros::object
  :slots (_name _save_current_settings _control_strategy _position_gains _velocity_gains _effort_gains ))

(defmethod hebiros::SettingsMsg
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:save_current_settings __save_current_settings) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:control_strategy __control_strategy) (make-array 0 :initial-element 0 :element-type :integer))
    ((:position_gains __position_gains) (instance hebiros::PidGainsMsg :init))
    ((:velocity_gains __velocity_gains) (instance hebiros::PidGainsMsg :init))
    ((:effort_gains __effort_gains) (instance hebiros::PidGainsMsg :init))
    )
   (send-super :init)
   (setq _name __name)
   (setq _save_current_settings __save_current_settings)
   (setq _control_strategy __control_strategy)
   (setq _position_gains __position_gains)
   (setq _velocity_gains __velocity_gains)
   (setq _effort_gains __effort_gains)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:save_current_settings
   (&optional __save_current_settings)
   (if __save_current_settings (setq _save_current_settings __save_current_settings)) _save_current_settings)
  (:control_strategy
   (&optional __control_strategy)
   (if __control_strategy (setq _control_strategy __control_strategy)) _control_strategy)
  (:position_gains
   (&rest __position_gains)
   (if (keywordp (car __position_gains))
       (send* _position_gains __position_gains)
     (progn
       (if __position_gains (setq _position_gains (car __position_gains)))
       _position_gains)))
  (:velocity_gains
   (&rest __velocity_gains)
   (if (keywordp (car __velocity_gains))
       (send* _velocity_gains __velocity_gains)
     (progn
       (if __velocity_gains (setq _velocity_gains (car __velocity_gains)))
       _velocity_gains)))
  (:effort_gains
   (&rest __effort_gains)
   (if (keywordp (car __effort_gains))
       (send* _effort_gains __effort_gains)
     (progn
       (if __effort_gains (setq _effort_gains (car __effort_gains)))
       _effort_gains)))
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; bool[] _save_current_settings
    (* 1    (length _save_current_settings)) 4
    ;; int8[] _control_strategy
    (* 1    (length _control_strategy)) 4
    ;; hebiros/PidGainsMsg _position_gains
    (send _position_gains :serialization-length)
    ;; hebiros/PidGainsMsg _velocity_gains
    (send _velocity_gains :serialization-length)
    ;; hebiros/PidGainsMsg _effort_gains
    (send _effort_gains :serialization-length)
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
     ;; bool[] _save_current_settings
     (write-long (length _save_current_settings) s)
     (dotimes (i (length _save_current_settings))
       (if (elt _save_current_settings i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int8[] _control_strategy
     (write-long (length _control_strategy) s)
     (dotimes (i (length _control_strategy))
       (write-byte (elt _control_strategy i) s)
       )
     ;; hebiros/PidGainsMsg _position_gains
       (send _position_gains :serialize s)
     ;; hebiros/PidGainsMsg _velocity_gains
       (send _velocity_gains :serialize s)
     ;; hebiros/PidGainsMsg _effort_gains
       (send _effort_gains :serialize s)
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
   ;; bool[] _save_current_settings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _save_current_settings (make-list n))
     (dotimes (i n)
     (setf (elt _save_current_settings i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; int8[] _control_strategy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _control_strategy (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _control_strategy i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _control_strategy i) 127) (setf (elt _control_strategy i) (- (elt _control_strategy i) 256)))
     ))
   ;; hebiros/PidGainsMsg _position_gains
     (send _position_gains :deserialize buf ptr-) (incf ptr- (send _position_gains :serialization-length))
   ;; hebiros/PidGainsMsg _velocity_gains
     (send _velocity_gains :deserialize buf ptr-) (incf ptr- (send _velocity_gains :serialization-length))
   ;; hebiros/PidGainsMsg _effort_gains
     (send _effort_gains :deserialize buf ptr-) (incf ptr- (send _effort_gains :serialization-length))
   ;;
   self)
  )

(setf (get hebiros::SettingsMsg :md5sum-) "4333c3b24c39f74ad09d675d9b50f596")
(setf (get hebiros::SettingsMsg :datatype-) "hebiros/SettingsMsg")
(setf (get hebiros::SettingsMsg :definition-)
      "string[] name
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



(provide :hebiros/SettingsMsg "4333c3b24c39f74ad09d675d9b50f596")


