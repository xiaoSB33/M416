local WindUI = loadstring(game:HttpGet("https://pastebin.com/raw/qYYUTE4g"))()

WindUI:Localization({
    Enabled = true,
    Prefix = "loc:",
    DefaultLanguage = "ru",
    Translations = {
        ["ru"] = {
            ["WINDUI EXAMPLE"] = "WindUI Пример",
            ["WELCOME"] = "Добро пожаловать в WindUI!",
            ["LIB DESC"] = "Библиотека для создания красивых интерфейсов",
            ["SETTINGS"] = "Настройки",
            ["APPEARANCE"] = "Внешний вид",
            ["FEATURES"] = "Функционал",
            ["UTILITIES"] = "Инструменты",
            ["UI ELEMENTS"] = "UI Элементы",
            ["CONFIGURATION"] = "Конфигурация",
            ["SAVE CONFIG"] = "Сохранить конфигурацию",
            ["LOAD CONFIG"] = "Загрузить конфигурацию",
            ["THEME SELECT"] = "Выберите тему",
            ["TRANSPARENCY"] = "Прозрачность окна"
        },
        ["en"] = {
            ["WINDUI EXAMPLE"] = "WindUI Example",
            ["WELCOME"] = "Welcome to WindUI!",
            ["LIB DESC"] = "Beautiful UI library for Roblox",
            ["SETTINGS"] = "Settings",
            ["APPEARANCE"] = "Appearance",
            ["FEATURES"] = "Features",
            ["UTILITIES"] = "Utilities",
            ["UI ELEMENTS"] = "UI Elements",
            ["CONFIGURATION"] = "Configuration",
            ["SAVE CONFIG"] = "Save Configuration",
            ["LOAD CONFIG"] = "Load Configuration",
            ["THEME SELECT"] = "Select Theme",
            ["TRANSPARENCY"] = "Window Transparency"
        }
    }
})

WindUI.TransparencyValue = 0.2
WindUI:SetTheme("Dark")

local function gradient(text, startColor, endColor)
    local result = ""
    for i = 1, #text do
        local t = (i - 1) / (#text - 1)
        local r = math.floor((startColor.R + (endColor.R - startColor.R) * t) * 255)
        local g = math.floor((startColor.G + (endColor.G - startColor.G) * t) * 255)
        local b = math.floor((startColor.B + (endColor.B - startColor.B) * t) * 255)
        result = result .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', r, g, b, text:sub(i, i))
    end
    return result
end

local Confirmed = false

WindUI:Popup({
    Title = gradient("空云脚本Script Hub", Color3.fromHex("#6A11CB"), Color3.fromHex("#2575FC")),
    Icon = "sparkles",
    IconThemed = true,
    Content = "欢迎使用！",
    Buttons = {
        {
            Title = "取消",
            --Icon = "",
            Callback = function() end,
            Variant = "Secondary", -- Primary, Secondary, Tertiary
        },
        {
            Title = "确认",
            Icon = "arrow-right",
            Callback = function() Confirmed = true end,
            Variant = "Primary", -- Primary, Secondary, Tertiary
        }
    }
})

repeat wait() until Confirmed

local UserGui = Instance.new("ScreenGui", game.CoreGui)
local UserLabel = Instance.new("TextLabel", UserGui)
local UIGradient = Instance.new("UIGradient")

UserGui.Name = "UserGui"
UserGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UserGui.Enabled = true
UserLabel.Name = "UserLabel"
UserLabel.BackgroundColor3 = Color3.new(1, 1, 1)
UserLabel.BackgroundTransparency = 1
UserLabel.BorderColor3 = Color3.new(0, 0, 0)
UserLabel.Position = UDim2.new(0.80, 0.80, 0.00090, 0)
UserLabel.Size = UDim2.new(0, 135, 0, 50)
UserLabel.Font = Enum.Font.GothamSemibold
UserLabel.Text = "尊敬的："..game.Players.LocalPlayer.Character.Name.."用户，欢迎使用空云脚本脚本中心！"
UserLabel.TextColor3 = Color3.new(1, 1, 1)
UserLabel.TextScaled = true
UserLabel.TextSize = 14
UserLabel.TextWrapped = true
UserLabel.Visible = true

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(0.10, Color3.fromRGB(255, 127, 0)),
    ColorSequenceKeypoint.new(0.20, Color3.fromRGB(255, 255, 0)),
    ColorSequenceKeypoint.new(0.30, Color3.fromRGB(0, 255, 0)),
    ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 255, 255)),
    ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 0, 255)),
    ColorSequenceKeypoint.new(0.60, Color3.fromRGB(139, 0, 255)),
    ColorSequenceKeypoint.new(0.70, Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(0.80, Color3.fromRGB(255, 127, 0)),
    ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 255, 0)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 0))
}
UIGradient.Rotation = 10
UIGradient.Parent = UserLabel

local TweenService = game:GetService("TweenService")
local tweeninfo = TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
local tween = TweenService:Create(UIGradient, tweeninfo, {Rotation = 360})
tween:Play()

local Window = WindUI:CreateWindow({
    Title = "空云脚本脚本中心",
    Icon = "空云脚本xassetid://105933835532108",
    Author = " Yungengxin",
    Folder = "脚本中心",
    Size = UDim2.fromOffset(480, 360),
    Theme = "Dark",
    Background = WindUI:Gradient({
        ["0"] = { Color = Color3.fromHex("#0f0c29"), Transparency = 1 },
        ["100"] = { Color = Color3.fromHex("#302b63"), Transparency = 0.9 },
    }, {
        Rotation = 45,
    }),
    Background = "空云脚本xassetid://133155269071576",
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
        
            WindUI:Notify({
                Title = "您的用户ID：",
                Content = (game:GetService("Players").LocalPlayer.UserId),
                Duration = 3
            })
        end
    },
    SideBarWidth = 220,
    HideSearchBar = false,
    ScrollBarEnabled = true
})

Window:Tag({
    Title = "v1.0.0",
    Color = Color3.fromHex("#30ff6a")
})

Window:CreateTopba空云脚本utton("theme-switcher", "moon", function()
    WindUI:SetTheme(WindUI:GetCurrentTheme() == "Dark" and "Light" or "Dark")
    WindUI:Notify({
        Title = "Theme Changed",
        Content = "Current theme: "..WindUI:GetCurrentTheme(),
        Duration = 2
    })
end, 990)

local Tabs = {
    Main = Window:Section({ Title = "通用", Opened = true }),
    gn = Window:Section({ Title = "功能", Opened = true }),
    Settings = Window:Section({ Title = "UI设置", Opened = true }),
    Utilities = Window:Section({ Title = "保存配置", Opened = true })
}

local TabHandles = {
    xx = Tabs.Main:Tab({ Title = "游戏信息", Icon = "layout-grid" }),
    Elements = Tabs.Main:Tab({ Title = "玩家功能", Icon = "layout-grid" }),
    gn = Tabs.gn:Tab({ Title = "游戏功能", Icon = "layout-grid" }),
    wpgn = Tabs.gn:Tab({ Title = "物品功能", Icon = "layout-grid" }),
    tsgn = Tabs.gn:Tab({ Title = "透视功能", Icon = "layout-grid" }),
    fzgn = Tabs.gn:Tab({ Title = "辅助功能", Icon = "layout-grid" }),
    Appearance = Tabs.Settings:Tab({ Title = "UI外观", Icon = "brush" }),
    Config = Tabs.Utilities:Tab({ Title = "调整配置", Icon = "settings" })
}

