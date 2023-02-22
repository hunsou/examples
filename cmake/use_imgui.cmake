#--------------------------------------------------------------------
# IMGUI
#--------------------------------------------------------------------

#https://github.com/ocornut/imgui/archive/refs/tags/v1.88.zip

#example_glfw_vulkan里引用了glfw,注意排除这个冲突!!!

if(NOT IMGUI_ROOT)
    set(IMGUI_ROOT "${SDK_ROOT}/imgui-1.88")
    add_subdirectory(${IMGUI_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/imgui)
endif()