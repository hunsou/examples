#--------------------------------------------------------------------
# BOOST
#--------------------------------------------------------------------

if(NOT BOOST_ROOT)

if (MSVC)
    set(BOOST_ROOT "${SDK_ROOT}/boost/VS2022")
    set(Boost_USE_STATIC_RUNTIME ON)
else ()
    set(BOOST_ROOT "${SDK_ROOT}/boost/mgw8")
    set(Boost_COMPILER "mgw8")
    set(Boost_USE_STATIC_RUNTIME OFF)
endif ()
set(Boost_INCLUDE_DIRS "${BOOST_ROOT}/include/boost-1_79")
set(Boost_LIBRARY_DIRS "${BOOST_ROOT}/lib")
set(Boost_USE_STATIC_LIBS ON)
#set(Boost_USE_STATIC_RUNTIME ON)
#set(Boost_LIB_PREFIX "lib")
#set(Boost_ARCHITECTURE "-x64")
#set(Boost_COMPILER "mgw8")
#set(Boost_COMPILER "vc143")

endif()