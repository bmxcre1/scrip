function getNearest(part)
    local last_distance = 9e9
    local closest = nil
    for _, player in next, game.Players:GetPlayers() do
        if player.Character and player.Character.PrimaryPart ~= nil then
            local distance = (player.Character.PrimaryPart.Position - part.Position).magnitude
            if distance <= last_distance then
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
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.PrimaryPart ~= nil then
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
        if part:IsDescendantOf(game.Players.LocalPlayer.Character) then
            return true
        else
            return false
        end
    end
end

function checkAnchor(part)
    if part.Anchored == false then
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
getgenv().isnetworkowner = function(part)
    if part:IsA("Part") or part:IsA("BasePart") or part:IsA("MeshPart") or part:IsA("UnionOperation") then
        if getAge(part) and checkAnchor(part) and getNearest(part) and checkDistance(part) or isDescendant(part)then
            return true
        else
            return false
        end
    else
        warn("[-] Argument #1 was not a valid part")
    end
end

