project(main CXX C)



cmake_minimum_required(VERSION 3.10)
set(CMAKE_C_COMPILER "/usr/bin/gcc")
set(CMAKE_CXX_COMPILER "/usr/bin/g++")
set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS_DEBUG "-g -O0")
set(CMAKE_C_FLAGS_DEBUG "-g -O0")

add_subdirectory(KV)
add_subdirectory(SOCKET)

add_executable(main main.cpp)
target_link_libraries(main kv)
target_link_libraries(main socket)
target_link_libraries(main pthread)