project(main CXX C)



set(x86 "true")
# set(aarch64b "true")



cmake_minimum_required(VERSION 3.10)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_VERBOSE_MAKEFILE ON)

if(DEFINED x86)
    set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/output/x86)    
else(DEFINED aarch64)
    set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/output/aarch64)
endif()

add_subdirectory(KV)
add_subdirectory(SOCKET)
add_subdirectory(MYSQL)
add_subdirectory(HTTP)

if(DEFINED x86)

endif()

#------------main------------------
add_executable(main main.cpp)
target_link_libraries(main kv)
target_link_libraries(main socket)
target_link_libraries(main pthread)
target_link_libraries(main mysql)
target_link_libraries(main http)
install(TARGETS main DESTINATION bin)

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
