project "Box2D"
	kind "StaticLib"
	language "C"
    staticruntime "on"
    cppdialect "c++17"
    systemversion "latest"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
        "src/**.cpp",
        "include/**h"
	}

	includedirs {
		"include",
        "src"
	}


    filter "configurations:Debug"
       defines "FLARE_DEBUG"
       runtime "Debug"
       symbols  "on"

   filter "configurations:Release"
       defines "FLARE_RELEASE"
       runtime "Release"
       symbols  "off"


   filter "configurations:Ship"
       defines "FLARE_DEBUG"
       runtime "Release"
       symbols  "off"