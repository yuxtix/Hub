local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

WindUI:AddTheme({
    Name = "My Theme",

	    BackgroundTransparency = 1,

	    Outline = Color3.fromHex("#FFFFFF"),

	    Icon = Color3.fromHex("#FFFFFF"),
    Button = Color3.fromHex("#e8a20c"),

	Outline = Color3.fromHex("#FFFFFF"),
	Text = Color3.fromHex("#FFFFFF"),
    Accent = WindUI:Gradient({                                                     
        ["0"] = { Color = Color3.fromHex("#e8a20c"), Transparency = 0.5 }, -- Cambié el color para que se note el "Accent"            
        ["100"] = { Color = Color3.fromHex("#e83f0c"), Transparency = 0.5 },        
    }, {                                                                            
        Rotation = 45,                                                               
    }),


})

local Window = WindUI:CreateWindow({
    Title = "Yuxtix Hub lite ",
    Icon = "rbxassetid://137966710397131",
    Author = "Yuxtix",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(580, 460),
    Transparent = true,
    Theme = "Amber",
    SideBarWidth = 200,
    Background = "",
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

WindUI:SetTheme("My Theme")


Window:EditOpenButton({
    Title = "Yuxtix Hub Lite",
    Icon = "rbxassetid://137966710397131",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new( -- gradient
        Color3.fromHex("FF0F7B"), 
        Color3.fromHex("F89B29")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
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
    TextSize = 17,
})

local Paragraph = Tab:Paragraph({
	Color = "Green",
    Title = "Seguridad del Executor",
    Desc = "Tu executor es: ".. identifyexecutor().. " 70% seguro",
})


local Section = Tab:Section({	
    Title = "Información del Juego",
    TextXAlignment = "Left",
    TextSize = 17,
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
    Title = "Dex plus (Explorer)",
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
			
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/yuxtix/Hub/refs/heads/main/dex%20plus.lua"))()				
			 end,
        }
    }
})

local Paragraph = Tab:Paragraph({
    Title = "Gui Animation Remplace",
    Desc = "",	
    ImageSize = 30,
    Thumbnail = "rbxassetid://134862921411582",
    ThumbnailSize = 100,
    Locked = false,
    Buttons = {
        {
            Icon = "play",
            Title = "Ejecutar",
            Callback = function()	
			
            	loadstring(game:HttpGet("https://raw.githubusercontent.com/yuxtix/Hub/refs/heads/main/Gui%20Animation"))()
				
			 end,
        }
    }
})


local Button = Tab:Button({
    Title = "Http spy",
    Desc = "Toda peticion http lo obtendras",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Ketamine/refs/heads/main/Ketamine.lua"))()    end
})

local Button = Tab:Button({
    Title = "find Scrpts",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/samuraa1/Solara-Hub/main/SH.lua"))()    end
})

local Button = Tab:Button({
    Title = "aimbot",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua"))()    end
})


local Button = Tab:Button({
    Title = "Free camera",
	Desc = "Shift + P",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://zxfolix.github.io/freecamV2.txt"))()    end
})

local Button = Tab:Button({
    Title = "Telekinesis v5",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty11.lua"))()    end
})
local Button = Tab:Button({
    Title = "Universe Viewer",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/EnesXVC/UniverseViewer/main/script"))()    end
})
local Button = Tab:Button({
    Title = "Buy Devproducts",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/rndmq/Serverlist/refs/heads/main/Server87"))()    end
})

local Button = Tab:Button({
    Title = "Chat spy (low)",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/yuxtix/Hub/refs/heads/main/Chat.lua"))()    end
})

local Button = Tab:Button({
    Title = "NPC HACK CONTROLLER (YUXTIX)",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/yuxtix/Npc-hack-controller/refs/heads/main/Main.lua"))()    end
})

local Button = Tab:Button({
    Title = "Script Blox Search",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/ScriptSearcher"))()    end
})

local Button = Tab:Button({
    Title = "Friends Detector",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://pastebin.com/raw/6n6A85CR"))()    end
})

local Button = Tab:Button({
    Title = "Copy Server join",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/samuraa1/Solara-Hub-Scripts/refs/heads/main/CopyServerJoin.lua"))()    end
})


local Button = Tab:Button({
    Title = "Catalog Editor",
    Desc = "Robara el preview de tu personaje",
    Locked = false,
    Callback = function()
        local Params = {
	RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
	SSI = "saveinstance",
}

local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()

local CustomOptions = {	
	SaveBytecode = true,
	Object = game:GetService("Players").LocalPlayer.PlayerGui.CatalogGUI.AvatarPreview.ViewportHolder.DraggableNPCVPF.NPC,
	mode = full,
	noscripts = true
	
	}

synsaveinstance(CustomOptions)
    end
})

local Button = Tab:Button({
    Title = "Porximity Prompt 0",
    Desc = "Todos los proximity prompts duraran 0 Segundos",
    Locked = false,
    Callback = function()
	
while true do
    local cantidadModificados = 0

    for _, objeto in ipairs(workspace:GetDescendants()) do
        if objeto:IsA("ProximityPrompt") then
            objeto.HoldDuration = 0
            cantidadModificados += 1
        end
    end
	
    print("Se modificaron " .. cantidadModificados .. " ProximityPrompts (HoldDuration = 0)")
	if cantidadModificados > 200 then
		wait(8)
		print("demasiados objetos")
		else
			wait(2)
	end

end

modificarPrompts()

    end
})

local Section = Tab:Section({	
    Title = "Teleport",
    TextXAlignment = "Left",
    TextSize = 17,
})

local Posicion = "0, 0, 0"
local x = 0
local y = 0
local z = 0

-- Helper to safely find the root part
local function getSafeRoot(char)
    if not char then return nil end
    return char.PrimaryPart or char:FindFirstChild("HumanoidRootPart") or char:FindFirstChildWhichIsA("BasePart")
end

local Button = Tab:Button({
    Title = "Guardar Posicion",
    Locked = false,
	Icon = "clipboard-copy",
    Callback = function()
		local char = game.Players.LocalPlayer.Character
		local root = getSafeRoot(char)
        
		if not root then
            -- Optional: Add a notification failure here
            return 
        end
        
        local pos = root.Position
		local roundedPos = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
		x = math.round(pos.X)
		y = math.round(pos.Y)
		z = math.round(pos.Z)

		Posicion = roundedPos
		print(Posicion)
		WindUI:Notify({
            Title = "Guardado",
            Content = roundedPos,
            Icon = "rbxassetid://10876599977",
            Duration = 5,
        })
    end
})

local Keybind = Tab:Keybind({
    Title = "Teletransportar",
    Desc = "Tecla para teletransportarse",
	Icon = "move-3d",
    Value = "",
    Callback = function(v)
		local char = game.Players.LocalPlayer.Character
        local root = getSafeRoot(char)
	
        if root then
		    root.CFrame = CFrame.new(x, y, z)
		    print(Posicion)
		    WindUI:Notify({
                Title = "Teletransportado",
                Content = Posicion,
                Icon = "rbxassetid://10876599977",
                Duration = 5,
            })
        else
            WindUI:Notify({
                Title = "Error",
                Content = "Personaje no encontrado",
                Icon = "rbxassetid://10876599977",
                Duration = 3,
            })
        end
    end
})


local Section = Tab:Section({	
    Title = "Console",
    TextXAlignment = "Left",
    TextSize = 17,
})

local Button = Tab:Button({
    Title = "Console Copy",
    Desc = "i like this button",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/yuxtix/Console-copy/refs/heads/main/start.lua"))()    end
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
game:GetService("ReplicatedStorage")["TpToBase"]:FireServer()
    end
})

local Tab = Window:Tab({
    Title = "Valley Prison",
    Icon = "tally-5"
})

local Keybind = Tab:Keybind({
    Title = "Tp AK47",
    Desc = "Tecla para teletransportarse",
	Icon = "move-3d",
    Value = "",
    Callback = function(v)
		local char = game.Players.LocalPlayer.Character
        local root = getSafeRoot(char)
	
        if root then
		    root.CFrame = CFrame.new(190, 23, -214)
		    print(Posicion)
		    WindUI:Notify({
                Title = "Teletransportado",
                Content = Posicion,
                Icon = "rbxassetid://10876599977",
                Duration = 5,
            })
        else
            WindUI:Notify({
                Title = "Error",
                Content = "Personaje no encontrado",
                Icon = "rbxassetid://10876599977",
                Duration = 3,
            })
        end
    end
})

local Keybind = Tab:Keybind({
    Title = "Tp Key Worker",
    Desc = "Tecla para teletransportarse",
	Icon = "move-3d",
    Value = "",
    Callback = function(v)
		local char = game.Players.LocalPlayer.Character
        local root = getSafeRoot(char)
	
        if root then
		    root.CFrame = CFrame.new(176, 23, -142)
		    print(Posicion)
		    WindUI:Notify({
                Title = "Teletransportado",
                Content = "Esperar un rato",
                Icon = "rbxassetid://10876599977",
                Duration = 5,
            })
        else
            WindUI:Notify({
                Title = "Error",
                Content = "Personaje no encontrado",
                Icon = "rbxassetid://10876599977",
                Duration = 3,
            })
        end
    end
})


local Tab = Window:Tab({
    Title = "Piano Universal",
    Icon = "music",
    Locked = false,
	
})

local Paragraph = Tab:Paragraph({
    Title = "Auto Piano",
    Desc = "No tienes permiso para Ejecutarlo",	
    ImageSize = 22,
    Thumbnail = "rbxassetid://4904222288",
    ThumbnailSize = 120,
    Locked = true,
    Buttons = {
        {
            Icon = "play",
            Title = "Ejecutar",
            Callback = function()	
				loadstring(game:HttpGet("https://hellohellohell0.com/talentless-raw/TALENTLESS.lua", true))()
					
			 end,
        }
    }
})


local Tab = Window:Tab({
    Title = "Hubs",
    Icon = "app-window"	
})

local Button = Tab:Button({
    Title = "Solara HUB",
    Desc = "----",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/samuraa1/Solara-Hub/main/SH.lua"))()    end
})

local Button = Tab:Button({
    Title = "Ph4asmo",
    Desc = "----",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()    end
})

local Tab = Window:Tab({
    Title = "Backdoors",
    Icon = "server-crash"	
})

local Button = Tab:Button({
    Title = "Quicky Cmd",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://gist.github.com/someunknowndude/38cecea5be9d75cb743eac8b1eaf6758/raw"))()    end
})

local Button = Tab:Button({
    Title = "Lalol Hub",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script"))()    end
})

local Button = Tab:Button({
    Title = "Backdoor.exe",
    Locked = false,
    Callback = function()
-- Hope you will enjoy using it ;)
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Backdoor-exe-9413"))()    end
})
local Tab = Window:Tab({
    Title = "Jerarquía Visual",
    Icon = "list-tree",
    Locked = false,
})

