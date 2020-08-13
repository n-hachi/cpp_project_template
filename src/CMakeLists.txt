# Optionally glob, ut only for CMake 3.12 or later:
set(
    HEADER_LIST
    "${CMAKE_SOURCE_DIR}/include/mylib/mylib.hpp"
    )

add_library(
    mylib
    STATIC
    mylib.cpp
    ${HEADER_LIST}
    )

target_include_directories(
    mylib
    PUBLIC ${CMAKE_SOURCE_DIR}/include
    )

target_compile_features(
    mylib
    PRIVATE cxx_std_11
    )

target_compile_options(
    mylib
    PRIVATE -Wall -Wextra -O2
    )
