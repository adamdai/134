; Auto-generated. Do not edit!


(cl:in-package moveto-srv)


;//! \htmlinclude IsMoving-request.msg.html

(cl:defclass <IsMoving-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass IsMoving-request (<IsMoving-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsMoving-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsMoving-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveto-srv:<IsMoving-request> is deprecated: use moveto-srv:IsMoving-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsMoving-request>) ostream)
  "Serializes a message object of type '<IsMoving-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsMoving-request>) istream)
  "Deserializes a message object of type '<IsMoving-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsMoving-request>)))
  "Returns string type for a service object of type '<IsMoving-request>"
  "moveto/IsMovingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsMoving-request)))
  "Returns string type for a service object of type 'IsMoving-request"
  "moveto/IsMovingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsMoving-request>)))
  "Returns md5sum for a message object of type '<IsMoving-request>"
  "9104f1a32b4fbf4d3c8c80d9b9493250")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsMoving-request)))
  "Returns md5sum for a message object of type 'IsMoving-request"
  "9104f1a32b4fbf4d3c8c80d9b9493250")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsMoving-request>)))
  "Returns full string definition for message of type '<IsMoving-request>"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsMoving-request)))
  "Returns full string definition for message of type 'IsMoving-request"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsMoving-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsMoving-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IsMoving-request
))
;//! \htmlinclude IsMoving-response.msg.html

(cl:defclass <IsMoving-response> (roslisp-msg-protocol:ros-message)
  ((moving
    :reader moving
    :initarg :moving
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass IsMoving-response (<IsMoving-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsMoving-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsMoving-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveto-srv:<IsMoving-response> is deprecated: use moveto-srv:IsMoving-response instead.")))

(cl:ensure-generic-function 'moving-val :lambda-list '(m))
(cl:defmethod moving-val ((m <IsMoving-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:moving-val is deprecated.  Use moveto-srv:moving instead.")
  (moving m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsMoving-response>) ostream)
  "Serializes a message object of type '<IsMoving-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'moving) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsMoving-response>) istream)
  "Deserializes a message object of type '<IsMoving-response>"
    (cl:setf (cl:slot-value msg 'moving) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsMoving-response>)))
  "Returns string type for a service object of type '<IsMoving-response>"
  "moveto/IsMovingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsMoving-response)))
  "Returns string type for a service object of type 'IsMoving-response"
  "moveto/IsMovingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsMoving-response>)))
  "Returns md5sum for a message object of type '<IsMoving-response>"
  "9104f1a32b4fbf4d3c8c80d9b9493250")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsMoving-response)))
  "Returns md5sum for a message object of type 'IsMoving-response"
  "9104f1a32b4fbf4d3c8c80d9b9493250")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsMoving-response>)))
  "Returns full string definition for message of type '<IsMoving-response>"
  (cl:format cl:nil "~%bool  moving~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsMoving-response)))
  "Returns full string definition for message of type 'IsMoving-response"
  (cl:format cl:nil "~%bool  moving~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsMoving-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsMoving-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IsMoving-response
    (cl:cons ':moving (moving msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IsMoving)))
  'IsMoving-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IsMoving)))
  'IsMoving-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsMoving)))
  "Returns string type for a service object of type '<IsMoving>"
  "moveto/IsMoving")