; Auto-generated. Do not edit!


(cl:in-package hebiros-msg)


;//! \htmlinclude SettingsMsg.msg.html

(cl:defclass <SettingsMsg> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (save_current_settings
    :reader save_current_settings
    :initarg :save_current_settings
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (control_strategy
    :reader control_strategy
    :initarg :control_strategy
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (position_gains
    :reader position_gains
    :initarg :position_gains
    :type hebiros-msg:PidGainsMsg
    :initform (cl:make-instance 'hebiros-msg:PidGainsMsg))
   (velocity_gains
    :reader velocity_gains
    :initarg :velocity_gains
    :type hebiros-msg:PidGainsMsg
    :initform (cl:make-instance 'hebiros-msg:PidGainsMsg))
   (effort_gains
    :reader effort_gains
    :initarg :effort_gains
    :type hebiros-msg:PidGainsMsg
    :initform (cl:make-instance 'hebiros-msg:PidGainsMsg)))
)

(cl:defclass SettingsMsg (<SettingsMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SettingsMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SettingsMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-msg:<SettingsMsg> is deprecated: use hebiros-msg:SettingsMsg instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SettingsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-msg:name-val is deprecated.  Use hebiros-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'save_current_settings-val :lambda-list '(m))
(cl:defmethod save_current_settings-val ((m <SettingsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-msg:save_current_settings-val is deprecated.  Use hebiros-msg:save_current_settings instead.")
  (save_current_settings m))

(cl:ensure-generic-function 'control_strategy-val :lambda-list '(m))
(cl:defmethod control_strategy-val ((m <SettingsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-msg:control_strategy-val is deprecated.  Use hebiros-msg:control_strategy instead.")
  (control_strategy m))

(cl:ensure-generic-function 'position_gains-val :lambda-list '(m))
(cl:defmethod position_gains-val ((m <SettingsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-msg:position_gains-val is deprecated.  Use hebiros-msg:position_gains instead.")
  (position_gains m))

(cl:ensure-generic-function 'velocity_gains-val :lambda-list '(m))
(cl:defmethod velocity_gains-val ((m <SettingsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-msg:velocity_gains-val is deprecated.  Use hebiros-msg:velocity_gains instead.")
  (velocity_gains m))

(cl:ensure-generic-function 'effort_gains-val :lambda-list '(m))
(cl:defmethod effort_gains-val ((m <SettingsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-msg:effort_gains-val is deprecated.  Use hebiros-msg:effort_gains instead.")
  (effort_gains m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SettingsMsg>) ostream)
  "Serializes a message object of type '<SettingsMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'save_current_settings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'save_current_settings))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'control_strategy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'control_strategy))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_gains) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_gains) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'effort_gains) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SettingsMsg>) istream)
  "Deserializes a message object of type '<SettingsMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'name) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'name)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'save_current_settings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'save_current_settings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'control_strategy) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'control_strategy)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_gains) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_gains) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'effort_gains) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SettingsMsg>)))
  "Returns string type for a message object of type '<SettingsMsg>"
  "hebiros/SettingsMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SettingsMsg)))
  "Returns string type for a message object of type 'SettingsMsg"
  "hebiros/SettingsMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SettingsMsg>)))
  "Returns md5sum for a message object of type '<SettingsMsg>"
  "4333c3b24c39f74ad09d675d9b50f596")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SettingsMsg)))
  "Returns md5sum for a message object of type 'SettingsMsg"
  "4333c3b24c39f74ad09d675d9b50f596")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SettingsMsg>)))
  "Returns full string definition for message of type '<SettingsMsg>"
  (cl:format cl:nil "string[] name~%bool[] save_current_settings~%int8[] control_strategy~%hebiros/PidGainsMsg position_gains~%hebiros/PidGainsMsg velocity_gains~%hebiros/PidGainsMsg effort_gains~%~%~%================================================================================~%MSG: hebiros/PidGainsMsg~%string[] name~%float64[] kp~%float64[] ki~%float64[] kd~%float64[] feed_forward~%float64[] dead_zone~%float64[] i_clamp~%float64[] punch~%float64[] min_target~%float64[] max_target~%float64[] target_lowpass~%float64[] min_output~%float64[] max_output~%float64[] output_lowpass~%bool[] d_on_error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SettingsMsg)))
  "Returns full string definition for message of type 'SettingsMsg"
  (cl:format cl:nil "string[] name~%bool[] save_current_settings~%int8[] control_strategy~%hebiros/PidGainsMsg position_gains~%hebiros/PidGainsMsg velocity_gains~%hebiros/PidGainsMsg effort_gains~%~%~%================================================================================~%MSG: hebiros/PidGainsMsg~%string[] name~%float64[] kp~%float64[] ki~%float64[] kd~%float64[] feed_forward~%float64[] dead_zone~%float64[] i_clamp~%float64[] punch~%float64[] min_target~%float64[] max_target~%float64[] target_lowpass~%float64[] min_output~%float64[] max_output~%float64[] output_lowpass~%bool[] d_on_error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SettingsMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'save_current_settings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'control_strategy) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_gains))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_gains))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'effort_gains))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SettingsMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'SettingsMsg
    (cl:cons ':name (name msg))
    (cl:cons ':save_current_settings (save_current_settings msg))
    (cl:cons ':control_strategy (control_strategy msg))
    (cl:cons ':position_gains (position_gains msg))
    (cl:cons ':velocity_gains (velocity_gains msg))
    (cl:cons ':effort_gains (effort_gains msg))
))
