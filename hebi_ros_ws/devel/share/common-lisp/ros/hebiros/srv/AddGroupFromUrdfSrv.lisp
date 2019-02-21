; Auto-generated. Do not edit!


(cl:in-package hebiros-srv)


;//! \htmlinclude AddGroupFromUrdfSrv-request.msg.html

(cl:defclass <AddGroupFromUrdfSrv-request> (roslisp-msg-protocol:ros-message)
  ((group_name
    :reader group_name
    :initarg :group_name
    :type cl:string
    :initform ""))
)

(cl:defclass AddGroupFromUrdfSrv-request (<AddGroupFromUrdfSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddGroupFromUrdfSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddGroupFromUrdfSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<AddGroupFromUrdfSrv-request> is deprecated: use hebiros-srv:AddGroupFromUrdfSrv-request instead.")))

(cl:ensure-generic-function 'group_name-val :lambda-list '(m))
(cl:defmethod group_name-val ((m <AddGroupFromUrdfSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-srv:group_name-val is deprecated.  Use hebiros-srv:group_name instead.")
  (group_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddGroupFromUrdfSrv-request>) ostream)
  "Serializes a message object of type '<AddGroupFromUrdfSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddGroupFromUrdfSrv-request>) istream)
  "Deserializes a message object of type '<AddGroupFromUrdfSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddGroupFromUrdfSrv-request>)))
  "Returns string type for a service object of type '<AddGroupFromUrdfSrv-request>"
  "hebiros/AddGroupFromUrdfSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddGroupFromUrdfSrv-request)))
  "Returns string type for a service object of type 'AddGroupFromUrdfSrv-request"
  "hebiros/AddGroupFromUrdfSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddGroupFromUrdfSrv-request>)))
  "Returns md5sum for a message object of type '<AddGroupFromUrdfSrv-request>"
  "967d0b0c0d858ded8a6a69abbce0c981")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddGroupFromUrdfSrv-request)))
  "Returns md5sum for a message object of type 'AddGroupFromUrdfSrv-request"
  "967d0b0c0d858ded8a6a69abbce0c981")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddGroupFromUrdfSrv-request>)))
  "Returns full string definition for message of type '<AddGroupFromUrdfSrv-request>"
  (cl:format cl:nil "string group_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddGroupFromUrdfSrv-request)))
  "Returns full string definition for message of type 'AddGroupFromUrdfSrv-request"
  (cl:format cl:nil "string group_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddGroupFromUrdfSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'group_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddGroupFromUrdfSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddGroupFromUrdfSrv-request
    (cl:cons ':group_name (group_name msg))
))
;//! \htmlinclude AddGroupFromUrdfSrv-response.msg.html

(cl:defclass <AddGroupFromUrdfSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddGroupFromUrdfSrv-response (<AddGroupFromUrdfSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddGroupFromUrdfSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddGroupFromUrdfSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<AddGroupFromUrdfSrv-response> is deprecated: use hebiros-srv:AddGroupFromUrdfSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddGroupFromUrdfSrv-response>) ostream)
  "Serializes a message object of type '<AddGroupFromUrdfSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddGroupFromUrdfSrv-response>) istream)
  "Deserializes a message object of type '<AddGroupFromUrdfSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddGroupFromUrdfSrv-response>)))
  "Returns string type for a service object of type '<AddGroupFromUrdfSrv-response>"
  "hebiros/AddGroupFromUrdfSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddGroupFromUrdfSrv-response)))
  "Returns string type for a service object of type 'AddGroupFromUrdfSrv-response"
  "hebiros/AddGroupFromUrdfSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddGroupFromUrdfSrv-response>)))
  "Returns md5sum for a message object of type '<AddGroupFromUrdfSrv-response>"
  "967d0b0c0d858ded8a6a69abbce0c981")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddGroupFromUrdfSrv-response)))
  "Returns md5sum for a message object of type 'AddGroupFromUrdfSrv-response"
  "967d0b0c0d858ded8a6a69abbce0c981")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddGroupFromUrdfSrv-response>)))
  "Returns full string definition for message of type '<AddGroupFromUrdfSrv-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddGroupFromUrdfSrv-response)))
  "Returns full string definition for message of type 'AddGroupFromUrdfSrv-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddGroupFromUrdfSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddGroupFromUrdfSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddGroupFromUrdfSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddGroupFromUrdfSrv)))
  'AddGroupFromUrdfSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddGroupFromUrdfSrv)))
  'AddGroupFromUrdfSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddGroupFromUrdfSrv)))
  "Returns string type for a service object of type '<AddGroupFromUrdfSrv>"
  "hebiros/AddGroupFromUrdfSrv")