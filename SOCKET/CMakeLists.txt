add_library(socket socket.c)

target_include_directories(socket INTERFACE ".")
target_link_libraries(socket INTERFACE pthread)

install(TARGETS socket DESTINATION lib)