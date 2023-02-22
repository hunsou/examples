#--------------------------------------------------------------------
# SFML
#--------------------------------------------------------------------

if(NOT SFML_ROOT)

#https://www.sfml-dev.org/files/SFML-2.5.1-sources.zip
set(SFML_ROOT ${SDK_ROOT}/SFML-2.5.1)
add_subdirectory(${SFML_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/SFML )
#add_subdirectory(${SFML_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/SFML EXCLUDE_FROM_ALL)

#if (SFML_COMPILER_MSVC AND SFML_USE_STATIC_STD_LIBS)
#    set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
#endif ()

endif()