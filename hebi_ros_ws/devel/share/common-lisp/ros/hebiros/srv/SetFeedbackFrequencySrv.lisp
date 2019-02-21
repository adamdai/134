; Auto-generated. Do not edit!


(cl:in-package hebiros-srv)


;//! \htmlinclude SetFeedbackFrequencySrv-request.msg.html

(cl:defclass <SetFeedbackFrequencySrv-request> (roslisp-msg-protocol:ros-message)
  ((feedback_frequency
    :reader feedback_frequency
    :initarg :feedback_frequency
    :type cl:integer
    :initform 0))
)

(cl:defclass SetFeedbackFrequencySrv-request (<SetFeedbackFrequencySrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFeedbackFrequencySrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFeedbackFrequencySrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<SetFeedbackFrequencySrv-request> is deprecated: use hebiros-srv:SetFeedbackFrequencySrv-request instead.")))

(cl:ensure-generic-function 'feedback_frequency-val :lambda-list '(m))
(cl:defmethod feedback_frequency-val ((m <SetFeedbackFrequencySrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-srv:feedback_frequency-val is deprecated.  Use hebiros-srv:feedback_frequency instead.")
  (feedback_frequency m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFeedbackFrequencySrv-request>) ostream)
  "Serializes a message object of type '<SetFeedbackFrequencySrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'feedback_frequency)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFeedbackFrequencySrv-request>) istream)
  "Deserializes a message object of type '<SetFeedbackFrequencySrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback_frequency) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFeedbackFrequencySrv-request>)))
  "Returns string type for a service object of type '<SetFeedbackFrequencySrv-request>"
  "hebiros/SetFeedbackFrequencySrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFeedbackFrequencySrv-request)))
  "Returns string type for a service object of type 'SetFeedbackFrequencySrv-request"
  "hebiros/SetFeedbackFrequencySrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFeedbackFrequencySrv-request>)))
  "Returns md5sum for a message object of type '<SetFeedbackFrequencySrv-request>"
  "89e470a7bc482c7199fa75ef40009369")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFeedbackFrequencySrv-request)))
  "Returns md5sum for a message object of type 'SetFeedbackFrequencySrv-request"
  "89e470a7bc482c7199fa75ef40009369")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFeedbackFrequencySrv-request>)))
  "Returns full string definition for message of type '<SetFeedbackFrequencySrv-request>"
  (cl:format cl:nil "int32 feedback_frequency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFeedbackFrequencySrv-request)))
  "Returns full string definition for message of type 'SetFeedbackFrequencySrv-request"
  (cl:format cl:nil "int32 feedback_frequency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFeedbackFrequencySrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFeedbackFrequencySrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFeedbackFrequencySrv-request
    (cl:cons ':feedback_frequency (feedback_frequency msg))
))
;//! \htmlinclude SetFeedbackFrequencySrv-response.msg.html

(cl:defclass <SetFeedbackFrequencySrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetFeedbackFrequencySrv-response (<SetFeedbackFrequencySrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFeedbackFrequencySrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFeedbackFrequencySrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<SetFeedbackFrequencySrv-response> is deprecated: use hebiros-srv:SetFeedbackFrequencySrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFeedbackFrequencySrv-response>) ostream)
  "Serializes a message object of type '<SetFeedbackFrequencySrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFeedbackFrequencySrv-response>) istream)
  "Deserializes a message object of type '<SetFeedbackFrequencySrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFeedbackFrequencySrv-response>)))
  "Returns string type for a service object of type '<SetFeedbackFrequencySrv-response>"
  "hebiros/SetFeedbackFrequencySrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFeedbackFrequencySrv-response)))
  "Returns string type for a service object of type 'SetFeedbackFrequencySrv-response"
  "hebiros/SetFeedbackFrequencySrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFeedbackFrequencySrv-response>)))
  "Returns md5sum for a message object of type '<SetFeedbackFrequencySrv-response>"
  "89e470a7bc482c7199fa75ef40009369")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFeedbackFrequencySrv-response)))
  "Returns md5sum for a message object of type 'SetFeedbackFrequencySrv-response"
  "89e470a7bc482c7199fa75ef40009369")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFeedbackFrequencySrv-response>)))
  "Returns full string definition for message of type '<SetFeedbackFrequencySrv-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFeedbackFrequencySrv-response)))
  "Returns full string definition for message of type 'SetFeedbackFrequencySrv-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFeedbackFrequencySrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFeedbackFrequencySrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFeedbackFrequencySrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFeedbackFrequencySrv)))
  'SetFeedbackFrequencySrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFeedbackFrequencySrv)))
  'SetFeedbackFrequencySrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFeedbackFrequencySrv)))
  "Returns string type for a service object of type '<SetFeedbackFrequencySrv>"
  "hebiros/SetFeedbackFrequencySrv")