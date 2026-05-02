-- Untitled Enhancements X | Obsidian
local Obsidian = loadstring(game:HttpGet("https://raw.githubusercontent.com/ObsidianUI/Obsidian/main/Source.lua", true))()

local Window = Obsidian:CreateWindow({
    Name = "Untitled Enhancements X",
    Accent = Color3.fromRGB(236, 0, 140),
})

local Tabs = {
    Player = Window:CreateTab("Player"),
    Visuals = Window:CreateTab("Visuals"),
    Misc = Window:CreateTab("Misc"),
    Config = Window:CreateTab("Config")
}

-- Player
Tabs.Player:CreateSlider({Name = "WalkSpeed", Min = 16, Max = 350, Default = 16, Callback = function(v) pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end) end})
Tabs.Player:CreateSlider({Name = "JumpPower", Min = 50, Max = 350, Default = 50, Callback = function(v) pcall(function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end) end})

-- Visuals
Tabs.Visuals:CreateToggle({Name = "Box ESP", Default = false})
Tabs.Visuals:CreateToggle({Name = "Name ESP", Default = false})
Tabs.Visuals:CreateToggle({Name = "Chams", Default = false})

-- Misc
Tabs.Misc:CreateToggle({Name = "Aimbot", Default = false})
Tabs.Misc:CreateToggle({Name = "Silent Aim", Default = false})

-- Config
Tabs.Config:CreateButton({Name = "Lock UI", Callback = function() Window:Lock() end})
Tabs.Config:CreateButton({Name = "Unlock UI", Callback = function() Window:Unlock() end})

Obsidian:Notify("Untitled Enhancements X", "Obsidian cargada - Usa RightShift", 6)
