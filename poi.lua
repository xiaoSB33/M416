local CoreGui = game:GetService("StarterGui")
local UnsupportedExecutors = {"Fluxus", "Ethos"}

local Executor = identifyexecutor() or "Unknown"

local Unsupported = table.find(UnsupportedExecutors, Executor) ~= nil

if Unsupported then
    local player = game:GetService("Players").LocalPlayer
    player:Kick("已被检测" .. Executor .. "注入器不受支持，请更换注入器")
    error("不支持")
end

CoreGui:SetCore("SendNotification",
{Title = "78脚本  ",
Text = "正在操人中",
Duration = 7.4,})
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")

local function updateNotification(title, text, player)
    local playerCount = #Players:GetPlayers()
    StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text .. "\n当前人数：" .. playerCount,
        Icon = player.UserId, 
        Duration = 4,
    })
end

game.Players.PlayerAdded:Connect(function(player)
    local success, errorMessage = pcall(function()
        updateNotification("️ 玩家加入", player.Name .. " 加入了游戏", player)
    end)
    if not success then
        print("错误")
    end
end)

game.Players.PlayerRemoving:Connect(function(player)
    local success, errorMessage = pcall(function()
        updateNotification("️ 玩家离开", player.Name .. " 离开了游戏", player)
    end)
    if not success then
        print("错误")
    end
end)

local success, errorMessage = pcall(function()
    print("正常")
end)
if not success then
    print("错误")
end

local aimbotEnabled = false
local FovEnabled = false
local aimbotFov = 60
local maxTransparency = 1
local FovColor = Color3.fromRGB(255, 255, 255) 
local FovThickness = 2
local maxDistance = 400
local teamCheck = false
local wallCheck = false
local aimPart = "Head"

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Cam = game.Workspace.CurrentCamera

local FOVring = Drawing.new("Circle")
FOVring.Visible = false
FOVring.Thickness = FovThickness
FOVring.Color = FovColor
FOVring.Filled = false
FOVring.Radius = aimbotFov
FOVring.Position = Cam.ViewportSize / 2

local function updateDrawings()
    FOVring.Thickness = FovThickness
    FOVring.Color = FovColor
    FOVring.Radius = aimbotFov
    FOVring.Position = Cam.ViewportSize / 2
end

local function lookAt(target)
    local lookVector = (target - Cam.CFrame.Position).unit
    local newCFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
    Cam.CFrame = newCFrame
end

local function calculateTransparency(distance)
    return (1 - (distance / aimbotFov)) * maxTransparency
end

local function isPlayerAlive(player)
    local character = player.Character
    return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
end

local function isPlayerVisibleThroughWalls(player, trg_part)
    if not wallCheck then
        return true
    end

    local localPlayerCharacter = Players.LocalPlayer.Character
    if not localPlayerCharacter then
        return false
    end

    local part = player.Character and player.Character:FindFirstChild(trg_part)
    if not part then
        return false
    end

    local ray = Ray.new(Cam.CFrame.Position, part.Position - Cam.CFrame.Position)
    local hit, _ = workspace:FindPartOnRayWithIgnoreList(ray, {localPlayerCharacter})

    if hit and hit:IsDescendantOf(player.Character) then
        return true
    end

    local direction = (part.Position - Cam.CFrame.Position).unit
    local nearRay = Ray.new(Cam.CFrame.Position + direction * 2, direction * maxDistance)
    local nearHit, _ = workspace:FindPartOnRayWithIgnoreList(nearRay, {localPlayerCharacter})

    return nearHit and nearHit:IsDescendantOf(player.Character)
end

local function getClosestPlayerInFOV()
    local nearest = nil
    local last = math.huge
    local playerMousePos = Cam.ViewportSize / 2
    local localPlayer = Players.LocalPlayer

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer and (not teamCheck or player.Team ~= localPlayer.Team) and isPlayerAlive(player) then
            local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
            local part = player.Character and player.Character:FindFirstChild(aimPart) -- 使用新的瞄准部位
            if humanoid and part then
                local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
                local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude

                if distance < last and isVisible and distance < aimbotFov and distance < maxDistance and isPlayerVisibleThroughWalls(player, aimPart) then
                    last = distance
                    nearest = player
                end
            end
        end
    end

    return nearest
