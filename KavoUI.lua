local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local colors = {
   SchemeColor = Color3.fromRGB(122, 203, 17),
Background = Color3.fromRGB(0,0,24),
Header = Color3.fromRGB(0,0,29),
TextColor = Color3.fromRGB(255,255,255),
ElementColor = Color3.fromRGB(0,0,100)

}

local Window = Library.CreateLib("🔥ROFAST🔥 📢📢🔥😎✅⚪🔥🔥UNIVERSAL👀✅👀🔥🔥🔥🔥👑💀", colors)
local Tab = Window:NewTab("✅Humanoid✅")
local Tab2 = Window:NewTab("✅Exploits🔥✅")
local Section = Tab:NewSection("MainFunctions")
Section:NewButton("🔥SPEED🔥", "Increases WalkSpeed, Reset To  get normal speed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)
local Sectionv = Tab2:NewSection("SECTIONV")
Sectionv:NewToggle("✅EXPLOITV2", "v3", function(state)
    if state then
          game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
    else
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)
