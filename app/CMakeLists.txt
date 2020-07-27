add_executable(
    sample.exe
    main.cpp
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
