# Find libSIFT
# Once done, this will define
#
#  SIFT_FOUND - system has libsift
#  SIFT_INCLUDE_DIRS - the libsift include directories
#  SIFT_LIBRARIES - link these to use libsift


# Include dir
find_path(SIFT_INCLUDE_DIR
 sift.h
 PATHS ext/sift/include
)

# Finally the library itself
find_library(SIFT_LIBRARY
  PATHS ext/sift/lib
  NAMES feat
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(SIFT DEFAULT_MSG SIFT_LIBRARY SIFT_INCLUDE_DIR)


