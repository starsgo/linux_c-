add_library(threadpool threadpool.c)

#export
target_include_directories(threadpool INTERFACE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}> $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>)

#import pthread...
target_link_libraries(threadpool PRIVATE pthread)

install(TARGETS threadpool EXPORT mySocketTargets DESTINATION lib)
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/threadpool.h DESTINATION ${CMAKE_INSTALL_PREFIX}/include)
