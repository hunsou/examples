#--------------------------------------------------------------------
# RPCLIB
#--------------------------------------------------------------------

if(NOT RPCLIB_ROOT)

#https://github.com/rpclib/rpclib/archive/refs/tags/v2.3.0.zip
#set(RPCLIB_ROOT ${SDK_ROOT}/rpc/rpclib)
set(RPCLIB_ROOT ${SDK_ROOT}/rpclib-2.3.0)
add_subdirectory(${RPCLIB_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/rpclib )
#add_subdirectory(${RPCLIB_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/rpclib EXCLUDE_FROM_ALL)
#--------------------------------------------------------------------
# rpclib 需要设置static
#--------------------------------------------------------------------

#if (RPCLIB_MSVC_STATIC_RUNTIME)
#    set_property(TARGET ${PROJECT_NAME} PROPERTY MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
#endif ()

endif()