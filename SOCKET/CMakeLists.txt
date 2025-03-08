add_library(socket socket.c)

#export
target_include_directories(socket INTERFACE ".")

#import pthread...
target_link_libraries(socket INTERFACE pthread)

#import log_debug()
target_include_directories(socket PRIVATE ${PROJECT_SOURCE_DIR}/LOG)
target_link_libraries(socket INTERFACE log)

install(TARGETS socket DESTINATION lib)