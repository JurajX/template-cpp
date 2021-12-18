include(gtest)

function(add_gtest)
    set(options CXX_EXTENSIONS)
    set(oneValueArgs NAME CXX_STANDARD)
    set(multiValueArgs SRCS LINK_LIBRARIES)
    cmake_parse_arguments(TEST "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    add_executable(
        ${TEST_NAME}
        ${TEST_NAME}.cpp
        ${TEST_SRCS}
    )
    target_link_libraries(
        ${TEST_NAME}
        PRIVATE gtest
        PRIVATE gmock
        PRIVATE gtest_main
        PUBLIC ${TEST_LINK_LIBRARIES}
    )

    if(${TEST_CXX_STANDARD})
        set_target_properties(
            ${TEST_NAME} PROPERTIES
            CXX_STANDARD ${TEST_CXX_STANDARD}
            CXX_EXTENSIONS ${TEST_CXX_EXTENSIONS}
        )
    endif(${TEST_CXX_STANDARD})

    add_test(
        NAME ${TEST_NAME}
        COMMAND ${TEST_NAME} --gtest_output=xml:${CMAKE_BINARY_DIR}/Testing/${TEST_NAME}_report.xml
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    )
endfunction(add_gtest)
