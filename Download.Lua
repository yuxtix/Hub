local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Config = {
    SafeMode = true,
    KillAllScripts = true,
    AntiIdle = true,
    Anonymous = false,
    ShutdownWhenDone = false,
    
    mode = "optimized",
    noscripts = false,
    SaveBytecode = true,
    timeout = 10,
    
    NilInstances = false,
    TreatUnionsAsParts = false,
    IgnoreNotArchivable = true,
    RemovePlayerCharacters = true,
    IsolateLocalPlayer = false,
    IgnoreSpecialProperties = false
}

WindUI:AddTheme({
    Name = "My Theme",
    BackgroundTransparency = 1,
    Outline = Color3.fromHex("#FFFFFF"),
    Icon = Color3.fromHex("#FFFFFF"),
    Button = Color3.fromHex("#e8a20c"),
    Text = Color3.fromHex("#FFFFFF"),
    Accent = WindUI:Gradient({                                                     
        ["0"] = { Color = Color3.fromHex("#e8a20c"), Transparency = 0.5 },            
        ["100"] = { Color = Color3.fromHex("#e83f0c"), Transparency = 0.5 },        
    }, {                                                                            
        Rotation = 45,                                                               
    }),
})

local Window = WindUI:CreateWindow({
    Title = "Yuxtix Hub Ultra lite (Only Donwload)",
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

local MainTab = Window:Tab({ Title = "Ejecución", Icon = "play" })

MainTab:Button({
    Title = "INICIAR DESCARGA",
    Desc = "Ejecuta el guardado con la configuración actual.",
    Callback = function()
        WindUI:Notify({
            Title = "Iniciando SSI",
            Content = "Preparando entorno... El juego podría congelarse.",
            Duration = 10
        })

        local Params = {
            RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
            SSI = "saveinstance",
        }
        local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()

        synsaveinstance(Config)
    end
})

local SafetyTab = Window:Tab({ Title = "Seguridad", Icon = "shield" })

SafetyTab:Dropdown({
    Title = "Safe Mode",
    Desc = "Te expulsa antes de guardar para evitar detecciones (Recomendado).",
    Values = {{Title = "Activado"}, {Title = "Desactivado"}},
    Value = "Activado",
    Callback = function(opt) Config.SafeMode = (opt.Title == "Activado") end
})

SafetyTab:Dropdown({
    Title = "Anonymous Mode",
    Desc = "Limpia tu UserId y Nombre del archivo resultante (Riesgoso).",
    Values = {{Title = "Activado"}, {Title = "Desactivado"}},
    Value = "Desactivado",
    Callback = function(opt) Config.Anonymous = (opt.Title == "Activado") end
})

SafetyTab:Dropdown({
    Title = "Kill All Scripts",
    Desc = "Detiene scripts locales para mayor seguridad.",
    Values = {{Title = "Activado"}, {Title = "Desactivado"}},
    Value = "Activado",
    Callback = function(opt) Config.KillAllScripts = (opt.Title == "Activado") end
})

local ScriptsTab = Window:Tab({ Title = "Modos & Scripts", Icon = "file-code" })

ScriptsTab:Dropdown({
    Title = "Modo de Guardado",
    Desc = "Optimized es el estándar de la API.",
    Values = {{Title = "optimized"}, {Title = "full"}, {Title = "scripts"}},
    Value = "optimized",
    Callback = function(opt) Config.mode = opt.Title end
})

ScriptsTab:Dropdown({
    Title = "Descargar Scripts",
    Desc = "Si se desactiva, el mapa pesará menos.",
    Values = {{Title = "Si"}, {Title = "No (NoScripts)"}},
    Value = "Si",
    Callback = function(opt) Config.noscripts = (opt.Title == "No (NoScripts)") end
})

ScriptsTab:Dropdown({
    Title = "Save Bytecode",
    Desc = "Útil si el descompilador falla.",
    Values = {{Title = "Activado"}, {Title = "Desactivado"}},
    Value = "Activado",
    Callback = function(opt) Config.SaveBytecode = (opt.Title == "Activado") end
})

local AdvancedTab = Window:Tab({ Title = "Avanzado", Icon = "wrench" })

AdvancedTab:Dropdown({
    Title = "Treat Unions As Parts",
    Desc = "Evita que las Unions sean invisibles en Studio.",
    Values = {{Title = "Activado"}, {Title = "Desactivado"}},
    Value = "Desactivado",
    Callback = function(opt) Config.TreatUnionsAsParts = (opt.Title == "Activado") end
})

AdvancedTab:Dropdown({
    Title = "Nil Instances",
    Desc = "Guarda objetos que no tienen Parent (Nil).",
    Values = {{Title = "Activado"}, {Title = "Desactivado"}},
    Value = "Desactivado",
    Callback = function(opt) Config.NilInstances = (opt.Title == "Activado") end
})

AdvancedTab:Dropdown({
    Title = "Isolate Local Player",
    Desc = "Separa tus cosas (Gui, Mochila) en carpetas aparte.",
    Values = {{Title = "Activado"}, {Title = "Desactivado"}},
    Value = "Desactivado",
    Callback = function(opt) Config.IsolateLocalPlayer = (opt.Title == "Activado") end
})
