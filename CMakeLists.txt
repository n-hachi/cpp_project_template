cmake_minimum_required(VERSION 3.1...3.18)

# TODO
# Edit following project-name
project(
    cpp_template
    VERSION 1.0
    DESCRIPTION "Sample cpp project"
    LANGUAGES CXX
    )

# Only do following if this is the main project
if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)

    # Ensure -std=c++xx instead of -std=g++xx
    set(CMAKE_CXX_EXTENSIONS OFF)

    # Testing only available if this is the main app
    include(CTest)

    # The Executable code
    add_subdirectory(app)

endif()

# Library code
add_subdirectory(src)
