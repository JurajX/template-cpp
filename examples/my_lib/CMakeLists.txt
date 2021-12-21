add_executable(
    example_my_lib "example_my_lib.cpp"
)

set_target_properties(
    example_my_lib PROPERTIES
    CXX_STANDARD 20
    CXX_EXTENSIONS OFF
)

target_link_libraries(
    example_my_lib PUBLIC my_lib
)
