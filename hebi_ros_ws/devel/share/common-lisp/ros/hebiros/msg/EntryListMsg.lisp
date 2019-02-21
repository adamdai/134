; Auto-generated. Do not edit!


(cl:in-package hebiros-msg)


;//! \htmlinclude EntryListMsg.msg.html

(cl:defclass <EntryListMsg> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (entries
    :reader entries
    :initarg :entries
    :type (cl:vector hebiros-msg:EntryMsg)
   :initform (cl:make-array 0 :element-type 'hebiros-msg:EntryMsg :initial-element (cl:make-instance 'hebiros-msg:EntryMsg))))
)

(cl:defclass EntryListMsg (<EntryListMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EntryListMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EntryListMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hebiros-msg:<EntryListMsg> is deprecated: use hebiros-msg:EntryListMsg instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <EntryListMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-msg:size-val is deprecated.  Use hebiros-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'entries-val :lambda-list '(m))
(cl:defmethod entries-val ((m <EntryListMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hebiros-msg:entries-val is deprecated.  Use hebiros-msg:entries instead.")
  (entries m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EntryListMsg>) ostream)
  "Serializes a message object of type '<EntryListMsg>"
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'entries))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'entries))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EntryListMsg>) istream)
  "Deserializes a message object of type '<EntryListMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'entries) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'entries)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hebiros-msg:EntryMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EntryListMsg>)))
  "Returns string type for a message object of type '<EntryListMsg>"
  "hebiros/EntryListMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EntryListMsg)))
  "Returns string type for a message object of type 'EntryListMsg"
  "hebiros/EntryListMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EntryListMsg>)))
  "Returns md5sum for a message object of type '<EntryListMsg>"
  "ce4dffca09542f7d73eaedf72b9274c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EntryListMsg)))
  "Returns md5sum for a message object of type 'EntryListMsg"
  "ce4dffca09542f7d73eaedf72b9274c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EntryListMsg>)))
  "Returns full string definition for message of type '<EntryListMsg>"
  (cl:format cl:nil "int32 size~%hebiros/EntryMsg[] entries~%~%================================================================================~%MSG: hebiros/EntryMsg~%string name~%string family~%int64 mac_address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EntryListMsg)))
  "Returns full string definition for message of type 'EntryListMsg"
  (cl:format cl:nil "int32 size~%hebiros/EntryMsg[] entries~%~%================================================================================~%MSG: hebiros/EntryMsg~%string name~%string family~%int64 mac_address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EntryListMsg>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'entries) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EntryListMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'EntryListMsg
    (cl:cons ':size (size msg))
    (cl:cons ':entries (entries msg))
))
