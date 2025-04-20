add_library(socket socket.c)

#export
target_include_directories(socket INTERFACE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}> $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>)

# import pthread...
# target_link_libraries(socket INTERFACE pthread)

#import log_debug()
target_include_directories(socket PRIVATE ${PROJECT_SOURCE_DIR}/LOG)
target_link_libraries(socket INTERFACE log)

#import threadpool
target_include_directories(socket PRIVATE ${PROJECT_SOURCE_DIR}/THREADPOOL)
target_link_libraries(socket INTERFACE threadpool)

install(TARGETS socket EXPORT mySocketTargets DESTINATION lib)
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/socket.h DESTINATION ${CMAKE_INSTALL_PREFIX}/include)
