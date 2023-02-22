function(function_copy_output_file argv1)

    #    set_target_properties(${PROJECT_NAME} PROPERTIES OUTPUT_NAME "${PROJECT_NAME}${_output_suffix}$<$<CONFIG:Debug>:d>")
    #    set_target_properties(${argv1} PROPERTIES OUTPUT_NAME "${argv1}${_output_suffix}")

    if (${CMAKE_SOURCE_DIR} MATCHES ${CMAKE_CURRENT_SOURCE_DIR})
        SET(OUTPUT_EXECUTABLE_DIR ${CMAKE_BINARY_DIR}/../build)
    else ()
        SET(OUTPUT_EXECUTABLE_DIR ${PRODUCT_EXECUTABLE_DIR}/${argv1})
    endif ()
    message(STATUS "${PROJECT_NAME} OUTPUT_EXECUTABLE_DIR: " ${OUTPUT_EXECUTABLE_DIR})
    #set(OUTPUT_OBJ_NAMES ${PROJECT_NAME})
    #set(OUTPUT_OBJ_NAMES ${argv1})
    set(OUTPUT_OBJ_NAMES ${ARGV})
    string(TIMESTAMP CMAKE_BUILD_TIME "%Y-%m-%d %H:%M:%S")
    foreach (OUTPUT_OBJ_NAME IN LISTS OUTPUT_OBJ_NAMES)
        set_target_properties(${OUTPUT_OBJ_NAME} PROPERTIES OUTPUT_NAME "${OUTPUT_OBJ_NAME}${_output_suffix}")
        add_custom_command(
                TARGET ${OUTPUT_OBJ_NAME} POST_BUILD
                COMMAND "${CMAKE_COMMAND}" -E copy
                "$<TARGET_FILE:${OUTPUT_OBJ_NAME}>"
                "${OUTPUT_EXECUTABLE_DIR}/$<TARGET_FILE_NAME:${OUTPUT_OBJ_NAME}>"
                COMMENT "Copying ${OUTPUT_OBJ_NAME} to ${OUTPUT_EXECUTABLE_DIR}\r\n CMAKE_BUILD_TIME: ${CMAKE_BUILD_TIME}"
        )
    endforeach ()

endfunction()

#cmake中的宏(macro)和函数(function)都支持动态参数
#变量ARGC记录传入的参数个数
#变量ARGV0,ARGV1,...顺序代表传入的参数
#变量ARGV则是一个包含所有传入参数的list
#变量ARGN也是一个包含传入参数的list，但不是所有参数，而是指macro/function声明的参数之后的所有传入参数

#!!!!!!!!!!!!!!!!!!!!!!!!!!注意大小写