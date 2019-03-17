# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "moveto: 3 messages, 6 services")

set(MSG_I_FLAGS "-Imoveto:/home/adam/ros_ws/src/moveto/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(moveto_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/Grab.srv" NAME_WE)
add_custom_target(_moveto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveto" "/home/adam/ros_ws/src/moveto/srv/Grab.srv" ""
)

get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/IKin.srv" NAME_WE)
add_custom_target(_moveto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveto" "/home/adam/ros_ws/src/moveto/srv/IKin.srv" "moveto/Tip:moveto/Joints"
)

get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/MoveJoints.srv" NAME_WE)
add_custom_target(_moveto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveto" "/home/adam/ros_ws/src/moveto/srv/MoveJoints.srv" "moveto/Joints"
)

get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/MoveTip.srv" NAME_WE)
add_custom_target(_moveto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveto" "/home/adam/ros_ws/src/moveto/srv/MoveTip.srv" "moveto/Tip"
)

get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Joints.msg" NAME_WE)
add_custom_target(_moveto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveto" "/home/adam/ros_ws/src/moveto/msg/Joints.msg" ""
)

get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Point.msg" NAME_WE)
add_custom_target(_moveto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveto" "/home/adam/ros_ws/src/moveto/msg/Point.msg" ""
)

get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/IsMoving.srv" NAME_WE)
add_custom_target(_moveto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveto" "/home/adam/ros_ws/src/moveto/srv/IsMoving.srv" ""
)

get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/ThrowTo.srv" NAME_WE)
add_custom_target(_moveto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveto" "/home/adam/ros_ws/src/moveto/srv/ThrowTo.srv" ""
)

