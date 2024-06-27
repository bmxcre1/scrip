--// General variables
local players = game:GetService("Players")
local player = players.LocalPlayer
local replicated_storage = game:GetService("ReplicatedStorage")
local enemy_folder = workspace:WaitForChild("OtherWaifus")
_G.tool_name = "Crowbar"
local rate_cooldown = false

--// Services
local run_service = game:GetService("RunService")

--// Damage event
function fire_event(enemy)
local args = {
    [1] = "Damage",
    [2] = player.Backpack:FindFirstChild(_G.tool_name),
    [3] = enemy.Head
}

replicated_storage.Container.Melee.Handle:FireServer(unpack(args))
end

--// Valid enemy
function validate(enemy)
if enemy and enemy:IsA"Model" and enemy:FindFirstChildOfClass"Humanoid" and enemy:FindFirstChild"Head" and enemy:FindFirstChildOfClass"Humanoid".Health > 0 then
return true
else
return
false end
end

--// Detection loop
run_service.Heartbeat:connect(function()
if rate_cooldown == false then
rate_cooldown = false
for _,enemy in next,enemy_folder:GetChildren() do 
if validate(enemy) then
fire_event(enemy)
end
end
wait(.15)
rate_cooldown = false

end
end)
