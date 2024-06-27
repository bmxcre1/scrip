getgenv().toggled = false

game:service"UserInputService".InputBegan:connect(function(key,chat)
    if not chat and key.KeyCode == Enum.KeyCode.F6 then
        getgenv().toggled = not getgenv().toggled
    end
end)

game:service"RunService".Heartbeat:connect(function()
    if getgenv().toggled then
        mouse1click()
    end
end)
