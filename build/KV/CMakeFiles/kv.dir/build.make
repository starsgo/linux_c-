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
include KV/CMakeFiles/kv.dir/depend.make

# Include the progress variables for this target.
include KV/CMakeFiles/kv.dir/progress.make

# Include the compile flags for this target's objects.
include KV/CMakeFiles/kv.dir/flags.make

KV/CMakeFiles/kv.dir/kv.cpp.o: KV/CMakeFiles/kv.dir/flags.make
KV/CMakeFiles/kv.dir/kv.cpp.o: ../KV/kv.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gxx/Documents/Cprojects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object KV/CMakeFiles/kv.dir/kv.cpp.o"
	cd /home/gxx/Documents/Cprojects/build/KV && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kv.dir/kv.cpp.o -c /home/gxx/Documents/Cprojects/KV/kv.cpp

KV/CMakeFiles/kv.dir/kv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kv.dir/kv.cpp.i"
	cd /home/gxx/Documents/Cprojects/build/KV && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gxx/Documents/Cprojects/KV/kv.cpp > CMakeFiles/kv.dir/kv.cpp.i

KV/CMakeFiles/kv.dir/kv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kv.dir/kv.cpp.s"
	cd /home/gxx/Documents/Cprojects/build/KV && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gxx/Documents/Cprojects/KV/kv.cpp -o CMakeFiles/kv.dir/kv.cpp.s

KV/CMakeFiles/kv.dir/kv.cpp.o.requires:

.PHONY : KV/CMakeFiles/kv.dir/kv.cpp.o.requires

KV/CMakeFiles/kv.dir/kv.cpp.o.provides: KV/CMakeFiles/kv.dir/kv.cpp.o.requires
	$(MAKE) -f KV/CMakeFiles/kv.dir/build.make KV/CMakeFiles/kv.dir/kv.cpp.o.provides.build
.PHONY : KV/CMakeFiles/kv.dir/kv.cpp.o.provides

KV/CMakeFiles/kv.dir/kv.cpp.o.provides.build: KV/CMakeFiles/kv.dir/kv.cpp.o


# Object files for target kv
kv_OBJECTS = \
"CMakeFiles/kv.dir/kv.cpp.o"

# External object files for target kv
kv_EXTERNAL_OBJECTS =

KV/libkv.a: KV/CMakeFiles/kv.dir/kv.cpp.o
KV/libkv.a: KV/CMakeFiles/kv.dir/build.make
KV/libkv.a: KV/CMakeFiles/kv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gxx/Documents/Cprojects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libkv.a"
	cd /home/gxx/Documents/Cprojects/build/KV && $(CMAKE_COMMAND) -P CMakeFiles/kv.dir/cmake_clean_target.cmake
	cd /home/gxx/Documents/Cprojects/build/KV && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
KV/CMakeFiles/kv.dir/build: KV/libkv.a

.PHONY : KV/CMakeFiles/kv.dir/build

KV/CMakeFiles/kv.dir/requires: KV/CMakeFiles/kv.dir/kv.cpp.o.requires

.PHONY : KV/CMakeFiles/kv.dir/requires

KV/CMakeFiles/kv.dir/clean:
	cd /home/gxx/Documents/Cprojects/build/KV && $(CMAKE_COMMAND) -P CMakeFiles/kv.dir/cmake_clean.cmake
.PHONY : KV/CMakeFiles/kv.dir/clean

KV/CMakeFiles/kv.dir/depend:
	cd /home/gxx/Documents/Cprojects/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gxx/Documents/Cprojects /home/gxx/Documents/Cprojects/KV /home/gxx/Documents/Cprojects/build /home/gxx/Documents/Cprojects/build/KV /home/gxx/Documents/Cprojects/build/KV/CMakeFiles/kv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : KV/CMakeFiles/kv.dir/depend

