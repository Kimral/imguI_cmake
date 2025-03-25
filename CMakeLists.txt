cmake_minimum_required(VERSION 3.14)
project(imgui LANGUAGES CXX)

set(IMGUI_SOURCES
    imgui.cpp
    imgui_draw.cpp
    imgui_tables.cpp
    imgui_widgets.cpp
)

add_library(imgui STATIC ${IMGUI_SOURCES})
add_library(imgui::imgui ALIAS imgui)

target_include_directories(imgui
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:include>
)

if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
    install(TARGETS imgui
        EXPORT imguiTargets
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        RUNTIME DESTINATION bin
    )
    install(FILES
        imgui.h
        imgui_internal.h
        imconfig.h
        imgui_draw.h
        imgui_tables.h
        imgui_widgets.h
        DESTINATION include
    )
    install(EXPORT imguiTargets
        FILE imgui-config.cmake
        NAMESPACE imgui::
        DESTINATION lib/cmake/imgui
    )
endif()
