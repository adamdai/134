; Auto-generated. Do not edit!


(cl:in-package moveto-srv)


;//! \htmlinclude IKin-request.msg.html

(cl:defclass <IKin-request> (roslisp-msg-protocol:ros-message)
  ((tip
    :reader tip
    :initarg :tip
    :type moveto-msg:Tip
    :initform (cl:make-instance 'moveto-msg:Tip)))
)

(cl:defclass IKin-request (<IKin-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IKin-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IKin-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveto-srv:<IKin-request> is deprecated: use moveto-srv:IKin-request instead.")))

(cl:ensure-generic-function 'tip-val :lambda-list '(m))
(cl:defmethod tip-val ((m <IKin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:tip-val is deprecated.  Use moveto-srv:tip instead.")
  (tip m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IKin-request>) ostream)
  "Serializes a message object of type '<IKin-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tip) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IKin-request>) istream)
  "Deserializes a message object of type '<IKin-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tip) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IKin-request>)))
  "Returns string type for a service object of type '<IKin-request>"
  "moveto/IKinRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IKin-request)))
  "Returns string type for a service object of type 'IKin-request"
  "moveto/IKinRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IKin-request>)))
  "Returns md5sum for a message object of type '<IKin-request>"
  "1e8f025e4a7f0e73d00d1166f7ab7aff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IKin-request)))
  "Returns md5sum for a message object of type 'IKin-request"
  "1e8f025e4a7f0e73d00d1166f7ab7aff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IKin-request>)))
  "Returns full string definition for message of type '<IKin-request>"
  (cl:format cl:nil "~%~%~%Tip     tip~%~%================================================================================~%MSG: moveto/Tip~%# Message of tip values~%float64 x~%float64 y~%float64 z~%float64 pitch~%float64 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IKin-request)))
  "Returns full string definition for message of type 'IKin-request"
  (cl:format cl:nil "~%~%~%Tip     tip~%~%================================================================================~%MSG: moveto/Tip~%# Message of tip values~%float64 x~%float64 y~%float64 z~%float64 pitch~%float64 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IKin-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tip))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IKin-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IKin-request
    (cl:cons ':tip (tip msg))
))
;//! \htmlinclude IKin-response.msg.html

(cl:defclass <IKin-response> (roslisp-msg-protocol:ros-message)
  ((singular
    :reader singular
    :initarg :singular
    :type cl:boolean
    :initform cl:nil)
   (joints
    :reader joints
    :initarg :joints
    :type moveto-msg:Joints
    :initform (cl:make-instance 'moveto-msg:Joints)))
)

(cl:defclass IKin-response (<IKin-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IKin-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IKin-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveto-srv:<IKin-response> is deprecated: use moveto-srv:IKin-response instead.")))

(cl:ensure-generic-function 'singular-val :lambda-list '(m))
(cl:defmethod singular-val ((m <IKin-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:singular-val is deprecated.  Use moveto-srv:singular instead.")
  (singular m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <IKin-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveto-srv:joints-val is deprecated.  Use moveto-srv:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IKin-response>) ostream)
  "Serializes a message object of type '<IKin-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'singular) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IKin-response>) istream)
  "Deserializes a message object of type '<IKin-response>"
    (cl:setf (cl:slot-value msg 'singular) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IKin-response>)))
  "Returns string type for a service object of type '<IKin-response>"
  "moveto/IKinResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IKin-response)))
  "Returns string type for a service object of type 'IKin-response"
  "moveto/IKinResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IKin-response>)))
  "Returns md5sum for a message object of type '<IKin-response>"
  "1e8f025e4a7f0e73d00d1166f7ab7aff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IKin-response)))
  "Returns md5sum for a message object of type 'IKin-response"
  "1e8f025e4a7f0e73d00d1166f7ab7aff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IKin-response>)))
  "Returns full string definition for message of type '<IKin-response>"
  (cl:format cl:nil "~%~%~%bool    singular~%Joints  joints~%~%~%================================================================================~%MSG: moveto/Joints~%# Message of joint values~%float64[5] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IKin-response)))
  "Returns full string definition for message of type 'IKin-response"
  (cl:format cl:nil "~%~%~%bool    singular~%Joints  joints~%~%~%================================================================================~%MSG: moveto/Joints~%# Message of joint values~%float64[5] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IKin-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IKin-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IKin-response
    (cl:cons ':singular (singular msg))
    (cl:cons ':joints (joints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IKin)))
  'IKin-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IKin)))
  'IKin-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IKin)))
  "Returns string type for a service object of type '<IKin>"
  "moveto/IKin")