#--------------------------------------------------------------------
# fmt
#--------------------------------------------------------------------

if(NOT FMT_ROOT)

#https://github.com/fmtlib/fmt/releases/download/9.0.0/fmt-9.0.0.zip
set(FMT_ROOT ${SDK_ROOT}/fmt-9.0.0)
add_subdirectory(${FMT_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/fmt )
#add_subdirectory(${FMT_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/fmt EXCLUDE_FROM_ALL)

#--------------------------------------------------------------------
# fmt 需要设置static
#--------------------------------------------------------------------

#if (MSVC AND NOT USE_MSVC_RUNTIME_LIBRARY_DLL)
#    set_property(TARGET fmt PROPERTY MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
#endif ()

endif()