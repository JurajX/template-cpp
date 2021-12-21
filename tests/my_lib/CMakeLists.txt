include(add_gtest)

add_gtest(
    NAME test_my_lib
    LINK_LIBRARIES my_lib fmt::fmt
    CXX_STANDARD 20
    CXX_EXTENSIONS OFF
)