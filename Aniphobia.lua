local folder = workspace.OtherWaifus
local player = game.Players.LocalPlayer
getgenv().tool = "Crowbar"
local cd = false
game:GetService"RunService".Heartbeat:connect(function()
    if player.Backpack:FindFirstChild(getgenv().tool) then
        if cd== true then return end
        cd = true
        for _,v in next,folder:GetChildren() do
            if v:IsA"Model" and v:FindFirstChild"Head" and v:FindFirstChildOfClass"Humanoid" and v:FindFirstChildOfClass"Humanoid".Health > 0 then
                local args = {
                    [1] = "Damage",
                    [2] = player.Backpack:FindFirstChild(getgenv().tool),
                    [3] = v.Head
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Container"):WaitForChild("Melee"):WaitForChild("Handle"):FireServer(unpack(args))

            end end
        task.wait(.15)
        cd = false
    end
end)


