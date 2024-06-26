-- // GUI TO LUA \\ --

-- // INSTANCES: 27 | SCRIPTS: 1 | MODULES: 7 \\ --

local UI = {}

-- // StarterGui.InternalUI \\ --
UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
UI["1"]["Enabled"] = false
UI["1"]["Name"] = [[InternalUI]]

-- // StarterGui.InternalUI.Holder \\ --
UI["2"] = Instance.new("Frame", UI["1"])
UI["2"]["BorderSizePixel"] = 0
UI["2"]["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
UI["2"]["ClipsDescendants"] = true
UI["2"]["Size"] = UDim2.new(0.34676, 0, 0.46508, 0)
UI["2"]["Position"] = UDim2.new(0.25873, 0, 0.30944, 0)
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2"]["Name"] = [[Holder]]

-- // StarterGui.InternalUI.Holder.TopBar \\ --
UI["3"] = Instance.new("Frame", UI["2"])
UI["3"]["BorderSizePixel"] = 0
UI["3"]["BackgroundColor3"] = Color3.fromRGB(46, 46, 46)
UI["3"]["Size"] = UDim2.new(1, 0, 0.08695, 0)
UI["3"]["Position"] = UDim2.new(0, 0, -0, 0)
UI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["3"]["Name"] = [[TopBar]]

-- // StarterGui.InternalUI.Holder.TopBar.UICorner \\ --
UI["4"] = Instance.new("UICorner", UI["3"])


-- // StarterGui.InternalUI.Holder.TopBar.Bottom \\ --
UI["5"] = Instance.new("Frame", UI["3"])
UI["5"]["BorderSizePixel"] = 0
UI["5"]["BackgroundColor3"] = Color3.fromRGB(46, 46, 46)
UI["5"]["Size"] = UDim2.new(1, 0, 0.30898, 0)
UI["5"]["Position"] = UDim2.new(0, 0, 0.69102, 0)
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["5"]["Name"] = [[Bottom]]

-- // StarterGui.InternalUI.Holder.TopBar.Name \\ --
UI["6"] = Instance.new("TextLabel", UI["3"])
UI["6"]["BorderSizePixel"] = 0
UI["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["6"]["TextSize"] = 14
UI["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["6"]["BackgroundTransparency"] = 1
UI["6"]["Size"] = UDim2.new(0.11952, 0, 0.95508, 0)
UI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["6"]["Text"] = [[editor]]
UI["6"]["Name"] = [[Name]]
UI["6"]["Position"] = UDim2.new(0.0619, 0, 0.04492, 0)

-- // StarterGui.InternalUI.Holder.TopBar.Icon \\ --
UI["7"] = Instance.new("ImageLabel", UI["3"])
UI["7"]["ZIndex"] = 2
UI["7"]["BorderSizePixel"] = 0
UI["7"]["ImageTransparency"] = 0.65
UI["7"]["Image"] = [[http://www.roblox.com/asset/?id=6022668888]]
UI["7"]["Size"] = UDim2.new(0.053, 0, 0.91428, 0)
UI["7"]["BackgroundTransparency"] = 1
UI["7"]["Name"] = [[Icon]]
UI["7"]["Position"] = UDim2.new(0.01429, 0, 0.08572, 0)

-- // StarterGui.InternalUI.Holder.TopBar.Icon.UIAspectRatioConstraint \\ --
UI["8"] = Instance.new("UIAspectRatioConstraint", UI["7"])


-- // StarterGui.InternalUI.Holder.TopBar.Build \\ --
UI["9"] = Instance.new("TextLabel", UI["3"])
UI["9"]["BorderSizePixel"] = 0
UI["9"]["TextTransparency"] = 0.65
UI["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["9"]["TextSize"] = 12
UI["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["9"]["BackgroundTransparency"] = 1
UI["9"]["Size"] = UDim2.new(0.16006, 0, 0.95508, 0)
UI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["9"]["Text"] = [[build  v0.15]]
UI["9"]["Name"] = [[Build]]
UI["9"]["Position"] = UDim2.new(0.18142, 0, 0.04492, 0)

-- // StarterGui.InternalUI.Holder.UICorner \\ --
UI["a"] = Instance.new("UICorner", UI["2"])


-- // StarterGui.InternalUI.Holder.CodeContainer \\ --
UI["b"] = Instance.new("ScrollingFrame", UI["2"])
UI["b"]["Active"] = true
UI["b"]["BorderSizePixel"] = 0
UI["b"]["CanvasSize"] = UDim2.new(0, 4, 20, 0)
UI["b"]["TopImage"] = [[]]
UI["b"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.ScrollBar
UI["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["b"]["Name"] = [[CodeContainer]]
UI["b"]["HorizontalScrollBarInset"] = Enum.ScrollBarInset.ScrollBar
UI["b"]["BottomImage"] = [[]]
UI["b"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY
UI["b"]["Size"] = UDim2.new(1, 0, 0.73423, 0)
UI["b"]["Position"] = UDim2.new(0, 0, 0.11152, 0)
UI["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["b"]["ScrollBarThickness"] = 2
UI["b"]["BackgroundTransparency"] = 1

-- // StarterGui.InternalUI.Holder.CodeContainer.CodeIndent \\ --
UI["c"] = Instance.new("TextLabel", UI["b"])
UI["c"]["TextWrapped"] = true
UI["c"]["ZIndex"] = 5
UI["c"]["BorderSizePixel"] = 0
UI["c"]["TextTransparency"] = 0.38
UI["c"]["TextYAlignment"] = Enum.TextYAlignment.Top
UI["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["c"]["TextSize"] = 14
UI["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["c"]["BackgroundTransparency"] = 1
UI["c"]["Size"] = UDim2.new(0.045, 0, 10, 0)
UI["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["c"]["Text"] = [[1]]
UI["c"]["Name"] = [[CodeIndent]]
UI["c"]["Position"] = UDim2.new(0, 0, 0.01519, 0)

-- // StarterGui.InternalUI.Holder.CodeContainer.CodeField \\ --
UI["d"] = Instance.new("TextBox", UI["b"])
UI["d"]["Active"] = false
UI["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["d"]["ZIndex"] = 5
UI["d"]["BorderSizePixel"] = 0
UI["d"]["TextXAlignment"] = Enum.TextXAlignment.Left
UI["d"]["TextWrapped"] = true
UI["d"]["TextTransparency"] = 1
UI["d"]["TextSize"] = 14
UI["d"]["Name"] = [[CodeField]]
UI["d"]["TextDirection"] = Enum.TextDirection.LeftToRight
UI["d"]["TextYAlignment"] = Enum.TextYAlignment.Top
UI["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["d"]["Selectable"] = false
UI["d"]["MultiLine"] = true
UI["d"]["ClearTextOnFocus"] = false
UI["d"]["Size"] = UDim2.new(0.95, 0, 10, 0)
UI["d"]["Position"] = UDim2.new(0.05, 0, 0.015, 0)
UI["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["d"]["Text"] = [[]]
UI["d"]["BackgroundTransparency"] = 1

-- // StarterGui.InternalUI.Holder.RunCode \\ --
UI["e"] = Instance.new("TextButton", UI["2"])
UI["e"]["BorderSizePixel"] = 0
UI["e"]["AutoButtonColor"] = false
UI["e"]["TextSize"] = 14
UI["e"]["TextColor3"] = Color3.fromRGB(218, 218, 218)
UI["e"]["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
UI["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["e"]["Size"] = UDim2.new(0.16952, 0, 0.08922, 0)
UI["e"]["Name"] = [[RunCode]]
UI["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["e"]["Text"] = [[Run]]
UI["e"]["Position"] = UDim2.new(0.0119, 0, 0.88848, 0)

-- // StarterGui.InternalUI.Holder.RunCode.UICorner \\ --
UI["f"] = Instance.new("UICorner", UI["e"])
UI["f"]["CornerRadius"] = UDim.new(0, 4)

-- // StarterGui.InternalUI.Holder.RunCode.UIStroke \\ --
UI["10"] = Instance.new("UIStroke", UI["e"])
UI["10"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["10"]["Color"] = Color3.fromRGB(82, 82, 82)

-- // StarterGui.InternalUI.Holder.Clear \\ --
UI["11"] = Instance.new("TextButton", UI["2"])
UI["11"]["BorderSizePixel"] = 0
UI["11"]["AutoButtonColor"] = false
UI["11"]["TextSize"] = 14
UI["11"]["TextColor3"] = Color3.fromRGB(218, 218, 218)
UI["11"]["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
UI["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["11"]["Size"] = UDim2.new(0.16952, 0, 0.08922, 0)
UI["11"]["Name"] = [[Clear]]
UI["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["11"]["Text"] = [[Clear]]
UI["11"]["Position"] = UDim2.new(0.20667, 0, 0.88848, 0)

-- // StarterGui.InternalUI.Holder.Clear.UICorner \\ --
UI["12"] = Instance.new("UICorner", UI["11"])
UI["12"]["CornerRadius"] = UDim.new(0, 4)

-- // StarterGui.InternalUI.Holder.Clear.UIStroke \\ --
UI["13"] = Instance.new("UIStroke", UI["11"])
UI["13"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["13"]["Color"] = Color3.fromRGB(82, 82, 82)

-- // StarterGui.InternalUI.Holder.Handler \\ --
UI["14"] = Instance.new("LocalScript", UI["2"])
UI["14"]["Name"] = [[Handler]]

-- // StarterGui.InternalUI.Holder.Highlighter \\ --
UI["15"] = Instance.new("ModuleScript", UI["2"])
UI["15"]["Name"] = [[Highlighter]]

-- // StarterGui.InternalUI.Holder.Highlighter.lexer \\ --
UI["16"] = Instance.new("ModuleScript", UI["15"])
UI["16"]["Name"] = [[lexer]]

-- // StarterGui.InternalUI.Holder.Highlighter.lexer.language \\ --
UI["17"] = Instance.new("ModuleScript", UI["16"])
UI["17"]["Name"] = [[language]]

-- // StarterGui.InternalUI.Holder.Highlighter.theme \\ --
UI["18"] = Instance.new("ModuleScript", UI["15"])
UI["18"]["Name"] = [[theme]]

-- // StarterGui.InternalUI.Holder.Highlighter.types \\ --
UI["19"] = Instance.new("ModuleScript", UI["15"])
UI["19"]["Name"] = [[types]]

-- // StarterGui.InternalUI.Holder.Highlighter.utility \\ --
UI["1a"] = Instance.new("ModuleScript", UI["15"])
UI["1a"]["Name"] = [[utility]]

-- // StarterGui.InternalUI.Holder.TextBoxPlus \\ --
UI["1b"] = Instance.new("ModuleScript", UI["2"])
UI["1b"]["Name"] = [[TextBoxPlus]]

-- Require G2L wrapper
local G2L_REQUIRE = require;
local G2L_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = G2L_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
    return G2L_REQUIRE(Module);
end

G2L_MODULES[UI["15"]] = {
Closure = function()
    local script = UI["15"]
local types = require(script.types)
local utility = require(script.utility)
local theme = require(script.theme)

local Highlighter = {
	defaultLexer = require(script.lexer) :: types.Lexer,

	_textObjectData = {} :: { [types.TextObject]: types.ObjectData },
	_cleanups = {} :: { [types.TextObject]: () -> () },
}

--[[
	Gathers the info that is needed in order to set up a line label.
]]
function Highlighter._getLabelingInfo(textObject: types.TextObject)
	local data = Highlighter._textObjectData[textObject]
	if not data then
		return
	end

	local src = utility.convertTabsToSpaces(utility.removeControlChars(textObject.Text))
	local numLines = #string.split(src, "\n")
	if numLines == 0 then
		return
	end

	local textBounds = utility.getTextBounds(textObject)
	local textHeight = textBounds.Y / numLines

	return {
		data = data,
		numLines = numLines,
		textBounds = textBounds,
		textHeight = textHeight,
		innerAbsoluteSize = utility.getInnerAbsoluteSize(textObject),
		textColor = theme.getColor("iden"),
		textFont = textObject.FontFace,
		textSize = textObject.TextSize,
		labelSize = UDim2.new(1, 0, 0, math.ceil(textHeight)),
	}
end

--[[
	Aligns and matches the line labels to the textObject.
]]
function Highlighter._alignLabels(textObject: types.TextObject)
	local labelingInfo = Highlighter._getLabelingInfo(textObject)
	if not labelingInfo then
		return
	end

	for lineNumber, lineLabel in labelingInfo.data.Labels do
		-- Align line label
		lineLabel.TextColor3 = labelingInfo.textColor
		lineLabel.FontFace = labelingInfo.textFont
		lineLabel.TextSize = labelingInfo.textSize
		lineLabel.Size = labelingInfo.labelSize
		lineLabel.Position =
			UDim2.fromScale(0, labelingInfo.textHeight * (lineNumber - 1) / labelingInfo.innerAbsoluteSize.Y)
	end
end

--[[
	Creates and populates the line labels with the appropriate rich text.
]]
function Highlighter._populateLabels(props: types.HighlightProps)
	-- Gather props
	local textObject = props.textObject
	local src = utility.convertTabsToSpaces(utility.removeControlChars(props.src or textObject.Text))
	local lexer = props.lexer or Highlighter.defaultLexer
	local customLang = props.customLang
	local forceUpdate = props.forceUpdate

	-- Avoid updating when unnecessary
	local data = Highlighter._textObjectData[textObject]
	if (data == nil) or (data.Text == src) then
		if forceUpdate ~= true then
			return
		end
	end

	-- Ensure textObject matches sanitized src
	textObject.Text = src

	local lineLabels = data.Labels
	local previousLines = data.Lines

	local lines = string.split(src, "\n")

	data.Lines = lines
	data.Text = src
	data.Lexer = lexer
	data.CustomLang = customLang

	-- Shortcut empty textObjects
	if src == "" then
		for l = 1, #lineLabels do
			if lineLabels[l].Text == "" then
				continue
			end
			lineLabels[l].Text = ""
		end
		return
	end

	local idenColor = theme.getColor("iden")
	local labelingInfo = Highlighter._getLabelingInfo(textObject)

	local richTextBuffer, bufferIndex, lineNumber = table.create(5), 0, 1
	for token: types.TokenName, content: string in lexer.scan(src) do
		local Color = if customLang and customLang[content]
			then theme.getColor("custom")
			else theme.getColor(token) or idenColor

		local tokenLines = string.split(utility.sanitizeRichText(content), "\n")

		for l, tokenLine in tokenLines do
			-- Find line label
			local lineLabel = lineLabels[lineNumber]
			if not lineLabel then
				local newLabel = Instance.new("TextLabel")
				newLabel.Name = "Line_" .. lineNumber
				newLabel.AutoLocalize = false
				newLabel.RichText = true
				newLabel.BackgroundTransparency = 1
				newLabel.Text = ""
				newLabel.TextXAlignment = Enum.TextXAlignment.Left
				newLabel.TextYAlignment = Enum.TextYAlignment.Top
				newLabel.TextColor3 = labelingInfo.textColor
				newLabel.FontFace = labelingInfo.textFont
				newLabel.TextSize = labelingInfo.textSize
				newLabel.Size = labelingInfo.labelSize
				newLabel.Position =
					UDim2.fromScale(0, labelingInfo.textHeight * (lineNumber - 1) / labelingInfo.innerAbsoluteSize.Y)

				newLabel.Parent = textObject.SyntaxHighlights
				lineLabels[lineNumber] = newLabel
				lineLabel = newLabel
			end

			-- If multiline token, then set line & move to next
			if l > 1 then
				if forceUpdate or lines[lineNumber] ~= previousLines[lineNumber] then
					-- Set line
					lineLabels[lineNumber].Text = table.concat(richTextBuffer)
				end
				-- Move to next line
				lineNumber += 1
				bufferIndex = 0
				table.clear(richTextBuffer)
			end

			-- If changed, add token to line
			if forceUpdate or lines[lineNumber] ~= previousLines[lineNumber] then
				bufferIndex += 1
				-- Only add RichText tags when the color is non-default and the characters are non-whitespace
				if Color ~= idenColor and string.find(tokenLine, "[%S%C]") then
					richTextBuffer[bufferIndex] = theme.getColoredRichText(Color, tokenLine)
				else
					richTextBuffer[bufferIndex] = tokenLine
				end
			end
		end
	end

	-- Set final line
	if richTextBuffer[1] and lineLabels[lineNumber] then
		lineLabels[lineNumber].Text = table.concat(richTextBuffer)
	end

	-- Clear unused line labels
	for l = lineNumber + 1, #lineLabels do
		if lineLabels[l].Text == "" then
			continue
		end
		lineLabels[l].Text = ""
	end
end

--[[
	Highlights the given textObject with the given props and returns a cleanup function.
	Highlighting will automatically update when needed, so the cleanup function will disconnect
	those connections and remove all labels.
]]
function Highlighter.highlight(props: types.HighlightProps): () -> ()
	-- Gather props
	local textObject = props.textObject
	local src = utility.convertTabsToSpaces(utility.removeControlChars(props.src or textObject.Text))
	local lexer = props.lexer or Highlighter.defaultLexer
	local customLang = props.customLang

	-- Avoid updating when unnecessary
	if Highlighter._cleanups[textObject] then
		-- Already been initialized, so just update
		Highlighter._populateLabels(props)
		Highlighter._alignLabels(textObject)
		return Highlighter._cleanups[textObject]
	end

	-- Ensure valid object properties
	textObject.RichText = false
	textObject.Text = src
	textObject.TextXAlignment = Enum.TextXAlignment.Left
	textObject.TextYAlignment = Enum.TextYAlignment.Top
	textObject.BackgroundColor3 = theme.getColor("background")
	textObject.TextColor3 = theme.getColor("iden")
	textObject.TextTransparency = 0.5

	-- Build the highlight labels
	local lineFolder = textObject:FindFirstChild("SyntaxHighlights")
	if lineFolder == nil then
		local newLineFolder = Instance.new("Folder")
		newLineFolder.Name = "SyntaxHighlights"
		newLineFolder.Parent = textObject

		lineFolder = newLineFolder
	end

	local data = {
		Text = "",
		Labels = {},
		Lines = {},
		Lexer = lexer,
		CustomLang = customLang,
	}
	Highlighter._textObjectData[textObject] = data

	-- Add a cleanup handler for this textObject
	local connections: { [string]: RBXScriptConnection } = {}
	local function cleanup()
		lineFolder:Destroy()

		Highlighter._textObjectData[textObject] = nil
		Highlighter._cleanups[textObject] = nil

		for _key, connection in connections do
			connection:Disconnect()
		end
		table.clear(connections)
	end
	Highlighter._cleanups[textObject] = cleanup

	connections["AncestryChanged"] = textObject.AncestryChanged:Connect(function()
		if textObject.Parent then
			return
		end

		cleanup()
	end)
	connections["TextChanged"] = textObject:GetPropertyChangedSignal("Text"):Connect(function()
		Highlighter._populateLabels(props)
	end)
	connections["TextBoundsChanged"] = textObject:GetPropertyChangedSignal("TextBounds"):Connect(function()
		Highlighter._alignLabels(textObject)
	end)
	connections["AbsoluteSizeChanged"] = textObject:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		Highlighter._alignLabels(textObject)
	end)
	connections["FontFaceChanged"] = textObject:GetPropertyChangedSignal("FontFace"):Connect(function()
		Highlighter._alignLabels(textObject)
	end)

	-- Populate the labels
	Highlighter._populateLabels(props)
	Highlighter._alignLabels(textObject)

	return cleanup
end

function Highlighter.returnErrors(): ()
	for textObject in Highlighter._textObjectData do
			local suc,err = pcall(function() loadstring(tostring(textObject.Text)) end)
			if not suc then return err else return false end
		end
end

--[[
	Refreshes all highlighted textObjects. Used when the theme changes.
]]
function Highlighter.refresh(): ()
	-- Rehighlight existing labels using latest colors
	for textObject, data in Highlighter._textObjectData do
		for _, lineLabel in data.Labels do
			lineLabel.TextColor3 = theme.getColor("iden")
		end

		Highlighter.highlight({
			textObject = textObject,
			forceUpdate = true,
			src = data.Text,
			lexer = data.Lexer,
			customLang = data.CustomLang,
		})
	end
end

--[[
	Sets the token colors to the given colors and refreshes all highlighted textObjects.
]]
function Highlighter.setTokenColors(colors: types.TokenColors): ()
	theme.setColors(colors)

	Highlighter.refresh()
end

--[[
	Gets a token color by name.
	Mainly useful for setting "background" token color on other UI objects behind your text.
]]
function Highlighter.getTokenColor(tokenName: types.TokenName): Color3
	return theme.getColor(tokenName)
end

--[[
	Matches the token colors to the Studio theme settings and refreshes all highlighted textObjects.
	Does nothing when not run in a Studio plugin.
]]
function Highlighter.matchStudioSettings(): ()
	local applied = theme.matchStudioSettings(Highlighter.refresh)
	if applied then
		Highlighter.refresh()
	end
end

return Highlighter

end
}
G2L_MODULES[UI["16"]] = {
Closure = function()
    local script = UI["16"]
--[=[
	Lexical scanner for creating a sequence of tokens from Lua source code.
	This is a heavily modified and Roblox-optimized version of
	the original Penlight Lexer module:
		https://github.com/stevedonovan/Penlight
	Authors:
		stevedonovan <https://github.com/stevedonovan> ----------- Original Penlight lexer author
		ryanjmulder <https://github.com/ryanjmulder> ------------- Penlight lexer contributer
		mpeterv <https://github.com/mpeterv> --------------------- Penlight lexer contributer
		Tieske <https://github.com/Tieske> ----------------------- Penlight lexer contributer
		boatbomber <https://github.com/boatbomber> --------------- Roblox port, added builtin token,
		                                                           added patterns for incomplete syntax, bug fixes,
		                                                           behavior changes, token optimization, thread optimization
		                                                           Added lexer.navigator() for non-sequential reads
		Sleitnick <https://github.com/Sleitnick> ----------------- Roblox optimizations
		howmanysmall <https://github.com/howmanysmall> ----------- Lua + Roblox optimizations

	List of possible tokens:
		- iden
		- keyword
		- builtin
		- string
		- number
		- comment
		- operator
--]=]

local lexer = {}

local Prefix, Suffix, Cleaner = "^[%c%s]*", "[%c%s]*", "[%c%s]+"
local UNICODE = "[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]+"
local NUMBER_A = "0[xX][%da-fA-F_]+"
local NUMBER_B = "0[bB][01_]+"
local NUMBER_C = "%d+%.?%d*[eE][%+%-]?%d+"
local NUMBER_D = "%d+[%._]?[%d_eE]*"
local OPERATORS = "[:;<>/~%*%(%)%-={},%.#%^%+%%]+"
local BRACKETS = "[%[%]]+" -- needs to be separate pattern from other operators or it'll mess up multiline strings
local IDEN = "[%a_][%w_]*"
local STRING_EMPTY = "(['\"])%1" --Empty String
local STRING_PLAIN = "(['\"])[^\n]-([^\\]%1)" --TODO: Handle escaping escapes
local STRING_INTER = "`[^\n]-`"
local STRING_INCOMP_A = "(['\"]).-\n" --Incompleted String with next line
local STRING_INCOMP_B = "(['\"])[^\n]*" --Incompleted String without next line
local STRING_MULTI = "%[(=*)%[.-%]%1%]" --Multiline-String
local STRING_MULTI_INCOMP = "%[=*%[.-.*" --Incompleted Multiline-String
local COMMENT_MULTI = "%-%-%[(=*)%[.-%]%1%]" --Completed Multiline-Comment
local COMMENT_MULTI_INCOMP = "%-%-%[=*%[.-.*" --Incompleted Multiline-Comment
local COMMENT_PLAIN = "%-%-.-\n" --Completed Singleline-Comment
local COMMENT_INCOMP = "%-%-.*" --Incompleted Singleline-Comment
-- local TYPED_VAR = ":%s*([%w%?%| \t]+%s*)" --Typed variable, parameter, function

local lang = require(script.language)
local lua_keyword = lang.keyword
local lua_builtin = lang.builtin
local lua_libraries = lang.libraries

lexer.language = lang

local lua_matches = {
	-- Indentifiers
	{ Prefix .. IDEN .. Suffix, "var" },

	-- Numbers
	{ Prefix .. NUMBER_A .. Suffix, "number" },
	{ Prefix .. NUMBER_B .. Suffix, "number" },
	{ Prefix .. NUMBER_C .. Suffix, "number" },
	{ Prefix .. NUMBER_D .. Suffix, "number" },

	-- Strings
	{ Prefix .. STRING_EMPTY .. Suffix, "string" },
	{ Prefix .. STRING_PLAIN .. Suffix, "string" },
	{ Prefix .. STRING_INCOMP_A .. Suffix, "string" },
	{ Prefix .. STRING_INCOMP_B .. Suffix, "string" },
	{ Prefix .. STRING_MULTI .. Suffix, "string" },
	{ Prefix .. STRING_MULTI_INCOMP .. Suffix, "string" },
	{ Prefix .. STRING_INTER .. Suffix, "string_inter" },

	-- Comments
	{ Prefix .. COMMENT_MULTI .. Suffix, "comment" },
	{ Prefix .. COMMENT_MULTI_INCOMP .. Suffix, "comment" },
	{ Prefix .. COMMENT_PLAIN .. Suffix, "comment" },
	{ Prefix .. COMMENT_INCOMP .. Suffix, "comment" },

	-- Operators
	{ Prefix .. OPERATORS .. Suffix, "operator" },
	{ Prefix .. BRACKETS .. Suffix, "operator" },

	-- Unicode
	{ Prefix .. UNICODE .. Suffix, "iden" },

	-- Unknown
	{ "^.", "iden" },
}

-- To reduce the amount of table indexing during lexing, we separate the matches now
local PATTERNS, TOKENS = {}, {}
for i, m in lua_matches do
	PATTERNS[i] = m[1]
	TOKENS[i] = m[2]
end

--- Create a plain token iterator from a string.
-- @tparam string s a string.

function lexer.scan(s: string)
	local index = 1
	local size = #s
	local previousContent1, previousContent2, previousContent3, previousToken = "", "", "", ""

	local thread = coroutine.create(function()
		while index <= size do
			local matched = false
			for tokenType, pattern in ipairs(PATTERNS) do
				-- Find match
				local start, finish = string.find(s, pattern, index)
				if start == nil then
					continue
				end

				-- Move head
				index = finish + 1
				matched = true

				-- Gather results
				local content = string.sub(s, start, finish)
				local rawToken = TOKENS[tokenType]
				local processedToken = rawToken

				-- Process token
				if rawToken == "var" then
					-- Since we merge spaces into the tok, we need to remove them
					-- in order to check the actual word it contains
					local cleanContent = string.gsub(content, Cleaner, "")

					if lua_keyword[cleanContent] then
						processedToken = "keyword"
					elseif lua_builtin[cleanContent] then
						processedToken = "builtin"
					elseif string.find(previousContent1, "%.[%s%c]*$") and previousToken ~= "comment" then
						-- The previous was a . so we need to special case indexing things
						local parent = string.gsub(previousContent2, Cleaner, "")
						local lib = lua_libraries[parent]
						if lib and lib[cleanContent] and not string.find(previousContent3, "%.[%s%c]*$") then
							-- Indexing a builtin lib with existing item, treat as a builtin
							processedToken = "builtin"
						else
							-- Indexing a non builtin, can't be treated as a keyword/builtin
							processedToken = "iden"
						end
						-- print("indexing",parent,"with",cleanTok,"as",t2)
					else
						processedToken = "iden"
					end
				elseif rawToken == "string_inter" then
					if not string.find(content, "[^\\]{") then
						-- This inter string doesnt actually have any inters
						processedToken = "string"
					else
						-- We're gonna do our own yields, so the main loop won't need to
						-- Our yields will be a mix of string and whatever is inside the inters
						processedToken = nil

						local isString = true
						local subIndex = 1
						local subSize = #content
						while subIndex <= subSize do
							-- Find next brace
							local subStart, subFinish = string.find(content, "^.-[^\\][{}]", subIndex)
							if subStart == nil then
								-- No more braces, all string
								coroutine.yield("string", string.sub(content, subIndex))
								break
							end

							if isString then
								-- We are currently a string
								subIndex = subFinish + 1
								coroutine.yield("string", string.sub(content, subStart, subFinish))

								-- This brace opens code
								isString = false
							else
								-- We are currently in code
								subIndex = subFinish
								local subContent = string.sub(content, subStart, subFinish - 1)
								for innerToken, innerContent in lexer.scan(subContent) do
									coroutine.yield(innerToken, innerContent)
								end

								-- This brace opens string/closes code
								isString = true
							end
						end
					end
				end

				-- Record last 3 tokens for the indexing context check
				previousContent3 = previousContent2
				previousContent2 = previousContent1
				previousContent1 = content
				previousToken = processedToken or rawToken
				if processedToken then
					coroutine.yield(processedToken, content)
				end
				break
			end

			-- No matches found
			if not matched then
				return
			end
		end

		-- Completed the scan
		return
	end)

	return function()
		if coroutine.status(thread) == "dead" then
			return
		end

		local success, token, content = coroutine.resume(thread)
		if success and token then
			return token, content
		end

		return
	end
end

function lexer.navigator()
	local nav = {
		Source = "",
		TokenCache = table.create(50),

		_RealIndex = 0,
		_UserIndex = 0,
		_ScanThread = nil,
	}

	function nav:Destroy()
		self.Source = nil
		self._RealIndex = nil
		self._UserIndex = nil
		self.TokenCache = nil
		self._ScanThread = nil
	end

	function nav:SetSource(SourceString)
		self.Source = SourceString

		self._RealIndex = 0
		self._UserIndex = 0
		table.clear(self.TokenCache)

		self._ScanThread = coroutine.create(function()
			for Token, Src in lexer.scan(self.Source) do
				self._RealIndex += 1
				self.TokenCache[self._RealIndex] = { Token, Src }
				coroutine.yield(Token, Src)
			end
		end)
	end

	function nav.Next()
		nav._UserIndex += 1

		if nav._RealIndex >= nav._UserIndex then
			-- Already scanned, return cached
			return table.unpack(nav.TokenCache[nav._UserIndex])
		else
			if coroutine.status(nav._ScanThread) == "dead" then
				-- Scan thread dead
				return
			else
				local success, token, src = coroutine.resume(nav._ScanThread)
				if success and token then
					-- Scanned new data
					return token, src
				else
					-- Lex completed
					return
				end
			end
		end
	end

	function nav.Peek(PeekAmount)
		local GoalIndex = nav._UserIndex + PeekAmount

		if nav._RealIndex >= GoalIndex then
			-- Already scanned, return cached
			if GoalIndex > 0 then
				return table.unpack(nav.TokenCache[GoalIndex])
			else
				-- Invalid peek
				return
			end
		else
			if coroutine.status(nav._ScanThread) == "dead" then
				-- Scan thread dead
				return
			else
				local IterationsAway = GoalIndex - nav._RealIndex

				local success, token, src = nil, nil, nil

				for _ = 1, IterationsAway do
					success, token, src = coroutine.resume(nav._ScanThread)
					if not (success or token) then
						-- Lex completed
						break
					end
				end

				return token, src
			end
		end
	end

	return nav
end

return lexer

end
}
G2L_MODULES[UI["17"]] = {
Closure = function()
    local script = UI["17"]
local language = {
	keyword = {
		["and"] = "keyword",
		["break"] = "keyword",
		["continue"] = "keyword",
		["do"] = "keyword",
		["else"] = "keyword",
		["elseif"] = "keyword",
		["end"] = "keyword",
		["export"] = "keyword",
		["false"] = "keyword",
		["for"] = "keyword",
		["function"] = "keyword",
		["if"] = "keyword",
		["in"] = "keyword",
		["local"] = "keyword",
		["nil"] = "keyword",
		["not"] = "keyword",
		["or"] = "keyword",
		["repeat"] = "keyword",
		["return"] = "keyword",
		["self"] = "keyword",
		["then"] = "keyword",
		["true"] = "keyword",
		["type"] = "keyword",
		["typeof"] = "keyword",
		["until"] = "keyword",
		["while"] = "keyword",
	},

	builtin = {
		-- Luau Functions
		["assert"] = "function",
		["error"] = "function",
		["getfenv"] = "function",
		["getmetatable"] = "function",
		["ipairs"] = "function",
		["getrawmetatable"] = "function";
		["setreadonly"] = "function";
		["loadstring"] = "function",
		["newproxy"] = "function",
		["next"] = "function",
		["pairs"] = "function",
		["pcall"] = "function",
		["print"] = "function",
		["rawequal"] = "function",
		["rawget"] = "function",
		["rawlen"] = "function",
		["rawset"] = "function",
		["select"] = "function",
		["setfenv"] = "function",
		["setmetatable"] = "function",
		["tonumber"] = "function",
		["tostring"] = "function",
		["unpack"] = "function",
		["xpcall"] = "function",
		["isnetworkowner"] = "function";
		["fireclickdetector"] = "function";
		["fireproximityprompt"] = "function";
		["firetouchinterest"] = "function";
		["getgc"] = "function";

		-- Luau Functions (Deprecated)
		["collectgarbage"] = "function",

		-- Luau Variables
		["_G"] = "table",
		["getgenv"] = "table";
		["_VERSION"] = "string",

		-- Luau Tables
		["bit32"] = "table",
		["coroutine"] = "table",
		["debug"] = "table",
		["math"] = "table",
		["os"] = "table",
		["string"] = "table",
		["table"] = "table",
		["utf8"] = "table",

		-- Roblox Functions
		["DebuggerManager"] = "function",
		["delay"] = "function",
		["gcinfo"] = "function",
		["PluginManager"] = "function",
		["require"] = "function",
		["settings"] = "function",
		["spawn"] = "function",
		["tick"] = "function",
		["time"] = "function",
		["UserSettings"] = "function",
		["wait"] = "function",
		["warn"] = "function",

		-- Roblox Functions (Deprecated)
		["Delay"] = "function",
		["ElapsedTime"] = "function",
		["elapsedTime"] = "function",
		["printidentity"] = "function",
		["Spawn"] = "function",
		["Stats"] = "function",
		["stats"] = "function",
		["Version"] = "function",
		["version"] = "function",
		["Wait"] = "function",
		["ypcall"] = "function",

		-- Roblox Variables
		["game"] = "Instance",
		["plugin"] = "Instance",
		["script"] = "Instance",
		["shared"] = "Instance",
		["workspace"] = "Instance",

		-- Roblox Variables (Deprecated)
		["Game"] = "Instance",
		["Workspace"] = "Instance",

		-- Roblox Tables
		["Axes"] = "table",
		["BrickColor"] = "table",
		["CatalogSearchParams"] = "table",
		["CFrame"] = "table",
		["Color3"] = "table",
		["ColorSequence"] = "table",
		["ColorSequenceKeypoint"] = "table",
		["DateTime"] = "table",
		["DockWidgetPluginGuiInfo"] = "table",
		["Enum"] = "table",
		["Faces"] = "table",
		["FloatCurveKey"] = "table",
		["Font"] = "table",
		["Instance"] = "table",
		["NumberRange"] = "table",
		["NumberSequence"] = "table",
		["NumberSequenceKeypoint"] = "table",
		["OverlapParams"] = "table",
		["PathWaypoint"] = "table",
		["PhysicalProperties"] = "table",
		["Random"] = "table",
		["Ray"] = "table",
		["RaycastParams"] = "table",
		["Rect"] = "table",
		["Region3"] = "table",
		["Region3int16"] = "table",
		["RotationCurveKey"] = "table",
		["SharedTable"] = "table",
		["task"] = "table",
		["TweenInfo"] = "table",
		["UDim"] = "table",
		["UDim2"] = "table",
		["Vector2"] = "table",
		["Vector2int16"] = "table",
		["Vector3"] = "table",
		["Vector3int16"] = "table",
	},

	libraries = {

		-- Luau Libraries
		bit32 = {
			arshift = "function",
			band = "function",
			bnot = "function",
			bor = "function",
			btest = "function",
			bxor = "function",
			countlz = "function",
			countrz = "function",
			extract = "function",
			lrotate = "function",
			lshift = "function",
			replace = "function",
			rrotate = "function",
			rshift = "function",
		},

		buffer = {
			copy = "function",
			create = "function",
			fill = "function",
			fromstring = "function",
			len = "function",
			readf32 = "function",
			readf64 = "function",
			readi8 = "function",
			readi16 = "function",
			readi32 = "function",
			readu16 = "function",
			readu32 = "function",
			readu8 = "function",
			readstring = "function",
			tostring = "function",
			writef32 = "function",
			writef64 = "function",
			writei16 = "function",
			writei32 = "function",
			writei8 = "function",
			writestring = "function",
			writeu16 = "function",
			writeu32 = "function",
			writeu8 = "function",
		},

		coroutine = {
			close = "function",
			create = "function",
			isyieldable = "function",
			resume = "function",
			running = "function",
			status = "function",
			wrap = "function",
			yield = "function",
		},

		debug = {
			dumpheap = "function",
			getmemorycategory = "function",
			info = "function",
			loadmodule = "function",
			profilebegin = "function",
			profileend = "function",
			resetmemorycategory = "function",
			setmemorycategory = "function",
			traceback = "function",
		},

		math = {
			abs = "function",
			acos = "function",
			asin = "function",
			atan2 = "function",
			atan = "function",
			ceil = "function",
			clamp = "function",
			cos = "function",
			cosh = "function",
			deg = "function",
			exp = "function",
			floor = "function",
			fmod = "function",
			frexp = "function",
			ldexp = "function",
			log10 = "function",
			log = "function",
			max = "function",
			min = "function",
			modf = "function",
			noise = "function",
			pow = "function",
			rad = "function",
			random = "function",
			randomseed = "function",
			round = "function",
			sign = "function",
			sin = "function",
			sinh = "function",
			sqrt = "function",
			tan = "function",
			tanh = "function",

			huge = "number",
			pi = "number",
		},

		os = {
			clock = "function",
			date = "function",
			difftime = "function",
			time = "function",
		},

		string = {
			byte = "function",
			char = "function",
			find = "function",
			format = "function",
			gmatch = "function",
			gsub = "function",
			len = "function",
			lower = "function",
			match = "function",
			pack = "function",
			packsize = "function",
			rep = "function",
			reverse = "function",
			split = "function",
			sub = "function",
			unpack = "function",
			upper = "function",
		},

		table = {
			clear = "function",
			clone = "function",
			concat = "function",
			create = "function",
			find = "function",
			foreach = "function",
			foreachi = "function",
			freeze = "function",
			getn = "function",
			insert = "function",
			isfrozen = "function",
			maxn = "function",
			move = "function",
			pack = "function",
			remove = "function",
			sort = "function",
			unpack = "function",
		},

		utf8 = {
			char = "function",
			codepoint = "function",
			codes = "function",
			graphemes = "function",
			len = "function",
			nfcnormalize = "function",
			nfdnormalize = "function",
			offset = "function",

			charpattern = "string",
		},

		-- Roblox Libraries
		Axes = {
			new = "function",
		},

		BrickColor = {
			Black = "function",
			Blue = "function",
			DarkGray = "function",
			Gray = "function",
			Green = "function",
			new = "function",
			New = "function",
			palette = "function",
			Random = "function",
			random = "function",
			Red = "function",
			White = "function",
			Yellow = "function",
		},

		CatalogSearchParams = {
			new = "function",
		},

		CFrame = {
			Angles = "function",
			fromAxisAngle = "function",
			fromEulerAngles = "function",
			fromEulerAnglesXYZ = "function",
			fromEulerAnglesYXZ = "function",
			fromMatrix = "function",
			fromOrientation = "function",
			lookAt = "function",
			new = "function",

			identity = "CFrame",
		},

		Color3 = {
			fromHex = "function",
			fromHSV = "function",
			fromRGB = "function",
			new = "function",
			toHSV = "function",
		},

		ColorSequence = {
			new = "function",
		},

		ColorSequenceKeypoint = {
			new = "function",
		},

		DateTime = {
			fromIsoDate = "function",
			fromLocalTime = "function",
			fromUniversalTime = "function",
			fromUnixTimestamp = "function",
			fromUnixTimestampMillis = "function",
			now = "function",
		},

		DockWidgetPluginGuiInfo = {
			new = "function",
		},

		Enum = {},

		Faces = {
			new = "function",
		},

		FloatCurveKey = {
			new = "function",
		},

		Font = {
			fromEnum = "function",
			fromId = "function",
			fromName = "function",
			new = "function",
		},

		Instance = {
			new = "function",
		},

		NumberRange = {
			new = "function",
		},

		NumberSequence = {
			new = "function",
		},

		NumberSequenceKeypoint = {
			new = "function",
		},

		OverlapParams = {
			new = "function",
		},

		PathWaypoint = {
			new = "function",
		},

		PhysicalProperties = {
			new = "function",
		},

		Random = {
			new = "function",
		},

		Ray = {
			new = "function",
		},

		RaycastParams = {
			new = "function",
		},

		Rect = {
			new = "function",
		},

		Region3 = {
			new = "function",
		},

		Region3int16 = {
			new = "function",
		},

		RotationCurveKey = {
			new = "function",
		},

		SharedTable = {
			clear = "function",
			clone = "function",
			cloneAndFreeze = "function",
			increment = "function",
			isFrozen = "function",
			new = "function",
			size = "function",
			update = "function",
		},

		task = {
			cancel = "function",
			defer = "function",
			delay = "function",
			desynchronize = "function",
			spawn = "function",
			synchronize = "function",
			wait = "function",
		},

		TweenInfo = {
			new = "function",
		},

		UDim = {
			new = "function",
		},

		UDim2 = {
			fromOffset = "function",
			fromScale = "function",
			new = "function",
		},

		Vector2 = {
			new = "function",

			one = "Vector2",
			xAxis = "Vector2",
			yAxis = "Vector2",
			zero = "Vector2",
		},

		Vector2int16 = {
			new = "function",
		},

		Vector3 = {
			fromAxis = "function",
			FromAxis = "function",
			fromNormalId = "function",
			FromNormalId = "function",
			new = "function",

			one = "Vector3",
			xAxis = "Vector3",
			yAxis = "Vector3",
			zAxis = "Vector3",
			zero = "Vector3",
		},

		Vector3int16 = {
			new = "function",
		},
	},
}

-- Filling up language.libraries.Enum table
local enumLibraryTable = language.libraries.Enum

for _, enum in ipairs(Enum:GetEnums()) do
	--TODO: Remove tostring from here once there is a better way to get the name of an Enum
	enumLibraryTable[tostring(enum)] = "Enum"
end

return language

end
}
G2L_MODULES[UI["18"]] = {
Closure = function()
    local script = UI["18"]
local DEFAULT_TOKEN_COLORS = {
	["background"] = Color3.fromRGB(47, 47, 47),
	["iden"] = Color3.fromRGB(234, 234, 234),
	["keyword"] = Color3.fromRGB(215, 174, 255),
	["builtin"] = Color3.fromRGB(131, 206, 255),
	["string"] = Color3.fromRGB(196, 255, 193),
	["number"] = Color3.fromRGB(255, 125, 125),
	["comment"] = Color3.fromRGB(140, 140, 155),
	["operator"] = Color3.fromRGB(255, 239, 148),
	["custom"] = Color3.fromRGB(119, 122, 255),
}

local types = require(script.Parent.types)

local Theme = {
	tokenColors = {},
	tokenRichTextFormatter = {},
}

function Theme.setColors(tokenColors: types.TokenColors)
	assert(type(tokenColors) == "table", "Theme.updateColors expects a table")

	for tokenName, color in tokenColors do
		Theme.tokenColors[tokenName] = color
	end
end

function Theme.getColoredRichText(color: Color3, text: string): string
	return '<font color="#' .. color:ToHex() .. '">' .. text .. "</font>"
end

function Theme.getColor(tokenName: types.TokenName): Color3
	return Theme.tokenColors[tokenName]
end

function Theme.matchStudioSettings(refreshCallback: () -> ()): boolean
	local success = pcall(function()
		-- When not used in a Studio plugin, this will error
		-- and the pcall will just silently return
		local studio = settings().Studio
		local studioTheme = studio.Theme

		local function getTokens()
			return {
				["background"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBackground),
				["iden"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptText),
				["keyword"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptKeyword),
				["builtin"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBuiltInFunction),
				["string"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptString),
				["number"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptNumber),
				["comment"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptComment),
				["operator"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptOperator),
				["custom"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBool),
			}
		end

		Theme.setColors(getTokens())
		studio.ThemeChanged:Connect(function()
			studioTheme = studio.Theme
			Theme.setColors(getTokens())
            refreshCallback()
		end)
	end)
	return success
end

-- Initialize
Theme.setColors(DEFAULT_TOKEN_COLORS)

return Theme

end
}
G2L_MODULES[UI["19"]] = {
Closure = function()
    local script = UI["19"]
export type TextObject = TextLabel | TextBox

export type TokenName =
	"background"
	| "iden"
	| "keyword"
	| "builtin"
	| "string"
	| "number"
	| "comment"
	| "operator"
	| "custom"

export type TokenColors = {
	["background"]: Color3?,
	["iden"]: Color3?,
	["keyword"]: Color3?,
	["builtin"]: Color3?,
	["string"]: Color3?,
	["number"]: Color3?,
	["comment"]: Color3?,
	["operator"]: Color3?,
	["custom"]: Color3?,
}

export type HighlightProps = {
	textObject: TextObject,
	src: string?,
	forceUpdate: boolean?,
	lexer: Lexer?,
	customLang: { [string]: string }?,
}

export type Lexer = {
	scan: (src: string) -> () -> (string, string),
	navigator: () -> any,
	finished: boolean?,
}

export type ObjectData = {
	Text: string,
	Labels: { TextLabel },
	Lines: { string },
	Lexer: Lexer?,
	CustomLang: { [string]: string }?,
}

return nil

end
}
G2L_MODULES[UI["1a"]] = {
Closure = function()
    local script = UI["1a"]
local types = require(script.Parent.types)

local Utility = {}

function Utility.sanitizeRichText(s: string): string
	return string.gsub(
		string.gsub(string.gsub(string.gsub(string.gsub(s, "&", "&amp;"), "<", "&lt;"), ">", "&gt;"), '"', "&quot;"),
		"'",
		"&apos;"
	)
end

function Utility.convertTabsToSpaces(s: string): string
	return string.gsub(s, "\t", "    ")
end

function Utility.removeControlChars(s: string): string
	return string.gsub(s, "[\0\1\2\3\4\5\6\7\8\11\12\13\14\15\16\17\18\19\20\21\22\23\24\25\26\27\28\29\30\31]+", "")
end

function Utility.getInnerAbsoluteSize(textObject: types.TextObject): Vector2
	local fullSize = textObject.AbsoluteSize

	local padding: UIPadding? = textObject:FindFirstChildWhichIsA("UIPadding")
	if padding then
		local offsetX = padding.PaddingLeft.Offset + padding.PaddingRight.Offset
		local scaleX = (fullSize.X * padding.PaddingLeft.Scale) + (fullSize.X * padding.PaddingRight.Scale)
		local offsetY = padding.PaddingTop.Offset + padding.PaddingBottom.Offset
		local scaleY = (fullSize.Y * padding.PaddingTop.Scale) + (fullSize.Y * padding.PaddingBottom.Scale)
		return Vector2.new(fullSize.X - (scaleX + offsetX), fullSize.Y - (scaleY + offsetY))
	else
		return fullSize
	end
end

function Utility.getTextBounds(textObject: types.TextObject): Vector2
	if textObject.ContentText == "" then
		return Vector2.zero
	end

	local textBounds = textObject.TextBounds

	-- Wait for TextBounds to be non-NaN and non-zero because Roblox
	while (textBounds.Y ~= textBounds.Y) or (textBounds.Y < 1) do
		task.wait()
		textBounds = textObject.TextBounds
	end
	return textBounds
end

return Utility

end
}
G2L_MODULES[UI["1b"]] = {
Closure = function()
    local script = UI["1b"]
--// Edited by biggaboy212 - made it work for pre existing ide systems. (removed creating new textbox and scrollingframe, now uses given textobject. Just make sure you have required properties like textwrapped disabled, and multiline on)

local module	= {}
local Inputs	= {}
local Ignores	= {}
local WaypointStack	= {}

local UIS	= game:GetService("UserInputService")
local TS	= game:GetService("TextService")
local RS	= game:GetService("RunService")

local fromunredo = false

UIS.InputBegan:Connect(function(Input,GP)
	if not GP then return end
	if Input.UserInputType ~= Enum.UserInputType.Keyboard then return end
	
	local TextBox = UIS:GetFocusedTextBox()
	
	if Inputs[TextBox] then
		
		wait() -- Let the keypress be handle by the TextBox
		
		--[=[
		TODO: Figure out how to determine lines when LineWrapped so Up/Down is possible
		--]=]
			
		if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
			-- Handle shortcuts
			
			if Input.KeyCode == Enum.KeyCode.D then
				-- Select current word
				
				local _,w2 = string.find(string.sub(TextBox.Text, TextBox.CursorPosition), "^%w+")
				local w3 = string.find(string.sub(TextBox.Text, 1,TextBox.CursorPosition), "%w+$")
				
				if w2 and w3 then
					TextBox.SelectionStart = w3
					TextBox.CursorPosition = w2+TextBox.CursorPosition
				end
				
			elseif Input.KeyCode == Enum.KeyCode.Z then
				-- Undo
				
				WaypointStack[TextBox]:Undo()
				
			elseif Input.KeyCode == Enum.KeyCode.Y then
				-- Redo
				
				WaypointStack[TextBox]:Redo()
				
			end
			
		end
		
	end
	
end)


function module.new(textObject)
	
	if not (textObject and typeof(textObject)=="Instance" and textObject:IsA("GuiObject")) then
		warn("Invalid frame for TextPlus")
		return
	end
		
	local Input = textObject
	
	local LastTextChange	= tick()
	local LastSnapshot		= tick()
	local LastText			= ""
	
	local HistoryController = {
		UndoStack = {}; RedoStack = {};
	};
	
		function HistoryController:TakeSnapshot()
			
			--print("Take snapshot")
			
			--Add to undo
			self.UndoStack[#self.UndoStack+1] = {
				Text			= Input.Text;
				CursorPosition	= Input.CursorPosition;
				SelectionStart	= Input.SelectionStart;
			};
			
			-- Clear redo
			if #self.RedoStack > 0 then
				self.RedoStack = {}
			end
			
			-- Limit undo size
			while #self.UndoStack > 30 do -- max of 30 snapshots (except for ones that come back from the redo stack)
				table.remove(self.UndoStack,1)
			end
		end
		
		function HistoryController:Undo()
			if #self.UndoStack > 1 then
				
				--print("Undo")
				
				Ignores[Input] = true
				
				local Waypoint = self.UndoStack[#self.UndoStack - 1]
				for Prop, Value in pairs(Waypoint) do
					Input[Prop] = Value
				end
				
				self.RedoStack[#self.RedoStack + 1] = self.UndoStack[#self.UndoStack]
				self.UndoStack[#self.UndoStack] = nil
			end
		end
		
		function HistoryController:Redo()
			if #self.RedoStack > 0 then
				
				--print("Redo")
				
				Ignores[Input] = true
				
				local Waypoint = self.RedoStack[#self.RedoStack]
				for Prop, Value in pairs(Waypoint) do
					Input[Prop] = Value
				end
								
				self.UndoStack[#self.UndoStack + 1] = Waypoint
				self.RedoStack[#self.RedoStack] = nil
			end
		end
		
		function HistoryController:Clear()
			
			--print("Clear history")
			
			self.UndoStack = {}
			self.RedoStack = {}
		end
		
	local TextPlus = {
		TextBox = Input;
	}
	
	function TextPlus.Write(Text,Start,End)
		Input.Text = string.sub(Input.Text,1,Start).. Text .. string.sub(Input.Text,End+1)
	end
	
	function TextPlus.SetContent(Text)
		Input.Text = Text
		HistoryController:Clear()
	end
	
	function TextPlus:Undo()
		HistoryController:Undo()
	end
	
	function TextPlus:Redo()
		HistoryController:Redo()
	end
	
	Input:GetPropertyChangedSignal("Text"):Connect(function()	
		if not fromunredo then LastTextChange = tick() end
	end)
	
	
	Inputs[Input] = TextPlus
	WaypointStack[Input] = HistoryController
	
	--Have the first snap be the blank GUI
	HistoryController:TakeSnapshot()
	
	RS.Heartbeat:Connect(function()
		if LastText == Input.Text then
			return
		end
		
		if Ignores[Input] then
			Ignores[Input] = nil
			LastText = Input.Text
			return
		end
		
		if (tick()-LastTextChange > 0.5) or (tick()-LastSnapshot > 2) or (math.abs(#LastText-#Input.Text)>10) then
			
			HistoryController:TakeSnapshot()
			
			LastSnapshot = tick()
			LastText = Input.Text
		end
		
	end)
	
	return TextPlus
end

return module

end
}
-- // StarterGui.InternalUI.Holder.Handler \\ --
local function SCRIPT_14()
local script = UI["14"]
	field = script.Parent.CodeContainer.CodeField
	indent = script.Parent.CodeContainer.CodeIndent
	
	function upd()
		local content = field.Text
		local _, count = content:gsub("\n", "\n")
		local format = ""
		for i = 1, count + 1 do
			format = format .. i .. "\n"
		end
		indent.Text = format
	end
	
	field:GetPropertyChangedSignal("Text"):Connect(function()
		upd()
	end)
	
	upd()
	
	script.Parent.Active = true
	script.Parent.Selectable = true
	script.Parent.Draggable = true
	
	script.Parent.Clear.MouseButton1Click:connect(function()
		field.Text = ""
	end)
	
	script.Parent.RunCode.MouseButton1Click:connect(function()
		script.Parent.Run:FireServer(field.Text)
	end)
	
	game:GetService("UserInputService").InputBegan:connect(function(key,gp)
		if not gp and key.KeyCode == Enum.KeyCode.Insert then
			script.Parent.Parent.Enabled = not script.Parent.Parent.Enabled
		end
	end)
	
	highlighter = require(script.Parent.Highlighter)
	theme = highlighter.matchStudioSettings()
	tbp = require(script.Parent.TextBoxPlus)
	tbp.new(script.Parent.CodeContainer.CodeField)
	script.Parent.CodeContainer.CodeField:GetPropertyChangedSignal("Text"):connect(function()
		highlighter.highlight({
			textObject = script.Parent.CodeContainer.CodeField,
		})
		local errors = highlighter.returnErrors()
		print(errors)
	end)
end
task.spawn(SCRIPT_14)

return UI["1"], require;
