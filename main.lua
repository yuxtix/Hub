local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()



WindUI:AddTheme({
    Name = "VinUI_Purple",
    Accent = "#db7070", -- Medium purple
    Outline = "#FFFFFF",
    Text = "#FFFFFF",
    Placeholder = "#d99b9b", -- Light purple
    Background = "#2e1a1a", -- Very dark blue/black
    Button = "#cd5b5b", -- Slate blue
    Icon = "#db7070", -- Medium purple
})

-- Apply the custom theme
WindUI:SetTheme("VinUI_Purple")

local Window = WindUI:CreateWindow({
    Title = "Yuxtix Hub",
    Icon = "rbxassetid://137966710397131",
    Author = "Yuxtix",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(580, 460),
    Transparent = true,
    Theme = "Amber",
    SideBarWidth = 200,
    Background = "", -- rbxassetid only
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
            print("clicked")
        end,
    },
	
})
WindUI:SetNotificationLower(true)
local Tab = Window:Tab({
    Title = "Inicio",
    Icon = "hammer",
    Locked = false,
	
})

local Section = Tab:Section({ 
    Title = "Executor info",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Paragraph = Tab:Paragraph({
	Color = "Green",
    Title = "Seguridad del Executor",
    Desc = "Tu executor es: ".. identifyexecutor().. " 70% seguro",
})


local Section = Tab:Section({ 
    Title = "Información del Juego",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Paragraph = Tab:Paragraph({
    Title = "Nombre",
    Desc = Game.Name,
})



local Tab = Window:Tab({
    Title = "Universal",
    Icon = "earth",
    Locked = false,
	
})



local Paragraph = Tab:Paragraph({
    Title = "The Best Admin panel",
    Desc = "", 
    ImageSize = 30,
    Thumbnail = "rbxassetid://109542747481756",
    ThumbnailSize = 80,
    Locked = false,
    Buttons = {
        {
            Icon = "play",
            Title = "Ejecutar",
            Callback = function() 
			
			WindUI:Notify({
            Title = "Ejecutado",
            Content = "Disfrutalo",
            Icon = "rbxassetid://10876599977",
            Duration = 5,
        })
			
			loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
			
			

			 end,
        }
    }
})


local Paragraph = Tab:Paragraph({
    Title = "Dex studio (Explorer)",
    Desc = "", 
    ImageSize = 30,
    Thumbnail = "rbxassetid://152367563",
    ThumbnailSize = 100,
    Locked = false,
    Buttons = {
        {
            Icon = "play",
            Title = "Ejecutar",
            Callback = function() 
			
			loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
				
			 end,
        }
    }
})

local Button = Tab:Button({
    Title = "Http spy",
    Desc = "Toda peticion http lo obtendras",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Http-Spy-41029"))()
    end
})

local Tab = Window:Tab({
    Title = "Prison Life",
    Icon = "user",
    Locked = false,
	
})

local Button = Tab:Button({
    Title = "PrizzLife",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/devguy100/PrizzLife/refs/heads/main/pladmin.lua"))()   

    end
})

local Button = Tab:Button({
    Title = "Rayans Hub",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Sirius/refs/heads/request/prompt.lua"))()   

    end
})

local Tab = Window:Tab({
    Title = "Steal A brainrot Menu",
    Icon = "user",
    Locked = false,
	
})


local Button = Tab:Button({
    Title = "Tp to base",
    Locked = false,
    Callback = function()
		-- Remote Name: TpToBase
-- Type: RemoteEvent
-- Return Type: No return value
game:GetService("ReplicatedStorage")["TpToBase"]:FireServer()
    end
})
