#--------------------------------------------------------------------
# MYSQL
#--------------------------------------------------------------------

#https://mariadb.org/download/

#https://dev.mysql.com/downloads/connector/cpp/

if(NOT MYSQL_ROOT)

    if (WIN32)
        if (CMAKE_SIZEOF_VOID_P EQUAL 8)
#            set(MYSQL_ROOT "C:/Program Files/MariaDB 10.8")
            set(MYSQL_ROOT ${SDK_ROOT}/mariadb-10.9.2-winx64)
        else ()
            set(MYSQL_ROOT ${SDK_ROOT}/mariadb-10.9.2-winx64)
        endif ()
    endif ()

endif()

function(function_use_mysql argv1)

    if(NOT MYSQL_ROOT)
        message(FATAL_ERROR "cannot find MYSQL" )
    endif()

    target_include_directories(
            ${argv1}
            PRIVATE
            ${MYSQL_ROOT}/include
            ${MYSQL_ROOT}/include/mysql
    )

    target_link_directories(
            ${argv1}
            PRIVATE
            ${MYSQL_ROOT}/lib
    )

    target_link_libraries(
            ${argv1}
#            libmariadb.lib
    )

endfunction()