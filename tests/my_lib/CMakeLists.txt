add_exe(
    TEST
    NAME test_my_lib
    LINK_LIBRARIES my_lib fmt::fmt
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED
    CXX_EXTENSIONS_OFF
)