project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstd_truetype.h",
		"imgui_demo.cpp"
	}
		
	filter "system:windows"			--	WINDOWS
		systemversion "latest"

    filter "system:linux"           --  LINUX
		pic "on"
		systemversion "latest"

	filter "configurations:Debug"	--	DEBUG
		runtime "Debug"
		symbols "on"		
		
	filter "configurations:Release"	--	RELEASE
		runtime "Release"
		optimize "on"
		
	filter "configurations:Distribution"	--	DISTRIBUTION
		runtime "Release"
		optimize "on"
