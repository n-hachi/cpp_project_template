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
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Library code
add_subdirectory(src)

# Only do following if this is the main project
if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)

    # The Executable code
    add_subdirectory(app)

endif()