end

RunService.RenderStepped:Connect(function()
    updateDrawings()
    if aimbotEnabled then
        FOVring.Visible = FovEnabled
        local closest = getClosestPlayerInFOV()
        if closest and closest.Character:FindFirstChild(aimPart) then
            lookAt(closest.Character[aimPart].Position)
        end

        if closest then
            local part = closest.Character[aimPart]
            local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
            local distance = (Vector2.new(ePos.x, ePos.y) - (Cam.ViewportSize / 2)).Magnitude
            FOVring.Transparency = calculateTransparency(distance)
        else
            FOVring.Transparency = maxTransparency
        end
    else
        FOVring.Visible = false
    end
end)



local g = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules"):FindFirstChild("dsfwefwfwdfsfasdadaxczcw")
if g then
    g:Destroy()
end

local j = game:GetService("TweenService")
local n = game:GetService("Players").LocalPlayer
local t = Instance.new("ScreenGui")
local u = Instance.new("ImageButton")
local nameLabel = Instance.new("TextLabel")

t.Parent = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules")
t.Name = "dsfwefwfwdfsfasdadaxczcw"

u.Parent = t
u.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
u.Size = UDim2.new(0, 50, 0, 50)
u.Draggable = true
u.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
u.BackgroundTransparency = 0.5
u.Image = "rbxassetid://"--图标

nameLabel.Parent = u
nameLabel.Size = UDim2.new(1, 0, 1, 0)
nameLabel.BackgroundTransparency = 1
nameLabel.Text = "XA"--昵称
nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
nameLabel.TextScaled = true
nameLabel.Font = Enum.Font.SourceSansBold
nameLabel.TextStrokeTransparency = 0
nameLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)

function LoadFunction()
    u.MouseEnter:Connect(
        function()
            j:Create(
                u,
                TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 75, 0, 75)}
            ):Play()
        end
    )
    u.MouseLeave:Connect(
        function()
            j:Create(
                u,
                TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 50, 0, 50)} 
            ):Play()
        end
    )
    local w = false
    u.MouseButton1Down:Connect(
        function()
            if w == false then
                w = false
                j:Create(u, TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Rotation = 180}):Play()
                j:Create(u, TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {ImageTransparency = 0}):Play()
                wait(1.5)
                j:Create(u, TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Rotation = 0}):Play()
                j:Create(u, TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {ImageTransparency = 0}):Play()
                wait(.5)
            end
        end
    )
end
LoadFunction()
u.MouseButton1Down:connect(
    function()
        Library.Window:Minimize()
    end)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/VIP/4717c745c14b6f336f8fc686bec0891d54f4cac6/Fluent.lua"))()
--local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/VIP/main/SaveManager.lua"))()
--local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/VIP/main/InterfaceManager.lua"))()


local function XXxL(tab, title, default)
    return tab:AddInput("InputBox", {
        Title = title,
        Default = tostring(default),
        Placeholder = "输入数字",
        Numeric = true,
        Finished = true,
    })
end

local Window = Library:CreateWindow({
    Title = "78脚本",
    SubTitle = "大份版",
    TabWidth = 160,
    Size = UDim2.fromOffset(582, 353),
    Acrylic = true,
    Theme = "Dark"
})


--Lucide图标https://lucide.dev/icons/，图标是可选的
local tabs = {
    Main = Window:AddTab({ Title = "通用", Icon = "file-check-2" }),
    deliver = Window:AddTab({ Title = "传送玩家", Icon = "bar-chart-horizontal" }),
    Tool = Window:AddTab({ Title = "工具", Icon = "hammer" }),
    aimin = Window:AddTab({ Title = "自瞄", Icon = "square" }),
    image = Window:AddTab({ Title = "其他", Icon = "image" }),
--    ESP = Window:AddTab({ Title = "透视", Icon = "layers" }),
    ScriptHub = Window:AddTab({ Title = "脚本中心", Icon = "cloud" }),
    Music = Window:AddTab({ Title = "音乐", Icon = "music" }),
--    Settings = Window:AddTab({ Title = "设置", Icon = "settings" })
}

print('tabs没有问题')



