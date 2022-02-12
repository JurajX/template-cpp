include (compile_options)

function(add_compile_options TARGET)
    get_property(all_compile_options GLOBAL PROPERTY ALL_COMPILE_OPTIONS)

    target_compile_options(${TARGET} PRIVATE ${all_compile_options})
    target_link_options(${TARGET} PRIVATE ${all_compile_options})
endfunction(add_compile_options)
