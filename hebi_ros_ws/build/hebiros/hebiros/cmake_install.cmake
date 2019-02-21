# Install script for directory: /home/robot/hebi_ros_ws/src/hebiros/hebiros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/robot/hebi_ros_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hebiros/msg" TYPE FILE FILES
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/msg/EntryMsg.msg"
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/msg/EntryListMsg.msg"
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/msg/FeedbackMsg.msg"
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/msg/WaypointMsg.msg"
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/msg/CommandMsg.msg"
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/msg/SettingsMsg.msg"
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/msg/PidGainsMsg.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hebiros/srv" TYPE FILE FILES
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/srv/EntryListSrv.srv"
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/srv/AddGroupFromNamesSrv.srv"
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/srv/AddGroupFromUrdfSrv.srv"
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/srv/SizeSrv.srv"
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/srv/SetFeedbackFrequencySrv.srv"
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/srv/SetCommandLifetimeSrv.srv"
    "/home/robot/hebi_ros_ws/src/hebiros/hebiros/srv/SendCommandWithAcknowledgementSrv.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hebiros/action" TYPE FILE FILES "/home/robot/hebi_ros_ws/src/hebiros/hebiros/action/Trajectory.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hebiros/msg" TYPE FILE FILES
    "/home/robot/hebi_ros_ws/devel/share/hebiros/msg/TrajectoryAction.msg"
    "/home/robot/hebi_ros_ws/devel/share/hebiros/msg/TrajectoryActionGoal.msg"
    "/home/robot/hebi_ros_ws/devel/share/hebiros/msg/TrajectoryActionResult.msg"
    "/home/robot/hebi_ros_ws/devel/share/hebiros/msg/TrajectoryActionFeedback.msg"
    "/home/robot/hebi_ros_ws/devel/share/hebiros/msg/TrajectoryGoal.msg"
    "/home/robot/hebi_ros_ws/devel/share/hebiros/msg/TrajectoryResult.msg"
    "/home/robot/hebi_ros_ws/devel/share/hebiros/msg/TrajectoryFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hebiros/cmake" TYPE FILE FILES "/home/robot/hebi_ros_ws/build/hebiros/hebiros/catkin_generated/installspace/hebiros-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/robot/hebi_ros_ws/devel/include/hebiros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/robot/hebi_ros_ws/devel/share/roseus/ros/hebiros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/robot/hebi_ros_ws/devel/share/common-lisp/ros/hebiros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/robot/hebi_ros_ws/devel/share/gennodejs/ros/hebiros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/robot/hebi_ros_ws/devel/lib/python2.7/dist-packages/hebiros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/robot/hebi_ros_ws/devel/lib/python2.7/dist-packages/hebiros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robot/hebi_ros_ws/build/hebiros/hebiros/catkin_generated/installspace/hebiros.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hebiros/cmake" TYPE FILE FILES "/home/robot/hebi_ros_ws/build/hebiros/hebiros/catkin_generated/installspace/hebiros-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hebiros/cmake" TYPE FILE FILES
    "/home/robot/hebi_ros_ws/build/hebiros/hebiros/catkin_generated/installspace/hebirosConfig.cmake"
    "/home/robot/hebi_ros_ws/build/hebiros/hebiros/catkin_generated/installspace/hebirosConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hebiros" TYPE FILE FILES "/home/robot/hebi_ros_ws/src/hebiros/hebiros/package.xml")
endif()

