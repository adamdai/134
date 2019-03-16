; Auto-generated. Do not edit!


(cl:in-package detection-msg)


;//! \htmlinclude CoordVec.msg.html

(cl:defclass <CoordVec> (roslisp-msg-protocol:ros-message)
  ((coord_vec
    :reader coord_vec
    :initarg :coord_vec
    :type (cl:vector detection-msg:Coord)
   :initform (cl:make-array 0 :element-type 'detection-msg:Coord :initial-element (cl:make-instance 'detection-msg:Coord))))
)

(cl:defclass CoordVec (<CoordVec>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CoordVec>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CoordVec)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name detection-msg:<CoordVec> is deprecated: use detection-msg:CoordVec instead.")))

(cl:ensure-generic-function 'coord_vec-val :lambda-list '(m))
(cl:defmethod coord_vec-val ((m <CoordVec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection-msg:coord_vec-val is deprecated.  Use detection-msg:coord_vec instead.")
  (coord_vec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CoordVec>) ostream)
  "Serializes a message object of type '<CoordVec>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coord_vec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'coord_vec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CoordVec>) istream)
  "Deserializes a message object of type '<CoordVec>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coord_vec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coord_vec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'detection-msg:Coord))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CoordVec>)))
  "Returns string type for a message object of type '<CoordVec>"
  "detection/CoordVec")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CoordVec)))
  "Returns string type for a message object of type 'CoordVec"
  "detection/CoordVec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CoordVec>)))
  "Returns md5sum for a message object of type '<CoordVec>"
  "3a95346ca5d86737e817fb86cf6d9b5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CoordVec)))
  "Returns md5sum for a message object of type 'CoordVec"
  "3a95346ca5d86737e817fb86cf6d9b5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CoordVec>)))
  "Returns full string definition for message of type '<CoordVec>"
  (cl:format cl:nil "# Message definition of a vector of coordinates.~%~%Coord[] coord_vec~%================================================================================~%MSG: detection/Coord~%# Message definition of a coordinate~%float64 rad~%float64 angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CoordVec)))
  "Returns full string definition for message of type 'CoordVec"
  (cl:format cl:nil "# Message definition of a vector of coordinates.~%~%Coord[] coord_vec~%================================================================================~%MSG: detection/Coord~%# Message definition of a coordinate~%float64 rad~%float64 angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CoordVec>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coord_vec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CoordVec>))
  "Converts a ROS message object to a list"
  (cl:list 'CoordVec
    (cl:cons ':coord_vec (coord_vec msg))
))
