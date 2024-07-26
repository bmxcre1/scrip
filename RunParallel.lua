
getgenv().getinstances = function()
    return game:GetDescendants()
end

getgenv().getloadedmodules = function()
    local loaded = {}
    for _,v in next,getinstances() do
        if v:IsA("ModuleScript") then
            table.insert(loaded,v)
        end
    end
    return loaded
end


getgenv().getrunningscripts = function()
      local running = {}
    for _,v in next, getinstances() do
        if  v:IsA("LocalScript") and not v.Disabled then
            table.insert(running, v)
        elseif v:IsA("ModuleScript") then
            table.insert(running,v)
        end
    end
    return running
end

getgenv().getscripts = function()
    local scripts = {}
    for _,v in next,getinstances() do
        if v:IsA("ModuleScript") or v:IsA("LocalScript") then
            table.insert(scripts,v)
      end
    end
    return scripts
end



getgenv().fireclickdetector = function(clickdetector, distance)
    assert(typeof(clickdetector) == "Instance" and clickdetector:IsA("ClickDetector"), `arg #1 must be ClickDetector`)
    if distance ~= nil then
        assert(type(distance) == "number", `arg #2 must be type number`)
    end
    local oldCDMaxActivationDistance = clickdetector.MaxActivationDistance
    local oldCDParent = clickdetector.Parent
    local tmpPart = Instance.new("Part")
    tmpPart.Parent = workspace
    tmpPart.CanCollide = false
    tmpPart.Anchored = true
    tmpPart.Transparency = 1
    tmpPart.Size = Vector3.new(30, 30, 30)
    clickdetector.Parent = tmpPart
    clickdetector.MaxActivationDistance = 9e9

    local hb
    hb = game:GetService("RunService").Heartbeat:Connect(function()
        tmpPart.CFrame = workspace.Camera.CFrame
            * CFrame.new(0, 0, -20)
            * CFrame.new(
                workspace.Camera.CFrame.LookVector.X,
                workspace.Camera.CFrame.LookVector.Y,
                workspace.Camera.CFrame.LookVector.Z
            )
        game:GetService("VirtualUser")
            :ClickButton1(Vector2.new(20, 20), workspace:FindFirstChildOfClass("Camera").CFrame)
    end)

    clickdetector.MouseClick:Once(function()
        hb:Disconnect()
        clickdetector.MaxActivationDistance = oldCDMaxActivationDistance
        clickdetector.Parent = oldCDParent
        tmpPart:Destroy()
    end)
end

getgenv().isnetworkowner = function(part)
    assert(typeof(part) == "Instance" and part:IsA("BasePart"), `arg #1 must be BasePart`)
    if part.Anchored then
        return false
    end
    return part.ReceiveAge == 0
end

getgenv().setsimulationradius = function(newRadius, newMaxRadius)
    assert(newRadius, `arg #1 is missing`)
    assert(type(newRadius) == "number", `arg #1 must be type number`)

    local LocalPlayer = game:GetService("Players").LocalPlayer
    if LocalPlayer then
        LocalPlayer.SimulationRadius = newRadius
        LocalPlayer.MaximumSimulationRadius = newMaxRadius or newRadius
    end
end

getgenv().isluau = function()
    return _VERSION == "Luau"
end

getgenv().saveinstance = function(...)
    if not _loaded_saveinstance then
        local params = {
            RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
            SSI = "saveinstance",
        }

        local content = game:HttpGet(params.RepoURL .. params.SSI .. ".luau", true)
        _loaded_saveinstance = loadstring(content, params.SSI)()
    end

    return _loaded_saveinstance(...)
end

getgenv().isscriptable = function(instance, property_name)
    local ok, Result = xpcall(instance.GetPropertyChangedSignal, function(result)
        return result
    end, instance, property_name)

    return ok or not string.find(Result, "scriptable", nil, true)
end
setreadonly(getgenv().debug,false)
getgenv().debug.getinfo = function(f, options)
    if type(options) == "string" then
        options = string.lower(options) 
    else
        options = "sflnu"
    end

    local result = {}

    for index = 1, #options do
        local option = string.sub(options, index, index)
        if "s" == option then
            local short_src = debug.info(f, "s")

            result.short_src = short_src
            result.source = "@" .. short_src
            result.what = if short_src == "[C]" then "C" else "Lua"
        elseif "f" == option then
            result.func = debug.info(f, "f")
        elseif "l" == option then
            result.currentline = debug.info(f, "l")
        elseif "n" == option then
            result.name = debug.info(f, "n")
        elseif "u" == option or option == "a" then
            local numparams, is_vararg = debug.info(f, "a")
            result.numparams = numparams
            result.is_vararg = if is_vararg then 1 else 0

            if "u" == option then
                result.nups = -1 
            end
        end
    end

    return result
end

getgenv().setscriptable = function(object, propertyName, value)
    if typeof(object) ~= "Instance" then
        error("Argument must be an Instance")
    end
    if type(propertyName) ~= "string" then
        error("Property name must be a string")
    end
    


    local metatable = getmetatable(object)
    
    if not metatable then
        error("No metatable found for the given object")
    end
    
    local success, err = pcall(function()
        metatable.__newindex = function(t, key, value)
            if key == propertyName then
                rawset(t, key, value)
            else
                rawset(t, key, value)
            end
        end
    end)

    if not success then
        error("Failed to modify property: " .. tostring(err))
    end
    
    object[propertyName] = value
end

getgenv().fireproximityprompt = function(prompt)
	assert(prompt.ClassName == "ProximityPrompt", "Expected ProximityPrompt, got "..prompt.ClassName)
	if typeof(prompt) == "Instance" and prompt:IsA("ProximityPrompt") then
        coroutine.wrap(function()
            local old = {
                sight = prompt.RequiresLineOfSight,
                ad = prompt.MaxActivationDistance,
                hd = prompt.HoldDuration,
                en = prompt.Enabled
            }
            prompt.RequiresLineOfSight = false 
            prompt.MaxActivationDistance = 999999999
            prompt.HoldDuration = 0.05
            prompt.Enabled = true
            task.wait()
            prompt:InputHoldBegin()
	    task.wait(.05)
            prompt:InputHoldEnd()
            coroutine.wrap(function()
                task.wait(.01)
                prompt.Enabled = old.en
                prompt.MaxActivationDistance = old.ad
                prompt.RequiresLineOfSight = old.sight
                prompt.HoldDuration = old.hd 
            end)()
        end)()
	end
end

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

getgenv().checkcaller = function()
    local ind = 1
    while {} do
        local info = debug.info(ind, "f")
        if type(info) ~= "function" then
            ind = ind - 1
            info = debug.getinfo(ind) 
            info = type(info) == "table" and info or {}
            if info["source"] == "@[C]" and info["name"] == "xpcall" then
                return true
            end
            break;
        end
        ind = ind + 1
    end
    return false 
end

local rawmetatable = getrawmetatable(game)
local old = rawmetatable.__index;
rawmetatable.__index = function(Self, Key)
    if checkcaller() then
        warn("Exploit tried indexing -", Self, Key)
    end
    return old(Self, Key)
end