local Section = Tab:Section({	
    Title = "Explorador de Modelos",
    TextXAlignment = "Left",
    TextSize = 17,
})

local Ruta = ""
local InputRuta = Tab:Input({
    Title = "Ruta del modelo",
    Desc = "Ejemplo: workspace.Modelo",
    Value = "",
    InputIcon = "folder",
    Type = "Input",
    Placeholder = "Escribe la ruta aquí...",
    Callback = function(input)
        Ruta = input
        WindUI:Notify({
            Title = "Ruta guardada",
            Content = "Modelo: " .. input,
            Icon = "rbxassetid://10876599977",
            Duration = 3,
        })
    end
})

local CodeViewer = Tab:Code({
    Title = "Jerarquía del modelo",
    Code = [[-- Esperando modelo...]],
})

local function generarArbol(instancia, nivel)
    local lineas = {}
    local prefijo = string.rep(">", nivel)
    local texto = string.format("%s%s -- %s", prefijo, instancia.Name, instancia.ClassName)
    table.insert(lineas, texto)
    for _, hijo in ipairs(instancia:GetChildren()) do
        local subLineas = generarArbol(hijo, nivel + 1)
        for _, linea in ipairs(subLineas) do
            table.insert(lineas, linea)
        end
    end
    return lineas
end

