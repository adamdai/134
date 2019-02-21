; Auto-generated. Do not edit!


(cl:in-package hebiros-srv)


;//! \htmlinclude SendCommandWithAcknowledgementSrv-request.msg.html

(cl:defclass <SendCommandWithAcknowledgementSrv-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type hebiros-msg:CommandMsg
    :initform (cl:make-instance 'hebiros-msg:CommandMsg)))
)

(cl:defclass SendCommandWithAcknowledgementSrv-request (<SendCommandWithAcknowledgementSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendCommandWithAcknowledgementSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendCommandWithAcknowledgementSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<SendCommandWithAcknowledgementSrv-request> is deprecated: use hebiros-srv:SendCommandWithAcknowledgementSrv-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SendCommandWithAcknowledgementSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-srv:command-val is deprecated.  Use hebiros-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendCommandWithAcknowledgementSrv-request>) ostream)
  "Serializes a message object of type '<SendCommandWithAcknowledgementSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendCommandWithAcknowledgementSrv-request>) istream)
  "Deserializes a message object of type '<SendCommandWithAcknowledgementSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendCommandWithAcknowledgementSrv-request>)))
  "Returns string type for a service object of type '<SendCommandWithAcknowledgementSrv-request>"
  "hebiros/SendCommandWithAcknowledgementSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCommandWithAcknowledgementSrv-request)))
  "Returns string type for a service object of type 'SendCommandWithAcknowledgementSrv-request"
  "hebiros/SendCommandWithAcknowledgementSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendCommandWithAcknowledgementSrv-request>)))
  "Returns md5sum for a message object of type '<SendCommandWithAcknowledgementSrv-request>"
  "dc4cfbf8596ddaff00c6c17ca78326b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendCommandWithAcknowledgementSrv-request)))
  "Returns md5sum for a message object of type 'SendCommandWithAcknowledgementSrv-request"
  "dc4cfbf8596ddaff00c6c17ca78326b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendCommandWithAcknowledgementSrv-request>)))
  "Returns full string definition for message of type '<SendCommandWithAcknowledgementSrv-request>"
  (cl:format cl:nil "CommandMsg command~%~%================================================================================~%MSG: hebiros/CommandMsg~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%hebiros/SettingsMsg settings~%~%~%================================================================================~%MSG: hebiros/SettingsMsg~%string[] name~%bool[] save_current_settings~%int8[] control_strategy~%hebiros/PidGainsMsg position_gains~%hebiros/PidGainsMsg velocity_gains~%hebiros/PidGainsMsg effort_gains~%~%~%================================================================================~%MSG: hebiros/PidGainsMsg~%string[] name~%float64[] kp~%float64[] ki~%float64[] kd~%float64[] feed_forward~%float64[] dead_zone~%float64[] i_clamp~%float64[] punch~%float64[] min_target~%float64[] max_target~%float64[] target_lowpass~%float64[] min_output~%float64[] max_output~%float64[] output_lowpass~%bool[] d_on_error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendCommandWithAcknowledgementSrv-request)))
  "Returns full string definition for message of type 'SendCommandWithAcknowledgementSrv-request"
  (cl:format cl:nil "CommandMsg command~%~%================================================================================~%MSG: hebiros/CommandMsg~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%hebiros/SettingsMsg settings~%~%~%================================================================================~%MSG: hebiros/SettingsMsg~%string[] name~%bool[] save_current_settings~%int8[] control_strategy~%hebiros/PidGainsMsg position_gains~%hebiros/PidGainsMsg velocity_gains~%hebiros/PidGainsMsg effort_gains~%~%~%================================================================================~%MSG: hebiros/PidGainsMsg~%string[] name~%float64[] kp~%float64[] ki~%float64[] kd~%float64[] feed_forward~%float64[] dead_zone~%float64[] i_clamp~%float64[] punch~%float64[] min_target~%float64[] max_target~%float64[] target_lowpass~%float64[] min_output~%float64[] max_output~%float64[] output_lowpass~%bool[] d_on_error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendCommandWithAcknowledgementSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendCommandWithAcknowledgementSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendCommandWithAcknowledgementSrv-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude SendCommandWithAcknowledgementSrv-response.msg.html

(cl:defclass <SendCommandWithAcknowledgementSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SendCommandWithAcknowledgementSrv-response (<SendCommandWithAcknowledgementSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendCommandWithAcknowledgementSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendCommandWithAcknowledgementSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<SendCommandWithAcknowledgementSrv-response> is deprecated: use hebiros-srv:SendCommandWithAcknowledgementSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendCommandWithAcknowledgementSrv-response>) ostream)
  "Serializes a message object of type '<SendCommandWithAcknowledgementSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendCommandWithAcknowledgementSrv-response>) istream)
  "Deserializes a message object of type '<SendCommandWithAcknowledgementSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendCommandWithAcknowledgementSrv-response>)))
  "Returns string type for a service object of type '<SendCommandWithAcknowledgementSrv-response>"
  "hebiros/SendCommandWithAcknowledgementSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCommandWithAcknowledgementSrv-response)))
  "Returns string type for a service object of type 'SendCommandWithAcknowledgementSrv-response"
  "hebiros/SendCommandWithAcknowledgementSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendCommandWithAcknowledgementSrv-response>)))
  "Returns md5sum for a message object of type '<SendCommandWithAcknowledgementSrv-response>"
  "dc4cfbf8596ddaff00c6c17ca78326b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendCommandWithAcknowledgementSrv-response)))
  "Returns md5sum for a message object of type 'SendCommandWithAcknowledgementSrv-response"
  "dc4cfbf8596ddaff00c6c17ca78326b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendCommandWithAcknowledgementSrv-response>)))
  "Returns full string definition for message of type '<SendCommandWithAcknowledgementSrv-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendCommandWithAcknowledgementSrv-response)))
  "Returns full string definition for message of type 'SendCommandWithAcknowledgementSrv-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendCommandWithAcknowledgementSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendCommandWithAcknowledgementSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendCommandWithAcknowledgementSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendCommandWithAcknowledgementSrv)))
  'SendCommandWithAcknowledgementSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendCommandWithAcknowledgementSrv)))
  'SendCommandWithAcknowledgementSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCommandWithAcknowledgementSrv)))
  "Returns string type for a service object of type '<SendCommandWithAcknowledgementSrv>"
  "hebiros/SendCommandWithAcknowledgementSrv")