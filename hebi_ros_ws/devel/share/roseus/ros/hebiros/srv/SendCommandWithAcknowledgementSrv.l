;; Auto-generated. Do not edit!


(when (boundp 'hebiros::SendCommandWithAcknowledgementSrv)
  (if (not (find-package "HEBIROS"))
    (make-package "HEBIROS"))
  (shadow 'SendCommandWithAcknowledgementSrv (find-package "HEBIROS")))
(unless (find-package "HEBIROS::SENDCOMMANDWITHACKNOWLEDGEMENTSRV")
  (make-package "HEBIROS::SENDCOMMANDWITHACKNOWLEDGEMENTSRV"))
(unless (find-package "HEBIROS::SENDCOMMANDWITHACKNOWLEDGEMENTSRVREQUEST")
  (make-package "HEBIROS::SENDCOMMANDWITHACKNOWLEDGEMENTSRVREQUEST"))
(unless (find-package "HEBIROS::SENDCOMMANDWITHACKNOWLEDGEMENTSRVRESPONSE")
  (make-package "HEBIROS::SENDCOMMANDWITHACKNOWLEDGEMENTSRVRESPONSE"))

(in-package "ROS")





(defclass hebiros::SendCommandWithAcknowledgementSrvRequest
  :super ros::object
  :slots (_command ))

(defmethod hebiros::SendCommandWithAcknowledgementSrvRequest
  (:init
   (&key
    ((:command __command) (instance hebiros::CommandMsg :init))
    )
   (send-super :init)
   (setq _command __command)
   self)
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:serialization-length
   ()
   (+
    ;; hebiros/CommandMsg _command
    (send _command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hebiros/CommandMsg _command
       (send _command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hebiros/CommandMsg _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;;
   self)
  )

(defclass hebiros::SendCommandWithAcknowledgementSrvResponse
  :super ros::object
  :slots ())

(defmethod hebiros::SendCommandWithAcknowledgementSrvResponse
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

(defclass hebiros::SendCommandWithAcknowledgementSrv
  :super ros::object
  :slots ())

(setf (get hebiros::SendCommandWithAcknowledgementSrv :md5sum-) "dc4cfbf8596ddaff00c6c17ca78326b7")
(setf (get hebiros::SendCommandWithAcknowledgementSrv :datatype-) "hebiros/SendCommandWithAcknowledgementSrv")
(setf (get hebiros::SendCommandWithAcknowledgementSrv :request) hebiros::SendCommandWithAcknowledgementSrvRequest)
(setf (get hebiros::SendCommandWithAcknowledgementSrv :response) hebiros::SendCommandWithAcknowledgementSrvResponse)

(defmethod hebiros::SendCommandWithAcknowledgementSrvRequest
  (:response () (instance hebiros::SendCommandWithAcknowledgementSrvResponse :init)))

(setf (get hebiros::SendCommandWithAcknowledgementSrvRequest :md5sum-) "dc4cfbf8596ddaff00c6c17ca78326b7")
(setf (get hebiros::SendCommandWithAcknowledgementSrvRequest :datatype-) "hebiros/SendCommandWithAcknowledgementSrvRequest")
(setf (get hebiros::SendCommandWithAcknowledgementSrvRequest :definition-)
      "CommandMsg command

================================================================================
MSG: hebiros/CommandMsg
string[] name
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

---

")

(setf (get hebiros::SendCommandWithAcknowledgementSrvResponse :md5sum-) "dc4cfbf8596ddaff00c6c17ca78326b7")
(setf (get hebiros::SendCommandWithAcknowledgementSrvResponse :datatype-) "hebiros/SendCommandWithAcknowledgementSrvResponse")
(setf (get hebiros::SendCommandWithAcknowledgementSrvResponse :definition-)
      "CommandMsg command

================================================================================
MSG: hebiros/CommandMsg
string[] name
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

---

")



(provide :hebiros/SendCommandWithAcknowledgementSrv "dc4cfbf8596ddaff00c6c17ca78326b7")


