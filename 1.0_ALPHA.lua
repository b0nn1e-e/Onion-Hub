local mainLibrary = {
	["1"] = "sQMaZxAQE";
	["2"] = "XMazARq";
	["3"] = "QovxzABx";
	["4"] = "OQcxmAfee";
	["5"] = "https://raw.githubusercontent.com/shlexware/Orion/main/source"
}


local OrionLib = loadstring(game:HttpGet((mainLibrary["5"])))()
local OnionLib = {}



local Window

	local v1, v2 = pcall(function()
		Window = OrionLib:MakeWindow({IntroText = "Onion Hub", ShowIcon = true, IntroIcon = "rbxassetid://6208891644", Name = "Onion Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "onion_hub?type=config.true", Icon = "rbxassetid://6208891644"})
	end) 
	if v1  then
		OrionLib:MakeNotification({
			Name = "Onion Hub v1.0",
			Content = "Loaded!",
			Image = "rbxassetid://1202200114",
			Time = 5
		})
	end
	if v2  then
		OrionLib:MakeNotification({
			Name = "Onion Hub v1.0",
			Content = "Load Error: "..tostring(v2),
			Image = "rbxassetid://9545003266",
			Time = 5
		})
	end



local QCmaX = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://8301879545",
	PremiumOnly = false
})

local v =  QCmaX:AddSection({
	Name = "Character | Player"
})

v:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 999,
	Default = 16,
	Color = Color3.fromRGB(68, 68, 68),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		print(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

local bg =  QCmaX:AddSection({
	Name = "UI"
})

--[[bg:AddDropdown({
	Name = "Theme",
	Default = "Dark",
	Options = {"Dark", "Light"},
	Callback = function(Value)
		print(Value)
		if Value == "Light" then
			OrionLib.Themes.Default.Main = Color3.fromRGB(200,200,200)
		elseif Value == "Dark" then
			OrionLib.Themes.Default.Main = Color3.fromRGB(25,25,25)
		
			end
	end    
})]]


local adxAC =  Window:MakeTab({
	Name = "Miscellaneous",
	Icon = "rbxassetid://12120687742",
	PremiumOnly = false
})

local cmaaAqk =  Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://9405926389",
	PremiumOnly = false
})



adxAC:AddButton({
	Name = "Kick Yourself"	;
	Callback = function()
		game.Players.LocalPlayer:Kick("dumbo")
	end,
})

local vasAq =  cmaaAqk:AddSection({
	Name = "Credits"
})

local ZXaxqFq =  cmaaAqk:AddSection({
	Name = "Info"
})

vasAq:AddParagraph("UI","Orion Library")
vasAq:AddParagraph("Functions","Bonnie (ULEY_TOPCHIK192)")

ZXaxqFq:AddParagraph("Version","1.0")
