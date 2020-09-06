# Commandline parser library
FetchContent_Declare(
    clilib
    GIT_REPOSITORY https://github.com/CLIUtils/CLI11.git
    GIT_TAG v1.9.0
    )
FetchContent_MakeAvailable(clilib)

add_executable(
    sample.exe
    main.cpp
    )

target_include_directories(
    sample.exe
    PUBLIC ${clilib_SOURCE_DIR}/include
    )

target_link_libraries(
    sample.exe
    PRIVATE mylib
    )

target_compile_features(
    sample.exe
    PRIVATE cxx_std_11
    )

target_compile_options(
    sample.exe
    PRIVATE -Wall -Wextra -O2
    )

# For testing
find_program(BASH_PROGRAM bash)
if(BASH_PROGRAM)
    add_test(
        NAME exectest
        COMMAND ${BASH_PROGRAM} ${CMAKE_CURRENT_SOURCE_DIR}/exectest.sh ${CMAKE_CURRENT_BINARY_DIR}/sample.exe
        )
endif(BASH_PROGRAM)
