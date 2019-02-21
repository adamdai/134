; Auto-generated. Do not edit!


(cl:in-package hebiros-srv)


;//! \htmlinclude EntryListSrv-request.msg.html

(cl:defclass <EntryListSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EntryListSrv-request (<EntryListSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EntryListSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EntryListSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<EntryListSrv-request> is deprecated: use hebiros-srv:EntryListSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EntryListSrv-request>) ostream)
  "Serializes a message object of type '<EntryListSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EntryListSrv-request>) istream)
  "Deserializes a message object of type '<EntryListSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EntryListSrv-request>)))
  "Returns string type for a service object of type '<EntryListSrv-request>"
  "hebiros/EntryListSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EntryListSrv-request)))
  "Returns string type for a service object of type 'EntryListSrv-request"
  "hebiros/EntryListSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EntryListSrv-request>)))
  "Returns md5sum for a message object of type '<EntryListSrv-request>"
  "019fcca877608da550bd2d6857203482")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EntryListSrv-request)))
  "Returns md5sum for a message object of type 'EntryListSrv-request"
  "019fcca877608da550bd2d6857203482")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EntryListSrv-request>)))
  "Returns full string definition for message of type '<EntryListSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EntryListSrv-request)))
  "Returns full string definition for message of type 'EntryListSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EntryListSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EntryListSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EntryListSrv-request
))
;//! \htmlinclude EntryListSrv-response.msg.html

(cl:defclass <EntryListSrv-response> (roslisp-msg-protocol:ros-message)
  ((entry_list
    :reader entry_list
    :initarg :entry_list
    :type hebiros-msg:EntryListMsg
    :initform (cl:make-instance 'hebiros-msg:EntryListMsg)))
)

(cl:defclass EntryListSrv-response (<EntryListSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EntryListSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EntryListSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<EntryListSrv-response> is deprecated: use hebiros-srv:EntryListSrv-response instead.")))

(cl:ensure-generic-function 'entry_list-val :lambda-list '(m))
(cl:defmethod entry_list-val ((m <EntryListSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-srv:entry_list-val is deprecated.  Use hebiros-srv:entry_list instead.")
  (entry_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EntryListSrv-response>) ostream)
  "Serializes a message object of type '<EntryListSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'entry_list) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EntryListSrv-response>) istream)
  "Deserializes a message object of type '<EntryListSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'entry_list) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EntryListSrv-response>)))
  "Returns string type for a service object of type '<EntryListSrv-response>"
  "hebiros/EntryListSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EntryListSrv-response)))
  "Returns string type for a service object of type 'EntryListSrv-response"
  "hebiros/EntryListSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EntryListSrv-response>)))
  "Returns md5sum for a message object of type '<EntryListSrv-response>"
  "019fcca877608da550bd2d6857203482")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EntryListSrv-response)))
  "Returns md5sum for a message object of type 'EntryListSrv-response"
  "019fcca877608da550bd2d6857203482")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EntryListSrv-response>)))
  "Returns full string definition for message of type '<EntryListSrv-response>"
  (cl:format cl:nil "EntryListMsg entry_list~%~%~%================================================================================~%MSG: hebiros/EntryListMsg~%int32 size~%hebiros/EntryMsg[] entries~%~%================================================================================~%MSG: hebiros/EntryMsg~%string name~%string family~%int64 mac_address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EntryListSrv-response)))
  "Returns full string definition for message of type 'EntryListSrv-response"
  (cl:format cl:nil "EntryListMsg entry_list~%~%~%================================================================================~%MSG: hebiros/EntryListMsg~%int32 size~%hebiros/EntryMsg[] entries~%~%================================================================================~%MSG: hebiros/EntryMsg~%string name~%string family~%int64 mac_address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EntryListSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'entry_list))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EntryListSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EntryListSrv-response
    (cl:cons ':entry_list (entry_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EntryListSrv)))
  'EntryListSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EntryListSrv)))
  'EntryListSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EntryListSrv)))
  "Returns string type for a service object of type '<EntryListSrv>"
  "hebiros/EntryListSrv")