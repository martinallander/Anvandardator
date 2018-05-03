; Auto-generated. Do not edit!


(cl:in-package gui-msg)


;//! \htmlinclude Sensordata.msg.html

(cl:defclass <Sensordata> (roslisp-msg-protocol:ros-message)
  ((acc
    :reader acc
    :initarg :acc
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (angle
    :reader angle
    :initarg :angle
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (ir
    :reader ir
    :initarg :ir
    :type (cl:vector cl:float)
   :initform (cl:make-array 64 :element-type 'cl:float :initial-element 0.0))
   (dist
    :reader dist
    :initarg :dist
    :type cl:float
    :initform 0.0))
)

(cl:defclass Sensordata (<Sensordata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sensordata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sensordata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gui-msg:<Sensordata> is deprecated: use gui-msg:Sensordata instead.")))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <Sensordata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gui-msg:acc-val is deprecated.  Use gui-msg:acc instead.")
  (acc m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <Sensordata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gui-msg:angle-val is deprecated.  Use gui-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'ir-val :lambda-list '(m))
(cl:defmethod ir-val ((m <Sensordata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gui-msg:ir-val is deprecated.  Use gui-msg:ir instead.")
  (ir m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <Sensordata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gui-msg:dist-val is deprecated.  Use gui-msg:dist instead.")
  (dist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sensordata>) ostream)
  "Serializes a message object of type '<Sensordata>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'acc))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'angle))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ir))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sensordata>) istream)
  "Deserializes a message object of type '<Sensordata>"
  (cl:setf (cl:slot-value msg 'acc) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'acc)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'angle) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'angle)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'ir) (cl:make-array 64))
  (cl:let ((vals (cl:slot-value msg 'ir)))
    (cl:dotimes (i 64)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sensordata>)))
  "Returns string type for a message object of type '<Sensordata>"
  "gui/Sensordata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sensordata)))
  "Returns string type for a message object of type 'Sensordata"
  "gui/Sensordata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sensordata>)))
  "Returns md5sum for a message object of type '<Sensordata>"
  "8c229e2648232c4169508279d6fdeb33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sensordata)))
  "Returns md5sum for a message object of type 'Sensordata"
  "8c229e2648232c4169508279d6fdeb33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sensordata>)))
  "Returns full string definition for message of type '<Sensordata>"
  (cl:format cl:nil "float32[3] acc~%float32[3] angle~%float32[64] ir~%float32 dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sensordata)))
  "Returns full string definition for message of type 'Sensordata"
  (cl:format cl:nil "float32[3] acc~%float32[3] angle~%float32[64] ir~%float32 dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sensordata>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'acc) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'angle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ir) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sensordata>))
  "Converts a ROS message object to a list"
  (cl:list 'Sensordata
    (cl:cons ':acc (acc msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':ir (ir msg))
    (cl:cons ':dist (dist msg))
))
