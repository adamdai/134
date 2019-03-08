; Auto-generated. Do not edit!


(cl:in-package moveto-srv)


;//! \htmlinclude ThrowTo-request.msg.html

(cl:defclass <ThrowTo-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type moveto-msg:Point
    :initform (cl:make-instance 'moveto-msg:Point)))
)

(cl:defclass ThrowTo-request (<ThrowTo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrowTo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrowTo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveto-srv:<ThrowTo-request> is deprecated: use moveto-srv:ThrowTo-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <ThrowTo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:point-val is deprecated.  Use moveto-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrowTo-request>) ostream)
  "Serializes a message object of type '<ThrowTo-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrowTo-request>) istream)
  "Deserializes a message object of type '<ThrowTo-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrowTo-request>)))
  "Returns string type for a service object of type '<ThrowTo-request>"
  "moveto/ThrowToRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrowTo-request)))
  "Returns string type for a service object of type 'ThrowTo-request"
  "moveto/ThrowToRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrowTo-request>)))
  "Returns md5sum for a message object of type '<ThrowTo-request>"
  "f5d911aee700e2e2bb9670f06078b78f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrowTo-request)))
  "Returns md5sum for a message object of type 'ThrowTo-request"
  "f5d911aee700e2e2bb9670f06078b78f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrowTo-request>)))
  "Returns full string definition for message of type '<ThrowTo-request>"
  (cl:format cl:nil "~%~%~%Point     point~%~%================================================================================~%MSG: moveto/Point~%# Message of tip values~%float64 x~%float64 y~%float64 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrowTo-request)))
  "Returns full string definition for message of type 'ThrowTo-request"
  (cl:format cl:nil "~%~%~%Point     point~%~%================================================================================~%MSG: moveto/Point~%# Message of tip values~%float64 x~%float64 y~%float64 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrowTo-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrowTo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrowTo-request
    (cl:cons ':point (point msg))
))
;//! \htmlinclude ThrowTo-response.msg.html

(cl:defclass <ThrowTo-response> (roslisp-msg-protocol:ros-message)
  ((movetime
    :reader movetime
    :initarg :movetime
    :type cl:float
    :initform 0.0))
)

(cl:defclass ThrowTo-response (<ThrowTo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrowTo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrowTo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveto-srv:<ThrowTo-response> is deprecated: use moveto-srv:ThrowTo-response instead.")))

(cl:ensure-generic-function 'movetime-val :lambda-list '(m))
(cl:defmethod movetime-val ((m <ThrowTo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:movetime-val is deprecated.  Use moveto-srv:movetime instead.")
  (movetime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrowTo-response>) ostream)
  "Serializes a message object of type '<ThrowTo-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'movetime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrowTo-response>) istream)
  "Deserializes a message object of type '<ThrowTo-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'movetime) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrowTo-response>)))
  "Returns string type for a service object of type '<ThrowTo-response>"
  "moveto/ThrowToResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrowTo-response)))
  "Returns string type for a service object of type 'ThrowTo-response"
  "moveto/ThrowToResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrowTo-response>)))
  "Returns md5sum for a message object of type '<ThrowTo-response>"
  "f5d911aee700e2e2bb9670f06078b78f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrowTo-response)))
  "Returns md5sum for a message object of type 'ThrowTo-response"
  "f5d911aee700e2e2bb9670f06078b78f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrowTo-response>)))
  "Returns full string definition for message of type '<ThrowTo-response>"
  (cl:format cl:nil "~%float64 movetime~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrowTo-response)))
  "Returns full string definition for message of type 'ThrowTo-response"
  (cl:format cl:nil "~%float64 movetime~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrowTo-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrowTo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrowTo-response
    (cl:cons ':movetime (movetime msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ThrowTo)))
  'ThrowTo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ThrowTo)))
  'ThrowTo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrowTo)))
  "Returns string type for a service object of type '<ThrowTo>"
  "moveto/ThrowTo")