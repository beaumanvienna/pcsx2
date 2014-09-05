# Try to find X11
# Once done, this will define
#
# X11_FOUND - system has X11
# X11_INCLUDE_DIR - the X11 include directories
# X11_LIBRARIES - link these to use X11

#if(X11_INCLUDE_DIR AND X11_LIBRARIES)
#    set(X11_FIND_QUIETLY TRUE)
#endif(X11_INCLUDE_DIR AND X11_LIBRARIES)

# include dir
#find_path(X11_INCLUDE_DIR X11.h)

# finally the library itself
find_library(LIBX11 NAMES X11)
set(X11_LIBRARIES ${LIBX11})

# handle the QUIETLY and REQUIRED arguments and set X11_FOUND to TRUE if
# all listed variables are TRUE
#include(FindPackageHandleStandardArgs)
#find_package_handle_standard_args(X11 DEFAULT_MSG X11_LIBRARIES X11_INCLUDE_DIR)

#mark_as_advanced(X11_LIBRARIES X11_INCLUDE_DIR)

