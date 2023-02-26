local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Partner Spoof", HidePremium = false, SaveConfig = true, ConfigFolder = "Partners.biggames.io"})


--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]
local Tab2 = Window:MakeTab({
	Name = "HoverBoards",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddToggle({
	Name = "Fake sign",
	Default = false,
	Callback = function(Value)
	if Value == true then
	    OrionLib:MakeNotification({
	Name = "Enabled",
	Content = "Fake sign enabled!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]
	    game:GetService("Players").LocalPlayer.PlayerGui.Rename.Frame.SignInfo.Visible = true
	    else
	        	    game:GetService("Players").LocalPlayer.PlayerGui.Rename.Frame.SignInfo.Visible = false
	        	    OrionLib:MakeNotification({
	Name = "Disabled",
	Content = "Fake Sign Has Been Disabled!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]
	    end
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab2:AddButton({
	Name = "Get All HoverBoards",
	Callback = function()
      		local tbl = require(game.ReplicatedStorage.Framework.Modules.Client["4 | Save"]).Get() tbl.Hoverboards = {} for i,v in pairs(game.ReplicatedStorage.Game.Hoverboards:GetChildren())do table.insert(tbl.Hoverboards, v.Name) end getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Update() getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Equip = function(board) tbl.EquippedHoverboard = board getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Update() end
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]