project "fastgltf"
	kind "StaticLib"
	language "C++"
	staticruntime "on"
  
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
  
	files
	{
		"include/fastgltf/**.hpp",

		"src/**.ixx",
		"src/**.cpp",

		"deps/simdjson/simdjson.h",
		"deps/simdjson/simdjson.cpp",
	}

	includedirs
	{
		"include",
		"deps/simdjson"
	}
  
	filter "system:windows"
		systemversion "latest"
	  	cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		optimize "off"

	filter "configurations:Release"
		runtime "Release"
		symbols "off"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		symbols "off"
		optimize "on"
