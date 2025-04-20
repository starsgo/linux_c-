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