local Button = Tab:Button({
    Title = "Mostrar Jerarquía",
    Desc = "Genera la jerarquía del modelo indicado",
    Icon = "tree-palm",
    Locked = false,
    Callback = function()
        if Ruta == "" then
            WindUI:Notify({
                Title = "Error",
                Content = "Por favor ingresa primero la ruta del modelo.",
                Icon = "alert-triangle",
                Duration = 4,
            })
            return
        end

        local ok, modelo = pcall(function()
            return loadstring("return " .. Ruta)()
        end)

        if not ok or modelo == nil then
            WindUI:Notify({
                Title = "Ruta inválida",
                Content = "No se encontró el modelo en: " .. Ruta,
                Icon = "x-circle",
                Duration = 5,
            })
            CodeViewer:SetCode("-- Error: ruta no válida o modelo no encontrado.")
            return
        end

        local salida = generarArbol(modelo, 0)
        local texto = table.concat(salida, "\n")

        CodeViewer:SetCode(texto)
        WindUI:Notify({
            Title = "Jerarquía generada",
            Content = "Modelo: " .. modelo.Name,
            Icon = "check-circle",
            Duration = 4,
        })
    end
})


local Tab = Window:Tab({
    Title = "Exportar PlayerGui",
    Icon = "folder-output",
    Locked = false,
})

local Section = Tab:Section({
    Title = "Exportar GUI del Jugador",
    TextXAlignment = "Left",
    TextSize = 17,
})

