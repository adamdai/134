; Auto-generated. Do not edit!


(cl:in-package moveto-srv)


;//! \htmlinclude Grab-request.msg.html

(cl:defclass <Grab-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass Grab-request (<Grab-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Grab-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Grab-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveto-srv:<Grab-request> is deprecated: use moveto-srv:Grab-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Grab-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:x-val is deprecated.  Use moveto-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Grab-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:y-val is deprecated.  Use moveto-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Grab-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:z-val is deprecated.  Use moveto-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Grab-request>) ostream)
  "Serializes a message object of type '<Grab-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Grab-request>) istream)
  "Deserializes a message object of type '<Grab-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Grab-request>)))
  "Returns string type for a service object of type '<Grab-request>"
  "moveto/GrabRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Grab-request)))
  "Returns string type for a service object of type 'Grab-request"
  "moveto/GrabRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Grab-request>)))
  "Returns md5sum for a message object of type '<Grab-request>"
  "7ef6f7fbf0f84bb5331bcdbdad3a6022")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Grab-request)))
  "Returns md5sum for a message object of type 'Grab-request"
  "7ef6f7fbf0f84bb5331bcdbdad3a6022")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Grab-request>)))
  "Returns full string definition for message of type '<Grab-request>"
  (cl:format cl:nil "~%~%~%float64  x~%float64  y~%float64  z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Grab-request)))
  "Returns full string definition for message of type 'Grab-request"
  (cl:format cl:nil "~%~%~%float64  x~%float64  y~%float64  z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Grab-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Grab-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Grab-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
;//! \htmlinclude Grab-response.msg.html

(cl:defclass <Grab-response> (roslisp-msg-protocol:ros-message)
  ((movetime
    :reader movetime
    :initarg :movetime
    :type cl:float
    :initform 0.0))
)

(cl:defclass Grab-response (<Grab-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Grab-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Grab-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveto-srv:<Grab-response> is deprecated: use moveto-srv:Grab-response instead.")))

(cl:ensure-generic-function 'movetime-val :lambda-list '(m))
(cl:defmethod movetime-val ((m <Grab-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:movetime-val is deprecated.  Use moveto-srv:movetime instead.")
  (movetime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Grab-response>) ostream)
  "Serializes a message object of type '<Grab-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Grab-response>) istream)
  "Deserializes a message object of type '<Grab-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Grab-response>)))
  "Returns string type for a service object of type '<Grab-response>"
  "moveto/GrabResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Grab-response)))
  "Returns string type for a service object of type 'Grab-response"
  "moveto/GrabResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Grab-response>)))
  "Returns md5sum for a message object of type '<Grab-response>"
  "7ef6f7fbf0f84bb5331bcdbdad3a6022")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Grab-response)))
  "Returns md5sum for a message object of type 'Grab-response"
  "7ef6f7fbf0f84bb5331bcdbdad3a6022")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Grab-response>)))
  "Returns full string definition for message of type '<Grab-response>"
  (cl:format cl:nil "~%float64 movetime~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Grab-response)))
  "Returns full string definition for message of type 'Grab-response"
  (cl:format cl:nil "~%float64 movetime~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Grab-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Grab-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Grab-response
    (cl:cons ':movetime (movetime msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Grab)))
  'Grab-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Grab)))
  'Grab-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Grab)))
  "Returns string type for a service object of type '<Grab>"
  "moveto/Grab")