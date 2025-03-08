add_library(mysql mysql.c)

target_include_directories(mysql INTERFACE ".")


if(DEFINED x86)
    get_filename_component(LIBREALPATH ${PROJECT_SOURCE_DIR}/tools/mysql/lib/libmysqlclient.a ABSOLUTE)
else(DEFINED aarch64)
    get_filename_component(LIBREALPATH ${PROJECT_SOURCE_DIR}/tools/arm/mysql/lib/libmysqlclient.a ABSOLUTE)
endif()

#import libmysql.a
target_link_libraries(mysql INTERFACE ${LIBREALPATH})

#import pthread dl
target_link_libraries(mysql INTERFACE dl pthread)

install(TARGETS mysql DESTINATION lib)
