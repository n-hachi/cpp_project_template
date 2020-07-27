add_library(
    sample
    STATIC
    lib.cpp
    )

target_include_directories(
    sample
    PUBLIC ${CMAKE_SOURCE_DIR}/include
    )

target_compile_features(
    sample
    PRIVATE cxx_std_11
    )

target_compile_options(
    sample
    PRIVATE -Wall -Wextra -O2
    )
