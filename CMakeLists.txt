cmake_minimum_required(VERSION 3.28)

project(main CXX C)

include(CMakePackageConfigHelpers)
set(x86 "true")
# set(aarch64b "true")

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_VERBOSE_MAKEFILE ON)

if(DEFINED x86)
    set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/output/x86)
	message(STATUS install:${CMAKE_INSTALL_PREFIX})   
else(DEFINED aarch64)
    set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/output/aarch64)
	message(STATUS install:${CMAKE_INSTALL_PREFIX})   
endif()
message(STATUS "message unwork") 
add_subdirectory(src)

set(Qt6_DIR D:/software/Qt6/6.9.0/mingw_64/lib/cmake/Qt6)
find_package(Qt6 COMPONENTS Widgets Network Core REQUIRED)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)
#add_subdirectory(qt)

if(DEFINED x86)

endif()

#------------main------------------
add_executable(main
        main.cpp
)
add_library(widget
        qt/widget.cpp
        qt/widget.h
        qt/widget.ui
)
target_link_libraries(widget Qt6::Widgets Qt6::Core Qt6::Gui Qt6::Network)

target_link_libraries(main kv)
target_link_libraries(main log)
target_link_libraries(main clog)
target_link_libraries(main threadpool)
target_link_libraries(main mempool)
target_link_libraries(main widget)

install(TARGETS main DESTINATION bin)


#install(EXPORT mySocketTargets
#  FILE mySocketTargets.cmake
#  DESTINATION lib/cmake/mySocket)
#install(EXPORT mySocketTargets
#  FILE mySocketTargets.cmake
#  DESTINATION ${CMAKE_CURRENT_SOURCE_DIR})
#
#configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
#  "${CMAKE_CURRENT_BINARY_DIR}/mySocketConfig.cmake"
#  INSTALL_DESTINATION "lib/cmake/mySocket"
#  NO_SET_AND_CHECK_MACRO
#  NO_CHECK_REQUIRED_COMPONENTS_MACRO
#  )
#write_basic_package_version_file(
#  "${CMAKE_CURRENT_BINARY_DIR}/mySocketConfigVersion.cmake"
#  VERSION "${Tutorial_VERSION_MAJOR}.${Tutorial_VERSION_MINOR}"
#  COMPATIBILITY AnyNewerVersion
#)
#install(FILES
#  ${CMAKE_CURRENT_BINARY_DIR}/mySocketConfig.cmake
#  ${CMAKE_CURRENT_BINARY_DIR}/mySocketConfigVersion.cmake
#  DESTINATION lib/cmake/mySocket
#  )

