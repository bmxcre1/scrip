getgenv().newcclosure = function(f)
    local ret = coroutine.wrap(function(...)
        local args = {coroutine.yield()}
        while true do
            args = {coroutine.wrap(f(table.unpack(args)))}
        end
    end)
    ret()
    return ret
end
