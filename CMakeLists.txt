cmake_minimum_required(VERSION 3.22)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)

set(CMAKE_CXX_COMPILER "g++-11")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

project(
    ProjectTemplateCpp VERSION 0.0.0
    DESCRIPTION "This is a template for c++ projects."
    LANGUAGES CXX
)

include(add_compile_options)

include(doxygen)

add_subdirectory(src)
add_subdirectory(examples)

include(CTest)
add_subdirectory(tests)
