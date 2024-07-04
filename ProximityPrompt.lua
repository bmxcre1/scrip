getgenv().fireproximityprompt = function(prompt)
	assert(prompt.ClassName == "ProximityPrompt", "Expected ProximityPrompt got "..prompt.ClassName)
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
            prompt.HoldDuration = 0
            prompt.Enabled = true
            coroutine.wrap(function()
                for i =1,50 do 
                    for _, prompt_u in ipairs(game.Players.LocalPlayer.PlayerGui.ProximityPrompts:GetChildren()) do 
                        if prompt_u.Name == "Prompt"  then
                            prompt_u.Enabled = false 
                            prompt_u.Enabled = true
                        end
                    end
                end
            end)()
            task.wait(.05)
            prompt:InputHoldBegin()
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

print("[+] Loaded fireproximityprompt(<ProximityPrompt>)")