local WalkSpeed = XXxL(tabs.Main, "速度", 16)
local JumpPower = XXxL(tabs.Main, "跳跃力", 50)
local Gravity = XXxL(tabs.Main, "重力", 196.2)
tabs.Main:AddButton({
    Title = "设置范围",
    Description = "请点击",
    Callback = function()
        range()
    end
})
local Noclip = tabs.Main:AddToggle("MyToggle",{
    Title = "穿墙",
    Default = false
})
local Jump = tabs.Main:AddToggle("MyToggle",{
    Title = "跳跃",
    Default = false
})
local unmatched = tabs.Main:AddToggle("MyToggle",{
    Title = "无敌",
    Default = false
})
local night = tabs.Main:AddToggle("MyToggle",{
    Title = "夜视",
    Default = false
})

tabs.Main:AddButton({
    Title = "飞行脚本",
    Description = "可隐藏",
    Callback = function()
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\90\66\122\99\84\109\49\102\34\41\41\40\41\10")()
    end
})

tabs.Main:AddButton({
    Title = "点击传送",
    Description = "FE-点击传送",
    Callback = function()
        mouse = game.Players.LocalPlayer:GetMouse()
                tool = Instance.new("Tool")
                tool.RequiresHandle = false
                tool.Name = "点击传送"
                tool.Activated:connect(function()
                local pos = mouse.Hit+Vector3.new(0,2.5,0)
                pos = CFrame.new(pos.X,pos.Y,pos.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                end)
                tool.Parent = game.Players.LocalPlayer.Backpack
    end
})

tabs.Main:AddButton({
    Title = "VFLY（飞车）",
    Description = "VFLY!!!",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Gakqnqpamxyznalqmalanxuakwbapajzapaja/ggwcwafcw/main/b"))()
    end
})

tabs.Tool:AddButton({
    Title = "最高缩放距离",
    Description = "设置相机最大缩放距离为无限",
    Callback = function()
        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 999999
    end
})

tabs.Tool:AddButton({
    Title = "键盘⌨️",
    Description = "加载",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
    end
})

tabs.Tool:AddButton({
    Title = "隐形人",
    Description = "使你的角色变得透明",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/%E5%B7%A5%E4%BD%9C%E5%AE%A4.LUA", true))()
    end
})

tabs.Tool:AddButton({
    Title = "旋转",
    Description = "是360？",
    Callback = function()
        local speed = 50

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end
})


tabs.Tool:AddButton({
    Title = "F3X",
    Description = "加载 F3X 插件",
    Callback = function()
        loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
    end
})

tabs.Tool:AddButton({
    Title = "工具包",
    Description = "加载基础工具包",
    Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
    end
})

local aimbotEnabled = tabs.aimin:AddToggle("MyToggle",{
    Title = "启用自瞄",
    Default = aimbotEnabled
})
local FovEnabled = tabs.aimin:AddToggle("MyToggle",{
    Title = "显示FOV",
    Default = FovEnabled
})
local teamCheck = tabs.aimin:AddToggle("MyToggle",{
    Title = "启用队伍检查",
    Default = teamCheck
})
local wallCheck = tabs.aimin:AddToggle("MyToggle",{
    Title = "启用穿墙检查",
    Default = wallCheck
})

local XXx = {
    ["传送表"] = {
        ["传送到玩家身边"] = {
            selectedPlayers = {},
            playerOptions = {}
        }
    }
}

local function refreshPlayerOptions(zji)
    XXx["传送表"]["传送到玩家身边"].playerOptions = {}
    if zji == true then
        for _, player in ipairs(game.Players:GetPlayers()) do
            table.insert(XXx["传送表"]["传送到玩家身边"].playerOptions, player.Name)
        end
    else
        local lp = game.Players.LocalPlayer
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= lp then
                table.insert(XXx["传送表"]["传送到玩家身边"].playerOptions, player.Name)
            end
        end
    end
end

refreshPlayerOptions(true)

tabs.deliver:AddParagraph({
    Title = "传送",
    Content = "选择一个玩家进行传送操作"
})

local Dropdown = tabs.deliver:AddDropdown("Dropdown", {
    Title = "选择玩家名称",
    Values = XXx["传送表"]["传送到玩家身边"].playerOptions,
    Multi = false,
    Default = 1,
})

Dropdown:OnChanged(function(selectedValue)
    XXx["传送表"]["传送到玩家身边"].selectedPlayers = selectedValue
end)
tabs.deliver:AddButton({
    Title = "刷新列表",
    Description = "更新玩家列表",
    Callback = function()
        refreshPlayerOptions(true)
        Dropdown:SetValues(XXx["传送表"]["传送到玩家身边"].playerOptions)
        Library:Notify({
            Title = "刷新成功",
            Content = "玩家列表已更新",
            Duration = 2
        })
    end
})

tabs.deliver:AddButton({
    Title = "传送到选中玩家旁边",
    Description = "传送到选中玩家的身边",
    Callback = function()
        local selectedPlayer = XXx["传送表"]["传送到玩家身边"].selectedPlayers
        if selectedPlayer then
            local player = game.Players:FindFirstChild(selectedPlayer)
            if player then
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    tp(player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0))
                else
                    Library:Notify({
                        Title = "⚠️玩家未找到",
                        Content = "无法找到玩家",
                        Duration = 2
                    })
                end
            else
                Library:Notify({
                    Title = "⚠️玩家未找到",
                    Content = "无法找到玩家",
                    Duration = 2
                })
            end
        else
            Library:Notify({
                Title = "⚠️未选择",
                Content = "请先选择要传送的玩家！",
                Duration = 2
            })
        end
    end
})

