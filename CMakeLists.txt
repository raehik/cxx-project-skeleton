# see here:
# http://newbiz.github.io/tutorials/2011/01/27/Clean-project-management-with-CMake.html

## Variables set per-project {{{
set(proj_name "C++ project structure")
set(proj_exec "example-project")
set(proj_src_path ${CMAKE_SOURCE_DIR})
set(proj_bin_path ${CMAKE_BINARY_DIR})
set(proj_inc_path "include")
## }}}

# find & add sources & headers respectively
FILE( GLOB_RECURSE proj_sources src/*.cpp )
FILE( GLOB_RECURSE proj_headers inc/${PROJ_NAME}/*.h )

# project name
project(${proj_name})

# include directories, eh
include_directories(${proj_inc_path})

# executable name & classes
add_executable(${proj_exec} ${proj_sources})

# enable testing, eh
#enable_testing()

# add a test or sth.
#add_test("test-name" "project-bin")

# required CMake version (= current version I'm running)
cmake_minimum_required(VERSION 3.2)

message("binary dir: ${CMAKE_BINARY_DIR}")
message("source dir: ${CMAKE_SOURCE_DIR}")
