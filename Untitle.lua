-- Untitled Enhancements X | Linoria Stable
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/LinoriaLibV3/main/Library.lua"))()

local Window = Library:CreateWindow({
    Title = "Untitled Enhancements X",
    Center = true,
    AutoShow = true,
})

local Tabs = {
    Player = Window:AddTab("Player"),
    Visuals = Window:AddTab("Visuals"),
    Misc = Window:AddTab("Misc"),
    Config = Window:AddTab("Config")
}

Tabs.Player:AddLeftGroupbox("Movement"):AddSlider("WalkSpeed", {Text = "WalkSpeed", Default = 16, Min = 16, Max = 350, Rounding = 0, Callback = function(v) pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end) end})
Tabs.Player:AddLeftGroupbox("Movement"):AddSlider("JumpPower", {Text = "JumpPower", Default = 50, Min = 50, Max = 350, Rounding = 0, Callback = function(v) pcall(function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end) end})

Tabs.Visuals:AddLeftGroupbox("ESP"):AddToggle("BoxESP", {Text = "Box ESP", Default = false})
Tabs.Visuals:AddLeftGroupbox("ESP"):AddToggle("NameESP", {Text = "Name ESP", Default = false})

Tabs.Misc:AddLeftGroupbox("Combat"):AddToggle("Aimbot", {Text = "Aimbot", Default = false})
Tabs.Misc:AddLeftGroupbox("Combat"):AddToggle("SilentAim", {Text = "Silent Aim", Default = false})

Library:Notify({Title = "Untitled Enhancements X", Content = "Cargado correctamente", Duration = 5})
