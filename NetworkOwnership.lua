--// ISNETWORKOWNER
function owner(part)
    assert(typeof(part) == "Instance", "Expected type Instance for Arg 1 for isnetworkowner")
    setidentity(2)
    local success, err = pcall(function()
        local age = part.ReceiveAge
    end)
    
    return not part.Anchored and part.ReceiveAge == 0
end

getgenv().isnetworkowner = owner
