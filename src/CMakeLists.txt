add_library(
    mylib
    STATIC
    mylib.cpp
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
