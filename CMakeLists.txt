cmake_minimum_required(VERSION 3.10)

project(examples)

#--------------------------------------------------------------------
# 系统变量初始化
#--------------------------------------------------------------------
# 支持的Configuration
message("Generated with config types: ${CMAKE_CONFIGURATION_TYPES}")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin) #可执行文件的输出目录
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib) #指定动态库或者静态库的输出目录
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib) #

#设置Product生成目录
#SET(PRODUCT_EXECUTABLE_DIR ${CMAKE_SOURCE_DIR}../../../../${PROJECT_NAME}-build
SET(PRODUCT_EXECUTABLE_DIR ${CMAKE_BINARY_DIR}../../build
        ${PRODUCT_EXECUTABLE_DIR})
message(STATUS "PRODUCT_EXECUTABLE_DIR: " ${PRODUCT_EXECUTABLE_DIR})

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

#--------------------------------------------------------------------
# FUNCTION
#--------------------------------------------------------------------
include(function_copy_output_file)
include(function_set_static_msvc_runtime)
include(function_set_mainCRTStartup)
#use_static_mscv_runtime_global() 应该只针对当前工程有效

#--------------------------------------------------------------------
# 设置prefix(前缀)suffix(后缀)
#--------------------------------------------------------------------

if (WIN32)
    if (CMAKE_SIZEOF_VOID_P EQUAL 8)
        set(_output_suffix "64")
    else ()
        set(_output_suffix "")
    endif ()
else ()
    set(_output_suffix "")
endif ()

set(_output_suffix ${_output_suffix}$<$<CONFIG:Debug>:d>)

#--------------------------------------------------------------------
# 添加子目录
#--------------------------------------------------------------------

add_subdirectory("examples")
#add_subdirectory(src)