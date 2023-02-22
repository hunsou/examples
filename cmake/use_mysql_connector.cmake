#--------------------------------------------------------------------
# MYSQL CONNECTOR
#--------------------------------------------------------------------

#https://mariadb.org/download/

#https://dev.mysql.com/downloads/connector/cpp/

##################################################################################################################################

报错,找不到工程

##################################################################################################################################

if(NOT MYSQL_CONNECTOR_ROOT)

#    if (WIN32)
#        if (CMAKE_SIZEOF_VOID_P EQUAL 8)
#            set(MYSQL_CONNECTOR_ROOT ${SDK_ROOT}/mysql-connector-c++-8.0.30-winx64)
#        else ()
#            set(MYSQL_CONNECTOR_ROOT ${SDK_ROOT}/mysql-connector-c++-8.0.30-win32)
#        endif ()
#    endif ()

    set(MYSQL_CONNECTOR_ROOT ${SDK_ROOT}/mysql-connector-c++-8.0.30-src)
    add_subdirectory(${MYSQL_CONNECTOR_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/mysql_connector )
#    add_subdirectory(${MYSQL_CONNECTOR_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/mysql_connector EXCLUDE_FROM_ALL)

endif()

function(function_use_mysql_connector argv1)

    if(NOT MYSQL_CONNECTOR_ROOT)
        message(FATAL_ERROR "cannot find MYSQL_CONNECTOR" )
    endif()

    target_include_directories(
            ${argv1}
            PRIVATE
            ${MYSQL_CONNECTOR_ROOT}/include
            ${MYSQL_CONNECTOR_ROOT}/include/jdbc
            ${MYSQL_CONNECTOR_ROOT}/include/mysql
            ${MYSQL_CONNECTOR_ROOT}/include/mysqlx
    )

    if (CMAKE_SIZEOF_VOID_P EQUAL 8)
        target_link_directories(
                ${argv1}
                PRIVATE
                ${MYSQL_CONNECTOR_ROOT}/lib64/vs14
        )
    else()
        target_link_directories(
                ${argv1}
                PRIVATE
                ${MYSQL_CONNECTOR_ROOT}/lib/vs14
        )
    endif()

    target_link_libraries(
            ${argv1}
            libcrypto
            libssl
    )

    if (MSVC AND USE_MSVC_RUNTIME_LIBRARY_DLL)
        target_link_libraries(
                ${argv1}
                mysqlcppconn
                mysqlcppconn8
        )
    else()
        target_link_libraries(
                ${argv1}
                mysqlcppconn-static
                mysqlcppconn8-static
        )
    endif()

endfunction()