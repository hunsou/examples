#--------------------------------------------------------------------
# GLEW
#--------------------------------------------------------------------

if(NOT GLEW_ROOT)

#https://udomain.dl.sourceforge.net/project/glew/glew/2.2.0/glew-2.2.0.zip
set(GLEW_ROOT ${SDK_ROOT}/glew-2.2.0)
add_subdirectory(${GLEW_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/glew )
#add_subdirectory(${GLEW_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/glew EXCLUDE_FROM_ALL)

endif()

function(function_use_glew argv1)
    if(NOT GLEW_ROOT)
        message(FATAL_ERROR "cannot find GLEW" )
    endif()

    target_include_directories(
            ${argv1}
            PRIVATE
            ${GLEW_ROOT}/include
    )

    if (MSVC AND USE_MSVC_RUNTIME_LIBRARY_DLL)
        target_link_libraries(
                ${argv1}
                glew32$<$<CONFIG:Debug>:d>
        )
        add_dependencies(${argv1} glew)
    elseif (MSVC AND NOT USE_MSVC_RUNTIME_LIBRARY_DLL)
        target_link_libraries(
                ${argv1}
                libglew32$<$<CONFIG:Debug>:d>
        )
        target_compile_definitions(
                ${argv1}
                PRIVATE
                GLEW_STATIC
        )
        add_dependencies(${argv1} glew_s)
    endif ()

endfunction()