get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Tip.msg" NAME_WE)
add_custom_target(_moveto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveto" "/home/adam/ros_ws/src/moveto/msg/Tip.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(moveto
  "/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveto
)
_generate_msg_cpp(moveto
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveto
)
_generate_msg_cpp(moveto
  "/home/adam/ros_ws/src/moveto/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveto
)

### Generating Services
_generate_srv_cpp(moveto
  "/home/adam/ros_ws/src/moveto/srv/Grab.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveto
)
_generate_srv_cpp(moveto
  "/home/adam/ros_ws/src/moveto/srv/IKin.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg;/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveto
)
_generate_srv_cpp(moveto
  "/home/adam/ros_ws/src/moveto/srv/MoveJoints.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveto
)
_generate_srv_cpp(moveto
  "/home/adam/ros_ws/src/moveto/srv/MoveTip.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveto
)
_generate_srv_cpp(moveto
  "/home/adam/ros_ws/src/moveto/srv/IsMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveto
)
_generate_srv_cpp(moveto
  "/home/adam/ros_ws/src/moveto/srv/ThrowTo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveto
)

### Generating Module File
_generate_module_cpp(moveto
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveto
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(moveto_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(moveto_generate_messages moveto_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/Grab.srv" NAME_WE)
add_dependencies(moveto_generate_messages_cpp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/IKin.srv" NAME_WE)
add_dependencies(moveto_generate_messages_cpp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/MoveJoints.srv" NAME_WE)
add_dependencies(moveto_generate_messages_cpp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/MoveTip.srv" NAME_WE)
add_dependencies(moveto_generate_messages_cpp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Joints.msg" NAME_WE)
add_dependencies(moveto_generate_messages_cpp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Point.msg" NAME_WE)
add_dependencies(moveto_generate_messages_cpp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/IsMoving.srv" NAME_WE)
add_dependencies(moveto_generate_messages_cpp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/ThrowTo.srv" NAME_WE)
add_dependencies(moveto_generate_messages_cpp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Tip.msg" NAME_WE)
add_dependencies(moveto_generate_messages_cpp _moveto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveto_gencpp)
add_dependencies(moveto_gencpp moveto_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveto_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(moveto
  "/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveto
)
_generate_msg_eus(moveto
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveto
)
_generate_msg_eus(moveto
  "/home/adam/ros_ws/src/moveto/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveto
)

### Generating Services
_generate_srv_eus(moveto
  "/home/adam/ros_ws/src/moveto/srv/Grab.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveto
)
_generate_srv_eus(moveto
  "/home/adam/ros_ws/src/moveto/srv/IKin.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg;/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveto
)
_generate_srv_eus(moveto
  "/home/adam/ros_ws/src/moveto/srv/MoveJoints.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveto
)
_generate_srv_eus(moveto
  "/home/adam/ros_ws/src/moveto/srv/MoveTip.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveto
)
_generate_srv_eus(moveto
  "/home/adam/ros_ws/src/moveto/srv/IsMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveto
)
_generate_srv_eus(moveto
  "/home/adam/ros_ws/src/moveto/srv/ThrowTo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveto
)

### Generating Module File
_generate_module_eus(moveto
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveto
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(moveto_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(moveto_generate_messages moveto_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/Grab.srv" NAME_WE)
add_dependencies(moveto_generate_messages_eus _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/IKin.srv" NAME_WE)
add_dependencies(moveto_generate_messages_eus _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/MoveJoints.srv" NAME_WE)
add_dependencies(moveto_generate_messages_eus _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/MoveTip.srv" NAME_WE)
add_dependencies(moveto_generate_messages_eus _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Joints.msg" NAME_WE)
add_dependencies(moveto_generate_messages_eus _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Point.msg" NAME_WE)
add_dependencies(moveto_generate_messages_eus _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/IsMoving.srv" NAME_WE)
add_dependencies(moveto_generate_messages_eus _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/ThrowTo.srv" NAME_WE)
add_dependencies(moveto_generate_messages_eus _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Tip.msg" NAME_WE)
add_dependencies(moveto_generate_messages_eus _moveto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveto_geneus)
add_dependencies(moveto_geneus moveto_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveto_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(moveto
  "/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveto
)
_generate_msg_lisp(moveto
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveto
)
_generate_msg_lisp(moveto
  "/home/adam/ros_ws/src/moveto/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveto
)

### Generating Services
_generate_srv_lisp(moveto
  "/home/adam/ros_ws/src/moveto/srv/Grab.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveto
)
_generate_srv_lisp(moveto
  "/home/adam/ros_ws/src/moveto/srv/IKin.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg;/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveto
)
_generate_srv_lisp(moveto
  "/home/adam/ros_ws/src/moveto/srv/MoveJoints.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveto
)
_generate_srv_lisp(moveto
  "/home/adam/ros_ws/src/moveto/srv/MoveTip.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveto
)
_generate_srv_lisp(moveto
  "/home/adam/ros_ws/src/moveto/srv/IsMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveto
)
_generate_srv_lisp(moveto
  "/home/adam/ros_ws/src/moveto/srv/ThrowTo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveto
)

### Generating Module File
_generate_module_lisp(moveto
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveto
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(moveto_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(moveto_generate_messages moveto_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/Grab.srv" NAME_WE)
add_dependencies(moveto_generate_messages_lisp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/IKin.srv" NAME_WE)
add_dependencies(moveto_generate_messages_lisp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/MoveJoints.srv" NAME_WE)
add_dependencies(moveto_generate_messages_lisp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/MoveTip.srv" NAME_WE)
add_dependencies(moveto_generate_messages_lisp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Joints.msg" NAME_WE)
add_dependencies(moveto_generate_messages_lisp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Point.msg" NAME_WE)
add_dependencies(moveto_generate_messages_lisp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/IsMoving.srv" NAME_WE)
add_dependencies(moveto_generate_messages_lisp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/ThrowTo.srv" NAME_WE)
add_dependencies(moveto_generate_messages_lisp _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Tip.msg" NAME_WE)
add_dependencies(moveto_generate_messages_lisp _moveto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveto_genlisp)
add_dependencies(moveto_genlisp moveto_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveto_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(moveto
  "/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveto
)
_generate_msg_nodejs(moveto
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveto
)
_generate_msg_nodejs(moveto
  "/home/adam/ros_ws/src/moveto/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveto
)

### Generating Services
_generate_srv_nodejs(moveto
  "/home/adam/ros_ws/src/moveto/srv/Grab.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveto
)
_generate_srv_nodejs(moveto
  "/home/adam/ros_ws/src/moveto/srv/IKin.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg;/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveto
)
_generate_srv_nodejs(moveto
  "/home/adam/ros_ws/src/moveto/srv/MoveJoints.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveto
)
_generate_srv_nodejs(moveto
  "/home/adam/ros_ws/src/moveto/srv/MoveTip.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveto
)
_generate_srv_nodejs(moveto
  "/home/adam/ros_ws/src/moveto/srv/IsMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveto
)
_generate_srv_nodejs(moveto
  "/home/adam/ros_ws/src/moveto/srv/ThrowTo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveto
)

### Generating Module File
_generate_module_nodejs(moveto
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveto
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(moveto_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(moveto_generate_messages moveto_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/Grab.srv" NAME_WE)
add_dependencies(moveto_generate_messages_nodejs _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/IKin.srv" NAME_WE)
add_dependencies(moveto_generate_messages_nodejs _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/MoveJoints.srv" NAME_WE)
add_dependencies(moveto_generate_messages_nodejs _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/MoveTip.srv" NAME_WE)
add_dependencies(moveto_generate_messages_nodejs _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Joints.msg" NAME_WE)
add_dependencies(moveto_generate_messages_nodejs _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Point.msg" NAME_WE)
add_dependencies(moveto_generate_messages_nodejs _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/IsMoving.srv" NAME_WE)
add_dependencies(moveto_generate_messages_nodejs _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/ThrowTo.srv" NAME_WE)
add_dependencies(moveto_generate_messages_nodejs _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Tip.msg" NAME_WE)
add_dependencies(moveto_generate_messages_nodejs _moveto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveto_gennodejs)
add_dependencies(moveto_gennodejs moveto_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveto_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(moveto
  "/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveto
)
_generate_msg_py(moveto
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveto
)
_generate_msg_py(moveto
  "/home/adam/ros_ws/src/moveto/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveto
)

### Generating Services
_generate_srv_py(moveto
  "/home/adam/ros_ws/src/moveto/srv/Grab.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveto
)
_generate_srv_py(moveto
  "/home/adam/ros_ws/src/moveto/srv/IKin.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg;/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveto
)
_generate_srv_py(moveto
  "/home/adam/ros_ws/src/moveto/srv/MoveJoints.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Joints.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveto
)
_generate_srv_py(moveto
  "/home/adam/ros_ws/src/moveto/srv/MoveTip.srv"
  "${MSG_I_FLAGS}"
  "/home/adam/ros_ws/src/moveto/msg/Tip.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveto
)
_generate_srv_py(moveto
  "/home/adam/ros_ws/src/moveto/srv/IsMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveto
)
_generate_srv_py(moveto
  "/home/adam/ros_ws/src/moveto/srv/ThrowTo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveto
)

### Generating Module File
_generate_module_py(moveto
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveto
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(moveto_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(moveto_generate_messages moveto_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/Grab.srv" NAME_WE)
add_dependencies(moveto_generate_messages_py _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/IKin.srv" NAME_WE)
add_dependencies(moveto_generate_messages_py _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/MoveJoints.srv" NAME_WE)
add_dependencies(moveto_generate_messages_py _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/MoveTip.srv" NAME_WE)
add_dependencies(moveto_generate_messages_py _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Joints.msg" NAME_WE)
add_dependencies(moveto_generate_messages_py _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Point.msg" NAME_WE)
add_dependencies(moveto_generate_messages_py _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/IsMoving.srv" NAME_WE)
add_dependencies(moveto_generate_messages_py _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/srv/ThrowTo.srv" NAME_WE)
add_dependencies(moveto_generate_messages_py _moveto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adam/ros_ws/src/moveto/msg/Tip.msg" NAME_WE)
add_dependencies(moveto_generate_messages_py _moveto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveto_genpy)
add_dependencies(moveto_genpy moveto_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveto_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveto)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveto
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveto)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveto
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveto)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveto
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveto)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveto
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveto)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveto\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveto
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
