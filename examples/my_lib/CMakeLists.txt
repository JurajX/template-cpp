include(add_exe)

add_exe(
    NAME example_my_lib
    LINK_LIBRARIES my_lib
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED
    CXX_EXTENSIONS_OFF
)
