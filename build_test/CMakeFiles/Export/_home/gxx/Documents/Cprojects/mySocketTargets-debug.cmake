#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "log" for configuration "Debug"
set_property(TARGET log APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(log PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblog.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS log )
list(APPEND _IMPORT_CHECK_FILES_FOR_log "${_IMPORT_PREFIX}/lib/liblog.a" )

# Import target "clog" for configuration "Debug"
set_property(TARGET clog APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(clog PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libclog.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS clog )
list(APPEND _IMPORT_CHECK_FILES_FOR_clog "${_IMPORT_PREFIX}/lib/libclog.a" )

# Import target "socket" for configuration "Debug"
set_property(TARGET socket APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(socket PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsocket.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS socket )
list(APPEND _IMPORT_CHECK_FILES_FOR_socket "${_IMPORT_PREFIX}/lib/libsocket.a" )

# Import target "threadpool" for configuration "Debug"
set_property(TARGET threadpool APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(threadpool PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libthreadpool.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS threadpool )
list(APPEND _IMPORT_CHECK_FILES_FOR_threadpool "${_IMPORT_PREFIX}/lib/libthreadpool.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