TabHandles.xx:Paragraph({
    Title = "您的游戏名称：",
    Desc = ""..game:GetService("Players").LocalPlayer.DisplayName.."",
    Buttons = {
        {
            Title = "复制您的名称",
            Icon = "copy",
            Variant = "Primary",
            Callback = function() 
            
            setclipboard(game:GetService("Players").LocalPlayer.DisplayName)

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Icon = "copy",
            Content = "已成功复制！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})

TabHandles.xx:Paragraph({
    Title = "您的游戏用户名：",
    Desc = ""..game:GetService("Players").LocalPlayer.Name.."",
    Buttons = {
        {
            Title = "复制您的用户名",
            Icon = "copy",
            Variant = "Primary",
            Callback = function() 
            
            setclipboard(game:GetService("Players").LocalPlayer.Name)

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Content = "已成功复制！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})

TabHandles.xx:Paragraph({
    Title = "您的用户名ID：",
    Desc = ""..game:GetService("Players").LocalPlayer.UserId.."",
    Buttons = {
        {
            Title = "复制您的用户名ID",
            Icon = "copy",
            Variant = "Primary",
            Callback = function() 
            
            setclipboard(game:GetService("Players").LocalPlayer.UserId)

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Content = "已成功复制！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})

TabHandles.xx:Paragraph({
    Title = "您的账号注册时间（天）：",
    Desc = ""..game:GetService("Players").LocalPlayer.AccountAge.."",
    Buttons = {
        {
            Title = "复制您的注册时间",
            Icon = "copy",
            Variant = "Primary",
            Callback = function() 
            
            setclipboard(game:GetService("Players").LocalPlayer.AccountAge)

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Content = "已成功复制！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})

TabHandles.xx:Paragraph({
    Title = "您所在的服务器名称：",
    Desc = ""..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.."",
    Buttons = {
        {
            Title = "复制您所在的服务器名称",
            Icon = "copy",
            Variant = "Primary",
            Callback = function() 
            
            setclipboard(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Content = "已成功复制！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})

TabHandles.xx:Paragraph({
    Title = "您所在的服务器ID：",
    Desc = ""..game.PlaceId.."",
    Buttons = {
        {
            Title = "复制您所在的服务器ID",
            Icon = "copy",
            Variant = "Primary",
            Callback = function() 
            
            setclipboard("无法复制")

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Content = "已成功复制！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})



TabHandles.xx:Paragraph({
    Title = "您的注入器：",
    Desc = ""..identifyexecutor().."",
    Image = "空云脚本xassetid://129287693322764",
    ImageSize = 42, -- default 30
    Thumbnail = "空云脚本xassetid://94512740386917",
    ThumbnailSize = 120, -- Thumbnail height
    Buttons = {
        {
            Title = "测试您注入器的UNC",
            Variant = "Primary",
            Callback = function() 
            Window:Dialog({
            Title = "空云脚本脚本中心",
            Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
            Icon = "bell",
            Buttons = {
                {
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function() 
                        print("ok")
                    end,
                }
            }
        })
            loadstring(game:HttpGet"https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Content = "已成功执行，请在控制台查看UNC！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})

TabHandles.xx:Code({
    Title = "空云脚本脚本中心交流群（主群）",
    Code = [[https://qm.qq.com/q/csDfI4BZNm]],
})

TabHandles.xx:Code({
    Title = "空云脚本脚本中心交流群（Discord群）",
    Code = [[https://discord.gg/qZmW3PYd9T]],
})

local intensitySlider = TabHandles.Elements:Slider({
    Title = "玩家速度",
    Desc = "speedwalk",
    Value = { Min = 0, Max = 1000, Default = 16 },
    Callback = function(s)
        getgenv().WS = s
    end
})

local intensitySlider = TabHandles.Elements:Slider({
    Title = "玩家速度V2",
    Desc = "tpwalk",
    Value = { Min = 0, Max = 10, Default = 0 },
    Callback = function(value)
        local tpWalk = {}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

local teleportDistance = value -- 每次传送的距离
local isTeleporting = true -- 是否正在传送

-- 禁用所有与移动相关的状态
local function DisableDefaultMovement()
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
end

-- 启用所有与移动相关的状态
local function EnableDefaultMovement()
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
end

-- 自定义传送函数
local function Teleport()
    if not isTeleporting or not rootPart or not humanoid then
        return
    end

    -- 获取移动方向
    local moveDirection = humanoid.MoveDirection
    if moveDirection.Magnitude == 0 then
        return -- 如果没有移动方向，则停止传送
    end

    -- 计算传送向量
    local teleportVector = moveDirection * teleportDistance

    -- 检测前方是否有障碍物
    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = {character}
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

    local raycastResult = workspace:Raycast(rootPart.Position, teleportVector, raycastParams)

    if raycastResult then
        -- 如果有障碍物，调整传送向量
        teleportVector = (raycastResult.Position - rootPart.Position).Unit * teleportDistance
    end

    -- 更新位置
    rootPart.CFrame = rootPart.CFrame + teleportVector
end

-- 控制开关函数
function tpWalk:Enabled(enabled)
    isTeleporting = enabled
    if enabled then DisableDefaultMovement() else EnableDefaultMovement() end
end

function tpWalk:GetEnabled()
    return isTeleporting
end

function tpWalk:SetSpeed(speed)
    teleportDistance = speed or 0.1
end

function tpWalk:GetSpeed()
    return teleportDistance
end

-- 每帧更新传送
RunService.Heartbeat:Connect(function()
    if isTeleporting then
        Teleport()
    end
end)

return tpWalk
    end
})

local intensitySlider = TabHandles.Elements:Slider({
    Title = "玩家跳跃",
    Desc = "JumpPower",
    Value = { Min = 0, Max = 1000, Default = 50 },
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end
})

local intensitySlider = TabHandles.Elements:Slider({
    Title = "玩家重力",
    Desc = "gravity",
    Value = { Min = 0, Max = 1000, Default = 309 },
    Callback = function(value)
        game.Workspace.Gravity = value
    end
})



TabHandles.Elements:Divider()

local featureToggle = TabHandles.Elements:Toggle({
    Title = "夜视",
    Desc = "使你的游戏亮度提高",
    Value = false,
    Callback = function(state) 
        if state then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
            else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
            end
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = state and "夜视已开启，若仍不清楚可开启去雾功能" or "夜视已关闭",
            Icon = state and "check" or "x",
            Duration = 2
        })
    end
})

xrayEnabled = false
function xray()
    for  , v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and not v.Parent:FindFirstChildWhichIsA("Humanoid") and not v.Parent.Parent:FindFirstChildWhichIsA("Humanoid") then
            v.LocalTransparencyModifier = xrayEnabled and 0.5 or 0
        end
    end
end

local featureToggle = TabHandles.Elements:Toggle({
    Title = "地图透视",
    Desc = "Xray",
    Value = false,
    Callback = function(state) 
        if state then
		    xrayEnabled = true
    xray()
            else
		    xrayEnabled = false
    xray()
            end
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = state and "地图透视已开启，若仍不清楚可开启其他视觉功能" or "地图透视已关闭",
            Icon = state and "check" or "x",
            Duration = 2
        })
    end
})

local toggleState = false

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
function NoFog()
    local c = game.Lighting
    c.FogEnd = 100000
    for r, v in pairs(c:GetDescendants()) do
        if v:IsA("Atmosphere") then
            v:Destroy()
        end
    end
end
TabHandles.Elements:Button({
    Title = "去雾",
    Desc = "一键去除游戏中的雾",
    Icon = "bell",
    Callback = function()
NoFog()
local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已去雾",
            Icon = "bell",
            Duration = 3
        })
    end
})
TabHandles.Elements:Divider()

TabHandles.Elements:Button({
    Title = "飞行",
    Desc = "传统的飞行",
    Icon = "bell",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/CPSm1udG"))()
local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "成功加载飞行",
            Icon = "bell",
            Duration = 3
        })
    end
})

hookfunction(getnamecallmethod, function()
  return
end)
for i, v in pairs({request, loadstring, base64.decode}) do
  if isfunctionhooked(v) or not isfunctionhooked(getnamecallmethod) then
    return
  end
end
local HttpService = game:GetService("HttpService")
local Plr = game:GetService("Players")
local LP = Plr.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ClientModule = require(LP:WaitForChild("PlayerScripts"):WaitForChild("Client"))
local EatRemote = ClientModule and ClientModule.Events and ClientModule.Events.RequestConsumeItem
getgenv().WS = LP.Character.Humanoid.WalkSpeed

local AlienX = {
      ["杀戮光环"] = false,
      ["自动砍树"] = false,
      ["自动进食"] = false,
      ["透视孩子"] = false,
      ["透视宝箱"] = false
    }

    local BL = {}
    local ClientModule = require(LP:WaitForChild("PlayerScripts"):WaitForChild("Client"))
    local EatRemote = ClientModule and ClientModule.Events and ClientModule.Events.RequestConsumeItem
    local function AddESP(part, txt1, txt2, enabled)
      local BG = part:FindFirstChild("BillboardGui")
      if not BG then
        local bg = Instance.new("BillboardGui")
        bg.Adornee = part
        bg.Parent = part
        bg.Size = UDim2.new(0, 100, 0, 100)
        bg.StudsOffset = Vector3.new(0, 3, 0)
        bg.AlwaysOnTop = true
        local TL = Instance.new("TextLabel", bg)
        TL.Text = txt1 .. "\n" .. txt2 .. "m"
        TL.Size = UDim2.new(1, 0, 0, 40)
        TL.Position = UDim2.new(0, 0, 0, 0)
        TL.BackgroundTransparency = 1
        TL.TextColor3 = Color3.new(1, 1, 1)
        TL.TextStrokeTransparency = 0.3
        TL.Font = Enum.Font.GothamBold
        TL.TextSize = 14
        local Img = Instance.new("ImageLabel", bg)
        Img.Position = UDim2.new(0, 20, 0, 40)
        Img.Size = UDim2.new(0, 60, 0, 60)
        Img.Image = part.Name:match("Chest") and "空云脚本xassetid://108829629233834" or ""
        Img.BackgroundTransparency = 1


      else
        local bg = BG
        bg.TextLabel.Text = txt1 .. "\n" .. txt2 .. "m"
        bg.Enabled = enabled
      end
    end

TabHandles.gn:Toggle({
    Title = "杀戮光环",
    Desc = "自动打怪和动物",
    Icon = "check",
    Value = false,
    Callback = function(Value)
AlienX["杀戮光环"] = Value
    end
})

TabHandles.gn:Toggle({
    Title = "自动砍树",
    Icon = "check",
    Value = false,
    Callback = function(Value)
AlienX["自动砍树"] = Value
    end
})

TabHandles.gn:Toggle({
    Title = "自动进食",
    Desc = "自动吃东西，在范围内有食物的话",
    Icon = "check",
    Value = false,
    Callback = function(Value)
AlienX["自动进食"] = Value
    end
})

TabHandles.gn:Toggle({
    Title = "瞬时互动",
    Desc = "与物品互动无冷却",
    Icon = "check",
    Value = false,
    Callback = function(Value)
if Value then
        if not connection then
          connection = game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
            prompt.HoldDuration = 0
          end)
        end
       else
        if connection then
          connection:Disconnect()
        end
      end
    end
})

local function TeleportToThing(thing)
    -- 安全获取本地玩家角色部件
    local LP = game.Players.LocalPlayer
    local character = LP.Character or LP.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    -- 遍历场景寻找目标物品
    for  , obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("Model") and obj.Name == thing then
            local part = obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart")
            if part then
                -- 将玩家传送到目标物品位置（保留原始高度偏移）
                humanoidRootPart.CFrame = part.CFrame * CFrame.new(0, 2, 0)
                return true  -- 成功传送后退出
            end
        end
    end
    return false  -- 未找到目标
end

    local function tryEatFood(food)
      if not EatRemote then warn("🚫 No EatRemote") return end
      if not ReplicatedStorage:FindFirstChild("TempStorage") then warn("🚫 No TempStorage") return end
      WindUI:Notify({Title = "空云脚本脚本中心：", Content = "正在吃..." .. food.Name, Duration = 5})
      food.Parent = ReplicatedStorage.TempStorage
      local success, result = pcall(function()
        return EatRemote:InvokeServer(food)
      end)
      if success and result and result.Success then
        WindUI:Notify({Title = "空云脚本脚本中心：", Content = "进食成功" .. food.Name, Duration = 5})
        return
       else
        WindUI:Notify({Title = "空云脚本脚本中心：", Content = "进食失败", Duration = 5})
        return
      end
    end
    local PlayerList = {}
    for a, b in next, Plr:GetPlayers() do
      table.insert(PlayerList, b.Name)
    end

TabHandles.wpgn:Button({
    Title = "传送至篝火/营地",
    Icon = "bell",
    Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 5, 0)
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "传送至物品",
    Desc = "点击下方按钮即可将你传送至对应物品位置\n小心地图上的敌对生物",
})

TabHandles.wpgn:Paragraph({
    Title = "武器与防具"
})

TabHandles.wpgn:Button({
    Title = "左轮手枪",
    Icon = "bell",
    Callback = function()
TeleportToThing("Revolver")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "步枪",
    Icon = "bell",
    Callback = function()
TeleportToThing("Rifle")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "左轮子弹",
    Icon = "bell",
    Callback = function()
TeleportToThing("Revolver Ammo")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "步枪子弹",
    Icon = "bell",
    Callback = function()
TeleportToThing("Rifle Ammo")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "皮革护甲",
    Icon = "bell",
    Callback = function()
TeleportToThing("Leather Body") 
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "铁质护甲",
    Icon = "bell",
    Callback = function()
TeleportToThing("Iron Body")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "尖刺护甲",
    Icon = "bell",
    Callback = function()
TeleportToThing("Thorn Body")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "废料"
})


TabHandles.wpgn:Button({
    Title = "螺丝",
    Desc = "价值：一个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Bolt")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "金属板",
    Desc = "价值：两个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Sheet Metal")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "废弃收音机",
    Desc = "价值：两个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Old Radio")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "废弃电风扇",
    Desc = "价值：两个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Broken Fan")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "废弃微波炉",
    Desc = "价值：三个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Broken Microwave")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "燃料"
})


TabHandles.wpgn:Button({
    Title = "原木",
    Desc = "价值：一个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Log")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "椅子",
    Desc = "价值：一个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Chair")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "煤块",
    Desc = "价值：两个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Coal")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "汽油桶",
    Desc = "价值：三个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Fuel Canister")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "石油桶",
    Desc = "价值：四个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Oil Barrel")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "食物"
})


TabHandles.wpgn:Button({
    Title = "胡萝卜",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Carrot")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "野浆果",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Berry")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "生肉腿",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Morsel")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "生肉排",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Steak")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "熟肉腿",
    Desc = "价值：两格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Cooked Morsel")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "熟肉排",
    Desc = "价值：两格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Cooked Steak")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "医疗"
})


TabHandles.wpgn:Button({
    Title = "绷带",
    Icon = "bell",
    Callback = function()
TeleportToThing("Bandage")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "医疗包",
    Icon = "bell",
    Callback = function()
TeleportToThing("MedKit")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.tsgn:Toggle({
    Title = "透视儿童",
    Icon = "check",
    Callback = function(Value)
AlienX["透视孩子"] = Value
    end
})

TabHandles.tsgn:Toggle({
    Title = "透视宝箱",
    Icon = "check",
    Callback = function(Value)
AlienX["透视宝箱"] = Value
    end
})

local csDropdown = TabHandles.fzgn:Dropdown({
    Title = "传送至玩家",
    Desc = "选择你要传送到的玩家",
    Values = PlayerList,
    Value = "",
    Callback = function(d)
if Plr[d] and Plr[d].Character and Plr[d].Character:FindFirstChild("HumanoidRootPart") then
          LP.Character:PivotTo(Plr[d].Character.HumanoidRootPart.CFrame)
        end
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "你已选择: "..d,
            Duration = 2
        })
    end
})

TabHandles.fzgn:Toggle({
    Title = "玩家发光",
    Icon = "check",
    Callback = function(t)
if t then
        local light = Instance.new("PointLight", LP.Character.Head)
        light.Name = "light"
        light.Range = 9999999
        light.Brightness = 15
       else
        pcall(function()LP.Character.Head.light:remove()end)
      end
    end
})

    Plr.PlayerAdded:Connect(function(a)
        PlayerList = {}
        for a, b in next, Plr:GetPlayers() do
            table.insert(PlayerList, b.Name)
        end
        task.wait(.1)
        C P:Refresh(PlayerList)
    end)
        Plr.PlayerRemoving:Connect(function(a)
        PlayerList = {}
        for a, b in next, Plr:GetPlayers() do
            table.insert(PlayerList, b.Name)
        end
        task.wait(.1)
        C P:Refresh(PlayerList)
    end)
        local last1, last2, last3 = 0, 0, 0
    game["Run Service"].Heartbeat:Connect(function()
        local Now = tick()
        if not LP.Character then return end
        if not LP.Character:FindFirstChild("HumanoidRootPart") then return end
        LP.Character.Humanoid.WalkSpeed = WS
        for a, b in next, workspace.Items:GetChildren() do
            if b:GetAttribute(tostring(LP.UserId) .. "Opened") then
                table.insert(BL, b)
                if b:FindFirstChild("BillboardGui") then
                    b.BillboardGui:Destroy()
                end
            end
            if b.Name:match("Chest") and b:IsA("Model") and not table.find(BL, b) and b:FindFirstChild("Main") then
                AddESP(b, "宝箱", tostring(math.floor((LP.Character.HumanoidRootPart.Position - b.Main.Position).Magnitude)), AlienX["透视宝箱"])
            end
        end
        for a, b in next, workspace.Characters:GetChildren() do
            if b:GetAttribute("Lost") and b:GetAttribute("Lost") == false then
                table.insert(BL, b)
                if b:FindFirstChild("BillboardGui") then
                    b.BillboardGui:Destroy()
                end
            end
            if table.find({"Lost Child", "Lost Child1", "Lost Child2", "Lost Child3", "Dino Kid", "kraken kid", "Squid kid", "Koala Kid", "koala Kid", "koala"}, b.Name) and b:FindFirstChild("HumanoidRootPart") and not table.find(BL, b) then
                AddESP(b, "儿童", tostring(math.floor((LP.Character.HumanoidRootPart.Position - b.HumanoidRootPart.Position).Magnitude)), AlienX["透视孩子"])
            end
        end
        if AlienX["杀戮光环"] and Now - last1 >= 1.2 then
            last1 = Now
            if not ({["Old Axe"] = true, ["Good Axe"] = true, ["Spear"] = true, ["Hatchet"] = true, ["Bone Club"] = true})[tool.Name] then return end
            for a, b in next, workspace.Characters:GetChildren() do
              if b:IsA("Model") and b:FindFirstChild("HumanoidRootPart") and b:FindFirstChild("HitRegisters") then
                if (LP.Character.HumanoidRootPart.Position - b.HumanoidRootPart.Position).Magnitude <= 10 then
                  game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ToolDamageObject"):InvokeServer(b, tool, true, LP.Character.HumanoidRootPart.CFrame)
                end
              end
            end
          end
    end)
TabHandles.Appearance:Paragraph({
    Title = "自定义界面",
    Desc = "个性化您的体验",
    Image = "palette",
    ImageSize = 20,
    Color = "White"
})

local themes = {}
for themeName,   in pairs(WindUI:GetThemes()) do
    table.insert(themes, themeName)
end
table.sort(themes)

local themeDropdown = TabHandles.Appearance:Dropdown({
    Title = "主题选择",
    Values = themes,
    Value = "Dark",
    Callback = function(theme)
        WindUI:SetTheme(theme)
        WindUI:Notify({
            Title = "主题应用",
            Content = theme,
            Icon = "palette",
            Duration = 2
        })
    end
})

local transparencySlider = TabHandles.Appearance:Slider({
    Title = "透明度",
    Value = { 
        Min = 0,
        Max = 1,
        Default = 0.2,
    },
    Step = 0.1,
    Callback = function(value)
        Window:ToggleTransparency(tonumber(value) > 0)
        WindUI.TransparencyValue = tonumber(value)
    end
})

TabHandles.Appearance:Toggle({
    Title = "启用黑色主题",
    Desc = "使用黑色调主题方案",
    Value = true,
    Callback = function(state)
        WindUI:SetTheme(state and "Dark" or "Light")
        themeDropdown:Select(state and "Dark" or "Light")
    end
})

TabHandles.Appearance:Button({
    Title = "创建新主题",
    Icon = "plus",
    Callback = function()
        Window:Dialog({
            Title = "创建主题",
            Content = "此功能很快就会推出",
            Buttons = {
                {
                    Title = "确认",
                    Variant = "Primary"
                }
            }
        })
    end
})

TabHandles.Config:Paragraph({
    Title = "配置管理",
    Desc = "保存你的设置",
    Image = "save",
    ImageSize = 20,
    Color = "White"
})

local configName = "default"
local configFile = nil
local MyPlayerData = {
    name = "Player1",
    level = 1,
    inventory = { "sword", "shield", "potion" }
}

TabHandles.Config:Input({
    Title = "配置名称",
    Value = configName,
    Callback = function(value)
        configName = value
    end
})

local ConfigManager = Window.ConfigManager
if ConfigManager then
    ConfigManager:Init(Window)
    
    TabHandles.Config:Button({
        Title = "保存配置",
        Icon = "save",
        Variant = "Primary",
        Callback = function()
            configFile = ConfigManager:CreateConfig(configName)
            
            configFile:Register("featureToggle", featureToggle)
            configFile:Register("intensitySlider", intensitySlider)
            configFile:Register("modeDropdown", modeDropdown)
            configFile:Register("themeDropdown", themeDropdown)
            configFile:Register("transparencySlider", transparencySlider)
            
            configFile:Set("playerData", MyPlayerData)
            configFile:Set("lastSave", os.date("%Y-%m-%d %H:%M:%S"))
            
            if configFile:Save() then
                WindUI:Notify({ 
                    Title = "保存配置", 
                    Content = "保存为："..configName,
                    Icon = "check",
                    Duration = 3
                })
            else
                WindUI:Notify({ 
                    Title = "错误", 
                    Content = "保存失败",
                    Icon = "x",
                    Duration = 3
                })
            end
        end
    })

    TabHandles.Config:Button({
        Title = "加载配置",
        Icon = "folder",
        Callback = function()
            configFile = ConfigManager:CreateConfig(configName)
            local loadedData = configFile:Load()
            
            if loadedData then
                if loadedData.playerData then
                    MyPlayerData = loadedData.playerData
                end
                
                local lastSave = loadedData.lastSave or "Unknown"
                WindUI:Notify({ 
                    Title = "加载配置", 
                    Content = "正在加载："..configName.."\n上次保存："..lastSave,
                    Icon = "refresh-cw",
                    Duration = 5
                })
                
                TabHandles.Config:Paragraph({
                    Title = "玩家数据",
                    Desc = string.format("名字: %s\n等级: %d\n库存: %s", 
                        MyPlayerData.name, 
                        MyPlayerData.level, 
                        table.concat(MyPlayerData.inventory, ", "))
                })
            else
                WindUI:Notify({ 
                    Title = "错误", 
                    Content = "加载失败",
                    Icon = "x",
                    Duration = 3
                })
            end
        end
    })
else
    TabHandles.Config:Paragraph({
        Title = "配置管理不可用",
        Desc = "此功能需要配置管理",
        Image = "alert-triangle",
        ImageSize = 20,
        Color = "White"
    })
end

Window:OnClose(function()
    print("Window closed")
    if ConfigManager and configFile then
        configFile:Set("playerData", MyPlayerData)
        configFile:Set("lastSave", os.date("%Y-%m-%d %H:%M:%S"))
        configFile:Save()
        print("Config auto-saved on close")
    end
end)

Window:OnDestroy(function()
    print("Window destroyed")
end)
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "空云脚本脚本中心：", 
	Text = "成功", 
	Icon = "空云脚本xassetid://119970903874014" 
})()
  elseif game.GameId == 7709344486 then 
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "空云脚本脚本中心：", 
	Text = "偷走脑红正在制作中，请等待更新！", 
	Icon = "空云脚本xassetid://119970903874014" 
})()

  else -- Not Support
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "空云脚本脚本中心：", 
	Text = "请在支持的服务器中加载脚本！", 
	Icon = "空云脚本xassetid://119970903874014" 
})()
end
    end
})

