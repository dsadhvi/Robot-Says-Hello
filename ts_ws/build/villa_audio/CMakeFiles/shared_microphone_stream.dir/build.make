# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tracy/catkin_ws/src/villa_sound/villa_audio

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tracy/catkin_ws/build/villa_audio

# Include any dependencies generated for this target.
include CMakeFiles/shared_microphone_stream.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/shared_microphone_stream.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/shared_microphone_stream.dir/flags.make

CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o: CMakeFiles/shared_microphone_stream.dir/flags.make
CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o: /home/tracy/catkin_ws/src/villa_sound/villa_audio/src/shared_microphone_stream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tracy/catkin_ws/build/villa_audio/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o -c /home/tracy/catkin_ws/src/villa_sound/villa_audio/src/shared_microphone_stream.cpp

CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tracy/catkin_ws/src/villa_sound/villa_audio/src/shared_microphone_stream.cpp > CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.i

CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tracy/catkin_ws/src/villa_sound/villa_audio/src/shared_microphone_stream.cpp -o CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.s

CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o.requires:

.PHONY : CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o.requires

CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o.provides: CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o.requires
	$(MAKE) -f CMakeFiles/shared_microphone_stream.dir/build.make CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o.provides.build
.PHONY : CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o.provides

CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o.provides.build: CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o


# Object files for target shared_microphone_stream
shared_microphone_stream_OBJECTS = \
"CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o"

# External object files for target shared_microphone_stream
shared_microphone_stream_EXTERNAL_OBJECTS =

/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: CMakeFiles/shared_microphone_stream.dir/build.make
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /home/tracy/catkin_ws/devel/.private/villa_audio/lib/libbeam_beamformer.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /opt/ros/kinetic/lib/libroslib.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /opt/ros/kinetic/lib/librospack.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /opt/ros/kinetic/lib/librostime.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /opt/ros/kinetic/lib/libcpp_common.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /usr/lib/x86_64-linux-gnu/libboost_python.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /usr/lib/x86_64-linux-gnu/librt.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /home/tracy/catkin_ws/devel/.private/villa_audio/lib/libbeam_base.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /home/tracy/catkin_ws/devel/.private/villa_audio/lib/libbeam_commonaudio.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: /home/tracy/catkin_ws/devel/.private/villa_audio/lib/libbeam_systemwrappers.so
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so: CMakeFiles/shared_microphone_stream.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tracy/catkin_ws/build/villa_audio/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shared_microphone_stream.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/shared_microphone_stream.dir/build: /home/tracy/catkin_ws/devel/.private/villa_audio/lib/libshared_microphone_stream.so

.PHONY : CMakeFiles/shared_microphone_stream.dir/build

CMakeFiles/shared_microphone_stream.dir/requires: CMakeFiles/shared_microphone_stream.dir/src/shared_microphone_stream.cpp.o.requires

.PHONY : CMakeFiles/shared_microphone_stream.dir/requires

CMakeFiles/shared_microphone_stream.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/shared_microphone_stream.dir/cmake_clean.cmake
.PHONY : CMakeFiles/shared_microphone_stream.dir/clean

CMakeFiles/shared_microphone_stream.dir/depend:
	cd /home/tracy/catkin_ws/build/villa_audio && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tracy/catkin_ws/src/villa_sound/villa_audio /home/tracy/catkin_ws/src/villa_sound/villa_audio /home/tracy/catkin_ws/build/villa_audio /home/tracy/catkin_ws/build/villa_audio /home/tracy/catkin_ws/build/villa_audio/CMakeFiles/shared_microphone_stream.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/shared_microphone_stream.dir/depend

