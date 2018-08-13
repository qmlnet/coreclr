set( CMAKE_SYSTEM_NAME Linux )
set(CROSS_ROOTFS $ENV{ROOTFS_DIR})
set(TARGET_ARCH_NAME $ENV{TARGET_BUILD_ARCH})

set(CMAKE_SYSTEM_PROCESSOR x86_64)

include_directories(SYSTEM ${CROSS_ROOTFS}/usr/include)
add_compile_options(--sysroot=${CROSS_ROOTFS})
#include_directories(SYSTEM ${CROSS_ROOTFS}/usr/include/c++/7.3.0)
#include_directories(SYSTEM ${CROSS_ROOTFS}/usr/include/c++/x86_64-poky-linux)

# only search in the paths provided so cmake doesnt pick
# up libraries and tools from the native build machine
set( CMAKE_FIND_ROOT_PATH /home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot /home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot-native    )
set( CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH )
set( CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY )

# We need to set the rpath to the correct directory as cmake does not provide any
# directory as rpath by default
set( CMAKE_INSTALL_RPATH  )

# Use native cmake modules
list(APPEND CMAKE_MODULE_PATH "/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot/usr/share/cmake/Modules/")

# add for non /usr/lib libdir, e.g. /usr/lib64
set( CMAKE_LIBRARY_PATH /usr/lib /lib)

