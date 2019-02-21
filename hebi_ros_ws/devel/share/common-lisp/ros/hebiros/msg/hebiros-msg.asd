
(cl:in-package :asdf)

(defsystem "hebiros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CommandMsg" :depends-on ("_package_CommandMsg"))
    (:file "_package_CommandMsg" :depends-on ("_package"))
    (:file "EntryListMsg" :depends-on ("_package_EntryListMsg"))
    (:file "_package_EntryListMsg" :depends-on ("_package"))
    (:file "EntryMsg" :depends-on ("_package_EntryMsg"))
    (:file "_package_EntryMsg" :depends-on ("_package"))
    (:file "FeedbackMsg" :depends-on ("_package_FeedbackMsg"))
    (:file "_package_FeedbackMsg" :depends-on ("_package"))
    (:file "PidGainsMsg" :depends-on ("_package_PidGainsMsg"))
    (:file "_package_PidGainsMsg" :depends-on ("_package"))
    (:file "SettingsMsg" :depends-on ("_package_SettingsMsg"))
    (:file "_package_SettingsMsg" :depends-on ("_package"))
    (:file "TrajectoryAction" :depends-on ("_package_TrajectoryAction"))
    (:file "_package_TrajectoryAction" :depends-on ("_package"))
    (:file "TrajectoryActionFeedback" :depends-on ("_package_TrajectoryActionFeedback"))
    (:file "_package_TrajectoryActionFeedback" :depends-on ("_package"))
    (:file "TrajectoryActionGoal" :depends-on ("_package_TrajectoryActionGoal"))
    (:file "_package_TrajectoryActionGoal" :depends-on ("_package"))
    (:file "TrajectoryActionResult" :depends-on ("_package_TrajectoryActionResult"))
    (:file "_package_TrajectoryActionResult" :depends-on ("_package"))
    (:file "TrajectoryFeedback" :depends-on ("_package_TrajectoryFeedback"))
    (:file "_package_TrajectoryFeedback" :depends-on ("_package"))
    (:file "TrajectoryGoal" :depends-on ("_package_TrajectoryGoal"))
    (:file "_package_TrajectoryGoal" :depends-on ("_package"))
    (:file "TrajectoryResult" :depends-on ("_package_TrajectoryResult"))
    (:file "_package_TrajectoryResult" :depends-on ("_package"))
    (:file "WaypointMsg" :depends-on ("_package_WaypointMsg"))
    (:file "_package_WaypointMsg" :depends-on ("_package"))
  ))