cmake_minimum_required(VERSION 2.8.3)
project(villa_audio)

## Add support for C++11, supported in ROS Kinetic and newer
#add_definitions(-std=c++11)
# The above fails when there are C files as we only want
# -std=c++11 as a CXX flag
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

find_package(catkin REQUIRED COMPONENTS
    #roscpp
    rospy
    roslib
    std_msgs
    std_srvs
    message_generation
)

## System dependencies are found with CMake's conventions
find_package(Boost REQUIRED COMPONENTS python)

find_package(PythonLibs REQUIRED)

find_library(LIBRT_LIBRARIES rt)

catkin_python_setup()

add_service_files(
    DIRECTORY
    srv
    FILES
    RequestSoundTranscript.srv
    AddHintPhrases.srv
)

generate_messages(DEPENDENCIES std_msgs std_srvs)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES shared_microphone_stream _shared_microphone_stream_wrapper_cpp
#  CATKIN_DEPENDS other_catkin_pkg
#  DEPENDS boost
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  src/beamformer
  ${Boost_INCLUDE_DIRS}
  ${boost_INCLUDE_DIRS}
  ${PYTHON_INCLUDE_DIRS}
)

## Declare a C++ library
add_library(shared_microphone_stream src/shared_microphone_stream.cpp)
add_library(_shared_microphone_stream_wrapper_cpp src/shared_microphone_stream_wrapper.cpp)



## Specify libraries to link a library or executable target against
target_link_libraries(shared_microphone_stream
  libbeam_beamformer
  ${catkin_LIBRARIES}
  ${Boost_LIBRARIES}
  ${boost_LIBRARIES}
  ${LIBRT_LIBRARIES}
)

target_link_libraries(_shared_microphone_stream_wrapper_cpp
  shared_microphone_stream
  ${catkin_LIBRARIES}
  ${Boost_LIBRARIES}
  ${boost_LIBRARIES}
  ${PYTHON_LIBRARIES}
)



set_target_properties(_shared_microphone_stream_wrapper_cpp PROPERTIES
  PREFIX ""
  LIBRARY_OUTPUT_DIRECTORY ${CATKIN_DEVEL_PREFIX}/${CATKIN_PACKAGE_PYTHON_DESTINATION}
)

# Beamformer
add_definitions(-DWEBRTC_POSIX)
add_definitions(-DWEBRTC_LINUX)

add_subdirectory(src/beamformer/base)
add_subdirectory(src/beamformer/common_audio)
add_subdirectory(src/beamformer/system_wrappers)
add_subdirectory(src/beamformer/beamformer)

# Add the API auth token to the environment
catkin_add_env_hooks(${PROJECT_NAME} SHELLS sh DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/env-hooks)

