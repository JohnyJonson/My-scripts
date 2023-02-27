local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local colors = {
   SchemeColor = Color3.fromRGB(122, 203, 17)
Background = Color3.fromRGB(134, 158, 95)
Header = Color3.fromRGB(90, 136, 17)
TextColor = Color3.fromRGB(255,255,255)
ElementColor = Color3.fromRGB(0, 255, 127)

}

local Window = Library.CreateLib("🔥ROFAST🔥", colors)
local Tab = Window:NewTab("✅Humanoid✅")
local Section = Tab:NewSection("MainFunctions")
Section:NewButton("🔥SPEED🔥", "Increases WalkSpeed, Reset To  get normal speed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)
