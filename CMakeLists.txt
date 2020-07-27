cmake_minimum_required(VERSION 3.1...3.18)

# TODO
# Edit following project-name
project(
    cpp_template
    VERSION 1.0
    DESCRIPTION "Sample cpp project"
    LANGUAGES CXX
    )

# TODO
# Modify following sentence according to your project requirement
set(CMAKE_CXX_FLAGS "-std=c++11 -Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g3 -O0 -pg")
set(CMAKE_CXX_FLAGS_RELEASE "-O2 -O0 -march=native")

# The Executable code
add_subdirectory(app)

# Library code
add_subdirectory(src)
