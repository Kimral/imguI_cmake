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
