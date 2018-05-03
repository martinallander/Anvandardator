
(cl:in-package :asdf)

(defsystem "gui-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Sensordata" :depends-on ("_package_Sensordata"))
    (:file "_package_Sensordata" :depends-on ("_package"))
  ))