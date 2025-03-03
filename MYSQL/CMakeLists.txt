set(CMAKE_BUILD_TYPE Debug)
add_library(mysql mysql.c)

target_include_directories(mysql INTERFACE ".")


if(DEFINED x86)
    get_filename_component(LIBREALPATH ${PROJECT_SOURCE_DIR}/tools/mysql/lib/libmysqlclient.a ABSOLUTE)
else(DEFINED aarch64)
    get_filename_component(LIBREALPATH ${PROJECT_SOURCE_DIR}/tools/arm/mysql/lib/libmysqlclient.a ABSOLUTE)
endif()

target_link_libraries(mysql INTERFACE ${LIBREALPATH} dl pthread)
# message( STATUS "this is message ${LIBREALPATH}\n\n\n")
install(TARGETS mysql DESTINATION lib)
