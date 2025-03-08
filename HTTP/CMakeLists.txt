add_library(http http.cpp)


# export
target_include_directories(http INTERFACE ".")

# import socket
target_include_directories(http PRIVATE ${PROJECT_SOURCE_DIR}/SOCKET)
target_link_libraries(http INTERFACE socket)
# import log
target_include_directories(http PRIVATE ${PROJECT_SOURCE_DIR}/LOG)
target_link_libraries(http INTERFACE log)

install(TARGETS http DESTINATION lib)