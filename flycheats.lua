-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ScriptsWindow = Instance.new("Frame")
local Name = Instance.new("TextLabel")
local FlyButton = Instance.new("TextButton")
local UndoFlyBtn = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")

ScriptsWindow.Name = "ScriptsWindow"
ScriptsWindow.Parent = ScreenGui
ScriptsWindow.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
ScriptsWindow.Position = UDim2.new(0.0438946523, 0, 0.0843663961, 0)
ScriptsWindow.Size = UDim2.new(0, 147, 0, 240)

Name.Name = "Name"
Name.Parent = ScriptsWindow
Name.BackgroundColor3 = Color3.fromRGB(19, 224, 255)
Name.Position = UDim2.new(0.163265303, 0, 0.0375000015, 0)
Name.Size = UDim2.new(0, 107, 0, 50)
Name.Font = Enum.Font.ArialBold
Name.Text = "Exploits"
Name.TextColor3 = Color3.fromRGB(9, 121, 206)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextWrapped = true

FlyButton.Name = "FlyButton"
FlyButton.Parent = ScriptsWindow
FlyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlyButton.Position = UDim2.new(0.0544217676, 0, 0.304166675, 0)
FlyButton.Size = UDim2.new(0, 131, 0, 11)
FlyButton.Font = Enum.Font.ArialBold
FlyButton.Text = "fly"
FlyButton.TextColor3 = Color3.fromRGB(255, 0, 4)
FlyButton.TextSize = 14.000

UndoFlyBtn.Name = "UndoFlyBtn"
UndoFlyBtn.Parent = ScriptsWindow
UndoFlyBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UndoFlyBtn.Position = UDim2.new(0.0544217676, 0, 0.404166669, 0)
UndoFlyBtn.Size = UDim2.new(0, 131, 0, 11)
UndoFlyBtn.Font = Enum.Font.ArialBold
UndoFlyBtn.Text = "unfofly"
UndoFlyBtn.TextColor3 = Color3.fromRGB(255, 0, 4)
UndoFlyBtn.TextSize = 14.000

UICorner.Parent = ScreenGui

-- Scripts:

local function GZSKQN_fake_script() -- FlyButton.LocalScript 
	local script = Instance.new('LocalScript', FlyButton)

	
	local Fly = script.Parent
	Fly.Activated:Connect(function()
		if Fly.Visible == true then
			game.Workspace.Gravity = 0.1
		else
		Fly.BackgroundColor = Color3.new(1, 1, 1)
		end
		
	end)
end
coroutine.wrap(GZSKQN_fake_script)()
local function JLNBBQ_fake_script() -- UndoFlyBtn.LocalScript 
	local script = Instance.new('LocalScript', UndoFlyBtn)

	
	local Fly = script.Parent
	Fly.Activated:Connect(function()
		if Fly.Visible == true then
			game.Workspace.Gravity = 196.2
		end
		
	end)
end
coroutine.wrap(JLNBBQ_fake_script)()
