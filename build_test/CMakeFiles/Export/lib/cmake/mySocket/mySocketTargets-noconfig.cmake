#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "log" for configuration ""
set_property(TARGET log APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(log PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/liblog.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS log )
list(APPEND _IMPORT_CHECK_FILES_FOR_log "${_IMPORT_PREFIX}/lib/liblog.a" )

# Import target "clog" for configuration ""
set_property(TARGET clog APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(clog PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libclog.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS clog )
list(APPEND _IMPORT_CHECK_FILES_FOR_clog "${_IMPORT_PREFIX}/lib/libclog.a" )

# Import target "socket" for configuration ""
set_property(TARGET socket APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(socket PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libsocket.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS socket )
list(APPEND _IMPORT_CHECK_FILES_FOR_socket "${_IMPORT_PREFIX}/lib/libsocket.a" )

# Import target "threadpool" for configuration ""
set_property(TARGET threadpool APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(threadpool PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libthreadpool.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS threadpool )
list(APPEND _IMPORT_CHECK_FILES_FOR_threadpool "${_IMPORT_PREFIX}/lib/libthreadpool.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
