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
include HTTP/CMakeFiles/http.dir/depend.make

# Include the progress variables for this target.
include HTTP/CMakeFiles/http.dir/progress.make

# Include the compile flags for this target's objects.
include HTTP/CMakeFiles/http.dir/flags.make

HTTP/CMakeFiles/http.dir/http.cpp.o: HTTP/CMakeFiles/http.dir/flags.make
HTTP/CMakeFiles/http.dir/http.cpp.o: ../HTTP/http.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gxx/Documents/Cprojects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object HTTP/CMakeFiles/http.dir/http.cpp.o"
	cd /home/gxx/Documents/Cprojects/build/HTTP && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/http.dir/http.cpp.o -c /home/gxx/Documents/Cprojects/HTTP/http.cpp

HTTP/CMakeFiles/http.dir/http.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/http.cpp.i"
	cd /home/gxx/Documents/Cprojects/build/HTTP && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gxx/Documents/Cprojects/HTTP/http.cpp > CMakeFiles/http.dir/http.cpp.i

HTTP/CMakeFiles/http.dir/http.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/http.cpp.s"
	cd /home/gxx/Documents/Cprojects/build/HTTP && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gxx/Documents/Cprojects/HTTP/http.cpp -o CMakeFiles/http.dir/http.cpp.s

HTTP/CMakeFiles/http.dir/http.cpp.o.requires:

.PHONY : HTTP/CMakeFiles/http.dir/http.cpp.o.requires

HTTP/CMakeFiles/http.dir/http.cpp.o.provides: HTTP/CMakeFiles/http.dir/http.cpp.o.requires
	$(MAKE) -f HTTP/CMakeFiles/http.dir/build.make HTTP/CMakeFiles/http.dir/http.cpp.o.provides.build
.PHONY : HTTP/CMakeFiles/http.dir/http.cpp.o.provides

HTTP/CMakeFiles/http.dir/http.cpp.o.provides.build: HTTP/CMakeFiles/http.dir/http.cpp.o


# Object files for target http
http_OBJECTS = \
"CMakeFiles/http.dir/http.cpp.o"

# External object files for target http
http_EXTERNAL_OBJECTS =

HTTP/libhttp.a: HTTP/CMakeFiles/http.dir/http.cpp.o
HTTP/libhttp.a: HTTP/CMakeFiles/http.dir/build.make
HTTP/libhttp.a: HTTP/CMakeFiles/http.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gxx/Documents/Cprojects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libhttp.a"
	cd /home/gxx/Documents/Cprojects/build/HTTP && $(CMAKE_COMMAND) -P CMakeFiles/http.dir/cmake_clean_target.cmake
	cd /home/gxx/Documents/Cprojects/build/HTTP && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/http.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
HTTP/CMakeFiles/http.dir/build: HTTP/libhttp.a

.PHONY : HTTP/CMakeFiles/http.dir/build

HTTP/CMakeFiles/http.dir/requires: HTTP/CMakeFiles/http.dir/http.cpp.o.requires

.PHONY : HTTP/CMakeFiles/http.dir/requires

HTTP/CMakeFiles/http.dir/clean:
	cd /home/gxx/Documents/Cprojects/build/HTTP && $(CMAKE_COMMAND) -P CMakeFiles/http.dir/cmake_clean.cmake
.PHONY : HTTP/CMakeFiles/http.dir/clean

HTTP/CMakeFiles/http.dir/depend:
	cd /home/gxx/Documents/Cprojects/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gxx/Documents/Cprojects /home/gxx/Documents/Cprojects/HTTP /home/gxx/Documents/Cprojects/build /home/gxx/Documents/Cprojects/build/HTTP /home/gxx/Documents/Cprojects/build/HTTP/CMakeFiles/http.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : HTTP/CMakeFiles/http.dir/depend

