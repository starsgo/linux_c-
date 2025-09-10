project(main CXX C)

include(CMakePackageConfigHelpers)
include(${CMAKE_CURRENT_SOURCE_DIR}/compiler_defs.cmake)
# set(x86 "true")
# set(aarch64b "true")



cmake_minimum_required(VERSION 3.19)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_VERBOSE_MAKEFILE ON)

# if(DEFINED x86)
#     set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/output/x86)
# 	message(STATUS install:${CMAKE_INSTALL_PREFIX})   
# else(DEFINED aarch64)
#     set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/output/aarch64)
# 	message(STATUS install:${CMAKE_INSTALL_PREFIX})   
# endif()
message(STATUS "message unwork") 
add_subdirectory(src)
add_subdirectory(LOG)
add_subdirectory(SOCKET)
add_subdirectory(MYSQL)
add_subdirectory(THREADPOOL)

# if(DEFINED x86)
# endif()

#------------main------------------
add_executable(main main.cpp)
target_link_libraries(main kv)
target_link_libraries(main mysql)
target_link_libraries(main http)
target_link_libraries(main log)
target_link_libraries(main clog)
target_link_libraries(main threadpool)
target_link_libraries(main mempool)
# install(TARGETS main DESTINATION bin)

target_link_libraries(main
    compiler_defs
)

# install(EXPORT mySocketTargets
#   FILE mySocketTargets.cmake
#   DESTINATION lib/cmake/mySocket)
# install(EXPORT mySocketTargets
#   FILE mySocketTargets.cmake
#   DESTINATION ${CMAKE_CURRENT_SOURCE_DIR})

# configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
#   "${CMAKE_CURRENT_BINARY_DIR}/mySocketConfig.cmake"
#   INSTALL_DESTINATION "lib/cmake/mySocket"
#   NO_SET_AND_CHECK_MACRO
#   NO_CHECK_REQUIRED_COMPONENTS_MACRO
#   )
# write_basic_package_version_file(
#   "${CMAKE_CURRENT_BINARY_DIR}/mySocketConfigVersion.cmake"
#   VERSION "${Tutorial_VERSION_MAJOR}.${Tutorial_VERSION_MINOR}"
#   COMPATIBILITY AnyNewerVersion
# )
# install(FILES
#   ${CMAKE_CURRENT_BINARY_DIR}/mySocketConfig.cmake
#   ${CMAKE_CURRENT_BINARY_DIR}/mySocketConfigVersion.cmake
#   DESTINATION lib/cmake/mySocket
#   )
#----------websocket------------
# add_executable(server server.c)
# target_include_directories(server PRIVATE ${PROJECT_SOURCE_DIR}/tools/websocket/include/)
# target_link_libraries(server ${PROJECT_SOURCE_DIR}/tools/websocket/lib/libwebsockets.a)
# target_link_libraries(server ssl)
# target_link_libraries(server crypto)
# target_link_libraries(server dl)

# add_executable(client client.c)
# target_include_directories(client PRIVATE ${PROJECT_SOURCE_DIR}/tools/websocket/include)
# target_link_libraries(client ${PROJECT_SOURCE_DIR}/tools/websocket/lib/libwebsockets.a)
# target_link_libraries(client ssl)
# target_link_libraries(client crypto)
# target_link_libraries(client dl)
