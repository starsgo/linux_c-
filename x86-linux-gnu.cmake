message(STATUS "----------------x86-linux-gnu---------------")
set(CMAKE_C_COMPILER "/usr/bin/gcc")
set(CMAKE_CXX_COMPILER "/usr/bin/g++")
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS_DEBUG "-g -O0")
set(CMAKE_C_FLAGS_DEBUG "-g -O0")

# cmake -DCMAKE_TOOLCHAIN_FILE=../x86-linux-gnu.cmake ..