TabHandles.gn:Button({
    Title = "加载森林中的99夜",
    Desc = "手动",
    Icon = "plus",
    Callback = function()
local WindUI = loadstring(game:HttpGet("https://pastebin.com/raw/qYYUTE4g"))()

WindUI:Localization({
    Enabled = true,
    Prefix = "loc:",
    DefaultLanguage = "ru",
    Translations = {
        ["ru"] = {
            ["WINDUI EXAMPLE"] = "WindUI Пример",
            ["WELCOME"] = "Добро пожаловать в WindUI!",
            ["LIB DESC"] = "Библиотека для создания красивых интерфейсов",
            ["SETTINGS"] = "Настройки",
            ["APPEARANCE"] = "Внешний вид",
            ["FEATURES"] = "Функционал",
            ["UTILITIES"] = "Инструменты",
            ["UI ELEMENTS"] = "UI Элементы",
            ["CONFIGURATION"] = "Конфигурация",
            ["SAVE CONFIG"] = "Сохранить конфигурацию",
            ["LOAD CONFIG"] = "Загрузить конфигурацию",
            ["THEME SELECT"] = "Выберите тему",
            ["TRANSPARENCY"] = "Прозрачность окна"
        },
        ["en"] = {
            ["WINDUI EXAMPLE"] = "WindUI Example",
            ["WELCOME"] = "Welcome to WindUI!",
            ["LIB DESC"] = "Beautiful UI library for Roblox",
            ["SETTINGS"] = "Settings",
            ["APPEARANCE"] = "Appearance",
            ["FEATURES"] = "Features",
            ["UTILITIES"] = "Utilities",
            ["UI ELEMENTS"] = "UI Elements",
            ["CONFIGURATION"] = "Configuration",
            ["SAVE CONFIG"] = "Save Configuration",
            ["LOAD CONFIG"] = "Load Configuration",
            ["THEME SELECT"] = "Select Theme",
            ["TRANSPARENCY"] = "Window Transparency"
        }
    }
})

WindUI.TransparencyValue = 0.2
WindUI:SetTheme("Dark")

local function gradient(text, startColor, endColor)
    local result = ""
    for i = 1, #text do
        local t = (i - 1) / (#text - 1)
        local r = math.floor((startColor.R + (endColor.R - startColor.R) * t) * 255)
        local g = math.floor((startColor.G + (endColor.G - startColor.G) * t) * 255)
        local b = math.floor((startColor.B + (endColor.B - startColor.B) * t) * 255)
        result = result .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', r, g, b, text:sub(i, i))
    end
    return result
end

local Confirmed = false

WindUI:Popup({
    Title = gradient("空云脚本Script Hub", Color3.fromHex("#6A11CB"), Color3.fromHex("#2575FC")),
    Icon = "sparkles",
    IconThemed = true,
    Content = "欢迎使用！",
    Buttons = {
        {
            Title = "取消",
            --Icon = "",
            Callback = function() end,
            Variant = "Secondary", -- Primary, Secondary, Tertiary
        },
        {
            Title = "确认",
            Icon = "arrow-right",
            Callback = function() Confirmed = true end,
            Variant = "Primary", -- Primary, Secondary, Tertiary
        }
    }
})

repeat wait() until Confirmed

local UserGui = Instance.new("ScreenGui", game.CoreGui)
local UserLabel = Instance.new("TextLabel", UserGui)
local UIGradient = Instance.new("UIGradient")

UserGui.Name = "UserGui"
UserGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UserGui.Enabled = true
UserLabel.Name = "UserLabel"
UserLabel.BackgroundColor3 = Color3.new(1, 1, 1)
UserLabel.BackgroundTransparency = 1
UserLabel.BorderColor3 = Color3.new(0, 0, 0)
UserLabel.Position = UDim2.new(0.80, 0.80, 0.00090, 0)
UserLabel.Size = UDim2.new(0, 135, 0, 50)
UserLabel.Font = Enum.Font.GothamSemibold
UserLabel.Text = "尊敬的："..game.Players.LocalPlayer.Character.Name.."用户，欢迎使用空云脚本脚本中心！"
UserLabel.TextColor3 = Color3.new(1, 1, 1)
UserLabel.TextScaled = true
UserLabel.TextSize = 14
UserLabel.TextWrapped = true
UserLabel.Visible = true

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(0.10, Color3.fromRGB(255, 127, 0)),
    ColorSequenceKeypoint.new(0.20, Color3.fromRGB(255, 255, 0)),
    ColorSequenceKeypoint.new(0.30, Color3.fromRGB(0, 255, 0)),
    ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 255, 255)),
    ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 0, 255)),
    ColorSequenceKeypoint.new(0.60, Color3.fromRGB(139, 0, 255)),
    ColorSequenceKeypoint.new(0.70, Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(0.80, Color3.fromRGB(255, 127, 0)),
    ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 255, 0)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 0))
}
UIGradient.Rotation = 10
UIGradient.Parent = UserLabel

