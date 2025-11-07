local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()
local window = WindUI:CreateWindow({
    Title = "空云脚本",
    Icon = "cloud",
    Size = UDim2.fromOffset(472, 253),
    Folder = "空云Hub",
    Theme = "Dark",
    Background = WindUI:Gradient({
        ["0"] = { Color = Color3.fromHex("#0f0c29"), Transparency = 1 },
        ["100"] = { Color = Color3.fromHex("#302b63"), Transparency = 0.9 },
    }, { Rotation = 45 }),
    Acrylic = true,
    HideSearchBar = false,
    SideBarWidth = 250,
    ScrollBarEnabled = true
})

local featureServer = window:Tab({
    Title = "精选服务器+通用",
    Icon = "server",
    Locked = false,
})

local GameScriptMap = loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/Wind%2Fsb%2F%E9%80%89%E6%8B%A9.lua", true))()

local GameNames = {}
for name in pairs(GameScriptMap) do
    table.insert(GameNames, name)
end
table.sort(GameNames)

local selectedGame

featureServer:Dropdown({
    Title = "选择服务器",
    Description = "从列表中选择服务器",
    Values = GameNames,
    Callback = function(value)
        selectedGame = value
    end
})

featureServer:Button({
    Title = "执行脚本",
    Callback = function()
        if not selectedGame then
            WindUI:Notify({Title = "空云脚本", Content = "请先选择服务器", Duration = 2})
            return
        end
        
        WindUI:Notify({Title = "空云脚本", Content = "正在执行："..selectedGame, Duration = 3})
        pcall(loadstring(game:HttpGet(GameScriptMap[selectedGame], true)))
    end
})