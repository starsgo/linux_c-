add_library(http http.cpp)

# inport
target_include_directories(http PRIVATE ${PROJECT_SOURCE_DIR}/SOCKET)
# export
target_include_directories(http INTERFACE ".")
# dependency
target_link_libraries(http INTERFACE socket)

install(TARGETS http DESTINATION lib)