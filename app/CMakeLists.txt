add_executable(sample.exe main.cpp)

target_link_libraries(
    sample.exe
    PRIVATE sample
    )
