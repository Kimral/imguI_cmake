if(${IMGUI_BACKEND_SDL2})
    message("SDL2 LINKED")
    target_link_libraries(imgui PUBLIC SDL2::SDL2 SDL2::SDL2main)
    target_sources(imgui PUBLIC backends/imgui_impl_sdl2.cpp)
endif()

if(${IMGUI_RENDER_OPENGL3})
    message("OPENGL3 LINKED")
    target_link_libraries(imgui PUBLIC opengl32)
    target_sources(imgui PUBLIC backends/imgui_impl_opengl.cpp)
endif()
