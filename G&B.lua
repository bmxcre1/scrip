if game.PlaceId == 12334109280 then else return end

--// ANTI GRAB
game.Players.LocalPlayer.CharacterAdded:connect(function(char)
    char:WaitForChild"HumanoidRootPart":WaitForChild"GrabP":destroy()
end)

--// SERVICES
input_service = game:GetService("UserInputService")

--// VARIABLES
zombies_folder = workspace:WaitForChild("Zombies")
players = game:GetService("Players")
player = players.LocalPlayer
mouse = player:GetMouse()
keybind = Enum.KeyCode.E

--// HEADS
zombies_folder.ChildAdded:connect(function(obj)
    task.wait()
    if obj:FindFirstChild("Head") then
        obj.Head.Size = Vector3.new(4, 4, 4)
    end
end)

--// BARREL CHECK
function barrel()
    for _, v in pairs(workspace.Zombies:GetChildren()) do
        if v:GetAttribute("Type") == "Barrel" then
            local ray = Ray.new(player.Character.HumanoidRootPart.Position, (v.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Unit * 200)
            local hit, pos = workspace:FindPartOnRayWithIgnoreList(ray, {player.Character, workspace.IgnoreParts})
            if hit and hit:IsDescendantOf(v) then
                print("got")
                return v,pos
            end
        end
    end
    return nil
end

--// SHOOT EVENT
function shoot(position)
    if player.Backpack:FindFirstChild("Pistol") then
        player.Backpack:FindFirstChild("Pistol").Parent = player.Character
    end

    local gun = player.Character:FindFirstChildOfClass("Pistol")
    local anim_obj = Instance.new("Animation")
    anim_obj.AnimationId = "rbxassetid://12333487701"
    local anim = player.Character.Humanoid:LoadAnimation(anim_obj)
    anim:play()
    task.wait(.05)
    pcall(function()
        local args = {
            [1] = "Fire",
            [2] = game:GetService("Players").LocalPlayer.Character.Model,
            [3] = position,
            [4] = 1712172355.798967
        }

        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").RemoteEvent:FireServer(unpack(args))
    end)
    task.wait(.75)
    anim:stop()
end

--// INPUT HANDLER
input_service.InputBegan:connect(function(key, gp)
    if key.KeyCode == keybind and not gp then
        local hit, position = barrel()
        print(hit)
        print(position)
        if hit ~= nil then
            shoot(position)
        end
    end
end)

print("COMPILED")

--// OFFICER AURA
getgenv().aura = true
game:service("RunService").Heartbeat:connect(function()
    if getgenv().aura == true then
        pcall(function()
            for _,v in next,workspace.Zombies:GetChildren() do
                if v:FindFirstChild("Head") then
                    local distance = (game.Players.LocalPlayer.Character.Head.Position - v.Head.Position).magnitude
                    if distance <= 10 and v:GetAttribute("Type") ~= "Barrel" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Officer's Sabre") then
                            coroutine.wrap(function()
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Officer's Sabre").Parent = game.Players.LocalPlayer.Character
                                task.wait()
                                game.Players.LocalPlayer.Character:FindFirstChild("Officer's Sabre").Parent = game.Players.LocalPlayer.Backpack
                            end)()
                        end
                        local args = {
                            [1] = "Swing",
                            [2] = "Over"
                        }

                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Officer's Sabre").RemoteEvent:FireServer(unpack(args))

                        local args = {
                            [1] = "HitZombie",
                            [2] = v,
                            [3] = v.Head.Position,
                            [4] = true
                        }

                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Officer's Sabre").RemoteEvent:FireServer(unpack(args))
                    end end end end) end end)

--// SAPPER AURA
game:service("RunService").Heartbeat:connect(function()
    if getgenv().aura == true then
        pcall(function()
            for _,v in next,workspace.Zombies:GetChildren() do
                if v:FindFirstChild("Head") then
                    local distance = (game.Players.LocalPlayer.Character.Head.Position - v.Head.Position).magnitude
                    if distance <= 10 and v:GetAttribute("Type") ~= "Barrel" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Axe") then
                            coroutine.wrap(function()
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Axe").Parent = game.Players.LocalPlayer.Character
                                task.wait()
                                game.Players.LocalPlayer.Character:FindFirstChild("Axe").Parent = game.Players.LocalPlayer.Backpack
                            end)()
                        end
                        local args = {
                            [1] = "Swing",
                            [2] = "Over"
                        }

                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Axe").RemoteEvent:FireServer(unpack(args))

                        local args = {
                            [1] = "HitZombie",
                            [2] = v,
                            [3] = v.Head.Position,
                            [4] = true
                        }

                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Axe").RemoteEvent:FireServer(unpack(args))
                    end end end end) end end)

--// OTHER AURA

getgenv().aura1 = true
game:service("RunService").Heartbeat:connect(function()
    if getgenv().aura1 == true then
        pcall(function()
            for _,v in next,workspace.Zombies:GetChildren() do
                if v:FindFirstChild("Head") then
                    local distance = (game.Players.LocalPlayer.Character.Head.Position - v.Head.Position).magnitude
                    if distance <= 10 and v:GetAttribute("Type") ~= "Barrel" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Sabre") then
                            coroutine.wrap(function()
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Sabre").Parent = game.Players.LocalPlayer.Character
                                task.wait()
                                game.Players.LocalPlayer.Character:FindFirstChild("Sabre").Parent = game.Players.LocalPlayer.Backpack
                            end)()
                        end
                        local args = {
                            [1] = "Swing",
                            [2] = "Over"
                        }

                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sabre").RemoteEvent:FireServer(unpack(args))

                        local args = {
                            [1] = "HitZombie",
                            [2] = v,
                            [3] = v.Head.Position,
                            [4] = true
                        }

                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sabre").RemoteEvent:FireServer(unpack(args))
                    end end end end) end end)

--// GRAB NOTIFIER
coroutine.wrap(function()
    getgenv().notify = true
    while task.wait() do
        pcall(function()
            if getgenv().notify == true then
                for _, player in next, game.Players:GetPlayers() do
                    if player.Character and player.Character:FindFirstChild("Grabbed") then
                        if player.Character.Grabbed.Value > 0 or player.Character.Pin.Runner1.Value ~= nil or player.Character.Pin.Runner2.Value ~= nil or player.Character.Pin.Runner3.Value ~= nil then
                            if not player.Character:FindFirstChild("Notif") then
                                local highlight = Instance.new("Highlight", player.Character)
                                highlight.FillColor = Color3.fromRGB(255, 128, 0)
                                highlight.Name = "Notif"
                            end
                        elseif player.Character:FindFirstChild("Notif") and player.Character.Grabbed.Value == 0 and player.Character.Pin.Runner1.Value == nil and player.Character.Pin.Runner2.Value == nil and player.Character.Pin.Runner3.Value == nil then
                            player.Character.Notif:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)()





