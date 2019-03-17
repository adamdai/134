; Auto-generated. Do not edit!


(cl:in-package detection-msg)


;//! \htmlinclude Coord.msg.html

(cl:defclass <Coord> (roslisp-msg-protocol:ros-message)
  ((dist
    :reader dist
    :initarg :dist
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass Coord (<Coord>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Coord>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Coord)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name detection-msg:<Coord> is deprecated: use detection-msg:Coord instead.")))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <Coord>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection-msg:dist-val is deprecated.  Use detection-msg:dist instead.")
  (dist m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <Coord>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection-msg:angle-val is deprecated.  Use detection-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Coord>) ostream)
  "Serializes a message object of type '<Coord>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Coord>) istream)
  "Deserializes a message object of type '<Coord>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Coord>)))
  "Returns string type for a message object of type '<Coord>"
  "detection/Coord")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Coord)))
  "Returns string type for a message object of type 'Coord"
  "detection/Coord")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Coord>)))
  "Returns md5sum for a message object of type '<Coord>"
  "91402bd440d1ef690efc522751a6276e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Coord)))
  "Returns md5sum for a message object of type 'Coord"
  "91402bd440d1ef690efc522751a6276e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Coord>)))
  "Returns full string definition for message of type '<Coord>"
  (cl:format cl:nil "# Message definition of a coordinate~%float64 dist~%float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Coord)))
  "Returns full string definition for message of type 'Coord"
  (cl:format cl:nil "# Message definition of a coordinate~%float64 dist~%float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Coord>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Coord>))
  "Converts a ROS message object to a list"
  (cl:list 'Coord
    (cl:cons ':dist (dist msg))
    (cl:cons ':angle (angle msg))
))
