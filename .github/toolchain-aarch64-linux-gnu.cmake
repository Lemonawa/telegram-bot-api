set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)

set(CMAKE_AR aarch64-linux-gnu-gcc-ar)
set(CMAKE_RANLIB aarch64-linux-gnu-gcc-ranlib)

set(CMAKE_FIND_ROOT_PATH /usr/aarch64-linux-gnu /usr/lib/aarch64-linux-gnu)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Set CMAKE_SYSROOT for cross-compilation
if(EXISTS /usr/aarch64-linux-gnu)
  set(CMAKE_SYSROOT /usr/aarch64-linux-gnu)
endif()

# Set library search paths
set(CMAKE_LIBRARY_PATH /usr/aarch64-linux-gnu/lib /usr/lib/aarch64-linux-gnu)
set(CMAKE_INCLUDE_PATH /usr/aarch64-linux-gnu/include)

