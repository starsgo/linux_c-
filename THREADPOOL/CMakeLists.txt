add_library(threadpool threadpool.c)

#export
target_include_directories(threadpool INTERFACE ".")

#import pthread...
target_link_libraries(threadpool INTERFACE pthread)

install(TARGETS threadpool DESTINATION lib)