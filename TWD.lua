-- // GUI TO LUA \\ --
for _,v in next,game.CoreGui:GetChildren() do
	if v.Name == "TWD" then
		v:Destroy()
	end
end
-- // INSTANCES: 43 | SCRIPTS: 2 | MODULES: 0 \\ --
locating = true
locations = {
	["Military"] = Vector3.new(-1032, 80, 269);
	["Sherrif"] = Vector3.new(-2149, 106, 9);
	["Terminus"] = Vector3.new(-3572, 80, -3480);
	["Woodbury"] = Vector3.new(-8064, 80, -2728);
	["Prison"] =  Vector3.new(-7566, 81, 2075);
	["Town"] = Vector3.new(-4679, 97, 2067)
}

--// SETUP
location_part = Instance.new("Part")
location_part.Name = "Location"
location_part.Anchored = true
location_part.CanCollide = false
location_part.Transparency = 1
local UI = {}

-- // StarterGui.TWD \\ --
UI["1"] = Instance.new("ScreenGui", game.CoreGui)
UI["1"]["Name"] = [[TWD]]

-- // StarterGui.TWD.MainFrame \\ --
UI["2"] = Instance.new("Frame", UI["1"])
UI["2"]["BorderSizePixel"] = 0
UI["2"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16)
UI["2"]["Size"] = UDim2.new(0.35703, 0, 0.46983, 0)
UI["2"]["Position"] = UDim2.new(0.46406, 0, 0.36581, 0)
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2"]["Name"] = [[MainFrame]]

