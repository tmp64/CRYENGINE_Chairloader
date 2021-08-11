if (NOT EXISTS "${CRYENGINE_DIR}/Tools/branch_bootstrap/bootstrap.exe")
	set(SDK_ARCHIVE   "CRYENGINE_v5.6.7_SDKs.zip")
	set(GIT_TAG       "5.6.7")

	if(EXISTS "${CRYENGINE_DIR}/${SDK_ARCHIVE}")
		message(STATUS "Using pre-downloaded SDKs: ${SDK_ARCHIVE}")
	else()
		message(STATUS "Downloading SDKs...")
		file(DOWNLOAD "https://github.com/CRYTEK/CRYENGINE/releases/download/${GIT_TAG}/${SDK_ARCHIVE}"
			"${CRYENGINE_DIR}/${SDK_ARCHIVE}" SHOW_PROGRESS)
		set(FORCE_EXTRACT_SDKS 1)
	endif()

	if (NOT EXISTS "${SDK_DIR}" OR DEFINED FORCE_EXTRACT_SDKS)
		file(MAKE_DIRECTORY "${SDK_DIR}")
		message("Extracting ${SDK_ARCHIVE} to ${SDK_DIR}/...")
		execute_process(COMMAND "${CMAKE_COMMAND}" "-E" "tar" "xzkmf" "${CRYENGINE_DIR}/${SDK_ARCHIVE}" WORKING_DIRECTORY "${SDK_DIR}")
		message("Download and extraction of SDKs completed.")
	endif()
endif()

