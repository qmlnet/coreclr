# CMake system name must be something like "Linux".
# This is important for cross-compiling.

set( CMAKE_SYSTEM_NAME Linux )
set( CMAKE_SYSTEM_PROCESSOR x86_64 )
set( CMAKE_C_COMPILER x86_64-poky-linux-gcc )
set( CMAKE_CXX_COMPILER x86_64-poky-linux-g++ )
set( CMAKE_ASM_COMPILER x86_64-poky-linux-gcc )
set( CMAKE_AR x86_64-poky-linux-ar CACHE FILEPATH "Archiver" )
set( CMAKE_C_FLAGS " -m64 -march=corei7 -mtune=corei7 -mfpmath=sse -msse4.2  --sysroot=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot  -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0=/usr/src/debug/coreclr/2.1.2-r0 -fdebug-prefix-map=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot= -fdebug-prefix-map=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot-native=   -m64 -march=corei7 -mtune=corei7 -mfpmath=sse -msse4.2  --sysroot=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot" CACHE STRING "CFLAGS" )
set( CMAKE_CXX_FLAGS " -m64 -march=corei7 -mtune=corei7 -mfpmath=sse -msse4.2  --sysroot=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot  -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0=/usr/src/debug/coreclr/2.1.2-r0 -fdebug-prefix-map=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot= -fdebug-prefix-map=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot-native=  -fvisibility-inlines-hidden  -m64 -march=corei7 -mtune=corei7 -mfpmath=sse -msse4.2  --sysroot=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot" CACHE STRING "CXXFLAGS" )
set( CMAKE_ASM_FLAGS " -m64 -march=corei7 -mtune=corei7 -mfpmath=sse -msse4.2  --sysroot=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot  -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0=/usr/src/debug/coreclr/2.1.2-r0 -fdebug-prefix-map=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot= -fdebug-prefix-map=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot-native=   -m64 -march=corei7 -mtune=corei7 -mfpmath=sse -msse4.2  --sysroot=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot" CACHE STRING "ASM FLAGS" )
set( CMAKE_C_FLAGS_RELEASE "-DNDEBUG" CACHE STRING "Additional CFLAGS for release" )
set( CMAKE_CXX_FLAGS_RELEASE "-DNDEBUG" CACHE STRING "Additional CXXFLAGS for release" )
set( CMAKE_ASM_FLAGS_RELEASE "-DNDEBUG" CACHE STRING "Additional ASM FLAGS for release" )
set( CMAKE_C_LINK_FLAGS " -m64 -march=corei7 -mtune=corei7 -mfpmath=sse -msse4.2  --sysroot=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed" CACHE STRING "LDFLAGS" )
set( CMAKE_CXX_LINK_FLAGS " -m64 -march=corei7 -mtune=corei7 -mfpmath=sse -msse4.2  --sysroot=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot  -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0=/usr/src/debug/coreclr/2.1.2-r0 -fdebug-prefix-map=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot= -fdebug-prefix-map=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot-native=  -fvisibility-inlines-hidden  -m64 -march=corei7 -mtune=corei7 -mfpmath=sse -msse4.2  --sysroot=/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed" CACHE STRING "LDFLAGS" )

# only search in the paths provided so cmake doesnt pick
# up libraries and tools from the native build machine
set( CMAKE_FIND_ROOT_PATH /home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot /home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot-native    )
set( CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH )
set( CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY )

# Use qt.conf settings
set( ENV{QT_CONF_PATH} /home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/qt.conf )

# We need to set the rpath to the correct directory as cmake does not provide any
# directory as rpath by default
set( CMAKE_INSTALL_RPATH  )

# Use native cmake modules
list(APPEND CMAKE_MODULE_PATH "/home/pknopf/git/x3/abrarecipes/build/tmp/work/corei7-64-poky-linux/coreclr/2.1.2-r0/recipe-sysroot/usr/share/cmake/Modules/")

# add for non /usr/lib libdir, e.g. /usr/lib64
set( CMAKE_LIBRARY_PATH /usr/lib /lib)

