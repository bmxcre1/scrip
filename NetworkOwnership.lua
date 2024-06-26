function getNearest(part)
    local last_distance = 9e9
    local closest = nil
    for _, player in next, game.Players:GetPlayers() do
        if player.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.PrimaryPart.Position - part.Position).magnitude
            if distance <= last_distance and player.SimulationRadius > game.Players.LocalPlayer.SimulationRadius then
                last_distance = distance
                closest = player
            end
        else
            warn("[-] Character PrimaryPart not found")
        end
    end
    if closest == game.Players.LocalPlayer then
        return true
    else
        return false
    end
end

function checkDistance(part)  
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local sim_radius = game.Players.LocalPlayer.SimulationRadius
        local distance = (game.Players.LocalPlayer.Character.PrimaryPart.Position - part.Position).magnitude
        if distance <= sim_radius then
            return true
        else 
            return false
        end
    else 
        warn("[-] Character PrimaryPart not found")
    end
end

function isDescendant(part)
    if game.Players.LocalPlayer.Character then
        for _,player in next,game.Players:GetPlayers() do 
            if player ~= game.Players.LocalPlayer and player.Character then
                if part:IsDescendantOf(player.Character) then
                    return false
                end
            end
        end
        
        if part:IsDescendantOf(game.Players.LocalPlayer.Character) then
            return true
        else
            return false
        end
    end
end

function checkAnchor(part)
    if part.Anchored == false then
        for _, weld in next,part:GetJoints() do
            if weld:IsA("Weld") or weld:IsA("WeldConstraint") then
                local otherPart = weld.Part1 == part and weld.Part0 or weld.Part1
                if otherPart and otherPart.Anchored then
                    warn("[-] Part is welded to an anchored part")
                    return false
                end
            end
        end
        return true 
    else
        warn("[-] isnetworkowner(<Part>) only works on unanchored parts")
        return false 
    end
end

function getAge(part)
    if part.ReceiveAge == 0 then
        return true
    else
        return false
    end
end

getgenv().isnetworkowner = function(part)
    if part:IsA("Part") or part:IsA("BasePart") or part:IsA("MeshPart") or part:IsA("UnionOperation") then
        if getAge(part) and checkAnchor(part)  and checkDistance(part) or isDescendant(part)  then
            return true
        else
            return false
        end
    else
        warn("[-] Argument #1 was not a valid part")
    end
end

print("[+] Loaded isnetworkowner(<Part>)")
