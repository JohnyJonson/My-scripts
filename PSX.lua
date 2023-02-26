local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Partner Spoof", HidePremium = false, SaveConfig = true, ConfigFolder = "Partners.biggames.io"})



local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


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


	    game:GetService("Players").LocalPlayer.PlayerGui.Rename.Frame.SignInfo.Visible = true
	    else
	        	    game:GetService("Players").LocalPlayer.PlayerGui.Rename.Frame.SignInfo.Visible = false
	        	    OrionLib:MakeNotification({
	Name = "Disabled",
	Content = "Fake Sign Has Been Disabled!",
	Image = "rbxassetid://4483345998",
	Time = 5
})


	    end
	end    
})

