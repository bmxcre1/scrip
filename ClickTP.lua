--// Settings
local keybind = Enum.KeyCode.Q

--// Services
local input_service = game:GetService("UserInputService")

--// Variables
local players = game:GetService("Players")
local player = players.LocalPlayer
local mouse = player:GetMouse()

--// Input handler
input_service.InputBegan:connect(function(key,gp)
    if not gp and key.KeyCode == keybind then
        if player.Character and player.Character:FindFirstChild"HumanoidRootPart" then
            local root = player.Character.HumanoidRootPart
            root.CFrame = mouse.Hit + root.Size/2
        end
    end
end)
