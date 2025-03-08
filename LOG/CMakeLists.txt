add_library(log log.c)

target_include_directories(log INTERFACE ".")

install(TARGETS log DESTINATION lib)


#------------------CLOG---------------------
add_library(clog CLog.cpp)

target_include_directories(clog INTERFACE ".")
target_include_directories(clog PRIVATE ".")
install(TARGETS clog DESTINATION lib)