-- // StarterGui.TWD.MainFrame.TopBar \\ --
UI["3"] = Instance.new("Frame", UI["2"])
UI["3"]["BorderSizePixel"] = 0
UI["3"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["3"]["Size"] = UDim2.new(1, 0, 0.08238, 0)
UI["3"]["Position"] = UDim2.new(0, 0, -0.00319, 0)
UI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["3"]["Name"] = [[TopBar]]

-- // StarterGui.TWD.MainFrame.TopBar.Title \\ --
UI["4"] = Instance.new("TextLabel", UI["3"])
UI["4"]["BorderSizePixel"] = 0
UI["4"]["TextXAlignment"] = Enum.TextXAlignment.Left
UI["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["4"]["TextSize"] = 14
UI["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["4"]["TextColor3"] = Color3.fromRGB(201, 201, 201)
UI["4"]["BackgroundTransparency"] = 1
UI["4"]["Size"] = UDim2.new(0.57478, 0, 0.96125, 0)
UI["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["4"]["Text"] = [[THE WALKING DEAD UI]]
UI["4"]["Name"] = [[Title]]
UI["4"]["Position"] = UDim2.new(0.01787, 0, 0.03875, 0)

-- // StarterGui.TWD.MainFrame.LootHolder \\ --
UI["5"] = Instance.new("ScrollingFrame", UI["2"])
UI["5"]["Active"] = true
UI["5"]["BorderSizePixel"] = 0
UI["5"]["CanvasSize"] = UDim2.new(0, 0, 20, 0)
UI["5"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["5"]["Name"] = [[LootHolder]]
UI["5"]["Size"] = UDim2.new(0.38189, 0, 0.83219, 0)
UI["5"]["ScrollBarImageColor3"] = Color3.fromRGB(163, 163, 163)
UI["5"]["Position"] = UDim2.new(0.61745, 0, 0.16775, 0)
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["5"]["ScrollBarThickness"] = 0

-- // StarterGui.TWD.MainFrame.LootHolder.UIListLayout \\ --
UI["6"] = Instance.new("UIListLayout", UI["5"])
UI["6"]["Padding"] = UDim.new(0, 5)
UI["6"]["SortOrder"] = Enum.SortOrder.LayoutOrder

-- // StarterGui.TWD.MainFrame.Header \\ --
UI["7"] = Instance.new("Frame", UI["2"])
UI["7"]["BorderSizePixel"] = 0
UI["7"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["7"]["Size"] = UDim2.new(0.38255, 0, 0.05904, 0)
UI["7"]["Position"] = UDim2.new(0.61745, 0, 0.07919, 0)
UI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["7"]["Name"] = [[Header]]

-- // StarterGui.TWD.MainFrame.Header.Content \\ --
UI["8"] = Instance.new("TextLabel", UI["7"])
UI["8"]["BorderSizePixel"] = 0
UI["8"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["8"]["TextSize"] = 14
UI["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["8"]["TextColor3"] = Color3.fromRGB(201, 201, 201)
UI["8"]["BackgroundTransparency"] = 1
UI["8"]["Size"] = UDim2.new(1, 0, 1, 0)
UI["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["8"]["Text"] = [[LOOT]]
UI["8"]["Name"] = [[Content]]
UI["8"]["Position"] = UDim2.new(0, 0, 0, 0)

-- // StarterGui.TWD.MainFrame.Handler \\ --
UI["9"] = Instance.new("LocalScript", UI["2"])
UI["9"]["Name"] = [[Handler]]

-- // StarterGui.TWD.MainFrame.Handler.Object \\ --
UI["a"] = Instance.new("TextButton", UI["9"])
UI["a"]["BorderSizePixel"] = 0
UI["a"]["TextXAlignment"] = Enum.TextXAlignment.Right
UI["a"]["TextSize"] = 14
UI["a"]["TextColor3"] = Color3.fromRGB(201, 201, 201)
UI["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["a"]["Size"] = UDim2.new(0.961, 0, 0.0044, 0)
UI["a"]["BackgroundTransparency"] = 1
UI["a"]["Name"] = [[Object]]
UI["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["a"]["Text"] = [[AK-47]]
UI["a"]["Position"] = UDim2.new(0, 0, -0, 0)

-- // StarterGui.TWD.MainFrame.Handler.Object.Icon \\ --
UI["b"] = Instance.new("ImageLabel", UI["a"])
UI["b"]["BorderSizePixel"] = 0
UI["b"]["ImageTransparency"] = 0.7
UI["b"]["ImageColor3"] = Color3.fromRGB(255, 34, 34)
UI["b"]["Image"] = [[http://www.roblox.com/asset/?id=6035107928]]
UI["b"]["Size"] = UDim2.new(0, 27, 0, 20)
UI["b"]["BackgroundTransparency"] = 1
UI["b"]["Name"] = [[Icon]]

-- // StarterGui.TWD.MainFrame.Handler.Object.Icon.UIAspectRatioConstraint \\ --
UI["c"] = Instance.new("UIAspectRatioConstraint", UI["b"])


-- // StarterGui.TWD.MainFrame.Location \\ --
UI["d"] = Instance.new("TextButton", UI["2"])
UI["d"]["BorderSizePixel"] = 0
UI["d"]["AutoButtonColor"] = false
UI["d"]["TextSize"] = 14
UI["d"]["TextColor3"] = Color3.fromRGB(101, 101, 101)
UI["d"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["d"]["RichText"] = true
UI["d"]["Size"] = UDim2.new(0.50426, 0, 0.1199, 0)
UI["d"]["Name"] = [[Location]]
UI["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["d"]["Text"] = [[LOCATE OTHERS: <font color="rgb(200,0,0)">DISABLED</font>]]
UI["d"]["Position"] = UDim2.new(0.05593, 0, 0.16605, 0)

-- // StarterGui.TWD.MainFrame.Location.UICorner \\ --
UI["e"] = Instance.new("UICorner", UI["d"])
UI["e"]["CornerRadius"] = UDim.new(0, 4)

-- // StarterGui.TWD.MainFrame.TPZombies \\ --
UI["f"] = Instance.new("TextButton", UI["2"])
UI["f"]["BorderSizePixel"] = 0
UI["f"]["AutoButtonColor"] = false
UI["f"]["TextSize"] = 14
UI["f"]["TextColor3"] = Color3.fromRGB(101, 101, 101)
UI["f"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["f"]["RichText"] = true
UI["f"]["Size"] = UDim2.new(0.50426, 0, 0.1199, 0)
UI["f"]["Name"] = [[TPZombies]]
UI["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["f"]["Text"] = [[TELEPORT ZOMBIES]]
UI["f"]["Position"] = UDim2.new(0.05593, 0, 0.32841, 0)

-- // StarterGui.TWD.MainFrame.TPZombies.UICorner \\ --
UI["10"] = Instance.new("UICorner", UI["f"])
UI["10"]["CornerRadius"] = UDim.new(0, 4)

-- // StarterGui.TWD.MainFrame.TP \\ --
UI["11"] = Instance.new("Frame", UI["2"])
UI["11"]["Active"] = true
UI["11"]["BorderSizePixel"] = 0
UI["11"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["11"]["Selectable"] = true
UI["11"]["Size"] = UDim2.new(0.50426, 0, 0.1199, 0)
UI["11"]["Position"] = UDim2.new(0.05593, 0, 0.49077, 0)
UI["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["11"]["Name"] = [[TP]]

-- // StarterGui.TWD.MainFrame.TP.UICorner \\ --
UI["12"] = Instance.new("UICorner", UI["11"])
UI["12"]["CornerRadius"] = UDim.new(0, 4)

-- // StarterGui.TWD.MainFrame.TP.PlayerName \\ --
UI["13"] = Instance.new("TextBox", UI["11"])
UI["13"]["CursorPosition"] = -1
UI["13"]["Active"] = false
UI["13"]["TextColor3"] = Color3.fromRGB(101, 101, 101)
UI["13"]["PlaceholderColor3"] = Color3.fromRGB(101, 101, 101)
UI["13"]["BorderSizePixel"] = 0
UI["13"]["TextSize"] = 14
UI["13"]["Name"] = [[PlayerName]]
UI["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["13"]["Selectable"] = false
UI["13"]["PlaceholderText"] = [[..username..]]
UI["13"]["Size"] = UDim2.new(0.60959, 0, 1, 0)
UI["13"]["Position"] = UDim2.new(0.39041, 0, 0, 0)
UI["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["13"]["Text"] = [[]]
UI["13"]["BackgroundTransparency"] = 1

-- // StarterGui.TWD.MainFrame.TP.Button \\ --
UI["14"] = Instance.new("TextButton", UI["11"])
UI["14"]["Active"] = false
UI["14"]["BorderSizePixel"] = 0
UI["14"]["AutoButtonColor"] = false
UI["14"]["TextSize"] = 14
UI["14"]["TextColor3"] = Color3.fromRGB(101, 101, 101)
UI["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["14"]["Selectable"] = false
UI["14"]["Size"] = UDim2.new(0.36379, 0, 1, 0)
UI["14"]["BackgroundTransparency"] = 1
UI["14"]["Name"] = [[Button]]
UI["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["14"]["Text"] = [[Teleport]]
UI["14"]["Position"] = UDim2.new(0.02662, 0, 0, 0)

-- // StarterGui.TWD.MainFrame.Fling \\ --
UI["15"] = Instance.new("TextButton", UI["2"])
UI["15"]["BorderSizePixel"] = 0
UI["15"]["AutoButtonColor"] = false
UI["15"]["TextSize"] = 14
UI["15"]["TextColor3"] = Color3.fromRGB(101, 101, 101)
UI["15"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["15"]["RichText"] = true
UI["15"]["Size"] = UDim2.new(0.50426, 0, 0.1199, 0)
UI["15"]["Name"] = [[Fling]]
UI["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["15"]["Text"] = [[FLING ZOMBIES]]
UI["15"]["Position"] = UDim2.new(0.05593, 0, 0.6679, 0)

-- // StarterGui.TWD.MainFrame.Fling.UICorner \\ --
UI["16"] = Instance.new("UICorner", UI["15"])
UI["16"]["CornerRadius"] = UDim.new(0, 4)

-- // StarterGui.TWD.MainFrame.LocateUI \\ --
UI["17"] = Instance.new("Frame", UI["2"])
UI["17"]["BorderSizePixel"] = 0
UI["17"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16)
UI["17"]["Size"] = UDim2.new(0.35703, 0, 1.14341, 0)
UI["17"]["Position"] = UDim2.new(-0.44422, 0, -0.0733, 0)
UI["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["17"]["Name"] = [[LocateUI]]

-- // StarterGui.TWD.MainFrame.LocateUI.Military \\ --
UI["18"] = Instance.new("TextButton", UI["17"])
UI["18"]["BorderSizePixel"] = 0
UI["18"]["AutoButtonColor"] = false
UI["18"]["TextSize"] = 14
UI["18"]["TextColor3"] = Color3.fromRGB(101, 101, 101)
UI["18"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["18"]["RichText"] = true
UI["18"]["Size"] = UDim2.new(0.88022, 0, 0.11053, 0)
UI["18"]["Name"] = [[Military]]
UI["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["18"]["Text"] = [[MILITARY BASE]]
UI["18"]["Position"] = UDim2.new(0.05593, 0, 0.1088, 0)

-- // StarterGui.TWD.MainFrame.LocateUI.Military.UICorner \\ --
UI["19"] = Instance.new("UICorner", UI["18"])
UI["19"]["CornerRadius"] = UDim.new(0, 4)

-- // StarterGui.TWD.MainFrame.LocateUI.TopBar \\ --
UI["1a"] = Instance.new("Frame", UI["17"])
UI["1a"]["BorderSizePixel"] = 0
UI["1a"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["1a"]["Size"] = UDim2.new(1, 0, 0.08238, 0)
UI["1a"]["Position"] = UDim2.new(0, 0, -0.00319, 0)
UI["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1a"]["Name"] = [[TopBar]]

-- // StarterGui.TWD.MainFrame.LocateUI.TopBar.Title \\ --
UI["1b"] = Instance.new("TextLabel", UI["1a"])
UI["1b"]["BorderSizePixel"] = 0
UI["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["1b"]["TextSize"] = 14
UI["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["1b"]["TextColor3"] = Color3.fromRGB(201, 201, 201)
UI["1b"]["BackgroundTransparency"] = 1
UI["1b"]["Size"] = UDim2.new(1, 0, 0.96125, 0)
UI["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1b"]["Text"] = [[LOCATIONS]]
UI["1b"]["Name"] = [[Title]]
UI["1b"]["Position"] = UDim2.new(0, 0, 0.03875, 0)

-- // StarterGui.TWD.MainFrame.LocateUI.Sherrif \\ --
UI["1c"] = Instance.new("TextButton", UI["17"])
UI["1c"]["BorderSizePixel"] = 0
UI["1c"]["AutoButtonColor"] = false
UI["1c"]["TextSize"] = 14
UI["1c"]["TextColor3"] = Color3.fromRGB(101, 101, 101)
UI["1c"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["1c"]["RichText"] = true
UI["1c"]["Size"] = UDim2.new(0.88022, 0, 0.11053, 0)
UI["1c"]["Name"] = [[Sherrif]]
UI["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1c"]["Text"] = [[SHERRIF DEPT.]]
UI["1c"]["Position"] = UDim2.new(0.05593, 0, 0.23765, 0)

-- // StarterGui.TWD.MainFrame.LocateUI.Sherrif.UICorner \\ --
UI["1d"] = Instance.new("UICorner", UI["1c"])
UI["1d"]["CornerRadius"] = UDim.new(0, 4)

-- // StarterGui.TWD.MainFrame.LocateUI.Terminus \\ --
UI["1e"] = Instance.new("TextButton", UI["17"])
UI["1e"]["BorderSizePixel"] = 0
UI["1e"]["AutoButtonColor"] = false
UI["1e"]["TextSize"] = 14
UI["1e"]["TextColor3"] = Color3.fromRGB(101, 101, 101)
UI["1e"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["1e"]["RichText"] = true
UI["1e"]["Size"] = UDim2.new(0.88022, 0, 0.11053, 0)
UI["1e"]["Name"] = [[Terminus]]
UI["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1e"]["Text"] = [[TERMINUS]]
UI["1e"]["Position"] = UDim2.new(0.05593, 0, 0.3665, 0)

-- // StarterGui.TWD.MainFrame.LocateUI.Terminus.UICorner \\ --
UI["1f"] = Instance.new("UICorner", UI["1e"])
UI["1f"]["CornerRadius"] = UDim.new(0, 4)

-- // StarterGui.TWD.MainFrame.LocateUI.Prison \\ --
UI["20"] = Instance.new("TextButton", UI["17"])
UI["20"]["BorderSizePixel"] = 0
UI["20"]["AutoButtonColor"] = false
UI["20"]["TextSize"] = 14
UI["20"]["TextColor3"] = Color3.fromRGB(101, 101, 101)
UI["20"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["20"]["RichText"] = true
UI["20"]["Size"] = UDim2.new(0.88022, 0, 0.11053, 0)
UI["20"]["Name"] = [[Prison]]
UI["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["20"]["Text"] = [[PRISON]]
UI["20"]["Position"] = UDim2.new(0.05593, 0, 0.63099, 0)

-- // StarterGui.TWD.MainFrame.LocateUI.Prison.UICorner \\ --
UI["21"] = Instance.new("UICorner", UI["20"])
UI["21"]["CornerRadius"] = UDim.new(0, 4)

-- // StarterGui.TWD.MainFrame.LocateUI.Woodbury \\ --
UI["22"] = Instance.new("TextButton", UI["17"])
UI["22"]["BorderSizePixel"] = 0
UI["22"]["AutoButtonColor"] = false
UI["22"]["TextSize"] = 14
UI["22"]["TextColor3"] = Color3.fromRGB(101, 101, 101)
UI["22"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["22"]["RichText"] = true
UI["22"]["Size"] = UDim2.new(0.88022, 0, 0.11053, 0)
UI["22"]["Name"] = [[Woodbury]]
UI["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["22"]["Text"] = [[WOODBURY]]
UI["22"]["Position"] = UDim2.new(0.05593, 0, 0.50213, 0)

-- // StarterGui.TWD.MainFrame.LocateUI.Woodbury.UICorner \\ --
UI["23"] = Instance.new("UICorner", UI["22"])
UI["23"]["CornerRadius"] = UDim.new(0, 4)

-- // StarterGui.TWD.MainFrame.LocateUI.Town \\ --
UI["24"] = Instance.new("TextButton", UI["17"])
UI["24"]["BorderSizePixel"] = 0
UI["24"]["AutoButtonColor"] = false
UI["24"]["TextSize"] = 14
UI["24"]["TextColor3"] = Color3.fromRGB(101, 101, 101)
UI["24"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["24"]["RichText"] = true
UI["24"]["Size"] = UDim2.new(0.88022, 0, 0.11053, 0)
UI["24"]["Name"] = [[Town]]
UI["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["24"]["Text"] = [[TOWN]]
UI["24"]["Position"] = UDim2.new(0.05593, 0, 0.77001, 0)

-- // StarterGui.TWD.MainFrame.LocateUI.Town.UICorner \\ --
UI["25"] = Instance.new("UICorner", UI["24"])
UI["25"]["CornerRadius"] = UDim.new(0, 4)

-- // StarterGui.TWD.MainFrame.LocateUI.Unlocate \\ --
UI["26"] = Instance.new("TextButton", UI["17"])
UI["26"]["BorderSizePixel"] = 0
UI["26"]["AutoButtonColor"] = false
UI["26"]["TextSize"] = 14
UI["26"]["TextColor3"] = Color3.fromRGB(101, 34, 34)
UI["26"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11)
UI["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["26"]["RichText"] = true
UI["26"]["Size"] = UDim2.new(0.88022, 0, 0.06212, 0)
UI["26"]["Name"] = [[Unlocate]]
UI["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["26"]["Text"] = [[UNLOCATE]]
UI["26"]["Position"] = UDim2.new(0.05593, 0, 0.91201, 0)

-- // StarterGui.TWD.MainFrame.LocateUI.Unlocate.UICorner \\ --
UI["27"] = Instance.new("UICorner", UI["26"])
UI["27"]["CornerRadius"] = UDim.new(0, 4)

-- // StarterGui.TWD.MainFrame.LocateUI.Handler \\ --
UI["28"] = Instance.new("LocalScript", UI["17"])
UI["28"]["Name"] = [[Handler]]

-- // StarterGui.TWD.MainFrame.LocateUI.Handler.Object \\ --
UI["29"] = Instance.new("TextButton", UI["28"])
UI["29"]["BorderSizePixel"] = 0
UI["29"]["TextXAlignment"] = Enum.TextXAlignment.Right
UI["29"]["TextSize"] = 14
UI["29"]["TextColor3"] = Color3.fromRGB(201, 201, 201)
UI["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["29"]["Size"] = UDim2.new(0.961, 0, 0.0044, 0)
UI["29"]["BackgroundTransparency"] = 1
UI["29"]["Name"] = [[Object]]
UI["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["29"]["Text"] = [[AK-47]]
UI["29"]["Position"] = UDim2.new(0, 0, -0, 0)

-- // StarterGui.TWD.MainFrame.LocateUI.Handler.Object.Icon \\ --
UI["2a"] = Instance.new("ImageLabel", UI["29"])
UI["2a"]["BorderSizePixel"] = 0
UI["2a"]["ImageTransparency"] = 0.7
UI["2a"]["ImageColor3"] = Color3.fromRGB(255, 34, 34)
UI["2a"]["Image"] = [[http://www.roblox.com/asset/?id=6035107928]]
UI["2a"]["Size"] = UDim2.new(0, 27, 0, 20)
UI["2a"]["BackgroundTransparency"] = 1
UI["2a"]["Name"] = [[Icon]]

-- // StarterGui.TWD.MainFrame.LocateUI.Handler.Object.Icon.UIAspectRatioConstraint \\ --
UI["2b"] = Instance.new("UIAspectRatioConstraint", UI["2a"])


-- // StarterGui.TWD.MainFrame.Handler \\ --
local function SCRIPT_9()
local script = UI["9"]
	--// TWD UI
	
	
	--// SERVICES
	run_service = game:GetService("RunService")
	input_service = game:GetService("UserInputService")
	
	--// VARIABLES 
	loot_folder = workspace:WaitForChild("Loot")
	walker_folder = workspace:WaitForChild("Walkers")
	object_button = script.Object
	loot_list = script.Parent.LootHolder
	player = game.Players.LocalPlayer
	
	--// UI TOGGLE
	input_service.InputBegan:connect(function(key,gp)
		if not gp and key.KeyCode == Enum.KeyCode.X then
			script.Parent.Visible = not script.Parent.Visible
		end
	end)
	
	--// DRAG
	script.Parent.Active = true
	script.Parent.Interactable = true
	script.Parent.Draggable = true
	
	--// LOOT HANDLER
	
	coroutine.wrap(function()
		--// INITIALIZATION
		local allocated = {}
		for _,loot in next,loot_folder:GetChildren() do 
			local clone_button = object_button:clone()
			clone_button.Parent = loot_list
			clone_button.Text = loot.Name
			allocated[loot] = clone_button
			coroutine.wrap(function()
				clone_button.MouseButton1Click:connect(function()
					if loot:IsA("Model") then
						if loot:FindFirstChildOfClass("Part") then
							location_part:ClearAllChildren()
							location_part.Parent = workspace
							location_part.CFrame = loot:FindFirstChildOfClass("Part").CFrame
							local a = Instance.new("Attachment",location_part)
							local beam = Instance.new("Beam",location_part)
							beam.FaceCamera = true
							beam.Width0 = .5
							beam.Width1 = .5
							beam.Attachment0 = a
							beam.Attachment1 = game.Players.LocalPlayer.Character.Head.FaceFrontAttachment 
						elseif loot:FindFirstChildOfClass("MeshPart") then
							location_part:ClearAllChildren()
							location_part.Parent = workspace
							location_part.CFrame = loot:FindFirstChildOfClass("MeshPart").CFrame
							local a = Instance.new("Attachment",location_part)
							local beam = Instance.new("Beam",location_part)
							beam.FaceCamera = true
							beam.Width0 = .5
							beam.Width1 = .5
							beam.Attachment0 = a
							beam.Attachment1 = game.Players.LocalPlayer.Character.Head.FaceFrontAttachment 
						else 
							warn("unable to find a valid teleportable part")
						end
						
					elseif loot:IsA("Part") or loot:IsA("MeshPart") then
						location_part:ClearAllChildren()
						location_part.Parent = workspace
						location_part.CFrame = loot.CFrame
						local a = Instance.new("Attachment",location_part)
						local beam = Instance.new("Beam",location_part)
						beam.FaceCamera = true
						beam.Width0 = .5
						beam.Width1 = .5
						beam.Attachment0 = a
						beam.Attachment1 = game.Players.LocalPlayer.Character.Head.FaceFrontAttachment 
					end
				end)
			end)()
		end
		
		
		loot_folder.ChildRemoved:connect(function(loot)
			task.wait()
			if allocated[loot] ~= nil then
				allocated[loot]:Destroy()
			end
		end)
		
		loot_folder.ChildAdded:connect(function(loot)
			local clone_button = object_button:clone()
			clone_button.Parent = loot_list
			clone_button.Text = loot.Name
			allocated[loot] = clone_button
			coroutine.wrap(function()
				clone_button.MouseButton1Click:connect(function()
					if loot:IsA("Model") then
						if loot:FindFirstChildOfClass("Part") then
							location_part:ClearAllChildren()
							location_part.Parent = workspace
							location_part.CFrame = loot:FindFirstChildOfClass("Part").CFrame 

							local a = Instance.new("Attachment",location_part)
							local beam = Instance.new("Beam",location_part)
							beam.FaceCamera = true
							beam.Width0 = .5
							beam.Width1 = .5
							beam.Attachment0 = a
							beam.Attachment1 = game.Players.LocalPlayer.Character.Head.FaceFrontAttachment 		
						elseif loot:FindFirstChildOfClass("MeshPart") then
							location_part:ClearAllChildren()
							location_part.Parent = workspace
							location_part.CFrame = loot:FindFirstChildOfClass("MeshPart").CFrame 

							local a = Instance.new("Attachment",location_part)
							local beam = Instance.new("Beam",location_part)
							beam.FaceCamera = true
							beam.Width0 = .5
							beam.Width1 = .5
							beam.Attachment0 = a
							beam.Attachment1 = game.Players.LocalPlayer.Character.Head.FaceFrontAttachment 		
						else 
							warn("unable to find a valid teleportable part")
						end
	
					elseif loot:IsA("Part") or loot:IsA("MeshPart") then
						location_part:ClearAllChildren()
						location_part.Parent = workspace
						location_part.CFrame = loot.CFrame
						local a = Instance.new("Attachment",location_part)
						local beam = Instance.new("Beam",location_part)
						beam.FaceCamera = true
						beam.Width0 = .5
						beam.Width1 = .5
						beam.Attachment0 = a
						beam.Attachment1 = game.Players.LocalPlayer.Character.Head.FaceFrontAttachment 
					end
				end)
			end)()
		end)
	end)()
	
	
	--// BUTTONS
	locate = script.Parent:WaitForChild("Location")
	zombies = script.Parent:WaitForChild("TPZombies")
	fling = script.Parent:WaitForChild("Fling")
	
	--// HOLDERS
	tp = script.Parent:WaitForChild("TP")
	
	--// LOCATION HANDLER
	enabled = false 
	highlight_cache = {}
	locate.RichText = true
	locate.MouseButton1Click:connect(function()
		enabled = not enabled
		if enabled == true then
			locate.Text = [[LOCATE OTHERS: <font color="rgb(0,200,0)">ENABLED</font>]]
		else
			locate.Text = [[LOCATE OTHERS: <font color="rgb(200,0,0)">DISABLED</font>]]
		end
	end)
	
	coroutine.wrap(function()
		while task.wait(1) do 
			if enabled == true then
				for _,p in next,game.Players:GetPlayers() do 
					if p ~= player then
						if p.Character and not p.Character:FindFirstChild("LocateHighlight") then
							local highlight = Instance.new("Highlight",p.Character)
							highlight.Name = "LocateHighlight"
							table.insert(highlight_cache,highlight)
						end
					end
				end
			elseif enabled == false and #highlight_cache > 0 then
				for _,highlight in next,highlight_cache do
					highlight:Destroy()
				end
			end
		end
	end)()
	
	--// ZOMBIE TELEPORTER
	zombies.MouseButton1Click:connect(function()
		for _,zombie in next,walker_folder:GetChildren() do 
			if zombie:FindFirstChild("HumanoidRootPart") then
				if isnetworkowner(zombie.HumanoidRootPart) then
					zombie.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame + player.Character.HumanoidRootPart.CFrame.LookVector*3
				end
			end
		end
	end)
	
	--// TELEPORTER
	tp.Button.MouseButton1Click:Connect(function()
		local input_name = tp.PlayerName.Text:lower()
		for _, p in pairs(game.Players:GetPlayers()) do 
			local adjusted_name = p.Name:sub(1, #input_name):lower()
			if adjusted_name == input_name then
				if p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame + -p.Character.HumanoidRootPart.CFrame.LookVector * 10
				end
				break
			end
		end
	end)
	
	--// FLING ZOMBIES
	fling.MouseButton1Click:connect(function()
		for _,zombie in next,walker_folder:GetChildren() do 
			if zombie:FindFirstChild("HumanoidRootPart") then
				if isnetworkowner(zombie.HumanoidRootPart) then
					zombie.HumanoidRootPart.Velocity = Vector3.new(999999,9995999,999999999)
				end
			end
		end
	end)
end
task.spawn(SCRIPT_9)
-- // StarterGui.TWD.MainFrame.LocateUI.Handler \\ --
local function SCRIPT_28()
local script = UI["28"]
	--// DRAG
	script.Parent.Active = true
	script.Parent.Interactable = true
	script.Parent.Draggable = true
	
	holder = script.Parent
	
	--// DATA
	
	
	for _,button in next,holder:GetChildren() do
		if button:IsA("TextButton") then
			if button.Name == "Unlocate" then
				button.MouseButton1Click:connect(function()
					location_part:ClearAllChildren()
					location_part.Parent = nil
				end)
			else 
				button.MouseButton1Click:connect(function()
					for name,vector in next,locations do 
						if name == button.Name then
							location_part:ClearAllChildren()
							location_part.Parent = workspace
							location_part.CFrame = CFrame.new(vector)
							local a = Instance.new("Attachment",location_part)
							local beam = Instance.new("Beam",location_part)
							beam.FaceCamera = true
							beam.Width0 = .5
							beam.Width1 = .5
							beam.Attachment0 = a
							beam.Attachment1 = game.Players.LocalPlayer.Character.Head.FaceFrontAttachment
							break
						end
					end
				end)
			end
		end
	end
end
task.spawn(SCRIPT_28)

return UI["1"], require;
