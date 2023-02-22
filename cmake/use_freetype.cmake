#--------------------------------------------------------------------
# FREETYPE
#--------------------------------------------------------------------

if(NOT FREETYPE_ROOT)

#https://freetype.org/download.html
#https://download.savannah.gnu.org/releases/freetype/freetype-2.12.1.tar.gz
#set(FREETYPE_ROOT ${SDK_ROOT}/freetype-windows-binaries-2.12.1)
set(FREETYPE_ROOT ${SDK_ROOT}/freetype-2.12.1)
add_subdirectory(${FREETYPE_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/freetype )
#add_subdirectory(${FREETYPE_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/freetype EXCLUDE_FROM_ALL)

endif()

function(function_use_freetype argv1)
    if(NOT FREETYPE_ROOT)
        message(FATAL_ERROR "cannot find FREETYPE" )
    endif()

    target_include_directories(
            ${argv1}
            PRIVATE
            ${FREETYPE_ROOT}/include
    )

    target_link_libraries(
            ${argv1}
            freetype
    )

    add_dependencies(${argv1} freetype)

endfunction()