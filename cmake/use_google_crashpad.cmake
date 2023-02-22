#--------------------------------------------------------------------
# GOOGLE CRASHPAD 程序异常捕获
#--------------------------------------------------------------------

#源码
#https://crashpad.chromium.org/
#https://github.com/chromium/crashpad

#编译好的crashpad
#http://get.backtrace.io/crashpad/builds/
#https://docs.sentry.io/platforms/native/guides/crashpad/
#https://docs.bugsplat.com/introduction/getting-started/integrations/cross-platform/crashpad


#使用调试/崩溃报告将应用程序部署到客户端(示例代码)
#http://www.136.la/shida/show-424226.html

#crashpad服务提供商有
#https://backtrace.io/pricing
#https://sentry.io/pricing/
#https://docs.bugsplat.com/introduction/getting-started/signing-up-for-an-account-with-bugsplat

#!analyze -v

if(NOT GOOGLE_CRASHPAD_ROOT)
    set(GOOGLE_CRASHPAD_ROOT "${SDK_ROOT}/crashpad/crashpad-2020-07-01-release-x64-558c9614e3819179f30b92541450f5ac643afce5")
#    add_subdirectory(${GOOGLE_CRASHPAD_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/crashpad)
endif()

function(function_use_google_crashpad argv1)

if(NOT GOOGLE_CRASHPAD_ROOT)
    message(FATAL_ERROR "cannot find GOOGLE_CRASHPAD" )
endif()

target_include_directories(
        ${argv1}
        PRIVATE
        ${GOOGLE_CRASHPAD_ROOT}/include
        ${GOOGLE_CRASHPAD_ROOT}/include/mini_chromium
)

if (MSVC AND NOT USE_MSVC_RUNTIME_LIBRARY_DLL)
    target_link_directories(
            ${argv1}
            PRIVATE
            ${GOOGLE_CRASHPAD_ROOT}/lib_mt
    )
elseif (MSVC AND USE_MSVC_RUNTIME_LIBRARY_DLL)
    target_link_directories(
            ${argv1}
            PRIVATE
            ${GOOGLE_CRASHPAD_ROOT}/lib_md
    )
endif()

target_link_libraries(
        ${argv1}
        base
        client
        util
)

endfunction()