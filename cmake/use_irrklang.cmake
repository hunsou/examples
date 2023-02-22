#--------------------------------------------------------------------
# IRRKLANG
#--------------------------------------------------------------------

if(NOT IRRKLANG_ROOT)

#https://www.ambiera.com/irrklang/downloads.html

if (WIN32)
    if (CMAKE_SIZEOF_VOID_P EQUAL 8)
        set(IRRKLANG_ROOT ${SDK_ROOT}/irrKlang-64bit-1.6.0)
    else ()
        set(IRRKLANG_ROOT ${SDK_ROOT}/irrKlang-1.6.0)
    endif ()
endif ()

endif()