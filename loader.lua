local OnionLib = {}

function OnionLib.Load(version)
	if version == "1.0 ALPHA" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/b0nn1e-e/Onion-Hub/main/1.0_ALPHA.lua"))()
	end
end
