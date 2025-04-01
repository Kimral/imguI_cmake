if(${IMGUI_BACKEND_SDL2})
    message("SDL2 LINKED")
    target_link_libraries(imgui PUBLIC SDL2::SDL2 SDL2::SDL2main)
endif()

if(${IMGUI_RENDER_OPENGL3})
    message("OPENGL3 LINKED")
    target_link_libraries(imgui PUBLIC opengl32)
endif()
