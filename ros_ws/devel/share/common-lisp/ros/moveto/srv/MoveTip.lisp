; Auto-generated. Do not edit!


(cl:in-package moveto-srv)


;//! \htmlinclude MoveTip-request.msg.html

(cl:defclass <MoveTip-request> (roslisp-msg-protocol:ros-message)
  ((tip
    :reader tip
    :initarg :tip
    :type moveto-msg:Tip
    :initform (cl:make-instance 'moveto-msg:Tip)))
)

(cl:defclass MoveTip-request (<MoveTip-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveTip-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveTip-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveto-srv:<MoveTip-request> is deprecated: use moveto-srv:MoveTip-request instead.")))

(cl:ensure-generic-function 'tip-val :lambda-list '(m))
(cl:defmethod tip-val ((m <MoveTip-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:tip-val is deprecated.  Use moveto-srv:tip instead.")
  (tip m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveTip-request>) ostream)
  "Serializes a message object of type '<MoveTip-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tip) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveTip-request>) istream)
  "Deserializes a message object of type '<MoveTip-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tip) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveTip-request>)))
  "Returns string type for a service object of type '<MoveTip-request>"
  "moveto/MoveTipRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveTip-request)))
  "Returns string type for a service object of type 'MoveTip-request"
  "moveto/MoveTipRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveTip-request>)))
  "Returns md5sum for a message object of type '<MoveTip-request>"
  "65443b37ef9ffb7ce8e57e065d5f7bf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveTip-request)))
  "Returns md5sum for a message object of type 'MoveTip-request"
  "65443b37ef9ffb7ce8e57e065d5f7bf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveTip-request>)))
  "Returns full string definition for message of type '<MoveTip-request>"
  (cl:format cl:nil "~%~%~%Tip     tip~%~%================================================================================~%MSG: moveto/Tip~%# Message of tip values~%float64 x~%float64 y~%float64 z~%float64 pitch~%float64 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveTip-request)))
  "Returns full string definition for message of type 'MoveTip-request"
  (cl:format cl:nil "~%~%~%Tip     tip~%~%================================================================================~%MSG: moveto/Tip~%# Message of tip values~%float64 x~%float64 y~%float64 z~%float64 pitch~%float64 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveTip-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tip))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveTip-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveTip-request
    (cl:cons ':tip (tip msg))
))
;//! \htmlinclude MoveTip-response.msg.html

(cl:defclass <MoveTip-response> (roslisp-msg-protocol:ros-message)
  ((movetime
    :reader movetime
    :initarg :movetime
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveTip-response (<MoveTip-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveTip-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveTip-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveto-srv:<MoveTip-response> is deprecated: use moveto-srv:MoveTip-response instead.")))

(cl:ensure-generic-function 'movetime-val :lambda-list '(m))
(cl:defmethod movetime-val ((m <MoveTip-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:movetime-val is deprecated.  Use moveto-srv:movetime instead.")
  (movetime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveTip-response>) ostream)
  "Serializes a message object of type '<MoveTip-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveTip-response>) istream)
  "Deserializes a message object of type '<MoveTip-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveTip-response>)))
  "Returns string type for a service object of type '<MoveTip-response>"
  "moveto/MoveTipResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveTip-response)))
  "Returns string type for a service object of type 'MoveTip-response"
  "moveto/MoveTipResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveTip-response>)))
  "Returns md5sum for a message object of type '<MoveTip-response>"
  "65443b37ef9ffb7ce8e57e065d5f7bf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveTip-response)))
  "Returns md5sum for a message object of type 'MoveTip-response"
  "65443b37ef9ffb7ce8e57e065d5f7bf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveTip-response>)))
  "Returns full string definition for message of type '<MoveTip-response>"
  (cl:format cl:nil "~%float64 movetime~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveTip-response)))
  "Returns full string definition for message of type 'MoveTip-response"
  (cl:format cl:nil "~%float64 movetime~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveTip-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveTip-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveTip-response
    (cl:cons ':movetime (movetime msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveTip)))
  'MoveTip-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveTip)))
  'MoveTip-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveTip)))
  "Returns string type for a service object of type '<MoveTip>"
  "moveto/MoveTip")