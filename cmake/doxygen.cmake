find_package(
    Doxygen REQUIRED
    COMPONENTS dot
)

if(MAKE_DOCS)
    set(DOXYGEN_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/docs)
    set(DOXYGEN_NUM_PROC_THREADS 0)

    set(DOXYGEN_EXTRACT_ALL YES)
    set(DOXYGEN_CALL_GRAPH YES)
    set(DOXYGEN_CALLER_GRAPH YES)
    set(DOXYGEN_HTML_DYNAMIC_SECTIONS YES)

    set(DOXYGEN_INTERACTIVE_SVG YES)
    set(DOXYGEN_DOT_TRANSPARENT YES)
    set(DOXYGEN_DOT_IMAGE_FORMAT svg)
    # set(DOXYGEN_UML_LOOK YES)           # uncomment to have uml style inheritance and collaboration diagrams

    set(DOXYGEN_DISABLE_INDEX YES)
    set(DOXYGEN_GENERATE_TREEVIEW YES)
    set(DOXYGEN_FULL_SIDEBAR NO)

    doxygen_add_docs(
        doxygen-docs
        include src examples tests
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        COMMENT "API documentation with Doxygen."
    )
endif(MAKE_DOCS)
