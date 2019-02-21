; Auto-generated. Do not edit!


(cl:in-package hebiros-srv)


;//! \htmlinclude SetCommandLifetimeSrv-request.msg.html

(cl:defclass <SetCommandLifetimeSrv-request> (roslisp-msg-protocol:ros-message)
  ((command_lifetime
    :reader command_lifetime
    :initarg :command_lifetime
    :type cl:integer
    :initform 0))
)

(cl:defclass SetCommandLifetimeSrv-request (<SetCommandLifetimeSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCommandLifetimeSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCommandLifetimeSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<SetCommandLifetimeSrv-request> is deprecated: use hebiros-srv:SetCommandLifetimeSrv-request instead.")))

(cl:ensure-generic-function 'command_lifetime-val :lambda-list '(m))
(cl:defmethod command_lifetime-val ((m <SetCommandLifetimeSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-srv:command_lifetime-val is deprecated.  Use hebiros-srv:command_lifetime instead.")
  (command_lifetime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCommandLifetimeSrv-request>) ostream)
  "Serializes a message object of type '<SetCommandLifetimeSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'command_lifetime)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCommandLifetimeSrv-request>) istream)
  "Deserializes a message object of type '<SetCommandLifetimeSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command_lifetime) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCommandLifetimeSrv-request>)))
  "Returns string type for a service object of type '<SetCommandLifetimeSrv-request>"
  "hebiros/SetCommandLifetimeSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCommandLifetimeSrv-request)))
  "Returns string type for a service object of type 'SetCommandLifetimeSrv-request"
  "hebiros/SetCommandLifetimeSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCommandLifetimeSrv-request>)))
  "Returns md5sum for a message object of type '<SetCommandLifetimeSrv-request>"
  "9e6d0becb75f24a1f3c269f4469e5d38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCommandLifetimeSrv-request)))
  "Returns md5sum for a message object of type 'SetCommandLifetimeSrv-request"
  "9e6d0becb75f24a1f3c269f4469e5d38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCommandLifetimeSrv-request>)))
  "Returns full string definition for message of type '<SetCommandLifetimeSrv-request>"
  (cl:format cl:nil "int32 command_lifetime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCommandLifetimeSrv-request)))
  "Returns full string definition for message of type 'SetCommandLifetimeSrv-request"
  (cl:format cl:nil "int32 command_lifetime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCommandLifetimeSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCommandLifetimeSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCommandLifetimeSrv-request
    (cl:cons ':command_lifetime (command_lifetime msg))
))
;//! \htmlinclude SetCommandLifetimeSrv-response.msg.html

(cl:defclass <SetCommandLifetimeSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetCommandLifetimeSrv-response (<SetCommandLifetimeSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCommandLifetimeSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCommandLifetimeSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<SetCommandLifetimeSrv-response> is deprecated: use hebiros-srv:SetCommandLifetimeSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCommandLifetimeSrv-response>) ostream)
  "Serializes a message object of type '<SetCommandLifetimeSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCommandLifetimeSrv-response>) istream)
  "Deserializes a message object of type '<SetCommandLifetimeSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCommandLifetimeSrv-response>)))
  "Returns string type for a service object of type '<SetCommandLifetimeSrv-response>"
  "hebiros/SetCommandLifetimeSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCommandLifetimeSrv-response)))
  "Returns string type for a service object of type 'SetCommandLifetimeSrv-response"
  "hebiros/SetCommandLifetimeSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCommandLifetimeSrv-response>)))
  "Returns md5sum for a message object of type '<SetCommandLifetimeSrv-response>"
  "9e6d0becb75f24a1f3c269f4469e5d38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCommandLifetimeSrv-response)))
  "Returns md5sum for a message object of type 'SetCommandLifetimeSrv-response"
  "9e6d0becb75f24a1f3c269f4469e5d38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCommandLifetimeSrv-response>)))
  "Returns full string definition for message of type '<SetCommandLifetimeSrv-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCommandLifetimeSrv-response)))
  "Returns full string definition for message of type 'SetCommandLifetimeSrv-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCommandLifetimeSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCommandLifetimeSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCommandLifetimeSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCommandLifetimeSrv)))
  'SetCommandLifetimeSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCommandLifetimeSrv)))
  'SetCommandLifetimeSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCommandLifetimeSrv)))
  "Returns string type for a service object of type '<SetCommandLifetimeSrv>"
  "hebiros/SetCommandLifetimeSrv")