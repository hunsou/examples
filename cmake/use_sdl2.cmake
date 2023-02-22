#--------------------------------------------------------------------
# SDL2
#--------------------------------------------------------------------

if(NOT SDL2_ROOT)

#http://www.libsdl.org/release/SDL2-2.0.22.zip
set(SDL2_ROOT ${SDK_ROOT}/SDL2-2.0.22)
add_subdirectory(${SDL2_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/SDL2 )
#add_subdirectory(${SDL2_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/SDL2 EXCLUDE_FROM_ALL)

#--------------------------------------------------------------------
# SDL2_Image
#--------------------------------------------------------------------
#https://github.com/libsdl-org/SDL_image/releases/download/release-2.6.1/SDL2_image-2.6.1.zip
set(SDL2_IMAGE_ROOT ${SDK_ROOT}/SDL2_image-2.6.1)
#add_subdirectory(${SDL2_IMAGE_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/SDL2_Image)
#set(SDL2_INCLUDE_DIR ${SDL2_ROOT}/include)
#set(SDL2_LIBRARY ${DEPENDENCIES_RUNTIME_ROOT}/SDL2/lib)
#ExternalProject_Add(SDL2_Image SOURCE_DIR ${SDL2_IMAGE_ROOT}
#        CMAKE_ARGS
#        -DBUILD_SHARED_LIBS:BOOL=OFF
#        -DSDL2_INCLUDE_DIR=${SDL2_ROOT}/include
#        -DSDL2_LIBRARY=${CMAKE_BINARY_DIR}/lib/Debug/SDL2d.lib
#        -DSDL2_MAIN_LIBRARY=${CMAKE_BINARY_DIR}/lib/Debug/SDL2maind.lib
#        -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
#        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE})
#ExternalProject_Get_Property(SDL2_Image INSTALL_DIR)
#set(SDL2_Image ${INSTALL_DIR})

#--------------------------------------------------------------------
# SDL2_Mixer
#--------------------------------------------------------------------
#https://github.com/libsdl-org/SDL_mixer/releases/download/release-2.6.1/SDL2_mixer-2.6.1.zip
set(SDL2_MIXER_ROOT ${SDK_ROOT}/SDL2_mixer-2.6.1)
#add_subdirectory(${SDL2_MIXER_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/SDL2_Mixer)

#--------------------------------------------------------------------
# SDL2_ttf
#--------------------------------------------------------------------
#https://github.com/libsdl-org/SDL_ttf/releases/download/release-2.20.0/SDL2_ttf-2.20.0.zip
set(SDL2_TTF_ROOT ${SDK_ROOT}/SDL2_ttf-2.20.0)
#add_subdirectory(${SDL2_TTF_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/SDL2_ttf)

endif()