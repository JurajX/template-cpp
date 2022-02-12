set(
    HDRS
    ${CMAKE_SOURCE_DIR}/include/my_lib/my_lib.hpp
)

add_library(
    my_lib SHARED
    my_lib.cpp
    ${HDRS}
)
add_compile_options(my_lib)

set_target_properties(
    my_lib PROPERTIES
    CXX_STANDARD 20
    CXX_EXTENSIONS OFF
)

include(fmt)
target_link_libraries(
    my_lib
    PRIVATE fmt::fmt
)

target_include_directories(
    my_lib PUBLIC ${PROJECT_SOURCE_DIR}/include
)