local TweenService = game:GetService("TweenService")
local tweeninfo = TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
local tween = TweenService:Create(UIGradient, tweeninfo, {Rotation = 360})
tween:Play()

local Window = WindUI:CreateWindow({
    Title = "空云脚本脚本中心",
    Icon = "空云脚本xassetid://105933835532108",
    Author = " Yungengxin",
    Folder = "脚本中心",
    Size = UDim2.fromOffset(480, 360),
    Theme = "Dark",
    Background = WindUI:Gradient({
        ["0"] = { Color = Color3.fromHex("#0f0c29"), Transparency = 1 },
        ["100"] = { Color = Color3.fromHex("#302b63"), Transparency = 0.9 },
    }, {
        Rotation = 45,
    }),
    Background = "空云脚本xassetid://133155269071576",
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
        
            WindUI:Notify({
                Title = "您的用户ID：",
                Content = (game:GetService("Players").LocalPlayer.UserId),
                Duration = 3
            })
        end
    },
    SideBarWidth = 220,
    HideSearchBar = false,
    ScrollBarEnabled = true
})

Window:Tag({
    Title = "v1.0.0",
    Color = Color3.fromHex("#30ff6a")
})

Window:CreateTopba空云脚本utton("theme-switcher", "moon", function()
    WindUI:SetTheme(WindUI:GetCurrentTheme() == "Dark" and "Light" or "Dark")
    WindUI:Notify({
        Title = "Theme Changed",
        Content = "Current theme: "..WindUI:GetCurrentTheme(),
        Duration = 2
    })
end, 990)

