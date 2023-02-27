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
Section:NewButton("🔥AirWalk🔥", "you can airwalk now", function()
     part = Instance.new("Part")
                part2 = Instance.new("Part")
                part.Transparency = 1
                part2.Transparency = 1
                part.Parent = workspace
                part.Anchored = true
                part2.Parent = workspace
                part2.Anchored = true
                task.spawn(function()
         while wait(0.0000005) do
                            part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - Vector3.new(0, 3.6, 0)
                            part2.CFrame =game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 2.5, 0)
end
end)
end)
