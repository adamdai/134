; Auto-generated. Do not edit!


(cl:in-package moveto-srv)


;//! \htmlinclude MoveJoints-request.msg.html

(cl:defclass <MoveJoints-request> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type moveto-msg:Joints
    :initform (cl:make-instance 'moveto-msg:Joints)))
)

(cl:defclass MoveJoints-request (<MoveJoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveJoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveJoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveto-srv:<MoveJoints-request> is deprecated: use moveto-srv:MoveJoints-request instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <MoveJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:joints-val is deprecated.  Use moveto-srv:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveJoints-request>) ostream)
  "Serializes a message object of type '<MoveJoints-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveJoints-request>) istream)
  "Deserializes a message object of type '<MoveJoints-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveJoints-request>)))
  "Returns string type for a service object of type '<MoveJoints-request>"
  "moveto/MoveJointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveJoints-request)))
  "Returns string type for a service object of type 'MoveJoints-request"
  "moveto/MoveJointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveJoints-request>)))
  "Returns md5sum for a message object of type '<MoveJoints-request>"
  "3df56d60d4f290ecf5ea26686d6c3967")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveJoints-request)))
  "Returns md5sum for a message object of type 'MoveJoints-request"
  "3df56d60d4f290ecf5ea26686d6c3967")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveJoints-request>)))
  "Returns full string definition for message of type '<MoveJoints-request>"
  (cl:format cl:nil "~%~%~%Joints  joints~%~%================================================================================~%MSG: moveto/Joints~%# Message of joint values~%float64[5] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveJoints-request)))
  "Returns full string definition for message of type 'MoveJoints-request"
  (cl:format cl:nil "~%~%~%Joints  joints~%~%================================================================================~%MSG: moveto/Joints~%# Message of joint values~%float64[5] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveJoints-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveJoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveJoints-request
    (cl:cons ':joints (joints msg))
))
;//! \htmlinclude MoveJoints-response.msg.html

(cl:defclass <MoveJoints-response> (roslisp-msg-protocol:ros-message)
  ((movetime
    :reader movetime
    :initarg :movetime
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveJoints-response (<MoveJoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveJoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveJoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveto-srv:<MoveJoints-response> is deprecated: use moveto-srv:MoveJoints-response instead.")))

(cl:ensure-generic-function 'movetime-val :lambda-list '(m))
(cl:defmethod movetime-val ((m <MoveJoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:movetime-val is deprecated.  Use moveto-srv:movetime instead.")
  (movetime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveJoints-response>) ostream)
  "Serializes a message object of type '<MoveJoints-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveJoints-response>) istream)
  "Deserializes a message object of type '<MoveJoints-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveJoints-response>)))
  "Returns string type for a service object of type '<MoveJoints-response>"
  "moveto/MoveJointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveJoints-response)))
  "Returns string type for a service object of type 'MoveJoints-response"
  "moveto/MoveJointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveJoints-response>)))
  "Returns md5sum for a message object of type '<MoveJoints-response>"
  "3df56d60d4f290ecf5ea26686d6c3967")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveJoints-response)))
  "Returns md5sum for a message object of type 'MoveJoints-response"
  "3df56d60d4f290ecf5ea26686d6c3967")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveJoints-response>)))
  "Returns full string definition for message of type '<MoveJoints-response>"
  (cl:format cl:nil "~%float64 movetime~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveJoints-response)))
  "Returns full string definition for message of type 'MoveJoints-response"
  (cl:format cl:nil "~%float64 movetime~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveJoints-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveJoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveJoints-response
    (cl:cons ':movetime (movetime msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveJoints)))
  'MoveJoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveJoints)))
  'MoveJoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveJoints)))
  "Returns string type for a service object of type '<MoveJoints>"
  "moveto/MoveJoints")