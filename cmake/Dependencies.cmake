include(FetchContent)

if(${IMGUI_BACKEND_SDL2})
    include(cmake/dependencies/sdl2.cmake)
endif()