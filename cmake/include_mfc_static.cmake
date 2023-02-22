if (MSVC AND USE_MSVC_RUNTIME_LIBRARY_DLL)
    set(CMAKE_MFC_FLAG 2)
    add_definitions(-D_AFXDLL) #Please use the /MD switch for _AFXDLL builds
else ()
    set(CMAKE_MFC_FLAG 1)
endif ()