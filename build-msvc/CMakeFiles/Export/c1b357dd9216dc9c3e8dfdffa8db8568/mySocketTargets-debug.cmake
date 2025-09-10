#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "log" for configuration "Debug"
set_property(TARGET log APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(log PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/log.lib"
  )

list(APPEND _cmake_import_check_targets log )
list(APPEND _cmake_import_check_files_for_log "${_IMPORT_PREFIX}/lib/log.lib" )

# Import target "clog" for configuration "Debug"
set_property(TARGET clog APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(clog PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/clog.lib"
  )

list(APPEND _cmake_import_check_targets clog )
list(APPEND _cmake_import_check_files_for_clog "${_IMPORT_PREFIX}/lib/clog.lib" )

# Import target "socket" for configuration "Debug"
set_property(TARGET socket APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(socket PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/socket.lib"
  )

list(APPEND _cmake_import_check_targets socket )
list(APPEND _cmake_import_check_files_for_socket "${_IMPORT_PREFIX}/lib/socket.lib" )

# Import target "threadpool" for configuration "Debug"
set_property(TARGET threadpool APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(threadpool PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/threadpool.lib"
  )

list(APPEND _cmake_import_check_targets threadpool )
list(APPEND _cmake_import_check_files_for_threadpool "${_IMPORT_PREFIX}/lib/threadpool.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
