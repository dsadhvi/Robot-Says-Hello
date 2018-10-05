execute_process(COMMAND "/home/tracy/catkin_ws/build/villa_audio/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/tracy/catkin_ws/build/villa_audio/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
