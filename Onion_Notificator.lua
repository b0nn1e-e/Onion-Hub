--[[
NAME: Onion_Notificator
FILE: .lua

AUTHOR: b0nn1e-e
MADE FOR: Onion Hub
]]

return function(Config)
  -- Gui to Lua
-- Version: 3.2

-- Instances:

local onion_notificator = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local notification = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Topbar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local image = Instance.new("ImageLabel")
local text = Instance.new("TextLabel")
local Buttons = Instance.new("Frame")
local Button = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIPadding_2 = Instance.new("UIPadding")

--Properties:

onion_notificator.Name = "onion_notificator"
onion_notificator.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
onion_notificator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = onion_notificator
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, 0, 1, 0)

notification.Name = "notification"
notification.Parent = Frame
notification.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
notification.BorderColor3 = Color3.fromRGB(0, 0, 0)
notification.BorderSizePixel = 0
notification.Size = UDim2.new(0.276544839, 0, 0.225165561, 0)

UICorner.CornerRadius = UDim.new(0.100000001, 0)
UICorner.Parent = notification

Topbar.Name = "Topbar"
Topbar.Parent = notification
Topbar.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Topbar.BorderSizePixel = 0
Topbar.Position = UDim2.new(0.0280988663, 0, 0.0825330168, 0)
Topbar.Size = UDim2.new(0.93978703, 0, 0.172644556, 0)

UICorner_2.CornerRadius = UDim.new(0.400000006, 0)
UICorner_2.Parent = Topbar

Title.Name = "Title"
Title.Parent = Topbar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0555280261, 0, 0.13037771, 0)
Title.Size = UDim2.new(0.884672582, 0, 0.695785522, 0)
Title.Font = Enum.Font.GothamMedium
Title.Text = Config.Title or "Onion Hub"
Title.TextColor3 = Color3.fromRGB(129, 129, 129)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

image.Name = "image"
image.Parent = Topbar
image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image.BackgroundTransparency = 1.000
image.BorderColor3 = Color3.fromRGB(0, 0, 0)
image.BorderSizePixel = 0
image.Position = UDim2.new(-2.60704752e-07, 0, 0, 0)
image.Size = UDim2.new(0.103008889, 0, 1, 0)
image.Image = Config.Image or "rbxassetid://11745872910"
image.ScaleType = Enum.ScaleType.Fit

text.Name = "text"
text.Parent = notification
text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
text.BackgroundTransparency = 1.000
text.BorderColor3 = Color3.fromRGB(0, 0, 0)
text.BorderSizePixel = 0
text.Position = UDim2.new(0.0916558728, 0, 0.385479957, 0)
text.Size = UDim2.new(0.81601721, 0, 0.215593278, 0)
text.Font = Enum.Font.Gotham
text.Text = Config.Text or "Nil"
text.TextColor3 = Color3.fromRGB(255, 255, 255)
text.TextScaled = true
text.TextSize = 14.000
text.TextWrapped = true

Buttons.Name = "Buttons"
Buttons.Parent = notification
Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Buttons.BackgroundTransparency = 1.000
Buttons.BorderColor3 = Color3.fromRGB(0, 0, 0)
Buttons.BorderSizePixel = 0
Buttons.Position = UDim2.new(0, 0, 0.601073086, 0)
Buttons.Size = UDim2.new(1, 0, 0.398926765, 0)

Button.Name = Config.Actions["Yes"].Name
Button.Parent = Buttons
Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(1.24318916e-07, 0, 0.161721647, 0)
Button.Size = UDim2.new(0.285473526, 0, 0.450861663, 0)
Button.Font = Enum.Font.Gotham
Button.Text = Config.Actions["Yes"].Title
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextScaled = true
Button.TextSize = 14.000
Button.TextWrapped = true


Button.MouseButton1Click:Connect(function()
      Config.Actions["Yes"].Callback()
    end)
UICorner_3.CornerRadius = UDim.new(0.400000006, 0)
UICorner_3.Parent = Button

UIListLayout.Parent = Buttons
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0.0199999996, 0)

UIPadding.Parent = Buttons

UIListLayout_2.Parent = Frame
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout_2.Padding = UDim.new(0.0299999993, 0)

UIPadding_2.Parent = Frame
UIPadding_2.PaddingBottom = UDim.new(0.0199999996, 0)
UIPadding_2.PaddingRight = UDim.new(0.0199999996, 0)
end
