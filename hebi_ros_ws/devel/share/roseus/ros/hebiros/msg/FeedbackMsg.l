;; Auto-generated. Do not edit!


(when (boundp 'hebiros::FeedbackMsg)
  (if (not (find-package "HEBIROS"))
    (make-package "HEBIROS"))
  (shadow 'FeedbackMsg (find-package "HEBIROS")))
(unless (find-package "HEBIROS::FEEDBACKMSG")
  (make-package "HEBIROS::FEEDBACKMSG"))

(in-package "ROS")
;;//! \htmlinclude FeedbackMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hebiros::FeedbackMsg
  :super ros::object
  :slots (_name _position _velocity _effort _position_command _velocity_command _effort_command _accelerometer _gyro _orientation _deflection _deflection_velocity _motor_velocity _motor_current _motor_winding_current _motor_sensor_temperature _motor_winding_temperature _motor_housing_temperature _board_temperature _processor_temperature _voltage _led_color _sequence_number _receive_time _transmit_time _hardware_receive_time _hardware_transmit_time ))

(defmethod hebiros::FeedbackMsg
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position_command __position_command) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity_command __velocity_command) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort_command __effort_command) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:accelerometer __accelerometer) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:gyro __gyro) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:orientation __orientation) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Quaternion :init) r)) r))
    ((:deflection __deflection) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:deflection_velocity __deflection_velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor_velocity __motor_velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor_current __motor_current) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor_winding_current __motor_winding_current) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor_sensor_temperature __motor_sensor_temperature) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor_winding_temperature __motor_winding_temperature) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor_housing_temperature __motor_housing_temperature) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:board_temperature __board_temperature) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:processor_temperature __processor_temperature) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:voltage __voltage) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:led_color __led_color) (let (r) (dotimes (i 0) (push (instance std_msgs::ColorRGBA :init) r)) r))
    ((:sequence_number __sequence_number) (make-array 0 :initial-element 0 :element-type :integer))
    ((:receive_time __receive_time) (make-array 0 :initial-element 0 :element-type :integer))
    ((:transmit_time __transmit_time) (make-array 0 :initial-element 0 :element-type :integer))
    ((:hardware_receive_time __hardware_receive_time) (make-array 0 :initial-element 0 :element-type :integer))
    ((:hardware_transmit_time __hardware_transmit_time) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _name __name)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _effort __effort)
   (setq _position_command __position_command)
   (setq _velocity_command __velocity_command)
   (setq _effort_command __effort_command)
   (setq _accelerometer __accelerometer)
   (setq _gyro __gyro)
   (setq _orientation __orientation)
   (setq _deflection __deflection)
   (setq _deflection_velocity __deflection_velocity)
   (setq _motor_velocity __motor_velocity)
   (setq _motor_current __motor_current)
   (setq _motor_winding_current __motor_winding_current)
   (setq _motor_sensor_temperature __motor_sensor_temperature)
   (setq _motor_winding_temperature __motor_winding_temperature)
   (setq _motor_housing_temperature __motor_housing_temperature)
   (setq _board_temperature __board_temperature)
   (setq _processor_temperature __processor_temperature)
   (setq _voltage __voltage)
   (setq _led_color __led_color)
   (setq _sequence_number __sequence_number)
   (setq _receive_time __receive_time)
   (setq _transmit_time __transmit_time)
   (setq _hardware_receive_time __hardware_receive_time)
   (setq _hardware_transmit_time __hardware_transmit_time)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:position_command
   (&optional __position_command)
   (if __position_command (setq _position_command __position_command)) _position_command)
  (:velocity_command
   (&optional __velocity_command)
   (if __velocity_command (setq _velocity_command __velocity_command)) _velocity_command)
  (:effort_command
   (&optional __effort_command)
   (if __effort_command (setq _effort_command __effort_command)) _effort_command)
  (:accelerometer
   (&rest __accelerometer)
   (if (keywordp (car __accelerometer))
       (send* _accelerometer __accelerometer)
     (progn
       (if __accelerometer (setq _accelerometer (car __accelerometer)))
       _accelerometer)))
  (:gyro
   (&rest __gyro)
   (if (keywordp (car __gyro))
       (send* _gyro __gyro)
     (progn
       (if __gyro (setq _gyro (car __gyro)))
       _gyro)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:deflection
   (&optional __deflection)
   (if __deflection (setq _deflection __deflection)) _deflection)
  (:deflection_velocity
   (&optional __deflection_velocity)
   (if __deflection_velocity (setq _deflection_velocity __deflection_velocity)) _deflection_velocity)
  (:motor_velocity
   (&optional __motor_velocity)
   (if __motor_velocity (setq _motor_velocity __motor_velocity)) _motor_velocity)
  (:motor_current
   (&optional __motor_current)
   (if __motor_current (setq _motor_current __motor_current)) _motor_current)
  (:motor_winding_current
   (&optional __motor_winding_current)
   (if __motor_winding_current (setq _motor_winding_current __motor_winding_current)) _motor_winding_current)
  (:motor_sensor_temperature
   (&optional __motor_sensor_temperature)
   (if __motor_sensor_temperature (setq _motor_sensor_temperature __motor_sensor_temperature)) _motor_sensor_temperature)
  (:motor_winding_temperature
   (&optional __motor_winding_temperature)
   (if __motor_winding_temperature (setq _motor_winding_temperature __motor_winding_temperature)) _motor_winding_temperature)
  (:motor_housing_temperature
   (&optional __motor_housing_temperature)
   (if __motor_housing_temperature (setq _motor_housing_temperature __motor_housing_temperature)) _motor_housing_temperature)
  (:board_temperature
   (&optional __board_temperature)
   (if __board_temperature (setq _board_temperature __board_temperature)) _board_temperature)
  (:processor_temperature
   (&optional __processor_temperature)
   (if __processor_temperature (setq _processor_temperature __processor_temperature)) _processor_temperature)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:led_color
   (&rest __led_color)
   (if (keywordp (car __led_color))
       (send* _led_color __led_color)
     (progn
       (if __led_color (setq _led_color (car __led_color)))
       _led_color)))
  (:sequence_number
   (&optional __sequence_number)
   (if __sequence_number (setq _sequence_number __sequence_number)) _sequence_number)
  (:receive_time
   (&optional __receive_time)
   (if __receive_time (setq _receive_time __receive_time)) _receive_time)
  (:transmit_time
   (&optional __transmit_time)
   (if __transmit_time (setq _transmit_time __transmit_time)) _transmit_time)
  (:hardware_receive_time
   (&optional __hardware_receive_time)
   (if __hardware_receive_time (setq _hardware_receive_time __hardware_receive_time)) _hardware_receive_time)
  (:hardware_transmit_time
   (&optional __hardware_transmit_time)
   (if __hardware_transmit_time (setq _hardware_transmit_time __hardware_transmit_time)) _hardware_transmit_time)
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _position
    (* 8    (length _position)) 4
    ;; float64[] _velocity
    (* 8    (length _velocity)) 4
    ;; float64[] _effort
    (* 8    (length _effort)) 4
    ;; float64[] _position_command
    (* 8    (length _position_command)) 4
    ;; float64[] _velocity_command
    (* 8    (length _velocity_command)) 4
    ;; float64[] _effort_command
    (* 8    (length _effort_command)) 4
    ;; geometry_msgs/Vector3[] _accelerometer
    (apply #'+ (send-all _accelerometer :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _gyro
    (apply #'+ (send-all _gyro :serialization-length)) 4
    ;; geometry_msgs/Quaternion[] _orientation
    (apply #'+ (send-all _orientation :serialization-length)) 4
    ;; float64[] _deflection
    (* 8    (length _deflection)) 4
    ;; float64[] _deflection_velocity
    (* 8    (length _deflection_velocity)) 4
    ;; float64[] _motor_velocity
    (* 8    (length _motor_velocity)) 4
    ;; float64[] _motor_current
    (* 8    (length _motor_current)) 4
    ;; float64[] _motor_winding_current
    (* 8    (length _motor_winding_current)) 4
    ;; float64[] _motor_sensor_temperature
    (* 8    (length _motor_sensor_temperature)) 4
    ;; float64[] _motor_winding_temperature
    (* 8    (length _motor_winding_temperature)) 4
    ;; float64[] _motor_housing_temperature
    (* 8    (length _motor_housing_temperature)) 4
    ;; float64[] _board_temperature
    (* 8    (length _board_temperature)) 4
    ;; float64[] _processor_temperature
    (* 8    (length _processor_temperature)) 4
    ;; float64[] _voltage
    (* 8    (length _voltage)) 4
    ;; std_msgs/ColorRGBA[] _led_color
    (apply #'+ (send-all _led_color :serialization-length)) 4
    ;; uint64[] _sequence_number
    (* 8    (length _sequence_number)) 4
    ;; uint64[] _receive_time
    (* 8    (length _receive_time)) 4
    ;; uint64[] _transmit_time
    (* 8    (length _transmit_time)) 4
    ;; uint64[] _hardware_receive_time
    (* 8    (length _hardware_receive_time)) 4
    ;; uint64[] _hardware_transmit_time
    (* 8    (length _hardware_transmit_time)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _effort
     (write-long (length _effort) s)
     (dotimes (i (length _effort))
       (sys::poke (elt _effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _position_command
     (write-long (length _position_command) s)
     (dotimes (i (length _position_command))
       (sys::poke (elt _position_command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity_command
     (write-long (length _velocity_command) s)
     (dotimes (i (length _velocity_command))
       (sys::poke (elt _velocity_command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _effort_command
     (write-long (length _effort_command) s)
     (dotimes (i (length _effort_command))
       (sys::poke (elt _effort_command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Vector3[] _accelerometer
     (write-long (length _accelerometer) s)
     (dolist (elem _accelerometer)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _gyro
     (write-long (length _gyro) s)
     (dolist (elem _gyro)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Quaternion[] _orientation
     (write-long (length _orientation) s)
     (dolist (elem _orientation)
       (send elem :serialize s)
       )
     ;; float64[] _deflection
     (write-long (length _deflection) s)
     (dotimes (i (length _deflection))
       (sys::poke (elt _deflection i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _deflection_velocity
     (write-long (length _deflection_velocity) s)
     (dotimes (i (length _deflection_velocity))
       (sys::poke (elt _deflection_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _motor_velocity
     (write-long (length _motor_velocity) s)
     (dotimes (i (length _motor_velocity))
       (sys::poke (elt _motor_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _motor_current
     (write-long (length _motor_current) s)
     (dotimes (i (length _motor_current))
       (sys::poke (elt _motor_current i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _motor_winding_current
     (write-long (length _motor_winding_current) s)
     (dotimes (i (length _motor_winding_current))
       (sys::poke (elt _motor_winding_current i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _motor_sensor_temperature
     (write-long (length _motor_sensor_temperature) s)
     (dotimes (i (length _motor_sensor_temperature))
       (sys::poke (elt _motor_sensor_temperature i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _motor_winding_temperature
     (write-long (length _motor_winding_temperature) s)
     (dotimes (i (length _motor_winding_temperature))
       (sys::poke (elt _motor_winding_temperature i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _motor_housing_temperature
     (write-long (length _motor_housing_temperature) s)
     (dotimes (i (length _motor_housing_temperature))
       (sys::poke (elt _motor_housing_temperature i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _board_temperature
     (write-long (length _board_temperature) s)
     (dotimes (i (length _board_temperature))
       (sys::poke (elt _board_temperature i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _processor_temperature
     (write-long (length _processor_temperature) s)
     (dotimes (i (length _processor_temperature))
       (sys::poke (elt _processor_temperature i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _voltage
     (write-long (length _voltage) s)
     (dotimes (i (length _voltage))
       (sys::poke (elt _voltage i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; std_msgs/ColorRGBA[] _led_color
     (write-long (length _led_color) s)
     (dolist (elem _led_color)
       (send elem :serialize s)
       )
     ;; uint64[] _sequence_number
     (write-long (length _sequence_number) s)
     (dotimes (i (length _sequence_number))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _sequence_number i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _sequence_number i)) (= (length ((elt _sequence_number i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _sequence_number i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _sequence_number i) . bv) 1) -1) s))
             ((and (class (elt _sequence_number i)) (= (length ((elt _sequence_number i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _sequence_number i) . bv) 0) s)
              (write-long (if (>= (elt _sequence_number i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _sequence_number i) s)(write-long (if (>= (elt _sequence_number i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _receive_time
     (write-long (length _receive_time) s)
     (dotimes (i (length _receive_time))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _receive_time i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _receive_time i)) (= (length ((elt _receive_time i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _receive_time i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _receive_time i) . bv) 1) -1) s))
             ((and (class (elt _receive_time i)) (= (length ((elt _receive_time i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _receive_time i) . bv) 0) s)
              (write-long (if (>= (elt _receive_time i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _receive_time i) s)(write-long (if (>= (elt _receive_time i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _transmit_time
     (write-long (length _transmit_time) s)
     (dotimes (i (length _transmit_time))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _transmit_time i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _transmit_time i)) (= (length ((elt _transmit_time i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _transmit_time i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _transmit_time i) . bv) 1) -1) s))
             ((and (class (elt _transmit_time i)) (= (length ((elt _transmit_time i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _transmit_time i) . bv) 0) s)
              (write-long (if (>= (elt _transmit_time i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _transmit_time i) s)(write-long (if (>= (elt _transmit_time i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _hardware_receive_time
     (write-long (length _hardware_receive_time) s)
     (dotimes (i (length _hardware_receive_time))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _hardware_receive_time i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _hardware_receive_time i)) (= (length ((elt _hardware_receive_time i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _hardware_receive_time i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _hardware_receive_time i) . bv) 1) -1) s))
             ((and (class (elt _hardware_receive_time i)) (= (length ((elt _hardware_receive_time i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _hardware_receive_time i) . bv) 0) s)
              (write-long (if (>= (elt _hardware_receive_time i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _hardware_receive_time i) s)(write-long (if (>= (elt _hardware_receive_time i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _hardware_transmit_time
     (write-long (length _hardware_transmit_time) s)
     (dotimes (i (length _hardware_transmit_time))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _hardware_transmit_time i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _hardware_transmit_time i)) (= (length ((elt _hardware_transmit_time i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _hardware_transmit_time i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _hardware_transmit_time i) . bv) 1) -1) s))
             ((and (class (elt _hardware_transmit_time i)) (= (length ((elt _hardware_transmit_time i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _hardware_transmit_time i) . bv) 0) s)
              (write-long (if (>= (elt _hardware_transmit_time i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _hardware_transmit_time i) s)(write-long (if (>= (elt _hardware_transmit_time i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _position_command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity_command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity_command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _effort_command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort_command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort_command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Vector3[] _accelerometer
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _accelerometer (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _accelerometer)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _gyro
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gyro (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _gyro)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Quaternion[] _orientation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _orientation (let (r) (dotimes (i n) (push (instance geometry_msgs::Quaternion :init) r)) r))
     (dolist (elem- _orientation)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _deflection
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _deflection (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _deflection i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _deflection_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _deflection_velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _deflection_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _motor_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _motor_current
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_current (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_current i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _motor_winding_current
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_winding_current (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_winding_current i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _motor_sensor_temperature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_sensor_temperature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_sensor_temperature i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _motor_winding_temperature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_winding_temperature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_winding_temperature i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _motor_housing_temperature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_housing_temperature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_housing_temperature i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _board_temperature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _board_temperature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _board_temperature i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _processor_temperature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _processor_temperature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _processor_temperature i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _voltage i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; std_msgs/ColorRGBA[] _led_color
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _led_color (let (r) (dotimes (i n) (push (instance std_msgs::ColorRGBA :init) r)) r))
     (dolist (elem- _led_color)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint64[] _sequence_number
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sequence_number (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _sequence_number i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _sequence_number i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _receive_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _receive_time (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _receive_time i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _receive_time i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _transmit_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transmit_time (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _transmit_time i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _transmit_time i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _hardware_receive_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hardware_receive_time (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _hardware_receive_time i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _hardware_receive_time i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _hardware_transmit_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hardware_transmit_time (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _hardware_transmit_time i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _hardware_transmit_time i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get hebiros::FeedbackMsg :md5sum-) "f4e368b929bb5d796beb629cf975333e")
(setf (get hebiros::FeedbackMsg :datatype-) "hebiros/FeedbackMsg")
(setf (get hebiros::FeedbackMsg :definition-)
      "string[] name
float64[] position
float64[] velocity
float64[] effort
float64[] position_command
float64[] velocity_command
float64[] effort_command
geometry_msgs/Vector3[] accelerometer
geometry_msgs/Vector3[] gyro
geometry_msgs/Quaternion[] orientation
float64[] deflection
float64[] deflection_velocity
float64[] motor_velocity
float64[] motor_current
float64[] motor_winding_current
float64[] motor_sensor_temperature
float64[] motor_winding_temperature
float64[] motor_housing_temperature
float64[] board_temperature
float64[] processor_temperature
float64[] voltage
std_msgs/ColorRGBA[] led_color
uint64[] sequence_number
uint64[] receive_time
uint64[] transmit_time
uint64[] hardware_receive_time
uint64[] hardware_transmit_time


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :hebiros/FeedbackMsg "f4e368b929bb5d796beb629cf975333e")


