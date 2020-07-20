cmake_minimum_required(VERSION 2.8)

# TODO
# Edit following project-name
project(cpp_template CXX)

# TODO
# Modify following sentence according to your project requirement
set(CMAKE_CXX_FLAGS "-std=c++11 -Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g3 -O0 -pg")
set(CMAKE_CXX_FLAGS_RELEASE "-O2 -O0 -march=native")

# The Executable code
add_subdirectory(app)