function tp(cframe)
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = cframe
    end
end
local maxDistance = XXxL(tabs.aimin, "FOV大小", 60)
local FovThickness = XXxL(tabs.aimin, "FOV厚度", 2)
local AFVHS = XXxL(tabs.aimin, "FOV距离", 400)

tabs.ScriptHub:AddParagraph({
    Title = "国内脚本",
    Content = "其他"
})
tabs.ScriptHub:AddButton({
    Title = "丁丁脚本",
    Description = "真缝合多",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/vvbnn/main/%E4%B8%81%E4%B8%81%E8%84%9A%E6%9C%AC%E9%98%89%E5%89%B2.txt"))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "XA脚本",
    Description = "XA Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/main/XA"))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "剑客V4修复版",
    Description = "强！",
    Callback = function()
        jianke_V4 = "作者_初夏"
jianke__V4 = "作者QQ1412152634"
jianke___V4 = "剑客QQ群347724155"
loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "冬凌中心",
    Description = "逆天脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/flyspeed7/XiaoLing-UwU/main/%E5%86%AC%E5%87%8C%E4%B8%AD%E5%BF%83%28%E5%B7%B2%E6%81%A2%E5%A4%8D%29.XiaoLing.Lua", true))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "云脚本测试版",
    Description = "测试！",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/LOL/main/%E4%BA%91%E8%84%9A%E6%9C%ACCloud%20script.lua", true))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "USA脚本",
    Description = "最讨厌😡",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "情云",
    Description = "...",
    Callback = function()
        loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,46,108,117,97,34,41,41,40,41})end)()))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "波奇塔脚本",
    Description = "...",
    Callback = function()
        loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,46,108,117,97,34,41,41,40,41})end)()))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "皇脚本",
    Description = "...",
    Callback = function()
        loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\80\100\84\55\99\65\82\84"))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "导管中心！",
    Description = "...",
    Callback = function()
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
    end
})
tabs.ScriptHub:AddButton({
    Title = "林脚本",
    Description = "...",
    Callback = function()

lin = "作者林"lin ="林QQ群 747623342"loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/lin/main/lin"))()
    end
})
tabs.ScriptHub:AddParagraph({
    Title = "国外脚本",
    Content = "其他"
})
tabs.ScriptHub:AddButton({
    Title = "V.G Hub",
    Description = "最强！支持一百个服务器！",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "VHub！",
    Description = "还不脚本中心吗",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SourceScript5315/sauce/main/VH-Launcher.lua"))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "DarkX Hub！",
    Description = "！",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/test-2/main/Test-2"))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "DomainX Hub！",
    Description = "！",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source',true))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "FeBoomboxHub！",
    Description = "！",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/0QYXRcnm'))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "FE脚本中心！",
    Description = "！",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))()
    end
})
tabs.ScriptHub:AddButton({
    Title = "脚本中心！",
    Description = "！",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))();
    end
})
tabs.image:AddParagraph({
    Title = "画质助手",
    Content = "其他"
})
tabs.image:AddButton({
    Title = "RTX图形画质",
    Description = "国外制作",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Gakqnqpamxyznalqmalanxuakwbapajzapaja/ggwcwafcw/main/4"))()
    end
})
tabs.image:AddButton({
    Title = "高质量光影菜单",
    Description = "...",
    Callback = function()
    loadstring(game:HttpGet(('https://pastefy.ga/xXkUxA0P/raw'),true))()
    end
})
tabs.image:AddButton({
    Title = "光影",
    Description = "...",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
    end
})
tabs.image:AddButton({
    Title = "光影v4",
    Description = "...",
    Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/gUceVJig'))()
    end
})
tabs.image:AddButton({
    Title = "RTX高仿",
    Description = "...",
    Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/Bkf0BJb3'))()
    end
})
tabs.image:AddParagraph({
    Title = "设置",
    Content = "其他"
})
tabs.image:AddButton({
    Title = "退出游戏",
    Description = "...",
    Callback = function()
    Window:Dialog({
            Title = "等等！",
            Content = "你确定要退出游戏吗？",
            Buttons = {
                {
                    Title = "确定",
                    Callback = function()
                        game:Shutdown()
                    end
                },
                {
                    Title = "取消",
                    Callback = function()
                        print("操作已取消。")
                    end
                }
            }
        })
    end
})
tabs.image:AddButton({
    Title = "重新加入Rejoin",
    Description = "...",
    Callback = function()
    Window:Dialog({
            Title = "等等！",
            Content = "你确定要重新加入Rejoin吗？",
            Buttons = {
                {
                    Title = "确定",
                    Callback = function()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(
            game.PlaceId,
            game.JobId,
            game:GetService("Players").LocalPlayer)
                    end
                },
                {
                    Title = "取消",
                    Callback = function()
                        print("操作已取消。")
                    end
                }
            }
        })
    end
})
local FPS = tabs.image:AddToggle("MyToggle",{
    Title = "开启最大FPS",
    Default = false
})
tabs.Music:AddParagraph({
    Title = "音乐",
    Content = "其他"
})
tabs.Music:AddButton({
    Title = "防空警报",
    Description = "...",
    Callback = function()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://792323017"
        sound.Parent = game.Workspace
        sound:Play()
    end
})

