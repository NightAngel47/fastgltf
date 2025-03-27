project "fastgltf"
	kind "StaticLib"
	language "C++"
	staticruntime "on"
  
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
  
	files
	{
		"include/fastgltf/**.hpp",
		"include/fastgltf/**.cpp",
	}

	includedirs
	{
		"include"
	}
  
	filter "system:windows"
		systemversion "latest"

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
