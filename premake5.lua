include "fastgltf"

project "fastgltf"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
    staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"fastgltf/**.h",
    	"fastgltf/**.hpp",
    	"fastgltf/**.cpp"
	}

	includedirs
	{
		"fastgltf",
		"fastgltf/include"
	}

	defines
	{
	}

	links
	{
		"fastgltf"
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
