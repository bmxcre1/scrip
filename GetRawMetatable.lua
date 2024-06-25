getgenv().getrawmetatable = function(object)  
    return debug.getmetatable(object)
end
print("[+] Loaded getrawmetatable(<Object>)")
