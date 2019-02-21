
(cl:in-package :asdf)

(defsystem "moveto-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :moveto-msg
)
  :components ((:file "_package")
    (:file "IKin" :depends-on ("_package_IKin"))
    (:file "_package_IKin" :depends-on ("_package"))
    (:file "IsMoving" :depends-on ("_package_IsMoving"))
    (:file "_package_IsMoving" :depends-on ("_package"))
    (:file "MoveJoints" :depends-on ("_package_MoveJoints"))
    (:file "_package_MoveJoints" :depends-on ("_package"))
    (:file "MoveTip" :depends-on ("_package_MoveTip"))
    (:file "_package_MoveTip" :depends-on ("_package"))
  ))