tabs.Music:AddButton({
    Title = "义勇军进行曲",
    Description = "...",
    Callback = function()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://1845918434"
        sound.Parent = game.Workspace
        sound:Play()
    end
})

tabs.Music:AddButton({
    Title = "彩虹瀑布",
    Description = "...",
    Callback = function()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://1837879082"
        sound.Parent = game.Workspace
        sound:Play()
    end
})

tabs.Music:AddButton({
    Title = "Alan Walker - Faded",
    Description = "推荐音乐",
    Callback = function()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://466047335"
        sound.Parent = game.Workspace
        sound:Play()
    end
})

tabs.Music:AddButton({
    Title = "Marshmello - Alone",
    Description = "推荐音乐",
    Callback = function()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://413514503"
        sound.Parent = game.Workspace
        sound:Play()
    end
})

tabs.Music:AddButton({
    Title = "Luis Fonsi - Despacito",
    Description = "推荐音乐",
    Callback = function()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://673605737"
        sound.Parent = game.Workspace
        sound:Play()
    end
})

tabs.Music:AddButton({
    Title = "Ed Sheeran - Shape of You",
    Description = "推荐音乐",
    Callback = function()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://1340925286"
        sound.Parent = game.Workspace
        sound:Play()
    end
})

tabs.Music:AddButton({
    Title = "Imagine Dragons - Believer",
    Description = "推荐音乐",
    Callback = function()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://2389193148"
        sound.Parent = game.Workspace
        sound:Play()
    end
})
--[[
-- 将库交给管理器处理
SaveManager:SetLibrary(Library)
InterfaceManager:SetLibrary(Library)
-- 忽略主题设置
SaveManager:IgnoreThemeSettings()
-- 设置忽略索引
SaveManager:SetIgnoreIndexes({})
-- 设置文件夹
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
-- 构建接口部分
InterfaceManager:BuildInterfaceSection(tabs.Settings)
SaveManager:BuildConfigSection(tabs.Settings)
-- 加载自动加载配置
SaveManager:LoadAutoloadConfig()
]]
print('已完成✅！')
maxDistance:OnChanged(function(Value)
    aimbotFov = Value
    FOVring.Radius = aimbotFov
end)
JumpPower:OnChanged(function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)
Gravity:OnChanged(function(Value)
    game.Workspace.Gravity = Value
end)
FovThickness:OnChanged(function(Value)
    FovThickness = Value
    FOVring.Thickness = FovThickness
end)
wallCheck:OnChanged(function(toggled)
wallCheck = toggled
end)
AFVHS:OnChanged(function(Value)
    maxDistance = Value
end)
WalkSpeed:OnChanged(function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)
teamCheck:OnChanged(function(toggled)
teamCheck = toggled
end)
aimbotEnabled:OnChanged(function(toggled)
aimbotEnabled = toggled
end)
local toggled = false
function ToggleFPS()
    if toggled then
        setfpscap(60) 
    else
        setfpscap(9999) 
    end
    toggled = not toggled
