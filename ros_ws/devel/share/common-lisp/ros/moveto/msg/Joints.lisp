; Auto-generated. Do not edit!


(cl:in-package moveto-msg)


;//! \htmlinclude Joints.msg.html

(cl:defclass <Joints> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Joints (<Joints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Joints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Joints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveto-msg:<Joints> is deprecated: use moveto-msg:Joints instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <Joints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-msg:joint-val is deprecated.  Use moveto-msg:joint instead.")
  (joint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Joints>) ostream)
  "Serializes a message object of type '<Joints>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Joints>) istream)
  "Deserializes a message object of type '<Joints>"
  (cl:setf (cl:slot-value msg 'joint) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'joint)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Joints>)))
  "Returns string type for a message object of type '<Joints>"
  "moveto/Joints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joints)))
  "Returns string type for a message object of type 'Joints"
  "moveto/Joints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Joints>)))
  "Returns md5sum for a message object of type '<Joints>"
  "a9cf03bac18e6f9d1321d10ce4de88b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Joints)))
  "Returns md5sum for a message object of type 'Joints"
  "a9cf03bac18e6f9d1321d10ce4de88b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Joints>)))
  "Returns full string definition for message of type '<Joints>"
  (cl:format cl:nil "# Message of joint values~%float64[5] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Joints)))
  "Returns full string definition for message of type 'Joints"
  (cl:format cl:nil "# Message of joint values~%float64[5] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Joints>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Joints>))
  "Converts a ROS message object to a list"
  (cl:list 'Joints
    (cl:cons ':joint (joint msg))
))
