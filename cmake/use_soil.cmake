#--------------------------------------------------------------------
# SOIL
#--------------------------------------------------------------------

if(NOT SOIL_ROOT)

#https://github.com/paralin/soil
#set(SOIL_ROOT "${SDK_ROOT}/Simple OpenGL Image Library")
set(SOIL_ROOT "${SDK_ROOT}/soil-master")
add_subdirectory(${SOIL_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/soil )
#add_subdirectory(${SOIL_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/soil EXCLUDE_FROM_ALL)

endif()

function(function_use_soil argv1)
    if(NOT SOIL_ROOT)
        message(FATAL_ERROR "cannot find SOIL" )
    endif()

    target_include_directories(
            ${argv1}
            PRIVATE
            ${SOIL_ROOT}/inc/SOIL
    )
    target_link_directories(
            ${argv1}
            PRIVATE
            ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}
    )

    target_link_libraries(
            ${argv1}
            soil
    )

    add_dependencies(${argv1} soil)
endfunction()