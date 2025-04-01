cmake_minimum_required(VERSION 3.14)
project(imgui LANGUAGES CXX)

option(IMGUI_BACKEND_SDL2 "Enable SDL2 backend" OFF)
option(IMGUI_RENDER_OPENGL3 "Enable OpenGL3 renderer" OFF)

message(STATUS "IMGUI_BACKEND_SDL2: ${IMGUI_BACKEND_SDL2}")
message(STATUS "IMGUI_RENDER_OPENGL3: ${IMGUI_RENDER_OPENGL3}")

include(cmake/Core.cmake)
include(cmake/Dependencies.cmake)
include(cmake/LinkLibs.cmake)
include(cmake/Install.cmake)
