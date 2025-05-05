#   KV
add_library(kv kv.cpp)
target_include_directories(kv INTERFACE ".")
install(TARGETS kv DESTINATION lib)

#   MEMPOOL
add_library(mempool mempool.c)
target_include_directories(mempool INTERFACE ".")
install(TARGETS mempool DESTINATION lib)

#  THREADPOOL
add_library(threadpool threadpool.c)
#export
target_include_directories(threadpool INTERFACE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}> $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>)
#import pthread...
target_link_libraries(threadpool PRIVATE pthread)
install(TARGETS threadpool EXPORT mySocketTargets DESTINATION lib)
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/threadpool.h DESTINATION ${CMAKE_INSTALL_PREFIX}/include)

#  CLOG
add_library(log log.c)
target_include_directories(log INTERFACE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}> $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>)
install(TARGETS log EXPORT mySocketTargets DESTINATION lib)
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/log.h DESTINATION ${CMAKE_INSTALL_PREFIX}/include)
#------------------CLOG---------------------
add_library(clog CLog.cpp)
target_include_directories(clog INTERFACE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}> $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>)
# target_include_directories(clog PRIVATE ".")
install(TARGETS clog EXPORT mySocketTargets DESTINATION lib)
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/CLog.h DESTINATION ${CMAKE_INSTALL_PREFIX}/include)

