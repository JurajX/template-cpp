cmake_minimum_required(VERSION 3.22)

set(CMAKE_C_COMPILER "gcc-11")
set(CMAKE_CXX_COMPILER "g++-11")

project(
    ProjectTemplateCpp VERSION 0.0.0
    DESCRIPTION "This is a template for c++ projects."
    LANGUAGES C CXX
)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake)
include(BaseRepo)
initiate(EXPORT_COMPILE_COMMANDS)

add_subdirectory(src)
add_subdirectory(examples)
add_subdirectory(tests)
