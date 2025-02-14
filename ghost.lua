--// SERVICES
local runService = game:GetService("RunService")

--// VARIABLES
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

--// CONSTANTS
local SWING_SPEED = 200

--// MAIN LOOP
runService.RenderStepped:connect(function()
  if localPlayer and localPlayer.Character:FindFirstChild("Humanoid") then
    local animator = localPlayer.Character.Humanoid.Animator

    for _, track in next, animator:GetPlayingAnimationTracks() do
      local trackName = track.Animation.Name
      if tonumber(trackName) then
        track:AdjustSpeed(SWING_SPEED)
      end
    end
  end
end)
