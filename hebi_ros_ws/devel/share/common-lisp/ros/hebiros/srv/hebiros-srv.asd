
(cl:in-package :asdf)

(defsystem "hebiros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :hebiros-msg
)
  :components ((:file "_package")
    (:file "AddGroupFromNamesSrv" :depends-on ("_package_AddGroupFromNamesSrv"))
    (:file "_package_AddGroupFromNamesSrv" :depends-on ("_package"))
    (:file "AddGroupFromUrdfSrv" :depends-on ("_package_AddGroupFromUrdfSrv"))
    (:file "_package_AddGroupFromUrdfSrv" :depends-on ("_package"))
    (:file "EntryListSrv" :depends-on ("_package_EntryListSrv"))
    (:file "_package_EntryListSrv" :depends-on ("_package"))
    (:file "SendCommandWithAcknowledgementSrv" :depends-on ("_package_SendCommandWithAcknowledgementSrv"))
    (:file "_package_SendCommandWithAcknowledgementSrv" :depends-on ("_package"))
    (:file "SetCommandLifetimeSrv" :depends-on ("_package_SetCommandLifetimeSrv"))
    (:file "_package_SetCommandLifetimeSrv" :depends-on ("_package"))
    (:file "SetFeedbackFrequencySrv" :depends-on ("_package_SetFeedbackFrequencySrv"))
    (:file "_package_SetFeedbackFrequencySrv" :depends-on ("_package"))
    (:file "SizeSrv" :depends-on ("_package_SizeSrv"))
    (:file "_package_SizeSrv" :depends-on ("_package"))
  ))