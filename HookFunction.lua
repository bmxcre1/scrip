getgenv().hookfunction = function(old_func, hook_func)
    if type(old_func) == "function" and type(hook_func) == "function" then
        local original_func = old_func  
        _G[old_func] = function(...)
            return hook_func(original_func, ...)
        end
        return original_func
    else
        return nil, "Both args must be functions"
    end
end

print("[+] Loaded hookfunction(<Old>, <New>)")
