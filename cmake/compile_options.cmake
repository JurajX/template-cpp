set(
    ALL_OPTIONS
    -O3                                 #
    -D_FORTIFY_SOURCE=2                 # run-time buffer overflow detection (needs at least -O1)

    -fcf-protection                     # control flow integrity protection
    -fdata-sections                     #
    -fexceptions                        # recommended for multi-threaded C code, also in combination with C++ code
    -ffunction-sections                 #
    -fstack-clash-protection            # increased reliability of stack overflow detection
    -fstack-protector-strong            # more performant stack protector
    -fvisibility-inlines-hidden         #
    # -fvisibility=hidden                 # symbols in libraries must be explicitly exported to avoid conflicts

    -fsanitize=undefined
    -fsanitize=address,leak

    -fno-asynchronous-unwind-tables     #
    -fno-default-inline                 # no automatic inlining of in-class defined member functions
    -fno-elide-constructors             #
    -fno-ident                          #
    -fno-implicit-inline-templates      #
    -fno-math-errno                     #
    -fno-stack-protector                #
    -fno-strict-aliasing                # fewer compiler assumptions about pointer types
    -fno-unwind-tables                  #

    -pipe                               # avoid writing temporary files

    -Wall                               # all warnings
    -Wcast-align                        # warn for potential performance problem casts
    -Wcast-qual                         #
    -Wconversion                        # warn on type conversions that may lose data
    -Wdouble-promotion                  # warn if float is implicitely promoted to double
    -Wduplicated-cond                   # warn if if-else chain has duplicated conditions
    -Wduplicated-branches               # warn if if-else branches have duplicated code (possible problems with Eigen)
    -Wextra                             # more warnings
    -Wfloat-equal                       #
    -Wformat-nonliteral                 #
    -Wformat-security                   #
    -Wformat=2                          # warn on security issues around functions that format output (ie printf)
    -Winit-self                         #
    -Wlogical-op                        # warn about logical operations being used where bitwise were probably wanted
    -Wmisleading-indentation            # warn if indentation implies blocks where blocks do not exist
    -Wmissing-include-dirs              #
    -Wmultichar                         #
    -Wno-overlength-strings             # may happen in the nodeset compiler when complex values are directly encoded
    -Wno-static-in-inline               #
    -Wno-unused-parameter               #
    -Wnon-virtual-dtor                  # warn if a class with virtual functions has a non-virtual destructor
    -Wnull-dereference                  # warn if a null dereference is detected
    -Wold-style-cast                    # warn for c-style casts
    -Woverloaded-virtual                # warn if you overload (not override) a virtual function
    -Wpedantic                          # warn if non-standard c++ is used
    -Wredundant-decls                   #
    -Wshadow                            # warn the user if a variable declaration shadows one from a parent context
    -Wsign-conversion                   # warn on sign conversions
    -Wstrict-overflow                   #
    -Wswitch                            # warn on missing switch case
    -Wtautological-compare              # warn if comparison always yields true/false or a tautological result
    -Wundef                             #
    -Wuninitialized                     #
    -Wunused                            # warn on anything being unused
    -Wuseless-cast                      # warn if you perform a cast to the same type
)

get_property(all_compile_options GLOBAL PROPERTY ALL_COMPILE_OPTIONS)
set_property(GLOBAL PROPERTY ALL_COMPILE_OPTIONS ${all_compile_options} ${ALL_OPTIONS})

set(
    COVERAGE_OPTIONS
    -g                                  # make debug info
    -O0                                 # no optimisation
    -Wformat=2                          # extra warnings for string formatting functions
    --coverage                          # build for coverage analysis
    -fno-inline
)

get_property(coverage_compile_options GLOBAL PROPERTY COVERAGE_COMPILE_OPTIONS)
set_property(GLOBAL PROPERTY COVERAGE_COMPILE_OPTIONS ${coverage_compile_options} ${COVERAGE_OPTIONS})
