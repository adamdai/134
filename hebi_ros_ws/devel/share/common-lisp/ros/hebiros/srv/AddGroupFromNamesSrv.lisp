; Auto-generated. Do not edit!


(cl:in-package hebiros-srv)


;//! \htmlinclude AddGroupFromNamesSrv-request.msg.html

(cl:defclass <AddGroupFromNamesSrv-request> (roslisp-msg-protocol:ros-message)
  ((group_name
    :reader group_name
    :initarg :group_name
    :type cl:string
    :initform "")
   (names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (families
    :reader families
    :initarg :families
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass AddGroupFromNamesSrv-request (<AddGroupFromNamesSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddGroupFromNamesSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddGroupFromNamesSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<AddGroupFromNamesSrv-request> is deprecated: use hebiros-srv:AddGroupFromNamesSrv-request instead.")))

(cl:ensure-generic-function 'group_name-val :lambda-list '(m))
(cl:defmethod group_name-val ((m <AddGroupFromNamesSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-srv:group_name-val is deprecated.  Use hebiros-srv:group_name instead.")
  (group_name m))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <AddGroupFromNamesSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-srv:names-val is deprecated.  Use hebiros-srv:names instead.")
  (names m))

(cl:ensure-generic-function 'families-val :lambda-list '(m))
(cl:defmethod families-val ((m <AddGroupFromNamesSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-srv:families-val is deprecated.  Use hebiros-srv:families instead.")
  (families m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddGroupFromNamesSrv-request>) ostream)
  "Serializes a message object of type '<AddGroupFromNamesSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'families))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'families))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddGroupFromNamesSrv-request>) istream)
  "Deserializes a message object of type '<AddGroupFromNamesSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'families) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'families)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddGroupFromNamesSrv-request>)))
  "Returns string type for a service object of type '<AddGroupFromNamesSrv-request>"
  "hebiros/AddGroupFromNamesSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddGroupFromNamesSrv-request)))
  "Returns string type for a service object of type 'AddGroupFromNamesSrv-request"
  "hebiros/AddGroupFromNamesSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddGroupFromNamesSrv-request>)))
  "Returns md5sum for a message object of type '<AddGroupFromNamesSrv-request>"
  "a31d701a4ec2a831130fc40890ab943d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddGroupFromNamesSrv-request)))
  "Returns md5sum for a message object of type 'AddGroupFromNamesSrv-request"
  "a31d701a4ec2a831130fc40890ab943d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddGroupFromNamesSrv-request>)))
  "Returns full string definition for message of type '<AddGroupFromNamesSrv-request>"
  (cl:format cl:nil "string group_name~%string[] names~%string[] families~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddGroupFromNamesSrv-request)))
  "Returns full string definition for message of type 'AddGroupFromNamesSrv-request"
  (cl:format cl:nil "string group_name~%string[] names~%string[] families~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddGroupFromNamesSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'group_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'families) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddGroupFromNamesSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddGroupFromNamesSrv-request
    (cl:cons ':group_name (group_name msg))
    (cl:cons ':names (names msg))
    (cl:cons ':families (families msg))
))
;//! \htmlinclude AddGroupFromNamesSrv-response.msg.html

(cl:defclass <AddGroupFromNamesSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddGroupFromNamesSrv-response (<AddGroupFromNamesSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddGroupFromNamesSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddGroupFromNamesSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-srv:<AddGroupFromNamesSrv-response> is deprecated: use hebiros-srv:AddGroupFromNamesSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddGroupFromNamesSrv-response>) ostream)
  "Serializes a message object of type '<AddGroupFromNamesSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddGroupFromNamesSrv-response>) istream)
  "Deserializes a message object of type '<AddGroupFromNamesSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddGroupFromNamesSrv-response>)))
  "Returns string type for a service object of type '<AddGroupFromNamesSrv-response>"
  "hebiros/AddGroupFromNamesSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddGroupFromNamesSrv-response)))
  "Returns string type for a service object of type 'AddGroupFromNamesSrv-response"
  "hebiros/AddGroupFromNamesSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddGroupFromNamesSrv-response>)))
  "Returns md5sum for a message object of type '<AddGroupFromNamesSrv-response>"
  "a31d701a4ec2a831130fc40890ab943d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddGroupFromNamesSrv-response)))
  "Returns md5sum for a message object of type 'AddGroupFromNamesSrv-response"
  "a31d701a4ec2a831130fc40890ab943d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddGroupFromNamesSrv-response>)))
  "Returns full string definition for message of type '<AddGroupFromNamesSrv-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddGroupFromNamesSrv-response)))
  "Returns full string definition for message of type 'AddGroupFromNamesSrv-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddGroupFromNamesSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddGroupFromNamesSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddGroupFromNamesSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddGroupFromNamesSrv)))
  'AddGroupFromNamesSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddGroupFromNamesSrv)))
  'AddGroupFromNamesSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddGroupFromNamesSrv)))
  "Returns string type for a service object of type '<AddGroupFromNamesSrv>"
  "hebiros/AddGroupFromNamesSrv")