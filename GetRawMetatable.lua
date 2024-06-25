getgenv().getrawmetatable = function(obj)
    local metatable = getmetatable(obj)
    if not metatable then return nil end

    local metatables = {}
    while metatable and task.wait() do
        table.insert(metatables, metatable)
        metatable = getmetatable(metatable)
    end
    return metatables
end

getgenv().setrawmetatable = function(obj, mt)
    if type(obj) == 'table' and type(mt) == 'table' then
        setmetatable(obj, mt)
        return true
    else
        return false, "both arguments must be tables."
    end
end

getgenv().setreadonly = function(obj, val)
    if type(obj) == 'table' then
        local mt = getmetatable(obj) or {}
        if val then
            mt.__newindex = function(t, k, v)
                error("attempt to modify readonly table", 2)
            end
        else
            mt.__newindex = nil
        end
        setmetatable(obj, mt)
    else
        error("expected a table for the first argument", 2)
    end
end

getgenv().isreadonly = function(obj)
    if type(obj) == 'table' then
        local mt = getmetatable(obj)
        if mt and mt.__newindex then
            return false
        end
        return true
    else
        error("expected a table for the argument", 2)
    end
end

getgenv().make_readonly = function(obj)
    if type(obj) == 'table' then
        local mt = getmetatable(obj) or {}
        mt.__newindex = function(t, k, v)
            error("attempt to modify readonly table", 2)
        end
        setmetatable(obj, mt)
    else
        error("expected a table for the first argument", 2)
    end
end

getgenv().make_writeable = function(obj)
    if type(obj) == 'table' then
        local mt = getmetatable(obj) or {}
        mt.__newindex = nil
        setmetatable(obj, mt)
    else
        error("expected a table for the first argument", 2)
    end
end
