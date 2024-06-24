getgenv().fireproximityprompt = function(prompt)
	if type(prompt) ~= "string" and type(prompt) ~= "table" and prompt:IsA("ProximityPrompt") then
        coroutine.wrap(function()
            local old = {
                sight = prompt.RequiresLineOfSight,
                ad = prompt.MaxActivationDistance,
                hd = prompt.HoldDuration,
                en = prompt.Enabled
            }
            prompt.RequiresLineOfSight = false 
            prompt.MaxActivationDistance = 99999999999999999999999999
            prompt.HoldDuration = 0
            prompt.Enabled = false
            prompt:InputHoldBegin()
            task.wait()
            prompt:InputHoldEnd()
            prompt.RequiresLineOfSight = old.sight
            prompt.MaxActivationDistance = old.ad 
            prompt.HoldDuration = old.hd 
            prompt.Enabled = old.en
        end)()
	else 
        warn("expected 'ProximityPrompt'")
	end
end
