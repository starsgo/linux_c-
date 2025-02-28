project(main CXX C)



cmake_minimum_required(VERSION 3.10)
set(CMAKE_VERBOSE_MAKEFILE ON)
add_subdirectory(KV)
add_subdirectory(SOCKET)

add_executable(main main.cpp)
target_link_libraries(main kv)
target_link_libraries(main socket)
target_link_libraries(main pthread)