local Tabs = {
    Main = Window:Section({ Title = "通用", Opened = true }),
    gn = Window:Section({ Title = "功能", Opened = true }),
    Settings = Window:Section({ Title = "UI设置", Opened = true }),
    Utilities = Window:Section({ Title = "保存配置", Opened = true })
}

local TabHandles = {
    xx = Tabs.Main:Tab({ Title = "游戏信息", Icon = "layout-grid" }),
    Elements = Tabs.Main:Tab({ Title = "玩家功能", Icon = "layout-grid" }),
    gn = Tabs.gn:Tab({ Title = "游戏功能", Icon = "layout-grid" }),
    wpgn = Tabs.gn:Tab({ Title = "物品功能", Icon = "layout-grid" }),
    tsgn = Tabs.gn:Tab({ Title = "透视功能", Icon = "layout-grid" }),
    fzgn = Tabs.gn:Tab({ Title = "辅助功能", Icon = "layout-grid" }),
    Appearance = Tabs.Settings:Tab({ Title = "UI外观", Icon = "brush" }),
    Config = Tabs.Utilities:Tab({ Title = "调整配置", Icon = "settings" })
}

TabHandles.xx:Paragraph({
    Title = "您的游戏名称：",
    Desc = ""..game:GetService("Players").LocalPlayer.DisplayName.."",
    Buttons = {
        {
            Title = "复制您的名称",
            Icon = "copy",
            Variant = "Primary",
            Callback = function() 
            
            setclipboard(game:GetService("Players").LocalPlayer.DisplayName)

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Icon = "copy",
            Content = "已成功复制！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})

TabHandles.xx:Paragraph({
    Title = "您的游戏用户名：",
    Desc = ""..game:GetService("Players").LocalPlayer.Name.."",
    Buttons = {
        {
            Title = "复制您的用户名",
            Icon = "copy",
            Variant = "Primary",
            Callback = function() 
            
            setclipboard(game:GetService("Players").LocalPlayer.Name)

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Content = "已成功复制！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})

TabHandles.xx:Paragraph({
    Title = "您的用户名ID：",
    Desc = ""..game:GetService("Players").LocalPlayer.UserId.."",
    Buttons = {
        {
            Title = "复制您的用户名ID",
            Icon = "copy",
            Variant = "Primary",
            Callback = function() 
            
            setclipboard(game:GetService("Players").LocalPlayer.UserId)

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Content = "已成功复制！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})

TabHandles.xx:Paragraph({
    Title = "您的账号注册时间（天）：",
    Desc = ""..game:GetService("Players").LocalPlayer.AccountAge.."",
    Buttons = {
        {
            Title = "复制您的注册时间",
            Icon = "copy",
            Variant = "Primary",
            Callback = function() 
            
            setclipboard(game:GetService("Players").LocalPlayer.AccountAge)

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Content = "已成功复制！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})

TabHandles.xx:Paragraph({
    Title = "您所在的服务器名称：",
    Desc = ""..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.."",
    Buttons = {
        {
            Title = "复制您所在的服务器名称",
            Icon = "copy",
            Variant = "Primary",
            Callback = function() 
            
            setclipboard(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Content = "已成功复制！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})

TabHandles.xx:Paragraph({
    Title = "您所在的服务器ID：",
    Desc = ""..game.PlaceId.."",
    Buttons = {
        {
            Title = "复制您所在的服务器ID",
            Icon = "copy",
            Variant = "Primary",
            Callback = function() 
            
            setclipboard("无法复制")

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Content = "已成功复制！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})



TabHandles.xx:Paragraph({
    Title = "您的注入器：",
    Desc = ""..identifyexecutor().."",
    Image = "空云脚本xassetid://129287693322764",
    ImageSize = 42, -- default 30
    Thumbnail = "空云脚本xassetid://94512740386917",
    ThumbnailSize = 120, -- Thumbnail height
    Buttons = {
        {
            Title = "测试您注入器的UNC",
            Variant = "Primary",
            Callback = function() 
            Window:Dialog({
            Title = "空云脚本脚本中心",
            Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
            Icon = "bell",
            Buttons = {
                {
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function() 
                        print("ok")
                    end,
                }
            }
        })
            loadstring(game:HttpGet"https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()

local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
		WindUI:Notify({
            Title = "空云脚本脚本中心---提示：",
            Content = "已成功执行，请在控制台查看UNC！",
            Icon = "bell",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })

            end,
            Icon = "bird",
        },
    }
})

TabHandles.xx:Code({
    Title = "空云脚本脚本中心交流群（主群）",
    Code = [[https://qm.qq.com/q/csDfI4BZNm]],
})

TabHandles.xx:Code({
    Title = "空云脚本脚本中心交流群（Discord群）",
    Code = [[https://discord.gg/qZmW3PYd9T]],
})

local intensitySlider = TabHandles.Elements:Slider({
    Title = "玩家速度",
    Desc = "speedwalk",
    Value = { Min = 0, Max = 1000, Default = 16 },
    Callback = function(s)
        getgenv().WS = s
    end
})

local intensitySlider = TabHandles.Elements:Slider({
    Title = "玩家速度V2",
    Desc = "tpwalk",
    Value = { Min = 0, Max = 10, Default = 0 },
    Callback = function(value)
        local tpWalk = {}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

local teleportDistance = value -- 每次传送的距离
local isTeleporting = true -- 是否正在传送

-- 禁用所有与移动相关的状态
local function DisableDefaultMovement()
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
end

-- 启用所有与移动相关的状态
local function EnableDefaultMovement()
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
end

-- 自定义传送函数
local function Teleport()
    if not isTeleporting or not rootPart or not humanoid then
        return
    end

    -- 获取移动方向
    local moveDirection = humanoid.MoveDirection
    if moveDirection.Magnitude == 0 then
        return -- 如果没有移动方向，则停止传送
    end

    -- 计算传送向量
    local teleportVector = moveDirection * teleportDistance

    -- 检测前方是否有障碍物
    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = {character}
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

    local raycastResult = workspace:Raycast(rootPart.Position, teleportVector, raycastParams)

    if raycastResult then
        -- 如果有障碍物，调整传送向量
        teleportVector = (raycastResult.Position - rootPart.Position).Unit * teleportDistance
    end

    -- 更新位置
    rootPart.CFrame = rootPart.CFrame + teleportVector
end

-- 控制开关函数
function tpWalk:Enabled(enabled)
    isTeleporting = enabled
    if enabled then DisableDefaultMovement() else EnableDefaultMovement() end
end

function tpWalk:GetEnabled()
    return isTeleporting
end

function tpWalk:SetSpeed(speed)
    teleportDistance = speed or 0.1
end

function tpWalk:GetSpeed()
    return teleportDistance
end

-- 每帧更新传送
RunService.Heartbeat:Connect(function()
    if isTeleporting then
        Teleport()
    end
end)

return tpWalk
    end
})

local intensitySlider = TabHandles.Elements:Slider({
    Title = "玩家跳跃",
    Desc = "JumpPower",
    Value = { Min = 0, Max = 1000, Default = 50 },
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end
})

local intensitySlider = TabHandles.Elements:Slider({
    Title = "玩家重力",
    Desc = "gravity",
    Value = { Min = 0, Max = 1000, Default = 309 },
    Callback = function(value)
        game.Workspace.Gravity = value
    end
})



TabHandles.Elements:Divider()

local featureToggle = TabHandles.Elements:Toggle({
    Title = "夜视",
    Desc = "使你的游戏亮度提高",
    Value = false,
    Callback = function(state) 
        if state then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
            else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
            end
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = state and "夜视已开启，若仍不清楚可开启去雾功能" or "夜视已关闭",
            Icon = state and "check" or "x",
            Duration = 2
        })
    end
})

xrayEnabled = false
function xray()
    for  , v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and not v.Parent:FindFirstChildWhichIsA("Humanoid") and not v.Parent.Parent:FindFirstChildWhichIsA("Humanoid") then
            v.LocalTransparencyModifier = xrayEnabled and 0.5 or 0
        end
    end
end

local featureToggle = TabHandles.Elements:Toggle({
    Title = "地图透视",
    Desc = "Xray",
    Value = false,
    Callback = function(state) 
        if state then
		    xrayEnabled = true
    xray()
            else
		    xrayEnabled = false
    xray()
            end
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = state and "地图透视已开启，若仍不清楚可开启其他视觉功能" or "地图透视已关闭",
            Icon = state and "check" or "x",
            Duration = 2
        })
    end
})

local toggleState = false

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
function NoFog()
    local c = game.Lighting
    c.FogEnd = 100000
    for r, v in pairs(c:GetDescendants()) do
        if v:IsA("Atmosphere") then
            v:Destroy()
        end
    end
end
TabHandles.Elements:Button({
    Title = "去雾",
    Desc = "一键去除游戏中的雾",
    Icon = "bell",
    Callback = function()
NoFog()
local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已去雾",
            Icon = "bell",
            Duration = 3
        })
    end
})
TabHandles.Elements:Divider()

TabHandles.Elements:Button({
    Title = "飞行",
    Desc = "传统的飞行",
    Icon = "bell",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/CPSm1udG"))()
local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "空云脚本xassetid://2865227271"
            Sound:Play()
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "成功加载飞行",
            Icon = "bell",
            Duration = 3
        })
    end
})

hookfunction(getnamecallmethod, function()
  return
end)
for i, v in pairs({request, loadstring, base64.decode}) do
  if isfunctionhooked(v) or not isfunctionhooked(getnamecallmethod) then
    return
  end
end
local HttpService = game:GetService("HttpService")
local Plr = game:GetService("Players")
local LP = Plr.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ClientModule = require(LP:WaitForChild("PlayerScripts"):WaitForChild("Client"))
local EatRemote = ClientModule and ClientModule.Events and ClientModule.Events.RequestConsumeItem
getgenv().WS = LP.Character.Humanoid.WalkSpeed

local AlienX = {
      ["杀戮光环"] = false,
      ["自动砍树"] = false,
      ["自动进食"] = false,
      ["透视孩子"] = false,
      ["透视宝箱"] = false
    }

    local BL = {}
    local ClientModule = require(LP:WaitForChild("PlayerScripts"):WaitForChild("Client"))
    local EatRemote = ClientModule and ClientModule.Events and ClientModule.Events.RequestConsumeItem
    local function AddESP(part, txt1, txt2, enabled)
      local BG = part:FindFirstChild("BillboardGui")
      if not BG then
        local bg = Instance.new("BillboardGui")
        bg.Adornee = part
        bg.Parent = part
        bg.Size = UDim2.new(0, 100, 0, 100)
        bg.StudsOffset = Vector3.new(0, 3, 0)
        bg.AlwaysOnTop = true
        local TL = Instance.new("TextLabel", bg)
        TL.Text = txt1 .. "\n" .. txt2 .. "m"
        TL.Size = UDim2.new(1, 0, 0, 40)
        TL.Position = UDim2.new(0, 0, 0, 0)
        TL.BackgroundTransparency = 1
        TL.TextColor3 = Color3.new(1, 1, 1)
        TL.TextStrokeTransparency = 0.3
        TL.Font = Enum.Font.GothamBold
        TL.TextSize = 14
        local Img = Instance.new("ImageLabel", bg)
        Img.Position = UDim2.new(0, 20, 0, 40)
        Img.Size = UDim2.new(0, 60, 0, 60)
        Img.Image = part.Name:match("Chest") and "空云脚本xassetid://108829629233834" or ""
        Img.BackgroundTransparency = 1


      else
        local bg = BG
        bg.TextLabel.Text = txt1 .. "\n" .. txt2 .. "m"
        bg.Enabled = enabled
      end
    end

TabHandles.gn:Toggle({
    Title = "杀戮光环",
    Desc = "自动打怪和动物",
    Icon = "check",
    Value = false,
    Callback = function(Value)
AlienX["杀戮光环"] = Value
    end
})

TabHandles.gn:Toggle({
    Title = "自动砍树",
    Icon = "check",
    Value = false,
    Callback = function(Value)
AlienX["自动砍树"] = Value
    end
})

TabHandles.gn:Toggle({
    Title = "自动进食",
    Desc = "自动吃东西，在范围内有食物的话",
    Icon = "check",
    Value = false,
    Callback = function(Value)
AlienX["自动进食"] = Value
    end
})

TabHandles.gn:Toggle({
    Title = "瞬时互动",
    Desc = "与物品互动无冷却",
    Icon = "check",
    Value = false,
    Callback = function(Value)
if Value then
        if not connection then
          connection = game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
            prompt.HoldDuration = 0
          end)
        end
       else
        if connection then
          connection:Disconnect()
        end
      end
    end
})

local function TeleportToThing(thing)
    -- 安全获取本地玩家角色部件
    local LP = game.Players.LocalPlayer
    local character = LP.Character or LP.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    -- 遍历场景寻找目标物品
    for  , obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("Model") and obj.Name == thing then
            local part = obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart")
            if part then
                -- 将玩家传送到目标物品位置（保留原始高度偏移）
                humanoidRootPart.CFrame = part.CFrame * CFrame.new(0, 2, 0)
                return true  -- 成功传送后退出
            end
        end
    end
    return false  -- 未找到目标
end

    local function tryEatFood(food)
      if not EatRemote then warn("🚫 No EatRemote") return end
      if not ReplicatedStorage:FindFirstChild("TempStorage") then warn("🚫 No TempStorage") return end
      WindUI:Notify({Title = "空云脚本脚本中心：", Content = "正在吃..." .. food.Name, Duration = 5})
      food.Parent = ReplicatedStorage.TempStorage
      local success, result = pcall(function()
        return EatRemote:InvokeServer(food)
      end)
      if success and result and result.Success then
        WindUI:Notify({Title = "空云脚本脚本中心：", Content = "进食成功" .. food.Name, Duration = 5})
        return
       else
        WindUI:Notify({Title = "空云脚本脚本中心：", Content = "进食失败", Duration = 5})
        return
      end
    end
    local PlayerList = {}
    for a, b in next, Plr:GetPlayers() do
      table.insert(PlayerList, b.Name)
    end

TabHandles.wpgn:Button({
    Title = "传送至篝火/营地",
    Icon = "bell",
    Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 5, 0)
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "传送至物品",
    Desc = "点击下方按钮即可将你传送至对应物品位置\n小心地图上的敌对生物",
})

TabHandles.wpgn:Paragraph({
    Title = "武器与防具"
})

TabHandles.wpgn:Button({
    Title = "左轮手枪",
    Icon = "bell",
    Callback = function()
TeleportToThing("Revolver")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "步枪",
    Icon = "bell",
    Callback = function()
TeleportToThing("Rifle")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "左轮子弹",
    Icon = "bell",
    Callback = function()
TeleportToThing("Revolver Ammo")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "步枪子弹",
    Icon = "bell",
    Callback = function()
TeleportToThing("Rifle Ammo")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "皮革护甲",
    Icon = "bell",
    Callback = function()
TeleportToThing("Leather Body") 
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "铁质护甲",
    Icon = "bell",
    Callback = function()
TeleportToThing("Iron Body")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "尖刺护甲",
    Icon = "bell",
    Callback = function()
TeleportToThing("Thorn Body")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "废料"
})


TabHandles.wpgn:Button({
    Title = "螺丝",
    Desc = "价值：一个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Bolt")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "金属板",
    Desc = "价值：两个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Sheet Metal")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "废弃收音机",
    Desc = "价值：两个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Old Radio")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "废弃电风扇",
    Desc = "价值：两个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Broken Fan")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "废弃微波炉",
    Desc = "价值：三个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Broken Microwave")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "燃料"
})


TabHandles.wpgn:Button({
    Title = "原木",
    Desc = "价值：一个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Log")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "椅子",
    Desc = "价值：一个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Chair")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "煤块",
    Desc = "价值：两个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Coal")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "汽油桶",
    Desc = "价值：三个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Fuel Canister")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "石油桶",
    Desc = "价值：四个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Oil Barrel")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "食物"
})


TabHandles.wpgn:Button({
    Title = "胡萝卜",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Carrot")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "野浆果",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Berry")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "生肉腿",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Morsel")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "生肉排",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Steak")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "熟肉腿",
    Desc = "价值：两格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Cooked Morsel")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "熟肉排",
    Desc = "价值：两格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Cooked Steak")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "医疗"
})


TabHandles.wpgn:Button({
    Title = "绷带",
    Icon = "bell",
    Callback = function()
TeleportToThing("Bandage")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "医疗包",
    Icon = "bell",
    Callback = function()
TeleportToThing("MedKit")
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.tsgn:Toggle({
    Title = "透视儿童",
    Icon = "check",
    Callback = function(Value)
AlienX["透视孩子"] = Value
    end
})

TabHandles.tsgn:Toggle({
    Title = "透视宝箱",
    Icon = "check",
    Callback = function(Value)
AlienX["透视宝箱"] = Value
    end
})

local csDropdown = TabHandles.fzgn:Dropdown({
    Title = "传送至玩家",
    Desc = "选择你要传送到的玩家",
    Values = PlayerList,
    Value = "",
    Callback = function(d)
if Plr[d] and Plr[d].Character and Plr[d].Character:FindFirstChild("HumanoidRootPart") then
          LP.Character:PivotTo(Plr[d].Character.HumanoidRootPart.CFrame)
        end
        WindUI:Notify({
            Title = "空云脚本脚本中心：",
            Content = "你已选择: "..d,
            Duration = 2
        })
    end
})

TabHandles.fzgn:Toggle({
    Title = "玩家发光",
    Icon = "check",
    Callback = function(t)
if t then
        local light = Instance.new("PointLight", LP.Character.Head)
        light.Name = "light"
        light.Range = 9999999
        light.Brightness = 15
       else
        pcall(function()LP.Character.Head.light:remove()end)
      end
    end
})

    Plr.PlayerAdded:Connect(function(a)
        PlayerList = {}
        for a, b in next, Plr:GetPlayers() do
            table.insert(PlayerList, b.Name)
        end
        task.wait(.1)
        C P:Refresh(PlayerList)
    end)
        Plr.PlayerRemoving:Connect(function(a)
        PlayerList = {}
        for a, b in next, Plr:GetPlayers() do
            table.insert(PlayerList, b.Name)
        end
        task.wait(.1)
        C P:Refresh(PlayerList)
    end)
        local last1, last2, last3 = 0, 0, 0
    game["Run Service"].Heartbeat:Connect(function()
        local Now = tick()
        if not LP.Character then return end
        if not LP.Character:FindFirstChild("HumanoidRootPart") then return end
        LP.Character.Humanoid.WalkSpeed = WS
        for a, b in next, workspace.Items:GetChildren() do
            if b:GetAttribute(tostring(LP.UserId) .. "Opened") then
                table.insert(BL, b)
                if b:FindFirstChild("BillboardGui") then
                    b.BillboardGui:Destroy()
                end
            end
            if b.Name:match("Chest") and b:IsA("Model") and not table.find(BL, b) and b:FindFirstChild("Main") then
                AddESP(b, "宝箱", tostring(math.floor((LP.Character.HumanoidRootPart.Position - b.Main.Position).Magnitude)), AlienX["透视宝箱"])
            end
        end
        for a, b in next, workspace.Characters:GetChildren() do
            if b:GetAttribute("Lost") and b:GetAttribute("Lost") == false then
                table.insert(BL, b)
                if b:FindFirstChild("BillboardGui") then
                    b.BillboardGui:Destroy()
                end
            end
            if table.find({"Lost Child", "Lost Child1", "Lost Child2", "Lost Child3", "Dino Kid", "kraken kid", "Squid kid", "Koala Kid", "koala Kid", "koala"}, b.Name) and b:FindFirstChild("HumanoidRootPart") and not table.find(BL, b) then
                AddESP(b, "儿童", tostring(math.floor((LP.Character.HumanoidRootPart.Position - b.HumanoidRootPart.Position).Magnitude)), AlienX["透视孩子"])
            end
        end
        if AlienX["杀戮光环"] and Now - last1 >= 1.2 then
            last1 = Now
            if not ({["Old Axe"] = true, ["Good Axe"] = true, ["Spear"] = true, ["Hatchet"] = true, ["Bone Club"] = true})[tool.Name] then return end
            for a, b in next, workspace.Characters:GetChildren() do
              if b:IsA("Model") and b:FindFirstChild("HumanoidRootPart") and b:FindFirstChild("HitRegisters") then
                if (LP.Character.HumanoidRootPart.Position - b.HumanoidRootPart.Position).Magnitude <= 10 then
                  game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ToolDamageObject"):InvokeServer(b, tool, true, LP.Character.HumanoidRootPart.CFrame)
                end
              end
            end
          end
    end)
TabHandles.Appearance:Paragraph({
    Title = "自定义界面",
    Desc = "个性化您的体验",
    Image = "palette",
    ImageSize = 20,
    Color = "White"
})

local themes = {}
for themeName,   in pairs(WindUI:GetThemes()) do
    table.insert(themes, themeName)
end
table.sort(themes)

local themeDropdown = TabHandles.Appearance:Dropdown({
    Title = "主题选择",
    Values = themes,
    Value = "Dark",
    Callback = function(theme)
        WindUI:SetTheme(theme)
        WindUI:Notify({
            Title = "主题应用",
            Content = theme,
            Icon = "palette",
            Duration = 2
        })
    end
})

local transparencySlider = TabHandles.Appearance:Slider({
    Title = "透明度",
    Value = { 
        Min = 0,
        Max = 1,
        Default = 0.2,
    },
    Step = 0.1,
    Callback = function(value)
        Window:ToggleTransparency(tonumber(value) > 0)
        WindUI.TransparencyValue = tonumber(value)
    end
})

TabHandles.Appearance:Toggle({
    Title = "启用黑色主题",
    Desc = "使用黑色调主题方案",
    Value = true,
    Callback = function(state)
        WindUI:SetTheme(state and "Dark" or "Light")
        themeDropdown:Select(state and "Dark" or "Light")
    end
})

TabHandles.Appearance:Button({
    Title = "创建新主题",
    Icon = "plus",
    Callback = function()
        Window:Dialog({
            Title = "创建主题",
            Content = "此功能很快就会推出",
            Buttons = {
                {
                    Title = "确认",
                    Variant = "Primary"
                }
            }
        })
    end
})

TabHandles.Config:Paragraph({
    Title = "配置管理",
    Desc = "保存你的设置",
    Image = "save",
    ImageSize = 20,
    Color = "White"
})

local configName = "default"
local configFile = nil
local MyPlayerData = {
    name = "Player1",
    level = 1,
    inventory = { "sword", "shield", "potion" }
}

TabHandles.Config:Input({
    Title = "配置名称",
    Value = configName,
    Callback = function(value)
        configName = value
    end
})

local ConfigManager = Window.ConfigManager
if ConfigManager then
    ConfigManager:Init(Window)
    
    TabHandles.Config:Button({
        Title = "保存配置",
        Icon = "save",
        Variant = "Primary",
        Callback = function()
            configFile = ConfigManager:CreateConfig(configName)
            
            configFile:Register("featureToggle", featureToggle)
            configFile:Register("intensitySlider", intensitySlider)
            configFile:Register("modeDropdown", modeDropdown)
            configFile:Register("themeDropdown", themeDropdown)
            configFile:Register("transparencySlider", transparencySlider)
            
            configFile:Set("playerData", MyPlayerData)
            configFile:Set("lastSave", os.date("%Y-%m-%d %H:%M:%S"))
            
            if configFile:Save() then
                WindUI:Notify({ 
                    Title = "保存配置", 
                    Content = "保存为："..configName,
                    Icon = "check",
                    Duration = 3
                })
            else
                WindUI:Notify({ 
                    Title = "错误", 
                    Content = "保存失败",
                    Icon = "x",
                    Duration = 3
                })
            end
        end
    })

    TabHandles.Config:Button({
        Title = "加载配置",
        Icon = "folder",
        Callback = function()
            configFile = ConfigManager:CreateConfig(configName)
            local loadedData = configFile:Load()
            
            if loadedData then
                if loadedData.playerData then
                    MyPlayerData = loadedData.playerData
                end
                
                local lastSave = loadedData.lastSave or "Unknown"
                WindUI:Notify({ 
                    Title = "加载配置", 
                    Content = "正在加载："..configName.."\n上次保存："..lastSave,
                    Icon = "refresh-cw",
                    Duration = 5
                })
                
                TabHandles.Config:Paragraph({
                    Title = "玩家数据",
                    Desc = string.format("名字: %s\n等级: %d\n库存: %s", 
                        MyPlayerData.name, 
                        MyPlayerData.level, 
                        table.concat(MyPlayerData.inventory, ", "))
                })
            else
                WindUI:Notify({ 
                    Title = "错误", 
                    Content = "加载失败",
                    Icon = "x",
                    Duration = 3
                })
            end
        end
    })
else
    TabHandles.Config:Paragraph({
        Title = "配置管理不可用",
        Desc = "此功能需要配置管理",
        Image = "alert-triangle",
        ImageSize = 20,
        Color = "White"
    })
end

Window:OnClose(function()
    print("Window closed")
    if ConfigManager and configFile then
        configFile:Set("playerData", MyPlayerData)
        configFile:Set("lastSave", os.date("%Y-%m-%d %H:%M:%S"))
        configFile:Save()
        print("Config auto-saved on close")
    end
end)

Window:OnDestroy(function()
    print("Window destroyed")
end)
    end
})

TabHandles.Appearance:Paragraph({
    Title = "自定义界面",
    Desc = "个性化您的体验",
    Image = "palette",
    ImageSize = 20,
    Color = "White"
})

local themes = {}
for themeName,   in pairs(WindUI:GetThemes()) do
    table.insert(themes, themeName)
end
table.sort(themes)

local themeDropdown = TabHandles.Appearance:Dropdown({
    Title = "主题选择",
    Values = themes,
    Value = "Dark",
    Callback = function(theme)
        WindUI:SetTheme(theme)
        WindUI:Notify({
            Title = "主题应用",
            Content = theme,
            Icon = "palette",
            Duration = 2
        })
    end
})

local transparencySlider = TabHandles.Appearance:Slider({
    Title = "透明度",
    Value = {
        Min = 0,
        Max = 1,
        Default = 0.2
    },
    Step = 0.1,
    Callback = function(value)
        Window:ToggleTransparency(tonumber(value) > 0)
        WindUI.TransparencyValue = tonumber(value)
    end
})

TabHandles.Appearance:Toggle({
    Title = "启用黑色主题",
    Desc = "使用黑色调主题方案",
    Value = true,
    Callback = function(state)
        WindUI:SetTheme(state and "Dark" or "Light")
        themeDropdown:Select(state and "Dark" or "Light")
    end
})

TabHandles.Appearance:Button({
    Title = "创建新主题",
    Icon = "plus",
    Callback = function()
        Window:Dialog({
            Title = "创建主题",
            Content = "此功能很快就会推出",
            Buttons = {{
                Title = "确认",
                Variant = "Primary"
            }}
        })
    end
})

TabHandles.Config:Paragraph({
    Title = "配置管理",
    Desc = "保存你的设置",
    Image = "save",
    ImageSize = 20,
    Color = "White"
})

local configName = "default"
local configFile = nil
local MyPlayerData = {
    name = "Player1",
    level = 1,
    inventory = {"sword", "shield", "potion"}
}

TabHandles.Config:Input({
    Title = "配置名称",
    Value = configName,
    Callback = function(value)
        configName = value
    end
})

local ConfigManager = Window.ConfigManager
if ConfigManager then
    ConfigManager:Init(Window)

    TabHandles.Config:Button({
        Title = "保存配置",
        Icon = "save",
        Variant = "Primary",
        Callback = function()
            configFile = ConfigManager:CreateConfig(configName)

            configFile:Register("featureToggle", featureToggle)
            configFile:Register("intensitySlider", intensitySlider)
            configFile:Register("modeDropdown", modeDropdown)
            configFile:Register("themeDropdown", themeDropdown)
            configFile:Register("transparencySlider", transparencySlider)

            configFile:Set("playerData", MyPlayerData)
            configFile:Set("lastSave", os.date("%Y-%m-%d %H:%M:%S"))

            if configFile:Save() then
                WindUI:Notify({
                    Title = "保存配置",
                    Content = "保存为：" .. configName,
                    Icon = "check",
                    Duration = 3
                })
            else
                WindUI:Notify({
                    Title = "错误",
                    Content = "保存失败",
                    Icon = "x",
                    Duration = 3
                })
            end
        end
    })

    TabHandles.Config:Button({
        Title = "加载配置",
        Icon = "folder",
        Callback = function()
            configFile = ConfigManager:CreateConfig(configName)
            local loadedData = configFile:Load()

            if loadedData then
                if loadedData.playerData then
                    MyPlayerData = loadedData.playerData
                end

                local lastSave = loadedData.lastSave or "Unknown"
                WindUI:Notify({
                    Title = "加载配置",
                    Content = "正在加载：" .. configName .. "\n上次保存：" .. lastSave,
                    Icon = "refresh-cw",
                    Duration = 5
                })

                TabHandles.Config:Paragraph({
                    Title = "玩家数据",
                    Desc = string.format("名字: %s\n等级: %d\n库存: %s", MyPlayerData.name, MyPlayerData.level,
                        table.concat(MyPlayerData.inventory, ", "))
                })
            else
                WindUI:Notify({
                    Title = "错误",
                    Content = "加载失败",
                    Icon = "x",
                    Duration = 3
                })
            end
        end
    })
else
    TabHandles.Config:Paragraph({
        Title = "配置管理不可用",
        Desc = "此功能需要配置管理",
        Image = "alert-triangle",
        ImageSize = 20,
        Color = "White"
    })
end

local footerSection = Window:Section({
    Title = "空云脚本脚本中心 "
})

Window:OnClose(function()
    print("Window closed")

    if ConfigManager and configFile then
        configFile:Set("playerData", MyPlayerData)
        configFile:Set("lastSave", os.date("%Y-%m-%d %H:%M:%S"))
        configFile:Save()
        print("Config auto-saved on close")
    end
end)

Window:OnDestroy(function()
    print("Window destroyed")
end)
end