add_library(mysql mysql.c)

target_include_directories(mysql INTERFACE ".")
get_filename_component(LIBREALPATH ${PROJECT_SOURCE_DIR}/tools/mysql/lib/libmysqlclient.a ABSOLUTE)
# target_link_libraries(mysql INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/../tools/msyql/lib/libsqlclient.a)
target_link_libraries(mysql INTERFACE ${LIBREALPATH} dl pthread)
message( STATUS "this is message ${LIBREALPATH}\n\n\n")
install(TARGETS mysql DESTINATION lib)
