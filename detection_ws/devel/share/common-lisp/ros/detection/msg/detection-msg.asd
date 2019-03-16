
(cl:in-package :asdf)

(defsystem "detection-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Coord" :depends-on ("_package_Coord"))
    (:file "_package_Coord" :depends-on ("_package"))
    (:file "CoordVec" :depends-on ("_package_CoordVec"))
    (:file "_package_CoordVec" :depends-on ("_package"))
  ))