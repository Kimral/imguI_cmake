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
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/backends>
        $<INSTALL_INTERFACE:include>
)
