-- Gui to Lua
-- Version: 3.2

-- Instances:

local UITL = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Frame = Instance.new("Frame")
local ExecuteButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Holder = Instance.new("TextBox")
local ClearButton = Instance.new("TextButton")
local ScriptName = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")

--Properties:

UITL.Name = "UITL"
UITL.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
UITL.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = UITL
Background.Active = true
Background.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.240655631, 0, 0.332886279, 0)
Background.Size = UDim2.new(0, 665, 0, 228)

Frame.Parent = Background
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(0, 174, 255)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(0, 665, 0, 20)

ExecuteButton.Name = "ExecuteButton"
ExecuteButton.Parent = Background
ExecuteButton.BackgroundColor3 = Color3.fromRGB(60, 255, 6)
ExecuteButton.BorderSizePixel = 0
ExecuteButton.Position = UDim2.new(0.95187968, 0, 0, 0)
ExecuteButton.Size = UDim2.new(0, 31, 0, 20)
ExecuteButton.Font = Enum.Font.Gotham
ExecuteButton.Text = "<>"
ExecuteButton.TextColor3 = Color3.fromRGB(255, 0, 0)
ExecuteButton.TextSize = 14.000

UICorner.Parent = ExecuteButton

Holder.Name = "Holder"
Holder.Parent = Background
Holder.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Holder.Position = UDim2.new(0.0706766918, 0, 0.25, 0)
Holder.Size = UDim2.new(0, 562, 0, 107)
Holder.Font = Enum.Font.SourceSans
Holder.MultiLine = true
Holder.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
Holder.PlaceholderText = "Code here"
Holder.Text = ""
Holder.TextColor3 = Color3.fromRGB(0, 0, 0)
Holder.TextSize = 14.000
Holder.TextWrapped = true

ClearButton.Name = "ClearButton"
ClearButton.Parent = Background
ClearButton.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
ClearButton.Position = UDim2.new(0.126315787, 0, 0.75, 0)
ClearButton.Size = UDim2.new(0, 200, 0, 50)
ClearButton.Font = Enum.Font.SourceSans
ClearButton.Text = "Clear"
ClearButton.TextColor3 = Color3.fromRGB(25, 25, 25)
ClearButton.TextScaled = true
ClearButton.TextSize = 14.000
ClearButton.TextWrapped = true

ScriptName.Name = "ScriptName"
ScriptName.Parent = Background
ScriptName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptName.BackgroundTransparency = 1.000
ScriptName.Size = UDim2.new(0, 120, 0, 20)
ScriptName.Font = Enum.Font.Gotham
ScriptName.Text = "ClearShells"
ScriptName.TextColor3 = Color3.fromRGB(3, 50, 107)
ScriptName.TextSize = 14.000

UICorner_2.Parent = UITL

-- Scripts:

local function LYLJ_fake_script() -- Background.drag 
	local script = Instance.new('LocalScript', Background)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
	
end
coroutine.wrap(LYLJ_fake_script)()
local function EGWQSO_fake_script() -- ExecuteButton.LocalScript 
	local script = Instance.new('LocalScript', ExecuteButton)

	script.Parent.Activated:Connect(function()
		local input = script.Parent.Parent.Holder
		script.Parent.Parent.Execute:FireServer(input.Text)
	end)
	
end
coroutine.wrap(EGWQSO_fake_script)()
local function FKMUZFX_fake_script() -- ClearButton.LocalScript 
	local script = Instance.new('LocalScript', ClearButton)

	script.Parent.MouseButton1Down:Connect(function()
		local input = script.Parent.Parent.Holder
		input.Text = ''
	end)
end
coroutine.wrap(FKMUZFX_fake_script)()
local function RMYUN_fake_script() -- Background.Main 
	local script = Instance.new('LocalScript', Background)

	local ExecuteButton = script.Parent.ExecuteButton
	local CodeBox = script.Parent.TextBox
	local ClearButton = script.Parent.ClearButton
	local Remote = script.Parent.Execute
	script.Parent.Draggable = true
	script.Parent.Active = true
	script.Parent.Selectable = true
end
coroutine.wrap(RMYUN_fake_script)()
local function YZFD_fake_script() -- Background.Script 
	local script = Instance.new('Script', Background)

	local Remote = script.Parent.Execute
	Remote.OnServerEvent:Connect(function(player,ss)
		require(script.Loadstring) (ss)()
		Remote:FireAllClients(script.Parent.Holder.Text)
	end)
	
end
coroutine.wrap(YZFD_fake_script)()
