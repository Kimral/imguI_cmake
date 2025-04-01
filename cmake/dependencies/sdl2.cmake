FetchContent_Declare(
    sdl2
    GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
    GIT_TAG release-2.32.x
    GIT_PROGRESS TRUE
)

FetchContent_MakeAvailable(sdl2)