local Paragraph = Tab:Paragraph({
    Title = "Descripción",
    Desc = "Clona todos los objetos del PlayerGui al Lighting y los guarda con SynSaveInstance.",
})

local Button = Tab:Button({
    Title = "Exportar y Guardar",
    Desc = "Clona el PlayerGui en Lighting y lo guarda como archivo.",
    Icon = "save",
    Locked = false,
    Callback = function()

    	local Lighting = game:GetService("Lighting")
    	local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    	local FolderName = "Exported_PlayerGui"
    	local ExportFolder = Lighting:FindFirstChild(FolderName)

    	if not ExportFolder then
    		ExportFolder = Instance.new("Folder")
    		ExportFolder.Name = FolderName
    		ExportFolder.Parent = Lighting
    	end

    	for _, child in ipairs(PlayerGui:GetChildren()) do
    		local clone = child:Clone()
    		clone.Parent = ExportFolder
    	end

    	print("✅ Todos los objetos de PlayerGui fueron clonados dentro de Lighting/" .. FolderName)

    	local Params = {
    		RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
    		SSI = "saveinstance",
    	}

    	local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()

    	local CustomOptions = {
    		SaveBytecode = true,
    		Object = game:GetService("Lighting").Exported_PlayerGui,
    		mode = full,
    		noscripts = true
    	}

    	synsaveinstance(CustomOptions)

    	WindUI:Notify({
    		Title = "Completado",
    		Content = "PlayerGui exportado y guardado correctamente.",
    		Icon = "check-circle",
    		Duration = 5,
    	})
    end,
})

local Tab = Window:Tab({
    Title = "Steal Scripts",
    Icon = "scroll-text",
    Locked = false,
})

Tab:Button({
    Title = "Start",
    icon = "folder-output",
    Desc = "Escanea",
    Locked = false,
	Callback = function()

    -- Crear carpeta principal
    if not isfolder("LogsXeno") then
        makefolder("LogsXeno")
    end

    -- Crear subcarpeta
    local subfolder = "LogsXeno/ScriptsEjecutados"
    if not isfolder(subfolder) then
        makefolder(subfolder)
    end

    -- función para obtener el siguiente número disponible
    local function getNextIndex()
        local files = listfiles(subfolder)
        local maxIndex = 0

        for _, file in ipairs(files) do
            local name = file:match(".*/(%d+)%.lua$")
            if name then
                local num = tonumber(name)
                if num and num > maxIndex then
                    maxIndex = num
                end
            end
        end

        return maxIndex + 1
    end

    -- evitar doble hook
    if getgenv().XENO_LOGGER_ACTIVE then
        warn("XENO LOGGER ya está activo")
        return
    end
    getgenv().XENO_LOGGER_ACTIVE = true

    local old_loadstring = loadstring

    getgenv().loadstring = function(code, ...)
        print("==== EXECUTED SCRIPT BEGIN ====")
        print(code)
        print("==== EXECUTED SCRIPT END ====")

        local index = getNextIndex()
        local filename = ("%s/%d.lua"):format(subfolder, index)

        writefile(filename,
            "-- ==== EXECUTED SCRIPT BEGIN ====\n" ..
            "-- ==== Hooked by Yuxtix Hub ====\n" ..

            code ..
            "\n-- ==== EXECUTED SCRIPT END ====\n"
        )

        return old_loadstring(code, ...)
    end

    print("XENO LOGGER ACTIVADO DESDE EL BOTÓN")

end

})

Tab:Button({
    Title = "Delete",
    icon = "home",
    Desc = "Delete",
    Locked = false,
    Callback = function()

        local folder = "LogsXeno/ScriptsEjecutados"

        -- Si la carpeta existe, borrar todo su contenido
        if isfolder(folder) then
            local files = listfiles(folder)

            for _, file in ipairs(files) do
                if isfile(file) then
                    delfile(file)
                end
            end
        end

        print("Todos los archivos fueron eliminados.")
    end
})

---
-- SECCIÓN: TOOL STEALER
---

local ToolTab = Window:Tab({
    Title = "Tool Stealer",
    Icon = "wrench",
    Locked = false,
})

local ToolSection = ToolTab:Section({	
    Title = "Herramientas Encontradas",
    TextXAlignment = "Left",
    TextSize = 17,
})

local function DarTool(objeto)
    local player = game.Players.LocalPlayer
    if player and player:FindFirstChild("Backpack") then
        local clone = objeto:Clone()
        clone.Parent = player.Backpack
        
        WindUI:Notify({
            Title = "Tool Obtenido",
            Content = "Has recibido: " .. objeto.Name,
            Icon = "rbxassetid://10876599977",
            Duration = 3,
        })
    end
end

