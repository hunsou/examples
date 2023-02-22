#--------------------------------------------------------------------
# GOOGLETEST
#--------------------------------------------------------------------

if(NOT GOOGLETEST_ROOT)

#https://github.com/google/googletest/archive/refs/tags/release-1.12.1.zip
set(GOOGLETEST_ROOT "${SDK_ROOT}/googletest-release-1.12.1")
#add_subdirectory(${GOOGLETEST_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/googletest)

endif()