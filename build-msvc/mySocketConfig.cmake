
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was Config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

####################################################################################
include ( "${CMAKE_CURRENT_LIST_DIR}/mySocketTargets.cmake" )
message(STATUS cmake_current_list_dir:${CMAKE_CURRENT_LIST_DIR})
list(APPEND mySocket_INCLUDE_DIRS /home/gxx/Documents/Cprojects/output/x86/include )#配置头文件目录
# list(APPEND mySocket_INCLUDE_DIRS ${CMAKE_INSTALL_PREFIX}/include )#配置头文件目录

# list(APPEND mySocket_LIBRARIES_DIRS /home/gxx/Documents/Cprojects/output/x86/lib)#配置库文件目录
# list(APPEND mySocket_INCLUDE_DIRS ${CMAKE_INSTALL_PREFIX}/include )#配置头文件目录