-- Botón para refrescar la lista y buscar herramientas
ToolTab:Button({
    Title = "Escanear Tools",
    Desc = "Busca herramientas en todo el juego y crea botones",
    Icon = "refresh-cw",
    Callback = function()
        -- Limpiamos un poco la consola para saber que empezó
        print("Escaneando herramientas...")
        
        local encontrados = 0
        -- Buscamos en todo el juego
        for _, v in ipairs(game:GetDescendants()) do
            if v:IsA("Tool") then
                encontrados = encontrados + 1
                
				local hola22 = v.TextureId
                -- Crear un botón individual para cada Tool encontrado
                ToolTab:Button({
					Icon = hola22,

                    Title = "Obtener: " .. v.Name,
                    Desc = "Ubicación original: " .. v.Parent.Name,
                    Locked = false,
                    Callback = function()
                        DarTool(v)
                    end
                })
            end
        end
        
        WindUI:Notify({
            Title = "Escaneo Finalizado",
            Content = "Se encontraron " .. encontrados .. " herramientas.",
            Icon = "check-circle",
            Duration = 5,
        })
    end
})

---
-- FIN DE LA SECCIÓN TOOL STEALER
---
---
-- SECCIÓN: SAVE INSTANCE (JUEGO COMPLETO)
---

local SaveTab = Window:Tab({
    Title = "Save Game",
    Icon = "save",
    Locked = false,
})

local SaveSection = SaveTab:Section({
    Title = "Configuraciones de SynSaveInstance",
    TextXAlignment = "Left",
    TextSize = 17,
})

-- Opciones por defecto
local SaveOptions = {
    mode = "full",
    noscripts = false,
    isdecomposed = false,
    removehuat = false,
    noscripts_on_save = false,
    SaveBytecode = false,
    DecompileIgnore = {},
    Object = game -- Por defecto guarda todo el juego
}

-- Selector de Modo
SaveTab:Dropdown({
    Title = "Modo de Guardado",
    Multi = false,
    AllowNone = false,
    Value = "full",
    Values = {"full", "optimized", "scripts", "terrain"},
    Callback = function(v)
        SaveOptions.mode = v
    end
})

-- Toggles para configuraciones booleanas
SaveTab:Toggle({
    Title = "Sin Scripts (NoScripts)",
    Desc = "Si se activa, no guardará los scripts del juego.",
    Value = false,
    Callback = function(v) SaveOptions.noscripts = v end
})

SaveTab:Toggle({
    Title = "Descomponer (IsDecomposed)",
    Desc = "Guarda el juego en múltiples archivos (Carpeta).",
    Value = false,
    Callback = function(v) SaveOptions.isdecomposed = v end
})

SaveTab:Toggle({
    Title = "Remover HUAT",
    Desc = "Elimina etiquetas de 'Hecho por' en el archivo.",
    Value = false,
    Callback = function(v) SaveOptions.removehuat = v end
})

SaveTab:Toggle({
    Title = "Guardar Bytecode",
    Desc = "Intenta guardar el bytecode de los scripts.",
    Value = false,
    Callback = function(v) SaveOptions.SaveBytecode = v end
})

SaveTab:Toggle({
    Title = "Ignorar Scripts al Guardar",
    Desc = "No guarda scripts durante el proceso de guardado local.",
    Value = false,
    Callback = function(v) SaveOptions.noscripts_on_save = v end
})

-- Botón de Ejecución
SaveTab:Button({
    Title = "¡GUARDAR JUEGO AHORA!",
    Desc = "Inicia el proceso de descarga del mapa/scripts.",
    Icon = "download",
    Callback = function()
        WindUI:Notify({
            Title = "Iniciando Guardado",
            Content = "Esto puede congelar el juego un momento. Revisa tu carpeta 'workspace'.",
            Icon = "rbxassetid://10876599977",
            Duration = 8,
        })

        task.spawn(function()
            local Params = {
                RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
                SSI = "saveinstance",
            }
            
            local ok, synsaveinstance = pcall(function()
                return loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
            end)

            if ok and synsaveinstance then
                synsaveinstance(SaveOptions)
                WindUI:Notify({
                    Title = "Éxito",
                    Content = "El juego se ha guardado en la carpeta de tu executor.",
                    Icon = "check-circle",
                    Duration = 5,
                })
            else
                WindUI:Notify({
                    Title = "Error",
                    Content = "No se pudo cargar la API de SynSaveInstance.",
                    Icon = "x-circle",
                    Duration = 5,
                })
            end
        end)
    end
})

---
-- FIN DE LA SECCIÓN SAVE INSTANCE
---
Window:SelectTab(1)
