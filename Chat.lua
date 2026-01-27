local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local UserInputService = game:GetService("UserInputService")

local localPlayer = Players.LocalPlayer

local BANNED_WORDS = {"spam", "hacker", "palabra_fea"}
local ADMIN_USERNAMES = {"TuNombreDeUsuarioAqui"}

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AdvancedChatLog"
screenGui.ResetOnSpawn = false
screenGui.Parent = localPlayer:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 350, 0, 250)
mainFrame.Position = UDim2.new(0, 20, 0.4, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
mainFrame.BackgroundTransparency = 0.3
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = mainFrame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 25)
title.BackgroundTransparency = 1
title.Text = "  LOG DE CHAT PRO"
title.TextColor3 = Color3.fromRGB(255, 255, 0)
title.TextXAlignment = Enum.TextXAlignment.Left
title.Font = Enum.Font.GothamBold
title.TextSize = 14
title.Parent = mainFrame

local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(1, -10, 1, -40)
scrollFrame.Position = UDim2.new(0, 5, 0, 30)
scrollFrame.BackgroundTransparency = 1
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollFrame.ScrollBarThickness = 3
scrollFrame.Parent = mainFrame

local uiList = Instance.new("UIListLayout")
uiList.SortOrder = Enum.SortOrder.LayoutOrder
uiList.Padding = UDim.new(0, 2)
uiList.Parent = scrollFrame

local function filterMessage(text)
    local filtered = text
    for _, word in pairs(BANNED_WORDS) do
        filtered = string.gsub(filtered, "(?i)"..word, "****")
    end
    return filtered
end

local function addMessageToGui(sender, message)
    local senderName = sender.Name
    local teamColor = sender.TeamColor.Color
    local teamName = sender.Team and sender.Team.Name or "Neutral"
    
    local cleanMessage = filterMessage(message)
    
    local tag = ""
    if table.find(ADMIN_USERNAMES, senderName) then
        tag = "<font color='#FF0000'>[ADMIN]</font> "
    end
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -10, 0, 0)
    textLabel.AutomaticSize = Enum.AutomaticSize.Y
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.TextSize = 14
    textLabel.RichText = true
    textLabel.Font = Enum.Font.SourceSans
    textLabel.TextWrapped = true
    
    textLabel.Text = string.format(
        " <font color='rgb(%d,%d,%d)'>[%s]</font> %s<b>%s</b>: %s",
        teamColor.R * 255, teamColor.G * 255, teamColor.B * 255,
        teamName, tag, senderName, cleanMessage
    )
    
    textLabel.Parent = scrollFrame
    
    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, uiList.AbsoluteContentSize.Y)
    scrollFrame.CanvasPosition = Vector2.new(0, uiList.AbsoluteContentSize.Y)
end

if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
    TextChatService.MessageReceived:Connect(function(message)
        if message.TextSource then
            local player = Players:GetPlayerByUserId(message.TextSource.UserId)
            if player then
                addMessageToGui(player, message.Text)
            end
        end
    end)
else
    local function hookPlayer(player)
        player.Chatted:Connect(function(msg)
            addMessageToGui(player, msg)
        end)
    end

    for _, player in ipairs(Players:GetPlayers()) do
        hookPlayer(player)
    end
    Players.PlayerAdded:Connect(hookPlayer)
end
