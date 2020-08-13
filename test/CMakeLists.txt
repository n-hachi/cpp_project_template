# Testing library
FetchContent_Declare(
    catch
    GIT_REPOSITORY https://github.com/catchorg/Catch2.git
    GIT_TAG v2.13.0
    )

FetchContent_MakeAvailable(catch)
# Adds Catch2::Catch2

# Tests need to be added as executables first
add_executable(
    testlib
    test_mylib.cpp
    )

# Using c++11 in the test
target_compile_features(
    testlib
    PRIVATE cxx_std_11
    )

# Should be linked to the main library, as well as the Catch2 testing library
target_link_libraries(
    testlib
    PRIVATE mylib
    PRIVATE Catch2::Catch2
    )

# If you register test, then ctest and make test will run it.
add_test(
    NAME testlibtest
    COMMAND testlib
    )
