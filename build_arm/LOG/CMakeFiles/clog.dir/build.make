# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/gxx/Documents/Cprojects

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gxx/Documents/Cprojects/build_arm

# Include any dependencies generated for this target.
include LOG/CMakeFiles/clog.dir/depend.make

# Include the progress variables for this target.
include LOG/CMakeFiles/clog.dir/progress.make

# Include the compile flags for this target's objects.
include LOG/CMakeFiles/clog.dir/flags.make

LOG/CMakeFiles/clog.dir/CLog.cpp.o: LOG/CMakeFiles/clog.dir/flags.make
LOG/CMakeFiles/clog.dir/CLog.cpp.o: ../LOG/CLog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gxx/Documents/Cprojects/build_arm/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object LOG/CMakeFiles/clog.dir/CLog.cpp.o"
	cd /home/gxx/Documents/Cprojects/build_arm/LOG && /home/gxx/Documents/arm/gcc-linaro-12.2.1-2023.04-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clog.dir/CLog.cpp.o -c /home/gxx/Documents/Cprojects/LOG/CLog.cpp

LOG/CMakeFiles/clog.dir/CLog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clog.dir/CLog.cpp.i"
	cd /home/gxx/Documents/Cprojects/build_arm/LOG && /home/gxx/Documents/arm/gcc-linaro-12.2.1-2023.04-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gxx/Documents/Cprojects/LOG/CLog.cpp > CMakeFiles/clog.dir/CLog.cpp.i

LOG/CMakeFiles/clog.dir/CLog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clog.dir/CLog.cpp.s"
	cd /home/gxx/Documents/Cprojects/build_arm/LOG && /home/gxx/Documents/arm/gcc-linaro-12.2.1-2023.04-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gxx/Documents/Cprojects/LOG/CLog.cpp -o CMakeFiles/clog.dir/CLog.cpp.s

LOG/CMakeFiles/clog.dir/CLog.cpp.o.requires:

.PHONY : LOG/CMakeFiles/clog.dir/CLog.cpp.o.requires

LOG/CMakeFiles/clog.dir/CLog.cpp.o.provides: LOG/CMakeFiles/clog.dir/CLog.cpp.o.requires
	$(MAKE) -f LOG/CMakeFiles/clog.dir/build.make LOG/CMakeFiles/clog.dir/CLog.cpp.o.provides.build
.PHONY : LOG/CMakeFiles/clog.dir/CLog.cpp.o.provides

LOG/CMakeFiles/clog.dir/CLog.cpp.o.provides.build: LOG/CMakeFiles/clog.dir/CLog.cpp.o


# Object files for target clog
clog_OBJECTS = \
"CMakeFiles/clog.dir/CLog.cpp.o"

# External object files for target clog
clog_EXTERNAL_OBJECTS =

LOG/libclog.a: LOG/CMakeFiles/clog.dir/CLog.cpp.o
LOG/libclog.a: LOG/CMakeFiles/clog.dir/build.make
LOG/libclog.a: LOG/CMakeFiles/clog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gxx/Documents/Cprojects/build_arm/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libclog.a"
	cd /home/gxx/Documents/Cprojects/build_arm/LOG && $(CMAKE_COMMAND) -P CMakeFiles/clog.dir/cmake_clean_target.cmake
	cd /home/gxx/Documents/Cprojects/build_arm/LOG && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clog.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
LOG/CMakeFiles/clog.dir/build: LOG/libclog.a

.PHONY : LOG/CMakeFiles/clog.dir/build

LOG/CMakeFiles/clog.dir/requires: LOG/CMakeFiles/clog.dir/CLog.cpp.o.requires

.PHONY : LOG/CMakeFiles/clog.dir/requires

LOG/CMakeFiles/clog.dir/clean:
	cd /home/gxx/Documents/Cprojects/build_arm/LOG && $(CMAKE_COMMAND) -P CMakeFiles/clog.dir/cmake_clean.cmake
.PHONY : LOG/CMakeFiles/clog.dir/clean

LOG/CMakeFiles/clog.dir/depend:
	cd /home/gxx/Documents/Cprojects/build_arm && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gxx/Documents/Cprojects /home/gxx/Documents/Cprojects/LOG /home/gxx/Documents/Cprojects/build_arm /home/gxx/Documents/Cprojects/build_arm/LOG /home/gxx/Documents/Cprojects/build_arm/LOG/CMakeFiles/clog.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : LOG/CMakeFiles/clog.dir/depend

