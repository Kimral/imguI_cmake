if(${IMGUI_BACKEND_SDL2})
    target_link_libraries(imgui PUBLIC SDL2::SDL SDL2::SDL2main)
endif()

if(${IMGUI_RENDER_OPENGL3})
    target_link_libraries(imgui PUBLIC opengl32)
endif()
