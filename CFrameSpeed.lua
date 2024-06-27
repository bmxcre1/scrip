getgenv().speed = 4
local pressing = false
local uis = game:service"UserInputService"
local plr = game.Players.LocalPlayer
uis.InputBegan:connect(function(key,gp)
    if not gp and key.KeyCode == Enum.KeyCode.X then
        pressing = true
    end
end)
    
uis.InputEnded:connect(function(key,gp)
    if not gp and key.KeyCode == Enum.KeyCode.X then
        pressing = false
    end
end)

game:service"RunService".Heartbeat:connect(function()
    if pressing == true then
      pcall(function()
          local char =  plr.Character
          char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + char.HumanoidRootPart.CFrame.LookVector*getgenv().speed
      end)
    end
  end)
