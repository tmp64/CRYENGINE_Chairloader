option(PLUGIN_GAMEPLATFORM "Enable CryGamePlatform plugin?" ON)

if (PLUGIN_GAMEPLATFORM)
	add_subdirectory(Module/Core)
	add_subdirectory(Module/Steam)
	add_subdirectory(Module/Discord)

	if (EXISTS "${CMAKE_CURRENT_LIST_DIR}/Module/PSN")
		add_subdirectory(Module/PSN)
	endif()

	add_subdirectory(Module/Rail)
endif()
