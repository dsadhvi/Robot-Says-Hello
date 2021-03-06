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
include src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/depend.make

# Include the progress variables for this target.
include src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/progress.make

# Include the compile flags for this target's objects.
include src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/flags.make

src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o: src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/flags.make
src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o: /home/tracy/catkin_ws/src/villa_sound/villa_audio/src/beamformer/system_wrappers/aligned_malloc.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tracy/catkin_ws/build/villa_audio/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o"
	cd /home/tracy/catkin_ws/build/villa_audio/src/beamformer/system_wrappers && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o -c /home/tracy/catkin_ws/src/villa_sound/villa_audio/src/beamformer/system_wrappers/aligned_malloc.cc

src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.i"
	cd /home/tracy/catkin_ws/build/villa_audio/src/beamformer/system_wrappers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tracy/catkin_ws/src/villa_sound/villa_audio/src/beamformer/system_wrappers/aligned_malloc.cc > CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.i

src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.s"
	cd /home/tracy/catkin_ws/build/villa_audio/src/beamformer/system_wrappers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tracy/catkin_ws/src/villa_sound/villa_audio/src/beamformer/system_wrappers/aligned_malloc.cc -o CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.s

src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o.requires:

.PHONY : src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o.requires

src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o.provides: src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o.requires
	$(MAKE) -f src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/build.make src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o.provides.build
.PHONY : src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o.provides

src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o.provides.build: src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o


# Object files for target libbeam_systemwrappers
libbeam_systemwrappers_OBJECTS = \
"CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o"

# External object files for target libbeam_systemwrappers
libbeam_systemwrappers_EXTERNAL_OBJECTS =

/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libbeam_systemwrappers.so: src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libbeam_systemwrappers.so: src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/build.make
/home/tracy/catkin_ws/devel/.private/villa_audio/lib/libbeam_systemwrappers.so: src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tracy/catkin_ws/build/villa_audio/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/tracy/catkin_ws/devel/.private/villa_audio/lib/libbeam_systemwrappers.so"
	cd /home/tracy/catkin_ws/build/villa_audio/src/beamformer/system_wrappers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libbeam_systemwrappers.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/build: /home/tracy/catkin_ws/devel/.private/villa_audio/lib/libbeam_systemwrappers.so

.PHONY : src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/build

src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/requires: src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/aligned_malloc.cc.o.requires

.PHONY : src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/requires

src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/clean:
	cd /home/tracy/catkin_ws/build/villa_audio/src/beamformer/system_wrappers && $(CMAKE_COMMAND) -P CMakeFiles/libbeam_systemwrappers.dir/cmake_clean.cmake
.PHONY : src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/clean

src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/depend:
	cd /home/tracy/catkin_ws/build/villa_audio && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tracy/catkin_ws/src/villa_sound/villa_audio /home/tracy/catkin_ws/src/villa_sound/villa_audio/src/beamformer/system_wrappers /home/tracy/catkin_ws/build/villa_audio /home/tracy/catkin_ws/build/villa_audio/src/beamformer/system_wrappers /home/tracy/catkin_ws/build/villa_audio/src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/beamformer/system_wrappers/CMakeFiles/libbeam_systemwrappers.dir/depend

