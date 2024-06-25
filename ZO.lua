coroutine.wrap(function()
    while task.wait() do
        pcall(function()
            if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character:SetAttribute("Crushed",false)
                game.Players.LocalPlayer.Character:SetAttribute("GettingFinished",false)

            end
        end)
    end
end)()

coroutine.wrap(function()
    while task.wait() do
        pcall(function()
            if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):SetAttribute("Stunned",false)
            end
        end)
    end
end)()
