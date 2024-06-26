getgenv().getrawmetatable = function(obj)
    local metatable = getmetatable(obj)
    if not metatable then return nil end

    local metatables = {}
    local seen = {}

    while metatable and task.wait() do
        table.insert(metatables, metatable)
        seen[metatable] = true
        metatable = getmetatable(metatable)
    end
    return metatables
end
