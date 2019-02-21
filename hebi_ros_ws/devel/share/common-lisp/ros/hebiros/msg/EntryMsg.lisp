; Auto-generated. Do not edit!


(cl:in-package hebiros-msg)


;//! \htmlinclude EntryMsg.msg.html

(cl:defclass <EntryMsg> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (family
    :reader family
    :initarg :family
    :type cl:string
    :initform "")
   (mac_address
    :reader mac_address
    :initarg :mac_address
    :type cl:integer
    :initform 0))
)

(cl:defclass EntryMsg (<EntryMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EntryMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EntryMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-msg:<EntryMsg> is deprecated: use hebiros-msg:EntryMsg instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <EntryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-msg:name-val is deprecated.  Use hebiros-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'family-val :lambda-list '(m))
(cl:defmethod family-val ((m <EntryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-msg:family-val is deprecated.  Use hebiros-msg:family instead.")
  (family m))

(cl:ensure-generic-function 'mac_address-val :lambda-list '(m))
(cl:defmethod mac_address-val ((m <EntryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-msg:mac_address-val is deprecated.  Use hebiros-msg:mac_address instead.")
  (mac_address m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EntryMsg>) ostream)
  "Serializes a message object of type '<EntryMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'family))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'family))
  (cl:let* ((signed (cl:slot-value msg 'mac_address)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EntryMsg>) istream)
  "Deserializes a message object of type '<EntryMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'family) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'family) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mac_address) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EntryMsg>)))
  "Returns string type for a message object of type '<EntryMsg>"
  "hebiros/EntryMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EntryMsg)))
  "Returns string type for a message object of type 'EntryMsg"
  "hebiros/EntryMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EntryMsg>)))
  "Returns md5sum for a message object of type '<EntryMsg>"
  "0ef1a1bc0bda92a32c695657f945626a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EntryMsg)))
  "Returns md5sum for a message object of type 'EntryMsg"
  "0ef1a1bc0bda92a32c695657f945626a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EntryMsg>)))
  "Returns full string definition for message of type '<EntryMsg>"
  (cl:format cl:nil "string name~%string family~%int64 mac_address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EntryMsg)))
  "Returns full string definition for message of type 'EntryMsg"
  (cl:format cl:nil "string name~%string family~%int64 mac_address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EntryMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'family))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EntryMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'EntryMsg
    (cl:cons ':name (name msg))
    (cl:cons ':family (family msg))
    (cl:cons ':mac_address (mac_address msg))
))
