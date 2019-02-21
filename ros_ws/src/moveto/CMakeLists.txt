cmake_minimum_required(VERSION 2.8.3)
project(moveto)

# Basic requirements: Note message_generation is for custom message/services.
find_package(catkin REQUIRED COMPONENTS
  roscpp
  message_generation
)

###########################
# Custom message/services #
###########################

# Generate messages in the 'msg' folder
add_message_files(
  FILES
  Joints.msg
  Tip.msg
)

# Generate services in the 'srv' folder
add_service_files(
  FILES
  IKin.srv
  IsMoving.srv
  MoveJoints.srv
  MoveTip.srv
)

# Note any dependencies in the messages/services.
generate_messages(
  DEPENDENCIES
)

# Allow message/services to be found at runtime.
catkin_package(
  CATKIN_DEPENDS message_runtime
)

###########
## Build ##
###########

# Include directory
include_directories(
  ${catkin_INCLUDE_DIRS}
)

# Executables
add_executable(ikin   src/ikin.cpp)
add_executable(moveto src/moveto.cpp)

# Dependencies to compile
add_dependencies(ikin   ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(moveto ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

# Libraries to link
target_link_libraries(ikin   ${catkin_LIBRARIES})
target_link_libraries(moveto ${catkin_LIBRARIES})