end
FPS:OnChanged(function(toggled)
ToggleFPS()
end)
Noclip:OnChanged(function(state)
    if state then
        Stepped = game:GetService("RunService").Stepped:Connect(function()
            for _, player in pairs(game.Workspace:GetChildren()) do
                if player.Name == game.Players.LocalPlayer.Name then
                    for _, part in pairs(player:GetChildren()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                end
            end
        end)
    else
        if Stepped then
            Stepped:Disconnect()
        end
    end
end)
Jump:OnChanged(function(state)
    getgenv().InfJ = state
    game:GetService("UserInputService").JumpRequest:Connect(function()
        if getgenv().InfJ then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)
end)
unmatched:OnChanged(function(state)
    if state then
        local Cam = workspace.CurrentCamera
        local Pos = Cam.CFrame
        local Char = game.Players.LocalPlayer.Character
        local Human = Char:FindFirstChildOfClass("Humanoid")
        if Human then
            local nHuman = Human:Clone()
            nHuman.Parent = Char
            Human:Destroy()
            nHuman:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
            nHuman:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
            nHuman:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
            nHuman.BreakJointsOnDeath = true
            nHuman.Health = nHuman.MaxHealth
            game.Players.LocalPlayer.Character = Char
            Cam.CameraSubject = nHuman
            Cam.CFrame = Pos      
            nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None            
            local Script = Char:FindFirstChild("Animate")
            if Script then
                Script.Disabled = true
                wait()
                Script.Disabled = false
            end
        end
    else
        game.Players.LocalPlayer.Character.Humanoid.Health = 100
    end
end)
night:OnChanged(function(Value)
if Value then
            game.Lighting.Ambient = Color3.new(1, 1, 1)
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
end)
Window:SelectTab(1)
Library:Notify({
    Title = "云脚本  ",
    Content = "脚本已加载！",
    Duration = 8
})
function range()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "范围", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
        Name = "  ",
        Icon = "",
        PremiumOnly = false
})
Tab:AddTextbox({
        Name = "设置范围",
        Default = "默认框输入",
        TextDisappear = true,
        Callback = function(Value)
                _G.HeadSize = Value
    _G.Disabled = true

    game:GetService('RunService').RenderStepped:connect(function()
        if _G.Disabled then
            for _, player in ipairs(game:GetService('Players'):GetPlayers()) do
                if player.Name ~= game:GetService('Players').LocalPlayer.Name then
                    pcall(function()
                        local humanoidRootPart = player.Character and player.Character.HumanoidRootPart
                        if humanoidRootPart then
                            humanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                            humanoidRootPart.Transparency = 0.7
                            humanoidRootPart.BrickColor = BrickColor.new("Really blue")
                            humanoidRootPart.Material = "Neon"
                            humanoidRootPart.CanCollide = false
                        end
                    end)
                end
            end
        end
    end)
        end          
})
end