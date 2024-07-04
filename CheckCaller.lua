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
