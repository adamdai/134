
(cl:in-package :asdf)

(defsystem "moveto-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Joints" :depends-on ("_package_Joints"))
    (:file "_package_Joints" :depends-on ("_package"))
    (:file "Tip" :depends-on ("_package_Tip"))
    (:file "_package_Tip" :depends-on ("_package"))
  ))