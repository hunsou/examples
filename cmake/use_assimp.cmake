#--------------------------------------------------------------------
# ASSIMP
#--------------------------------------------------------------------

if(NOT ASSIMP_ROOT)

#https://github.com/assimp/assimp/archive/refs/tags/v5.2.4.zip
set(ASSIMP_ROOT "${SDK_ROOT}/assimp-5.2.4")
add_subdirectory(${ASSIMP_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/assimp )
#add_subdirectory(${ASSIMP_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/assimp EXCLUDE_FROM_ALL)

endif()