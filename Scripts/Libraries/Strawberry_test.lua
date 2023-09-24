local Strawberry = {
	Themes = {
		Default = {
			Background = Color3.fromRGB(26,26,26);
			Pages = Color3.fromRGB(34,34,34);
			Text = Color3.fromRGB(255,255,255);
			Topbar = Color3.fromRGB(40,40,40);
			BackgroundTransparency = 0;
			PagesTransaprency = 0;
			TextStroke = Color3.fromRGB(53,53,53);

		};

		Light = {
			Background = Color3.fromRGB(255,255,255);
			Pages = Color3.fromRGB(200,200,200);
			Text = Color3.fromRGB(0,0,0);
			BackgroundTransparency = 0.5;
			PagesTransaprency = 0.5;
			TextStroke = Color3.fromRGB(0,0,0);
		};


	}
}

local PrivateWindows = {}

function Strawberry:NewWindow(Config)

	if game.Players.LocalPlayer.PlayerGui:FindFirstChild("strawberry_lua") then
		game.Players.LocalPlayer.PlayerGui:FindFirstChild("strawberry_lua"):Destroy()
	end
	
	local strawberry_lua = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Topbar = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Buttons = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local Minimize = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local Close = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local Hide = Instance.new("Frame")
	local PagesHide = Instance.new("Frame")
	local Pages = Instance.new("Frame")
	local UICorner_6 = Instance.new("UICorner")
	local PagesHide_2 = Instance.new("Frame")



	strawberry_lua.Name = "strawberry_lua"
	strawberry_lua.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	strawberry_lua.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	strawberry_lua.ResetOnSpawn = false 
	
	PrivateWindows[Config.Name] = strawberry_lua
	Frame.Parent = strawberry_lua
	Frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.28394255, 0, 0.28807947, 0)
	Frame.Size = UDim2.new(0.432114869, 0, 0.423841059, 0)

	UICorner.CornerRadius = UDim.new(0.0500000007, 0)
	UICorner.Parent = Frame

	Topbar.Name = "Topbar"
	Topbar.Parent = Frame
	Topbar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Topbar.BorderSizePixel = 0
	Topbar.Position = UDim2.new(-0.000549039862, 0, -0.000982999802, 0)
	Topbar.Size = UDim2.new(1.00054884, 0, 0.197278529, 0)
	Topbar.ZIndex = 3

	UICorner_2.CornerRadius = UDim.new(0.200000003, 0)
	UICorner_2.Parent = Topbar

	Title.Name = "Title"
	Title.Parent = Topbar
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.0226461831, 0, 0.217807531, 0)
	Title.Size = UDim2.new(0.471589059, 0, 0.613821387, 0)
	Title.ZIndex = 3
	Title.Font = Enum.Font.GothamMedium
	Title.Text = Config.Name or "Strawberry.lua"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true

	Buttons.Name = "Buttons"
	Buttons.Parent = Topbar
	Buttons.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Buttons.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Buttons.BorderSizePixel = 0
	Buttons.Position = UDim2.new(0.762421489, 0, 0.118804112, 0)
	Buttons.Size = UDim2.new(0.214932308, 0, 0.782192469, 0)
	Buttons.ZIndex = 3

	UICorner_3.CornerRadius = UDim.new(0.200000003, 0)
	UICorner_3.Parent = Buttons

	Minimize.Name = "Minimize"
	Minimize.Parent = Buttons
	Minimize.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Minimize.BackgroundTransparency = 0.100
	Minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Minimize.BorderSizePixel = 0
	Minimize.Position = UDim2.new(0.116621234, 0, 0.151886031, 0)
	Minimize.Size = UDim2.new(0.357220143, 0, 0.734116018, 0)
	Minimize.ZIndex = 3
	Minimize.Font = Enum.Font.Gotham
	Minimize.Text = "-"
	Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
	Minimize.TextScaled = true
	Minimize.TextSize = 14.000
	Minimize.TextWrapped = true

	UICorner_4.CornerRadius = UDim.new(0.200000003, 0)
	UICorner_4.Parent = Minimize

	Close.Name = "Close"
	Close.Parent = Buttons
	Close.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Close.BackgroundTransparency = 0.100
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(0.572806776, 0, 0.151886031, 0)
	Close.Size = UDim2.new(0.360202998, 0, 0.734116018, 0)
	Close.ZIndex = 3
	Close.Font = Enum.Font.Gotham
	Close.Text = "X"
	Close.TextColor3 = Color3.fromRGB(255, 255, 255)
	Close.TextScaled = true
	Close.TextSize = 14.000
	Close.TextWrapped = true

	UICorner_5.CornerRadius = UDim.new(0.200000003, 0)
	UICorner_5.Parent = Close

	Hide.Name = "Hide"
	Hide.Parent = Frame
	Hide.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Hide.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Hide.BorderSizePixel = 0
	Hide.Position = UDim2.new(0, 0, 0.1630795, 0)
	Hide.Size = UDim2.new(0.999999762, 0, 0.0332160033, 0)

	PagesHide.Name = "PagesHide"
	PagesHide.Parent = Frame
	PagesHide.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	PagesHide.BorderColor3 = Color3.fromRGB(0, 0, 0)
	PagesHide.BorderSizePixel = 0
	PagesHide.Position = UDim2.new(0, 0, 0.1962955, 0)
	PagesHide.Size = UDim2.new(0.287512511, 0, 0.0966732502, 0)

	Pages.Name = "Pages"
	Pages.Parent = Frame
	Pages.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	Pages.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Pages.BorderSizePixel = 0
	Pages.Position = UDim2.new(0, 0, 0.1962955, 0)
	Pages.Size = UDim2.new(0.287512511, 0, 0.8037045, 0)
	Pages.ZIndex = 3

	UICorner_6.CornerRadius = UDim.new(0.200000003, 0)
	UICorner_6.Parent = Pages

	PagesHide_2.Name = "PagesHide"
	PagesHide_2.Parent = Frame
	PagesHide_2.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	PagesHide_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	PagesHide_2.BorderSizePixel = 0
	PagesHide_2.Position = UDim2.new(0.188821763, 0, 0.954108, 0)
	PagesHide_2.Size = UDim2.new(0.0986907184, 0, 0.0458920039, 0)
end
