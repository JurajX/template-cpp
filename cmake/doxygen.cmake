find_package(Doxygen REQUIRED dot)

if(MAKE_DOCS)
    set(DOXYGEN_CALLER_GRAPH YES)
    set(DOXYGEN_CALL_GRAPH YES)
    set(DOXYGEN_EXTRACT_ALL YES)
    set(DOXYGEN_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/docs)

    doxygen_add_docs(
        doxygen-docs
        include src examples tests
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        COMMENT "API documentation with Doxygen."
    )
endif()