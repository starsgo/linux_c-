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
CMAKE_BINARY_DIR = /home/gxx/Documents/Cprojects/build

# Include any dependencies generated for this target.
include LOG/CMakeFiles/log.dir/depend.make

# Include the progress variables for this target.
include LOG/CMakeFiles/log.dir/progress.make

# Include the compile flags for this target's objects.
include LOG/CMakeFiles/log.dir/flags.make

LOG/CMakeFiles/log.dir/log.c.o: LOG/CMakeFiles/log.dir/flags.make
LOG/CMakeFiles/log.dir/log.c.o: ../LOG/log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gxx/Documents/Cprojects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object LOG/CMakeFiles/log.dir/log.c.o"
	cd /home/gxx/Documents/Cprojects/build/LOG && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/log.dir/log.c.o   -c /home/gxx/Documents/Cprojects/LOG/log.c

LOG/CMakeFiles/log.dir/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log.dir/log.c.i"
	cd /home/gxx/Documents/Cprojects/build/LOG && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gxx/Documents/Cprojects/LOG/log.c > CMakeFiles/log.dir/log.c.i

LOG/CMakeFiles/log.dir/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log.dir/log.c.s"
	cd /home/gxx/Documents/Cprojects/build/LOG && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gxx/Documents/Cprojects/LOG/log.c -o CMakeFiles/log.dir/log.c.s

LOG/CMakeFiles/log.dir/log.c.o.requires:

.PHONY : LOG/CMakeFiles/log.dir/log.c.o.requires

LOG/CMakeFiles/log.dir/log.c.o.provides: LOG/CMakeFiles/log.dir/log.c.o.requires
	$(MAKE) -f LOG/CMakeFiles/log.dir/build.make LOG/CMakeFiles/log.dir/log.c.o.provides.build
.PHONY : LOG/CMakeFiles/log.dir/log.c.o.provides

LOG/CMakeFiles/log.dir/log.c.o.provides.build: LOG/CMakeFiles/log.dir/log.c.o


# Object files for target log
log_OBJECTS = \
"CMakeFiles/log.dir/log.c.o"

# External object files for target log
log_EXTERNAL_OBJECTS =

LOG/liblog.a: LOG/CMakeFiles/log.dir/log.c.o
LOG/liblog.a: LOG/CMakeFiles/log.dir/build.make
LOG/liblog.a: LOG/CMakeFiles/log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gxx/Documents/Cprojects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library liblog.a"
	cd /home/gxx/Documents/Cprojects/build/LOG && $(CMAKE_COMMAND) -P CMakeFiles/log.dir/cmake_clean_target.cmake
	cd /home/gxx/Documents/Cprojects/build/LOG && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/log.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
LOG/CMakeFiles/log.dir/build: LOG/liblog.a

.PHONY : LOG/CMakeFiles/log.dir/build

LOG/CMakeFiles/log.dir/requires: LOG/CMakeFiles/log.dir/log.c.o.requires

.PHONY : LOG/CMakeFiles/log.dir/requires

LOG/CMakeFiles/log.dir/clean:
	cd /home/gxx/Documents/Cprojects/build/LOG && $(CMAKE_COMMAND) -P CMakeFiles/log.dir/cmake_clean.cmake
.PHONY : LOG/CMakeFiles/log.dir/clean

LOG/CMakeFiles/log.dir/depend:
	cd /home/gxx/Documents/Cprojects/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gxx/Documents/Cprojects /home/gxx/Documents/Cprojects/LOG /home/gxx/Documents/Cprojects/build /home/gxx/Documents/Cprojects/build/LOG /home/gxx/Documents/Cprojects/build/LOG/CMakeFiles/log.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : LOG/CMakeFiles/log.dir/depend

