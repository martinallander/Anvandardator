;; Auto-generated. Do not edit!


(when (boundp 'gui::Sensordata)
  (if (not (find-package "GUI"))
    (make-package "GUI"))
  (shadow 'Sensordata (find-package "GUI")))
(unless (find-package "GUI::SENSORDATA")
  (make-package "GUI::SENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude Sensordata.msg.html


(defclass gui::Sensordata
  :super ros::object
  :slots (_acc _angle _ir _dist ))

(defmethod gui::Sensordata
  (:init
   (&key
    ((:acc __acc) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:angle __angle) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:ir __ir) (make-array 64 :initial-element 0.0 :element-type :float))
    ((:dist __dist) 0.0)
    )
   (send-super :init)
   (setq _acc __acc)
   (setq _angle __angle)
   (setq _ir __ir)
   (setq _dist (float __dist))
   self)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:ir
   (&optional __ir)
   (if __ir (setq _ir __ir)) _ir)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:serialization-length
   ()
   (+
    ;; float32[3] _acc
    (* 4    3)
    ;; float32[3] _angle
    (* 4    3)
    ;; float32[64] _ir
    (* 4    64)
    ;; float32 _dist
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _acc
     (dotimes (i 3)
       (sys::poke (elt _acc i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _angle
     (dotimes (i 3)
       (sys::poke (elt _angle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[64] _ir
     (dotimes (i 64)
       (sys::poke (elt _ir i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _acc
   (dotimes (i (length _acc))
     (setf (elt _acc i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _angle
   (dotimes (i (length _angle))
     (setf (elt _angle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[64] _ir
   (dotimes (i (length _ir))
     (setf (elt _ir i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _dist
     (setq _dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gui::Sensordata :md5sum-) "8c229e2648232c4169508279d6fdeb33")
(setf (get gui::Sensordata :datatype-) "gui/Sensordata")
(setf (get gui::Sensordata :definition-)
      "float32[3] acc
float32[3] angle
float32[64] ir
float32 dist

")



(provide :gui/Sensordata "8c229e2648232c4169508279d6fdeb33")


