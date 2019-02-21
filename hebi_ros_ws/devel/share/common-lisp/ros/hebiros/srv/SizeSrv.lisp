; Auto-generated. Do not edit!


(cl:in-package hebiros-srv)


;//! \htmlinclude SizeSrv-request.msg.html

(cl:defclass <SizeSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SizeSrv-request (<SizeSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SizeSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SizeSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<SizeSrv-request> is deprecated: use hebiros-srv:SizeSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SizeSrv-request>) ostream)
  "Serializes a message object of type '<SizeSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SizeSrv-request>) istream)
  "Deserializes a message object of type '<SizeSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SizeSrv-request>)))
  "Returns string type for a service object of type '<SizeSrv-request>"
  "hebiros/SizeSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SizeSrv-request)))
  "Returns string type for a service object of type 'SizeSrv-request"
  "hebiros/SizeSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SizeSrv-request>)))
  "Returns md5sum for a message object of type '<SizeSrv-request>"
  "97da5de9999c5ce84f539773c8d0b2a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SizeSrv-request)))
  "Returns md5sum for a message object of type 'SizeSrv-request"
  "97da5de9999c5ce84f539773c8d0b2a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SizeSrv-request>)))
  "Returns full string definition for message of type '<SizeSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SizeSrv-request)))
  "Returns full string definition for message of type 'SizeSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SizeSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SizeSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SizeSrv-request
))
;//! \htmlinclude SizeSrv-response.msg.html

(cl:defclass <SizeSrv-response> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0))
)

(cl:defclass SizeSrv-response (<SizeSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SizeSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SizeSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<SizeSrv-response> is deprecated: use hebiros-srv:SizeSrv-response instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <SizeSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-srv:size-val is deprecated.  Use hebiros-srv:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SizeSrv-response>) ostream)
  "Serializes a message object of type '<SizeSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SizeSrv-response>) istream)
  "Deserializes a message object of type '<SizeSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SizeSrv-response>)))
  "Returns string type for a service object of type '<SizeSrv-response>"
  "hebiros/SizeSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SizeSrv-response)))
  "Returns string type for a service object of type 'SizeSrv-response"
  "hebiros/SizeSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SizeSrv-response>)))
  "Returns md5sum for a message object of type '<SizeSrv-response>"
  "97da5de9999c5ce84f539773c8d0b2a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SizeSrv-response)))
  "Returns md5sum for a message object of type 'SizeSrv-response"
  "97da5de9999c5ce84f539773c8d0b2a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SizeSrv-response>)))
  "Returns full string definition for message of type '<SizeSrv-response>"
  (cl:format cl:nil "int32 size~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SizeSrv-response)))
  "Returns full string definition for message of type 'SizeSrv-response"
  (cl:format cl:nil "int32 size~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SizeSrv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SizeSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SizeSrv-response
    (cl:cons ':size (size msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SizeSrv)))
  'SizeSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SizeSrv)))
  'SizeSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SizeSrv)))
  "Returns string type for a service object of type '<SizeSrv>"
  "hebiros/SizeSrv")