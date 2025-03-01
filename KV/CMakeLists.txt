add_library(kv kv.cpp)
target_include_directories(kv INTERFACE ".")

install(TARGETS kv DESTINATION lib)