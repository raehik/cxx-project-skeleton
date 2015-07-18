# name of target OS
set(CMAKE_SYSTEM_NAME "Windows")

# compiler prefix
set(compiler_prefix "x86_64-w64-mingw32")

# root path for find_* functions
set(CMAKE_FIND_ROOT_PATH "${compiler_prefix}")

## set compilers
# C compiler
find_program(CMAKE_C_COMPILER "${compiler_prefix}-gcc")
# C++ compiler
find_program(CMAKE_CXX_COMPILER "${compiler_prefix}-g++")
# resource compiler (?)
find_program(CMAKE_RC_COMPILER "${compiler_prefix}-windres")

# search for programs in host environment
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# search for libraries and headers in target environment
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
