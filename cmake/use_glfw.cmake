#--------------------------------------------------------------------
# GLFW
#--------------------------------------------------------------------

if (NOT GLFW_ROOT)

#https://github.com/glfw/glfw/releases/download/3.3.8/glfw-3.3.8.zip
set(GLFW_ROOT ${SDK_ROOT}/glfw-3.3.8)

#option(GLFW_BUILD_EXAMPLES "Build the GLFW example programs" OFF)
#option(GLFW_BUILD_TESTS "Build the GLFW test programs" OFF)
#option(GLFW_BUILD_DOCS "Build the GLFW documentation" OFF)
#option(GLFW_INSTALL "Generate installation target" OFF)
#option(GLFW_DOCUMENT_INTERNALS "Include internals in documentation" OFF)

add_subdirectory(${GLFW_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/glfw )
#add_subdirectory(${GLFW_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/glfw EXCLUDE_FROM_ALL)

endif ()

function(function_use_glfw argv1)
    if(NOT GLFW_ROOT)
        message(FATAL_ERROR "cannot find GLFW" )
    endif()

    target_include_directories(
            ${argv1}
            PRIVATE
            ${GLFW_ROOT}/include
    )

    if (MSVC AND USE_MSVC_RUNTIME_LIBRARY_DLL)
        target_link_libraries(
                ${argv1}
                glfw3dll
        )
        add_dependencies(${argv1} glfw)
    elseif (MSVC AND NOT USE_MSVC_RUNTIME_LIBRARY_DLL)
        target_link_libraries(
                ${argv1}
                glfw3
        )
        add_dependencies(${argv1} glfw)
    endif ()

endfunction()