# Try to find XRANDR
# Once done, this will define
#
# XRANDR_FOUND - system has XRANDR
# XRANDR_INCLUDE_DIR - the XRANDR include directories
# XRANDR_LIBRARIES - link these to use XRANDR

if(XRANDR_INCLUDE_DIR AND XRANDR_LIBRARIES)
    set(XRANDR_FIND_QUIETLY TRUE)
endif(XRANDR_INCLUDE_DIR AND XRANDR_LIBRARIES)

# include dir
find_path(XRANDR_INCLUDE_DIR Xrandr.h)

# finally the library itself
find_library(LIBXRANDR NAMES Xrandr)
set(XRANDR_LIBRARIES ${LIBXRANDR})

# handle the QUIETLY and REQUIRED arguments and set XRANDR_FOUND to TRUE if
# all listed variables are TRUE
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(XRANDR DEFAULT_MSG XRANDR_LIBRARIES XRANDR_INCLUDE_DIR)

mark_as_advanced(XRANDR_LIBRARIES XRANDR_INCLUDE_DIR)

