local m_h = Instance.new("Highlight",game.Players.LocalPlayer)
local s_h = Instance.new("Highlight",game.Players.LocalPlayer)
s_h.FillTransparency = 1
m_h.FillTransparency = 1
s_h.OutlineColor = Color3.fromRGB(0,0,255)
m_h.OutlineColor = Color3.fromRGB(255,0,0)

while task.wait(1) do
    for _,v in next,game.Players:GetPlayers() do
        if v.Backpack:FindFirstChild("Knife") then
            m_h.Adornee = v.Character
            print(v.Name)
        elseif v.Backpack:FindFirstChild("Gun") then
            s_h.Adornee = v.Character
        end end
end
