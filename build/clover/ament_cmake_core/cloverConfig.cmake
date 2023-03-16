# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_clover_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED clover_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(clover_FOUND FALSE)
  elseif(NOT clover_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(clover_FOUND FALSE)
  endif()
  return()
endif()
set(_clover_CONFIG_INCLUDED TRUE)

# output package information
if(NOT clover_FIND_QUIETLY)
  message(STATUS "Found clover: 0.0.0 (${clover_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'clover' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${clover_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(clover_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${clover_DIR}/${_extra}")
endforeach()
