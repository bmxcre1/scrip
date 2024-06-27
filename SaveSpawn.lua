--// Variables
local players = game:GetService("Players")
local player = players.LocalPlayer

--// Globals
getgenv().saved_pos = character.HumanoidRootPart.CFrame

--// Main
player.CharacterAdded:connect(function(character)
    local root = character:WaitForChild("HumanoidRootPart")
    if getgenv().saved_pos ~= nil then
        root.CFrame = getgenv().saved_pos
    end
end)

