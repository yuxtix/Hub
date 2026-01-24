local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local localPlayer = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BubbleChatLogGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = localPlayer:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 320, 0, 220)
mainFrame.Position = UDim2.new(0, 10, 0.5, -110)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BackgroundTransparency = 0.4
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 8)
uiCorner.Parent = mainFrame

local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(1, -10, 1, -10)
scrollFrame.Position = UDim2.new(0, 5, 0, 5)
scrollFrame.BackgroundTransparency = 1
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollFrame.ScrollBarThickness = 4
scrollFrame.Parent = mainFrame

local uiList = Instance.new("UIListLayout")
uiList.SortOrder = Enum.SortOrder.LayoutOrder
uiList.Parent = scrollFrame

local function addMessageToGui(senderName, message, teamColor)
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(1, 0, 0, 25)
	textLabel.BackgroundTransparency = 1
	textLabel.TextColor3 = teamColor or Color3.fromRGB(255, 255, 255)
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.TextSize = 14
	textLabel.RichText = true
	textLabel.Font = Enum.Font.SourceSansBold
	textLabel.Text = " [" .. senderName .. "]: " .. message
	textLabel.Parent = scrollFrame
	
	scrollFrame.CanvasSize = UDim2.new(0, 0, 0, uiList.AbsoluteContentSize.Y)
	scrollFrame.CanvasPosition = Vector2.new(0, uiList.AbsoluteContentSize.Y)
end

if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
	TextChatService.MessageReceived:Connect(function(message)
		if message.TextSource then
			local player = Players:GetPlayerByUserId(message.TextSource.UserId)
			local color = player and player.TeamColor.Color or Color3.new(1, 1, 1)
			
			addMessageToGui(message.TextSource.Name, message.Text, color)
		end
	end)
else
	local function hookPlayer(player)
		player.Chatted:Connect(function(msg)
			addMessageToGui(player.Name, msg, player.TeamColor.Color)
		end)
	end

	for _, player in ipairs(Players:GetPlayers()) do
		hookPlayer(player)
	end
	Players.PlayerAdded:Connect(hookPlayer)
end
