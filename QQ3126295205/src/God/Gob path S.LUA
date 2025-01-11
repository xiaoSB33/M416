local OrionLib = loadstring(game:HttpGet('https://pastebin.com/raw/SePpsSPZ'))()
 local Window =   OrionLib:MakeWindow({Name = "脚本中心3.0", HidePremium = false, SaveConfig = false, ConfigFolder = "rbxassetid://6026568198"}) 

 OrionLib:MakeNotification({ 
 Name = "脚本中心", 
 Content = "欢迎使用脚本中心！", 
 Image = "rbxassetid://4483345998", 
 Time = 5 
 })

local Players = game:GetService("Players")
local XA = Players.LocalPlayer

 local LOL = Window:MakeTab({ 
 Name = "关于", 
 Icon = "rbxassetid://6026568198", 
 PremiumOnly = false 
 })
LOL:AddLabel("当前服务器ID:" .. game.GameId .. ".")
LOL:AddLabel("比较重要的通知⚠️部分脚本是英文，请自己翻译⚠️")
LOL:AddLabel("作者：？")
LOL:AddLabel("QQ：3126295205")
LOL:AddLabel("脚本中心群号：？")
LOL:AddLabel("此脚本永久免费，缝合脚本：如果你是买来的恭喜你被圈了")
LOL:AddLabel("如果加载出现错误，请进我的脚本中心群，进行反馈，谢谢！")
LOL:AddLabel("近期的更新通知：添加更多服务器脚本")

local Tab = Window:MakeTab({ 
 Name = "通用脚本", 
 Icon = "rbxassetid://10888331510", 
 PremiumOnly = false 
 }) 

Tab:AddTextbox({
        Name = "跳跃高度设置",
        Default = "",
        TextDisappear = true,
        Callback = function(Value)
XA.Character.Humanoid.JumpPower = Value
        end
})

Tab:AddTextbox({
        Name = "移动速度设置",
        Default = "",
        TextDisappear = true,
        Callback = function(Value)
                XA.Character.Humanoid.WalkSpeed = Value
        end
})

Tab:AddTextbox({
        Name = "重力设置",
        Default = "",
        TextDisappear = true,
        Callback = function(Value)
                game.Workspace.Gravity = Value
        end
})

Tab:AddTextbox({
        Name = "血量设置",
        Default = "",
        TextDisappear = true,
        Callback = function(Value)
                XA.Character.Humanoid.Health = Value
        end
})

Tab:AddTextbox({
        Name = "视界设置（70）",
        Default = "",
        TextDisappear = true,
        Callback = function(v)
                game.Workspace.CurrentCamera.FieldOfView = v
        end
})

Tab:AddTextbox({
        Name = "高度设置",
        Default = "",
        TextDisappear = true,
        Callback = function(phh)
                XA.Character.Humanoid.HipHeight = phh
        end
})

Tab:AddButton({
        Name = "北京时间",
 Callback = function()
loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/North.lua", true))()
  end
})

Tab:AddButton({
        Name = "飞车",
 Callback = function()
loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/985.lua", true))()
  end
})

Tab:AddButton({
        Name = "旋转",
 Callback = function()
loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/op.lua", true))()
  end
})

Tab:AddButton({
        Name = "草人",
 Callback = function()
loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/qwer.lua", true))()
  end
})

Tab:AddButton({
        Name = "FE刷99消音器手枪",
 Callback = function()
loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/FE.lua", true))()
  end
})

Tab:AddToggle({
        Name = "跳跃",
        Default = false,
        Callback = function(s)
                getgenv().InfJ = s
    game:GetService("UserInputService").JumpRequest:connect(function()
        if InfJ == true then
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
        end
})
Tab:AddToggle({
        Name = "穿墙",
        Default = false,
        Callback = function(Value)
                if Value then
                    Noclip = true
                    Stepped = game.RunService.Stepped:Connect(function()
                            if Noclip == true then
                                    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == XA.Name then
                            for i, v in pairs(game.Workspace[XA.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
                            else
                                    Stepped:Disconnect()
                            end
                    end)
            else
                    Noclip = false
            end
        end
})

Tab:AddToggle({
        Name = "夜视",
        Default = false,
        Callback = function(Value)
                if Value then
                    game.Lighting.Ambient = Color3.new(1, 1, 1)
                else
                    game.Lighting.Ambient = Color3.new(0, 0, 0)
                end
        end
})
Tab:AddButton({
        Name = "无敌（头可删除）",
        Callback = function()
     local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
    local char = lp.Character
    char.Archivable = true
    local new = char:Clone()
    new.Parent = workspace
    lp.Character = new
    wait(2)
    local oldhum = char:FindFirstChildWhichIsA "Humanoid"
    local newhum = oldhum:Clone()
    newhum.Parent = char
    newhum.RequiresNeck = false
    oldhum.Parent = nil
    wait(2)
    lp.Character = char
    new:Destroy()
    wait(1)
    newhum:GetPropertyChangedSignal("Health"):Connect(
        function()
            if newhum.Health <= 0 then
                oldhum.Parent = lp.Character
                wait(1)
                oldhum:Destroy()
            end
        end)
    workspace.CurrentCamera.CameraSubject = char
    if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(.1)
        char.Animate.Disabled = false
    end
    lp.Character:FindFirstChild "Head":Destroy()
end
          end    
})

Tab:AddButton({
        Name = "隐形",
        Callback = function()
     Local = game:GetService('Players').LocalPlayer
Char  = Local.Character
touched,tpdback = false, false
Local.CharacterAdded:connect(function(char)
    if script.Disabled ~= true then
        wait(.25)
        loc = Char.HumanoidRootPart.Position
        Char:MoveTo(box.Position + Vector3.new(0,.5,0))
    end
end)
game:GetService('UserInputService').InputBegan:connect(function(key)
    if key.KeyCode == Enum.KeyCode.Equals then
        if script.Disabled ~= true then
            script.Disabled = true
            print'你可以再次执行'
        end
    end
end)
box = Instance.new('Part',workspace)
box.Anchored = true
box.CanCollide = true
box.Size = Vector3.new(10,1,10)
box.Position = Vector3.new(0,10000,0)
box.Touched:connect(function(part)
    if (part.Parent.Name == Local.Name) then
        if touched == false then
            touched = true
            function apply()
                if script.Disabled ~= true then
                    no = Char.HumanoidRootPart:Clone()
                    wait(.25)
                    Char.HumanoidRootPart:Destroy()
                    no.Parent = Char
                    Char:MoveTo(loc)
                    touched = false
                end end
            if Char then
                apply()
            end
        end
    end
end)
repeat wait() until Char
loc = Char.HumanoidRootPart.Position
Char:MoveTo(box.Position + Vector3.new(0,.5,0))
          end    
})


Tab:AddButton({
        Name = "飞行脚本不可隐藏",
        Callback = function()
          loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/flight.lua", true))()
          end    
})

Tab:AddButton({
        Name = "飞行脚本2（可隐藏）",
        Callback = function()
          loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/fly.lua", true))()
          end    
})

Tab:AddButton({
        Name = "透视",
        Callback = function()
      if _G.Reantheajfdfjdgse then
    return
end

_G.Reantheajfdfjdgse = "susan"

local coregui = game:GetService("CoreGui")
local players = game:GetService("Players")
local plr = players.LocalPlayer

local highlights = {}

function esp(target, color)
    pcall(function()
        if target.Character then
            if not highlights[target] then
                local highlight = Instance.new("Highlight", coregui)
                highlight.Name = target.Name
                highlight.Adornee = target.Character
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = color
                highlights[target] = highlight
            else
                highlights[target].FillColor = color
            end
        end
    end)
end

players.PlayerAdded:Connect(function(v)
    v.CharacterAdded:Connect(function()
        esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
    end)
end)

players.PlayerRemoving:Connect(function(v)
    if highlights[v] then
        highlights[v]:Destroy()
        highlights[v] = nil
    end
end)

for i, v in pairs(players:GetPlayers()) do
    if v ~= plr then
        local color = _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor)
        v.CharacterAdded:Connect(function()
            local color = _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor)
            esp(v, color)
        end)

        esp(v, color)
    end
end

while task.wait() do
    for i, v in pairs(highlights) do
        local color = _G.UseTeamColor and i.TeamColor.Color or ((plr.TeamColor == i.TeamColor) and _G.FriendColor or _G.EnemyColor)
        v.FillColor = color
    end
end
          end    
})


about:Button("汉化阿尔宙斯自瞄",function()
loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/QQ3126295205%2Fsrc%2FGod%2F%E6%B1%89%E5%8C%96%E8%87%AA%E6%8F%8F.lua"))()
end)
about:Button("自瞄50",function()
loadstring(game:HttpGet("https://pastefy.app/b3uXjRF6/raw",true))()
end)

about:Button("自瞄100",function()
loadstring(game:HttpGet("https://pastefy.app/tQrd2r0L/raw",true))()
end)

about:Button("自瞄150",function()
loadstring(game:HttpGet("https://pastefy.app/UOQWFvGp/raw",true))()
end)

about:Button("自瞄200",function()
loadstring(game:HttpGet("https://pastefy.app/b5CuDuer/raw",true))()
end)

about:Button("自瞄250",function()
loadstring(game:HttpGet("https://pastefy.app/p2huH7eF/raw",true))()
end)

about:Button("自瞄300",function()
loadstring(game:HttpGet("https://pastefy.app/nIyVhrvV/raw",true))()
end)

about:Button("自瞄350",function()
loadstring(game:HttpGet("https://pastefy.app/pnjKHMvV/raw",true))()
end)

about:Button("自瞄400",function()
loadstring(game:HttpGet("https://pastefy.app/LQuP7sjj/raw",true))()
end)

about:Button("自瞄600",function()
loadstring(game:HttpGet("https://pastefy.app/WmcEe2HB/raw",true))()
end)

about:Button("自瞄全屏",function()
loadstring(game:HttpGet("https://pastefy.app/n5LhGGgf/raw",true))()
end)

local UITab84 = win:Tab("范围功能",'16060333448')

local about = UITab84:section("『功能』",true)
about:Textbox("自定义范围（尽量400以下）", "HitBox", "输入", function(Value)
   _G.HeadSize = Value
    _G.Disabled = true 
   game:GetService('RunService').RenderStepped:connect(function()
    if _G.Disabled then
    for i,v in next, game:GetService('Players'):GetPlayers() do
    if v.Name ~= game:GetService('Players').LocalPlayer.Name then 
    pcall(function()
    v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) 
   v.Character.HumanoidRootPart.Transparency = 0.7 
   v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
    v.Character.HumanoidRootPart.Material = "Neon"
    v.Character.HumanoidRootPart.CanCollide = false
    end)
    end 
   end 
   end
    end)
end)

about:Button("范围100", function()
    _G.HeadSize = 100 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.HumanoidRootPart.Transparency = 0.7 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
end)

about:Button("范围150", function()
    _G.HeadSize = 150 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.HumanoidRootPart.Transparency = 0.7 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
end)

about:Button("范围200", function()
    _G.HeadSize = 200 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.HumanoidRootPart.Transparency = 0.7 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
end)

about:Button("范围250", function()
    _G.HeadSize = 250 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.HumanoidRootPart.Transparency = 0.7 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
end)

about:Button("范围300", function()
    _G.HeadSize = 300 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.HumanoidRootPart.Transparency = 0.7 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
end)


local Tab = Window:MakeTab({ 
 Name = "范围", 
 Icon = "rbxassetid://10888331510", 
 PremiumOnly = false 
 })

Tab:AddTextbox({ 
 Name = "范围", 
 Default = "默认框输入数字", 
 TextDisappear = true, 
 Callback = function(Value) 
_G.HeadSize = Value
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end           
})

local teamCheck = true
local fov = 150
local smoothing = 0.5

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local FOVring = Drawing.new("Circle")
FOVring.Visible = false
FOVring.Thickness = 2
FOVring.Radius = fov
FOVring.Transparency = 1
FOVring.Color = Color3.fromRGB(255, 128, 128)
FOVring.Position = Camera.ViewportSize / 2

local function getClosest()
    local target = nil
    local shortestDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and (player.Team ~= LocalPlayer.Team or not teamCheck) then
            local head = player.Character:FindFirstChild("Head")
            if head then
                local screenPoint = Camera:WorldToScreenPoint(head.Position)
                local screenDistance = (Vector2.new(screenPoint.X, screenPoint.Y) - Camera.ViewportSize / 2).Magnitude
                if screenDistance < shortestDistance and screenDistance < fov then
                    shortestDistance = screenDistance
                    target = player
                end
            end
        end
    end

    return target
end

local function updateFOV()
    FOVring.Radius = fov
    FOVring.Position = Camera.ViewportSize / 2
end

local loop
loop = RunService.RenderStepped:Connect(function()
    updateFOV()

    if UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
        local target = getClosest()
        if target and target.Character and target.Character:FindFirstChild("Head") then
            local targetHead = target.Character.Head.Position
            Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position, targetHead), smoothing)
        end
    end

    if UserInputService:IsKeyDown(Enum.KeyCode.P) then
        loop:Disconnect()
        FOVring:Remove()
    end
end)

local Tab = Window:MakeTab({
    Name = "小云自瞄",
    Icon = "rbxassetid://10888331510",
    PremiumOnly = false
})

Tab:AddToggle({
    Name = "启用自瞄",
    Default = FOVring.Visible,
    Callback = function(Value)
        FOVring.Visible = Value
    end
})

Tab:AddToggle({
    Name = "队伍检测",
    Default = teamCheck,
    Callback = function(Value)
        teamCheck = Value
    end
})

Tab:AddSlider({
    Name = "视野大小",
    Min = 50,
    Max = 300,
    Default = fov,
    Increment = 1,
    Callback = function(Value)
        fov = Value
        FOVring.Radius = Value
    end
})

Tab:AddSlider({
    Name = "平滑度",
    Min = 0.1,
    Max = 1,
    Default = smoothing,
    Increment = 0.1,
    Callback = function(Value)
        smoothing = Value
    end
})

Tab:AddColorpicker({
    Name = "颜色选择器",
    Default = FOVring.Color,
    Callback = function(Value)
        FOVring.Color = Value
    end
})


about:Button("情云同款自瞄可调", function()
  local fov = 100 local smoothness = 10 local crosshairDistance = 5 local RunService = game:GetService("RunService") local UserInputService = game:GetService("UserInputService") local Players = game:GetService("Players") local Cam = game.Workspace.CurrentCamera local FOVring = Drawing.new("Circle") FOVring.Visible = true FOVring.Thickness = 2 FOVring.Color = Color3.fromRGB(0, 255, 0) FOVring.Filled = false FOVring.Radius = fov FOVring.Position = Cam.ViewportSize / 2 local Player = Players.LocalPlayer local PlayerGui = Player:WaitForChild("PlayerGui") local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "FovAdjustGui" ScreenGui.Parent = PlayerGui local Frame = Instance.new("Frame") Frame.Name = "MainFrame" Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Frame.BorderColor3 = Color3.fromRGB(128, 0, 128) Frame.BorderSizePixel = 2 Frame.Position = UDim2.new(0.3, 0, 0.3, 0) Frame.Size = UDim2.new(0.4, 0, 0.4, 0) Frame.Active = true Frame.Draggable = true Frame.Parent = ScreenGui local MinimizeButton = Instance.new("TextButton") MinimizeButton.Name = "MinimizeButton" MinimizeButton.Text = "-" MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255) MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0) MinimizeButton.Size = UDim2.new(0.1, 0, 0.1, 0) MinimizeButton.Parent = Frame local isMinimized = false MinimizeButton.MouseButton1Click:Connect(function() isMinimized = not isMinimized if isMinimized then Frame:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "+" else Frame:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "-" end end) local FovLabel = Instance.new("TextLabel") FovLabel.Name = "FovLabel" FovLabel.Text = "自瞄范围" FovLabel.TextColor3 = Color3.fromRGB(255, 255, 255) FovLabel.BackgroundTransparency = 1 FovLabel.Position = UDim2.new(0.1, 0, 0.1, 0) FovLabel.Size = UDim2.new(0.8, 0, 0.2, 0) FovLabel.Parent = Frame local FovSlider = Instance.new("TextBox") FovSlider.Name = "FovSlider" FovSlider.Text = tostring(fov) FovSlider.TextColor3 = Color3.fromRGB(255, 255, 255) FovSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) FovSlider.Position = UDim2.new(0.1, 0, 0.3, 0) FovSlider.Size = UDim2.new(0.8, 0, 0.2, 0) FovSlider.Parent = Frame local SmoothnessLabel = Instance.new("TextLabel") SmoothnessLabel.Name = "SmoothnessLabel" SmoothnessLabel.Text = "自瞄平滑度" SmoothnessLabel.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessLabel.BackgroundTransparency = 1 SmoothnessLabel.Position = UDim2.new(0.1, 0, 0.5, 0) SmoothnessLabel.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessLabel.Parent = Frame local SmoothnessSlider = Instance.new("TextBox") SmoothnessSlider.Name = "SmoothnessSlider" SmoothnessSlider.Text = tostring(smoothness) SmoothnessSlider.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) SmoothnessSlider.Position = UDim2.new(0.1, 0, 0.7, 0) SmoothnessSlider.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessSlider.Parent = Frame local CrosshairDistanceLabel = Instance.new("TextLabel") CrosshairDistanceLabel.Name = "CrosshairDistanceLabel" CrosshairDistanceLabel.Text = "自瞄预判距离" CrosshairDistanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceLabel.BackgroundTransparency = 1 CrosshairDistanceLabel.Position = UDim2.new(0.1, 0, 0.9, 0) CrosshairDistanceLabel.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceLabel.Parent = Frame local CrosshairDistanceSlider = Instance.new("TextBox") CrosshairDistanceSlider.Name = "CrosshairDistanceSlider" CrosshairDistanceSlider.Text = tostring(crosshairDistance) CrosshairDistanceSlider.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) CrosshairDistanceSlider.Position = UDim2.new(0.1, 0, 1.1, 0) CrosshairDistanceSlider.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceSlider.Parent = Frame local targetCFrame = Cam.CFrame local function updateDrawings() local camViewportSize = Cam.ViewportSize FOVring.Position = camViewportSize / 2 FOVring.Radius = fov end local function onKeyDown(input) if input.KeyCode == Enum.KeyCode.Delete then RunService:UnbindFromRenderStep("FOVUpdate") FOVring:Remove() end end UserInputService.InputBegan:Connect(onKeyDown) local function getClosestPlayerInFOV(trg_part) local nearest = nil local last = math.huge local playerMousePos = Cam.ViewportSize / 2 for _, player in ipairs(Players:GetPlayers()) do if player ~= Players.LocalPlayer then local part = player.Character and player.Character:FindFirstChild(trg_part) if part then local ePos, isVisible = Cam:WorldToViewportPoint(part.Position) local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude if distance < last and isVisible and distance < fov then last = distance nearest = player end end end end return nearest end RunService.RenderStepped:Connect(function() updateDrawings() local closest = getClosestPlayerInFOV("Head") if closest and closest.Character:FindFirstChild("Head") then local targetCharacter = closest.Character local targetHead = targetCharacter.Head local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart") local isMoving = targetRootPart.Velocity.Magnitude > 0.1 local targetPosition if isMoving then targetPosition = targetHead.Position + (targetHead.CFrame.LookVector * crosshairDistance) else targetPosition = targetHead.Position end targetCFrame = CFrame.new(Cam.CFrame.Position, targetPosition) else targetCFrame = Cam.CFrame end Cam.CFrame = Cam.CFrame:Lerp(targetCFrame, 1 / smoothness) end) FovSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newFov = tonumber(FovSlider.Text) if newFov then fov = newFov else FovSlider.Text = tostring(fov) end end end) SmoothnessSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newSmoothness = tonumber(SmoothnessSlider.Text) if newSmoothness then smoothness = newSmoothness else SmoothnessSlider.Text = tostring(smoothness) end end end) CrosshairDistanceSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newCrosshairDistance = tonumber(CrosshairDistanceSlider.Text) if newCrosshairDistance then crosshairDistance = newCrosshairDistance else CrosshairDistanceSlider.Text = tostring(crosshairDistance) end end end)
end)


local UITab84 = win:Tab("钓鱼模拟器",'16060333448')

local about = UITab84:section("『功能』",true)

about:Toggle("跳跃","text",false,function(s)
shared.toggle = State
     if shared.toggle then
    fuckMonster = RunService.Stepped:Connect(function()
     for i, v in pairs(game.Workspace:GetChildren()) do
     if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") then
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then


                    for i, getTools in pairs(player.Character:GetChildren()) do
                        if getTools:IsA("Tool") and  getTools:FindFirstChild("GripC1") then
                            plrTools = getTools.Name
                        end
                    end

                    teleport(v.HumanoidRootPart.CFrame + Vector3.new(0, 30, 0))
                    wait(1)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.MonsterHit:FireServer(workspace[v.Name], tostring(plrTools), true)
                    break
                elseif not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    EquipTool()
               break
            end
        end
     end
     end)
    else
         fuckMonster:Disconnect()
          teleport(CFrame.new(1.8703980445862, 53.57190322876, -188.37982177734))
        end
end)
about:Toggle("自动杀鲨鱼","text",false,function(State)
 shared.toggle = State
     if shared.toggle then
    fuckMonster = RunService.Stepped:Connect(function()
     for i, v in pairs(game.Workspace:GetChildren()) do
     if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") then
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then


                    for i, getTools in pairs(player.Character:GetChildren()) do
                        if getTools:IsA("Tool") and  getTools:FindFirstChild("GripC1") then
                            plrTools = getTools.Name
                        end
                    end

                    teleport(v.HumanoidRootPart.CFrame + Vector3.new(0, 30, 0))
                    wait(1)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.MonsterHit:FireServer(workspace[v.Name], tostring(plrTools), true)
                    break
                elseif not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    EquipTool()
               break
            end
        end
     end
     end)
    else
         fuckMonster:Disconnect()
          teleport(CFrame.new(1.8703980445862, 53.57190322876, -188.37982177734))
        end
end)
about:Toggle("自动钓鱼","text",false,function(bool)
 if bool then
            local rodName = false
            while not rodName do
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:FindFirstChild("FishingRodScript") then
                        rodName = v.Name
                        break
                    end
                end
                wait()
            end

            bBobber = game.Players.LocalPlayer.Character:WaitForChild(rodName).Bobbers.Bobber.Fish.Changed:Connect(
                function(fishVal)
                    if fishVal ~= nil then
                        --if not legendToggle then
                            game.Workspace:WaitForChild(tostring(fishVal))
                            wait()
                            game.ReplicatedStorage.CloudClientResources.Communication.Events.FishedDone:FireServer()
                            wait()
                            game.ReplicatedStorage.CloudClientResources.Communication.Events.ResetFishingRod:FireServer()
                            wait()
                        --[[else
                            if game.Workspace:WaitForChild(tostring(fishVal)).RarityLevel.Value >= 5 then
                                game.ReplicatedStorage.CloudClientResources.Communication.Events.FishedDone:FireServer()
                                wait()
                                game.ReplicatedStorage.CloudClientResources.Communication.Events.ResetFishingRod:FireServer()
                                wait()
                            end                                                                                                 
                        end                                                                                                        --]]
                                        end
                                        if game.Players.LocalPlayer.Character:WaitForChild(rodName).Bobbers.Bobber:FindFirstChild("FishWeld") then
                                                for p, q in pairs(game.Players.LocalPlayer.Character:WaitForChild(rodName).Bobbers.Bobber:GetChildren()) do
                                                        if q.Name == "FishWeld" then
                                                                q:Destroy()
                                                        end
                                                end
                                        end
                end
            )
        else 
            bBobber:Disconnect()
        end
end)
about:Toggle("自动杀boss","text",false,function(State)
 shared.toggle = State
     if shared.toggle then
    fuckMobby = RunService.Stepped:Connect(function()
     for i, v in pairs(game.Workspace:GetChildren()) do
     if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") and v.Name == "MobbyWood" then
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then


                    for i, getTools in pairs(player.Character:GetChildren()) do
                        if getTools:IsA("Tool") and  getTools:FindFirstChild("GripC1") then
                            plrTools = getTools.Name
                        end
                    end

                    teleport(v.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0))
                    wait(1)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.MonsterHit:FireServer(workspace[v.Name], tostring(plrTools), true)
                    break
                elseif not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    EquipTool()
               break
            end
        end
     end
     end)
    else
         fuckMobby:Disconnect()
          teleport(CFrame.new(1.8703980445862, 53.57190322876, -188.37982177734))
        end
end)
about:Toggle("减少延迟","text",false,function(State)
 toggle = State
     if toggle then
        while toggle do 
            wait(30)
            for i, v in pairs(game.Workspace.DroppedItems:GetChildren()) do
                if v:IsA("Model") then
                    v:Destroy()
                end
            end
        end
      end
end)
about:Toggle("自动锁定稀有物品","text",false,function(State)
 toggle = State
     if toggle then
        while toggle do 
            wait(.1)
for i, v in pairs(game.Players.LocalPlayer.PlayerGui.Interface.Inventory.Inventory.Frame.Backpack.List.Container:GetChildren()) do
        if string.match(v.Name, "key") then
            for i, model in pairs(v:GetDescendants()) do
                if model:IsA("Tool") then
                    if model.RarityLevel.Value >= 5 then

                        if v.DraggableComponent.Contents.LockIcon.Visible == false then
                            print(v.Name, model.Name, model.RarityLevel.Value)
                        local args = {
                            [1] = "Tools",
                            [2] = v.Name,
                            [3] = true
                        }
                        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.SetInventoryItemLock:InvokeServer(unpack(args))

                        end
                    end
                end
            end
        end
end

        end
      end
end)
about:Toggle("自动抓捕","text",false,function(State)
 toggle = State
    while toggle do
        wait(2.6)
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.FishCaught:FireServer()
    end
end)
about:Toggle("自动售卖","text",false,function(State)
 toggle = State
    while toggle do
        wait(2.6)
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.processGameItemSold:InvokeServer("SellEverything")
    end
end)
about:Toggle("每日宝箱","text",false,function(State)
 toggle = State
        while toggle do
                for i, v in pairs(game.Workspace.Islands:GetDescendants()) do
                    if v:IsA("Model") and string.match(v.Name, "Chest") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        wait(1)
                        fireproximityprompt(v.HumanoidRootPart.ProximityPrompt)
                    end
                end            
        end
end)
about:Toggle("随机宝箱","text",false,function(State)
 toggle = State
        while toggle do
                for i, v in pairs(game.Workspace.RandomChests:GetDescendants()) do
                    if v:IsA("Model") and string.match(v.Name, "Chest") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        wait(1)
                        fireproximityprompt(v.HumanoidRootPart.ProximityPrompt)
                    end
                end            
        end
end)
local wood_types = {"选择", "Earth Egg","Alien Egg","Dominus Egg","Ice Egg","Lava Egg","Heavens Egg","Toy Egg","Mine Egg"}
if not game.workspace:FindFirstChild("PFA") then 
    local part = Instance.new("Part") 
    part.Name = "PFA" 
    part.Parent = game.workspace 
    part.CFrame = CFrame.new(-1087, -40, 1670) 
    part.Size = Vector3.new(50, 0, 50) 
    part.Anchored = true 
    part.Reflectance = 1 
end

function C() 
    spawn(function () 
        while getgenv().C do
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                TPCFrame(CFrame.new(-1087, -35, 1670))
                if v.ToolTip == "Weight" then 
                    v.Parent = game.Players.LocalPlayer.Character 
                end
                if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then 
                    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate() 
                end
            end 
            wait()
        end
    end)
end

function U() 
    spawn(function () 
        while getgenv().U do
            local args = {[1] = "S_Controller_Upgrades_Upgrade",[2] = {[1] = "Damage_Multiplier"}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            local args = {[1] = "S_Controller_Upgrades_Upgrade",[2] = {[1] = "Health_Multiplier"}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            local args = {[1] = "S_Controller_Upgrades_Upgrade",[2] = {[1] = "Jump_Power"}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            local args = {[1] = "S_Controller_Upgrades_Upgrade",[2] = {[1] = "Walk_Speed"}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            local args = {[1] = "S_Controller_Upgrades_Upgrade",[2] = {[1] = "Pet_Space"}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            local args = {[1] = "S_Controller_Upgrades_Upgrade",[2] = {[1] = "Pet_Inventory"}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            wait()
        end
    end)
end

function R() 
    spawn(function () 
        while getgenv().R do
            local args = {[1] = "S_Controller_Rebirth_Rebirth",[2] = {}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            wait()
        end
    end)
end

function H(E) 
    spawn(function () 
        while getgenv().H do
            local args = {[1] = "S_Controller_Eggs_Buy",[2] = {[1] = E}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteFunction:InvokeServer(unpack(args))
            wait()
        end
    end)
end


    local UITab84 = win:Tab("自然灾害",'16060333448')

local about = UITab84:section("『功能』",true)

about:Button("自动农场胜出", "ToggleInfo", false, function(bool)
    _G.autowinfarm = bool;
    while wait(.1) do
        if _G.autowinfarm == true then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-236, 180, 360, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
end
end)
about:Toggle("地图投票用户界面", "t", false, function(Value)
                plr.PlayerGui.MainGui.MapVotePage.Visible = Value
        end)

local nextdis
about:Toggle("预测灾害", "t", false, function(val)
                nextdis = val

                while wait(1) and nextdis do
                        local SurvivalTag = plr.Character:FindFirstChild("SurvivalTag")
                        if SurvivalTag then
                                if SurvivalTag.Value == "Blizzard" and nextdis then
                                        Message.Visible = true
                                        Message.Text = "下一个灾难是：暴风雪"
                                elseif SurvivalTag.Value == "Sandstorm" and nextdis then
                                        Message.Visible = true
                                        Message.Text = "下一个灾难是：沙尘暴"
                                elseif SurvivalTag.Value == "Tornado" and nextdis then
                                        Message.Visible = true
                                        Message.Text = "下一个灾难是：龙卷风"
                                elseif SurvivalTag.Value == "Volcanic Eruption" and nextdis then
                                        Message.Visible = true
                                        Message.Text = "下一个灾难是：火山"
                                elseif SurvivalTag.Value == "Flash Flood" and nextdis then
                                        Message.Visible = true
                                        Message.Text = "下一个灾难是：洪水"
                                elseif SurvivalTag.Value == "Deadly Virus" and nextdis then
                                        Message.Visible = true
                                        Message.Text = "下一个灾难是：病毒"
                                elseif SurvivalTag.Value == "Tsunami" and nextdis then
                                        Message.Visible = true
                                        Message.Text = "下一个灾难是：海啸"
                                elseif SurvivalTag.Value == "Acid Rain" and nextdis then
                                        Message.Visible = true
                                        Message.Text = "下一个灾难是：酸雨"
                                elseif SurvivalTag.Value == "Fire" and nextdis then
                                        Message.Visible = true
                                        Message.Text = "下一个灾难是：火焰"
                                elseif SurvivalTag.Value == "Meteor Shower" and nextdis then
                                        Message.Visible = true
                                        Message.Text = "下一个灾难是：流星雨"
                                elseif SurvivalTag.Value == "Earthquake" and nextdis then
                                        Message.Visible = true
                                        Message.Text = "下一个灾难是：地震"
                                elseif SurvivalTag.Value == "Thunder Storm" and nextdis then
                                        Message.Visible = true
                                        Message.Text = "下一个灾难是：暴风雨"
                                else
                                        Message.Visible = false
                                end
                        end
                end
        end)

about:Toggle("地图投票用户界面", "Map Voting UI", false, function(bool)
if bool == false then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = false
    end
end
if bool == true then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = true
    end
end
end)

about:Toggle("在水上行走", "ToggleInfo", false, function(bool)
 if bool == false then do game.Workspace.WaterLevel.CanCollide = false
                            game.Workspace.WaterLevel.Size = Vector3.new(10, 1, 10)
                        end
                    end
                    if bool == true then do game.Workspace.WaterLevel.CanCollide = true
                            game.Workspace.WaterLevel.Size = Vector3.new(5000, 1, 5000)
                        end
                    end
end)

about:Toggle("游戏岛悬崖碰撞", "Togglelnfo", false, function(bool)
for i, v in pairs (game.workspace:GetDescendants())do
                                if v.Name == 'LowerRocks' then
                                    v.CanCollide = bool
                                end
                            end
end)

about:Toggle("禁用坠落损坏",function()
local FallDamageScript = (game.Players.LocalPlayer.Character ~= nil) and game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil
                                if FallDamageScript then
                                FallDamageScript:Destroy()
                                end
end)

about:Toggle("自动禁用坠落伤害", "Toggleelnfo", false, function(bool)
_G.NoFallDamage = bool;
                            while wait(0.5) do
                                    if _G.NoFallDamage == true then
                            local FallDamageScript = (game.Players.LocalPlayer.Character ~= nil) and game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil
                            if FallDamageScript then
                            FallDamageScript:Destroy()
                            end end end
end)

about:Button("打印下一次灾难(/console)",function()
warn(game.Players.LocalPlayer.Character.SurvivalTag.Value)
end)

about:Button("移除灾难界面(暴风雪和沙尘暴)",function()
game.Players.LocalPlayer.PlayerGui.BlizzardGui:destroy()
                game.Players.LocalPlayer.PlayerGui.SandStormGui:destroy()
end)

about:Button("传送到地图",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-115.828506, 65.4863434, 18.8461514, 0.00697017973, 0.0789371505, -0.996855199, -3.13589936e-07, 0.996879458, 0.0789390653, 0.999975681, -0.000549906865, 0.00694845384)
end)

about:Button("游戏岛",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.5, 38.5, -27.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

about:Button("产卵塔",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-280, 170, 341, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
about:Button(
    "自然灾害-高级脚本",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main"))()
    end
)
about:Button(
    "黑洞脚本（按E）",
    function()
        local UserInputService = game:GetService("UserInputService")
        local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local Folder = Instance.new("Folder", game:GetService("Workspace"))
        local Part = Instance.new("Part", Folder)
        local Attachment1 = Instance.new("Attachment", Part)
        Part.Anchored = true
        Part.CanCollide = false
        Part.Transparency = 1
        local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
        local NetworkAccess =
            coroutine.create(
            function()
                settings().Physics.AllowSleep = false
                while game:GetService("RunService").RenderStepped:Wait() do
                    for _, Players in next, game:GetService("Players"):GetPlayers() do
                        if Players ~= game:GetService("Players").LocalPlayer then
                            Players.MaximumSimulationRadius = 0
                            sethiddenproperty(Players, "SimulationRadius", 0)
                        end
                    end
                    game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
                    setsimulationradius(math.huge)
                end
            end
        )
        coroutine.resume(NetworkAccess)

        local function EnhanceAndInvinciblePart(part)
            if
                part:IsA("Part") and part.Anchored == false and part.Parent:FindFirstChild("Humanoid") == nil and
                    part.Parent:FindFirstChild("Head") == nil and
                    part.Name ~= "Handle"
             then
                Mouse.TargetFilter = part
                for _, x in next, part:GetChildren() do
                    if
                        x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or
                            x:IsA("BodyThrust") or
                            x:IsA("BodyVelocity") or
                            x:IsA("RocketPropulsion")
                     then
                        x:Destroy()
                    end
                end
                if part:FindFirstChild("Attachment") then
                    part:FindFirstChild("Attachment"):Destroy()
                end
                if part:FindFirstChild("AlignPosition") then
                    part:FindFirstChild("AlignPosition"):Destroy()
                end
                if part:FindFirstChild("Torque") then
                    part:FindFirstChild("Torque"):Destroy()
                end
                part.CanCollide = false
                local Torque = Instance.new("Torque", part)
                Torque.Torque = Vector3.new(100000, 100000, 100000)
                local AlignPosition = Instance.new("AlignPosition", part)
                local Attachment2 = Instance.new("Attachment", part)
                Torque.Attachment0 = Attachment2
                AlignPosition.MaxForce = 9999999999999999
                AlignPosition.MaxVelocity = math.huge
                AlignPosition.Responsiveness = 200
                AlignPosition.Attachment0 = Attachment2
                AlignPosition.Attachment1 = Attachment1
            end
        end

        for _, part in next, game:GetService("Workspace"):GetDescendants() do
            EnhanceAndInvinciblePart(part)
        end

        game:GetService("Workspace").DescendantAdded:Connect(
            function(part)
                EnhanceAndInvinciblePart(part)
            end
        )
        -- 监听按键事件
        UserInputService.InputBegan:Connect(
            function(input, isProcessed)
                if input.KeyCode == Enum.KeyCode.E and not isProcessed then
                    Updated = Mouse.Hit + Vector3.new(0, 5, 0)
                end
            end
        )

        -- 使用物理引擎移动所有物体
        spawn(
            function()
                while game:GetService("RunService").RenderStepped:Wait() do
                    Attachment1.WorldCFrame = Updated
                end
            end
        )
    end
)
about:Button(
    "自然灾害-1脚本",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg",
                true
            )
        )()
    end
)
about:Button(
    "自然灾害-2脚本",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/    loadstringUjHI6RQpz2o8",
                true
            )
        )()
    end
)
about:Button(
    "自然灾害-3脚本",
    function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"), true))()
    end
)


local UITab84 = win:Tab("监狱人生",'16060333448')

local about = UITab84:section("『功能』",true)
    about:Toggle("开启杀戮气场","state",false,function(s)
States.KillAura = state
        if state then
            notifications:notify{
            Title = "神青脚本",
            Description = "关闭杀戮气场",
            Icon = 6031302918,
            Accept = {
                Text = "好的",
                Callback = function()
                    print("云");print("山");print("清风");print("忍")
                end
            },
            Length = 10
        }
            CreateKillPart()
        else
            notifications:notify{
            Title = "神青脚本",
            Description = "开启杀戮气场",
            Icon = 6031302918,
            Accept = {
                Text = "好的",
                Callback = function()
                    print("云");print("山");print("清风");print("忍")
                end
            },
            Length = 10
        }
            if Parts[1] and Parts[1].Name == "KillAura" then
                Parts[1]:Destroy()
                Parts[1] = nil
            end
         end
        end)

        function CreateKillPart()
            if Parts[1] then
             pcall(function()
                 Parts[1]:Destroy()
             end)
             Parts[1] = nil
        end
        local Part = Instance.new("Part",plr.Character)
        local hilight = Instance.new("Highlight",Part)
        hilight.FillTransparency = 1

        Part.Anchored = true
        Part.CanCollide = false
        Part.CanTouch = false
        Part.Material = Enum.Material.SmoothPlastic
        Part.Transparency = .98
        Part.Material = Enum.Material.SmoothPlastic
        Part.BrickColor = BrickColor.White()
        Part.Size = Vector3.new(20,2,20)
        Part.Name = "KillAura"
        Parts[1] = Part
        end

        task.spawn(function()
        repeat task.wait()until plr.Character and char and char:FindFirstChildOfClass("Humanoid")

        if States.KillAura then
            CreateKillPart()
        end
      end)

    game:GetService("RunService").Stepped:Connect(function()
        if States.KillAura then
            for i,v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                    if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <14 and v.Character.Humanoid.Health >0 then
                        local args = {
                            [1] = v
                        }
                        for i =1,2 do
                            task.spawn(function()
                                game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                            end)
                        end

                    end
                end
            end
        end
end)
game:GetService("RunService").Stepped:Connect(function()
        if States.KillAura then
            for i,v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                    if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <14 and v.Character.Humanoid.Health >0 then
                        local args = {
                            [1] = v
                        }
                        for i =1,2 do
                            task.spawn(function()
                                game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                            end)
                        end

                    end
                end
            end
        end  
     end)
     wait(1)
about:Toggle("自动杀所有人","text",false,function(state)
if state then
                print("Toggle On")
                isAutoKillRunning = true
                spawn(AutoKillLoop)
                spawn(AutoJump) -- Start the automatic jump function
            else
                print("Toggle Off")
                isAutoKillRunning = false
            end
end)
about:Toggle("删除门🚪","text",false,function(state)
if state then
        print("Toggle On")
        for i,v in pairs(workspace.Doors:GetChildren()) do
             v.Parent = game:service"ReplicatedStorage".nikodoors

        end
    else
        print("Toggle Off")
        for i,v in pairs(game:service"ReplicatedStorage".nikodoors:GetChildren()) do
            v.Parent = workspace.Doors
        end
    end
end)
about:Toggle("逮捕所有罪犯", function()
    wait(0.1)
        Player = game.Players.LocalPlayer
        Pcf = Player.Character.HumanoidRootPart.CFrame
        for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
                if v.Name ~= Player.Name then
                        local i = 10
                        repeat
                                wait()
                                i = i-1
                                game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
                                Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
                        until i == 0
                end
        end
end)

about:Button("变成警察", function()
workspace.Remote.TeamEvent:FireServer("Bright blue");
end)

about:Button("变成囚犯", function()
workspace.Remote.TeamEvent:FireServer("Bright orange");
end)

local MT = getrawmetatable(game)
local __namecall = MT.__namecall
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    if Method == "FindPartOnRay" and not checkcaller() and tostring(getfenv(0).script) == "GunInterface" then
        local Character = ClosestChar()
        if Character then
            return Character.Torso, Character.Torso.Position
        end
    end

    return __namecall(self, ...)
end)
setreadonly(MT, true)
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
about:Button("无敌模式",function()
        loadstring(game:HttpGet("https://pastebin.com/raw/LdTVujTA"))()
end)
about:Button(
    "杀死所有人",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/kXjfpFPh"))()
    end
)
about:Button(
    "无敌神器（拿上范围秒杀）",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/mSLiAZHk"))()
    end
)
about:Button(
    "变钢铁侠",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/7prijqYH"))()
    end
)
about:Button(
    "变死神",
    function()
        loadstring(game:HttpGet("https://pastebin.com/ewv9bbRp"))()
    end
)
about:Button(
    "变车模型",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/zLe3e4BS"))()
    end
)


about:Button(
    "PRISONWARE V1.3",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
    end
)
about:Button(
    "红该 脚本",
    function()
        loadstring(game:HttpGetAsync("https://pastebin.com/raw/fYMnAEeJ"))()
        --紅该 脚本--
    end
)
about:Button(
    "Tiger脚本",
    function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE"), true))(

        )
    end
)
about:Button(
    "Moon脚本（不知道有什么用）",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IlikeyocutgHAH12/MoonUI-v10-/main/MoonUI%20v10"))()
    end
)
about:Button(
    "1脚本",
    function()
        -- This Script isn't mine credits to the owner.
        -- Works on krnl,Synapse,Sirhurt And other.
        loadstring(game:HttpGet("https://pastebin.com/raw/mHfK0Xk4", true))()
    end
)
about:Button(
    "2脚本",
    function()
        getgenv().http_request = http_request or request or (http and http.request) or syn.request
        repeat
        until http_request
        loadstring(
            http_request(
                {
                    Url = "https://raw.githubusercontent.com/alphaalt0409/WEIRDAPPLEBEEPANEL/main/weirdapplebee.lua",
                    Method = "GET"
                }
            ).Body
        )()
    end
)

about:Button(
    "警卫室",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
    end
)
about:Button(
    "监狱室内",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
    end
)
about:Button(
    "罪犯复活点",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
    end
)
about:Button(
    "监狱室外",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
    end
)


local Tab = Window:MakeTab({
  Name = "DOORS脚本",
  Icon = "rbxassetid://10983763163",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "引导之光手电",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Matthew201322/Doors-Scriptee/refs/heads/main/Shakelight.lua"))()

end
})
Tab:AddButton({
	Name = "控制物品变大物品",
	Callback = function()

loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/f0178af2301ca90c09895f10f3e7bd4b/raw/46899ccc3626f3485d85f990012f7ef37ae52e5e/resizerDoorsRemake'))()

end
})
Tab:AddButton({
	Name = "MS中文[V3][来源XK][想加插件进群]",
	Callback = function()

getgenv().Spy="mspaint" loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoXuAnZang/XKscript/refs/heads/main/DOORS.txt"))()

end
})
Tab:AddButton({
	Name = "LX|DOORS中文",
	Callback = function()

loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\76\88\51\49\56\47\76\88\47\109\97\105\110\47\76\88\37\50\48\50\46\108\117\97\0"))()

end
})
Tab:AddButton({
	Name = "生成巨魔脸",
	Callback = function()

loadstring(game:HttpGet("https://api.hugebonus.xyz/scripts/TrollFaceSpawner.lua"))()

end
})
Tab:AddButton({
	Name = "杰夫毛绒玩具",
	Callback = function()

local tool = game:GetObjects("rbxassetid://13069619857")[1]
tool.Parent = game.Players.LocalPlayer.Backpack

end
})
Tab:AddButton({
	Name = "变成杰夫杀手",
	Callback = function()

_G.ThirdPerson = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/idkbutiampoggers/JeffTheKillerMorphV2/main/Source.lua"))()

end
})
Tab:AddButton({
	Name = "生成giggle",
	Callback = function()

getgenv().GIGGLE_SPAWN_CONFIG = {
     Damage = 6,
     AttackingTime = math.random(7, 10), -- The time giggle will be attacking for.
     FallSpeed = 3,        -- Speed for when giggle spawns, can be mininum 2 and how high you want
     
     Stunnable = true,    -- If set to true, Giggle will be stunnable with glowstick
     StunTime = 5, -- The time giggle will be stun for
     
     RagdollThrowForce = 50,    -- The Ragdoll's Force when its thrown
     RagdollDissapears = true,  -- If set to true the ragdoll will dissapear once giggle finishes attacking.
  
     RoomSpawning = {
          Enabled = true   -- If set to false, giggle will spawn around the player.
     },
     
     PlayerSpawning = { -- This table will be used if Room Spawning is Disabled
          MinRadius = -20,  -- The minimum distance giggle can spawn from the player.
          MaxRadius = 20.  --  The maximum distance giggle can spawn from the player.
     },
     
     SpawningKey = { -- Key for Spawning
          Enabled = false,  -- If enabled once the key is pressed, giggle will spawn.
          Key = "G"    -- Key that is used for spawning giggle
     }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/refs/heads/main/Doors/GiggleSpawn.lua"))()

end
})
Tab:AddButton({
	Name = "金色手摇",
	Callback = function()

loadstring(game:HttpGet(("https://raw.githubusercontent.com/aadyian9000/the-thing/main/GoldenGummyFlashlight.lua"),true))()

end
})
Tab:AddButton({
	Name = "召唤肘击王（快跑）",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/PandemoniumProtected.lua"))()

end
})
Tab:AddButton({
	Name = "小恶魔玩具",
	Callback = function()

local Players = game:GetService("Players")
local Equipped = false
local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local Root = Char:WaitForChild("HumanoidRootPart")
local RightArm = Char:WaitForChild("RightUpperArm")
local LeftArm = Char:WaitForChild("LeftUpperArm")
local RightC1 = RightArm.RightShoulder.C1
local LeftC1 = LeftArm.LeftShoulder.C1
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/MateiDaBest/Utilities/main/Doors/Custom%20Shop%20Items/Main.lua"))()
local Goblino = game:GetObjects("rbxassetid://12856605563")[1]

Goblino.Parent = game.Players.LocalPlayer.Backpack

CustomShop.CreateItem({
	Title = "El Goblino",
	Desc = "Door 52",
	Image = "https://cdn.discordapp.com/attachments/970078853127110677/1087774910706888824/12372522258.png",
	Price = 52,
	Stack = 1,
})

local function setupHands(tool)
	tool.Equipped:Connect(function()
		Equipped = true
		Char:SetAttribute("Hiding", true)
		for _, v in next, Hum:GetPlayingAnimationTracks() do
			v:Stop()
		end

		RightArm.Name = "R_Arm"
		LeftArm.Name = "L_Arm"

		RightArm.RightShoulder.C1 = RightC1
			* CFrame.Angles(math.rad(-90), math.rad(-10), 0)
		LeftArm.LeftShoulder.C1 = LeftC1
			* CFrame.new(-0.2, -0.4, -0.5)
			* CFrame.Angles(math.rad(-110), math.rad(30), math.rad(0))	
	end)

	tool.Unequipped:Connect(function()
		Equipped = false
		Char:SetAttribute("Hiding", nil)
		RightArm.Name = "RightUpperArm"
		LeftArm.Name = "LeftUpperArm"

		RightArm.RightShoulder.C1 = RightC1
		LeftArm.LeftShoulder.C1 = LeftC1
	end)
end

setupHands(Goblino)

end
})
Tab:AddButton({
	Name = "万圣节糖果透视",
	Callback = function()

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()

local OwO = library:Window("万圣节糖果透视🎃")

local candyEspEnabled = false
local showDistance = false
local connections = {}

OwO:Toggle("🍬糖果透视", false, function(enabled)
    candyEspEnabled = enabled

    local function addEspToCandy(candy)
        if not candy:FindFirstChild("🍬糖果透视") then
            -- Create BillboardGui
            local billboardGui = Instance.new("BillboardGui")
            billboardGui.Name = "CandyESP"
            billboardGui.Size = UDim2.new(4, 0, 3, 0) -- Larger size for better visibility
            billboardGui.StudsOffset = Vector3.new(0, 3, 0)
            billboardGui.AlwaysOnTop = true
            billboardGui.Parent = candy

            -- Create "Candy Root" TextLabel
            local textLabel = Instance.new("TextLabel")
            textLabel.Text = "糖果"
            textLabel.Size = UDim2.new(1, 0, 0.5, 0)
            textLabel.TextColor3 = Color3.new(1, 0, 1) -- Pink color for "Candy Root"
            textLabel.BackgroundTransparency = 1
            textLabel.TextSize = 35 -- Font size
            textLabel.Font = Enum.Font.SourceSansBold
            textLabel.Parent = billboardGui

            -- Create Distance Label (positioned further below the "Candy Root" text)
            local distanceLabel = Instance.new("TextLabel")
            distanceLabel.Name = "距离"
            distanceLabel.Size = UDim2.new(1, 0, 0.3, 0)
            distanceLabel.Position = UDim2.new(0, 0, 0.7, 0) -- Positioned farther below the "Candy Root" label
            distanceLabel.TextColor3 = Color3.new(1, 1, 1) -- White color for distance
            distanceLabel.BackgroundTransparency = 1
            distanceLabel.TextSize = 25 -- Font size for distance
            distanceLabel.Font = Enum.Font.SourceSansBold
            distanceLabel.Parent = billboardGui

            -- Update the distance if showDistance is enabled
            game:GetService("RunService").RenderStepped:Connect(function()
                if candyEspEnabled and showDistance then
                    local player = game.Players.LocalPlayer
                    local distance = (candy.Position - player.Character.HumanoidRootPart.Position).Magnitude
                    distanceLabel.Text = string.format("距离: %.1f", distance)
                else
                    distanceLabel.Text = ""
                end
            end)
        end
    end

    local function findAllCandyRoots()
        -- Search all descendants in Workspace for parts named "CandyRoot"
        for _, descendant in ipairs(workspace:GetDescendants()) do
            if descendant:IsA("BasePart") and descendant.Name == "CandyRoot" then
                addEspToCandy(descendant)
            end
        end
    end

    if candyEspEnabled then
        findAllCandyRoots()

        -- Listen for new parts being added to Workspace
        connections.candyRootAdded = workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("BasePart") and descendant.Name == "CandyRoot" then
                addEspToCandy(descendant)
            end
        end)
    else
        -- Remove ESP from each candy root when the toggle is off
        for _, descendant in ipairs(workspace:GetDescendants()) do
            if descendant:IsA("BasePart") and descendant:FindFirstChild("糖果透视") then
                descendant.CandyESP:Destroy()
            end
        end

        -- Disconnect any connections to prevent memory leaks
        if connections.candyRootAdded then
            connections.candyRootAdded:Disconnect()
            connections.candyRootAdded = nil
        end
    end
end)

-- Second toggle: Show/Hide Distance
OwO:Toggle("糖果距离", false, function(enabled)
    showDistance = enabled
end)


OwO:Button("键盘", function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

OwO:Button("低画质", function()
       for _,v in pairs(workspace:GetDescendants()) do
if v.ClassName == "Part"
or v.ClassName == "SpawnLocation"
or v.ClassName == "WedgePart"
or v.ClassName == "Terrain"
or v.ClassName == "MeshPart" then
v.Material = "Plastic"
end
end
end)



OwO:Label("by:佐菲", Color3.fromRGB(255, 255, 255))

end
})
Tab:AddButton({
	Name = "DOORS旧版大厅",
	Callback = function()

local game_id = 110258689672367
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)

end
})
Tab:AddButton({
	Name = "APT|DOORS脚本",
	Callback = function()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "“门” 脚本 APT汉化",Name = "“门” APT汉化", HidePremium = false, SaveConfig = true, ConfigFolder = "DoorsSex"})
if game.PlaceId == 6516141723 then
    OrionLib:MakeNotification({
        Name = "错误",
        Content = "此脚本不能在大厅执行",
        Time = 5
    })
end
local VisualsTab = Window:MakeTab({
	Name = "透视",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CF = CFrame.new
local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom

local KeyChams = {}
VisualsTab:AddToggle({
	Name = "钥匙透视",
	Default = false,
    Flag = "KeyToggle",
    Save = true,
	Callback = function(Value)
		for i,v in pairs(KeyChams) do
            v.Enabled = Value
        end
	end    
})

local function ApplyKeyChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(0.980392, 0.670588, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Adornee = inst
    Cham.Enabled = OrionLib.Flags["KeyToggle"].Value
    Cham.RobloxLocked = true
    return Cham
end

local KeyCoroutine = coroutine.create(function()
    workspace.CurrentRooms.DescendantAdded:Connect(function(inst)
        if inst.Name == "KeyObtain" then
            table.insert(KeyChams,ApplyKeyChams(inst))
        end
    end)
end)
for i,v in ipairs(workspace:GetDescendants()) do
    if v.Name == "KeyObtain" then
        table.insert(KeyChams,ApplyKeyChams(v))
    end
end
coroutine.resume(KeyCoroutine)

local BookChams = {}
VisualsTab:AddToggle({
	Name = "50关书透视",
	Default = false,
    Flag = "BookToggle",
    Save = true,
	Callback = function(Value)
		for i,v in pairs(BookChams) do
            v.Enabled = Value
        end
	end    
})

local FigureChams = {}
VisualsTab:AddToggle({
	Name = "50关Figure透视",
	Default = false,
    Flag = "FigureToggle",
    Save = true,
    Callback = function(Value)
        for i,v in pairs(FigureChams) do
            v.Enabled = Value
        end
    end
})

local function ApplyBookChams(inst)
    if inst:IsDescendantOf(game:GetService("Workspace").CurrentRooms:FindFirstChild("50")) and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value == 50 then
        wait()
        local Cham = Instance.new("Highlight")
        Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        Cham.FillColor = Color3.new(0, 1, 0.749019)
        Cham.FillTransparency = 0.5
        Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
        Cham.Parent = game:GetService("CoreGui")
        Cham.Enabled = OrionLib.Flags["BookToggle"].Value
        Cham.Adornee = inst
        Cham.RobloxLocked = true
        return Cham
    end
end

local function ApplyEntityChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(1, 0, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Enabled = OrionLib.Flags["FigureToggle"].Value
    Cham.Adornee = inst
    Cham.RobloxLocked = true
    return Cham
end

local BookCoroutine = coroutine.create(function()
    task.wait(1)
    for i,v in pairs(game:GetService("Workspace").CurrentRooms["50"].Assets:GetDescendants()) do
        if v.Name == "LiveHintBook" then
            table.insert(BookChams,ApplyBookChams(v))
        end
    end
end)
local EntityCoroutine = coroutine.create(function()
    local Entity = game:GetService("Workspace").CurrentRooms["50"].FigureSetup:WaitForChild("FigureRagdoll",5)
    Entity:WaitForChild("Torso",2.5)
    table.insert(FigureChams,ApplyEntityChams(Entity))
end)


local GameTab = Window:MakeTab({
	Name = "主要功能",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local CharTab = Window:MakeTab({
	Name = "其他",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TargetWalkspeed
CharTab:AddSlider({
	Name = "速度",
	Min = 0,
	Max = 50,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		TargetWalkspeed = Value
	end    
})

local pcl = Instance.new("SpotLight")
pcl.Brightness = 1
pcl.Face = Enum.NormalId.Front
pcl.Range = 90
pcl.Parent = game.Players.LocalPlayer.Character.Head
pcl.Enabled = false


CharTab:AddToggle({
	Name = "灯光(别人看不见)",
	Default = false,
    Callback = function(Value)
        pcl.Enabled = Value
    end
})

GameTab:AddToggle({
	Name = "追逐无火",
	Default = false,
    Flag = "NoSeek",
    Save = true
})

GameTab:AddToggle({
	Name = "瞬间互动",
	Default = false,
    Flag = "InstantToggle",
    Save = true
})
GameTab:AddButton({
	Name = "过一道门",
	Callback = function()
        pcall(function()
            local HasKey = false
            local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")
            for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                if v.Name == "KeyObtain" then
                    HasKey = v
                end
            end
            if HasKey then
                game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                wait(0.3)
                fireproximityprompt(HasKey.ModulePrompt,0)
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                wait(0.3)
                fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
            end
            if LatestRoom == 50 then
                CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
            end
            game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
            wait(0.3)
            CurrentDoor.ClientOpen:FireServer()
        end)
  	end    
})

GameTab:AddToggle({
	Name = "连续过门",
	Default = false,
    Save = false,
    Flag = "AutoSkip"
})

local AutoSkipCoro = coroutine.create(function()
        while true do
            task.wait()
            pcall(function()
            if OrionLib.Flags["AutoSkip"].Value == true and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value < 100 then
                local HasKey = false
                local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
                local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom)]:WaitForChild("Door")
                for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                    if v.Name == "KeyObtain" then
                        HasKey = v
                    end
                end
                if HasKey then
                    game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                    task.wait(0.3)
                    fireproximityprompt(HasKey.ModulePrompt,0)
                    game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                    task.wait(0.3)
                    fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
                end
                if LatestRoom == 50 then
                    CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
                end
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                task.wait(0.3)
                CurrentDoor.ClientOpen:FireServer()
            end
        end)
        end
end)
coroutine.resume(AutoSkipCoro)

GameTab:AddButton({
	Name = "没有跳杀",
	Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").Bricks.Jumpscare:Destroy()
        end)
  	end    
})
GameTab:AddToggle({
	Name = "自动躲避rush/ambush",
	Default = false,
    Flag = "AvoidRushToggle",
    Save = true
})
GameTab:AddToggle({
	Name = "取消Screech跳杀",
	Default = false,
    Flag = "ScreechToggle",
    Save = true
})

GameTab:AddToggle({
	Name = "取消心跳游戏",
	Default = false,
    Flag = "HeartbeatWin",
    Save = true
})

GameTab:AddToggle({
	Name = "跳过追逐战",
	Default = false,
    Flag = "PredictToggle" ,
    Save = true
})
GameTab:AddToggle({
	Name = "怪物通知",
	Default = false,
    Flag = "MobToggle" ,
    Save = true
})
GameTab:AddButton({
	Name = "无用",
	Callback = function()
        game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
  	end    
})
GameTab:AddButton({
	Name = "无用",
	Callback = function()
        local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
        game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
  	end    
})
GameTab:AddParagraph("警告","如果你按下没用那就开/关菜单几次")

--// ok actual code starts here

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/50)
        end
    end)
end)

game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(descendant)
    if OrionLib.Flags["NoSeek"].Value == true and descendant.Name == ("Seek_Arm" or "ChandelierObstruction") then
        task.spawn(function()
            wait()
            descendant:Destroy()
        end)
    end
end)

game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if OrionLib.Flags["InstantToggle"].Value == true then
        fireproximityprompt(prompt)
    end
end)

local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    
    if tostring(self) == 'Screech' and method == "FireServer" and OrionLib.Flags["ScreechToggle"].Value == true then
        args[1] = true
        return old(self,unpack(args))
    end
    if tostring(self) == 'ClutchHeartbeat' and method == "FireServer" and OrionLib.Flags["HeartbeatWin"].Value == true then
        args[2] = true
        return old(self,unpack(args))
    end
    
    return old(self,...)
end))

workspace.CurrentCamera.ChildAdded:Connect(function(child)
    if child.Name == "Screech" and OrionLib.Flags["ScreechToggle"].Value == true then
        child:Destroy()
    end
end)

local NotificationCoroutine = coroutine.create(function()
    workspace.ChildAdded:Connect(function(inst)
        if inst.Name == "RushMoving" and OrionLib.Flags["MobToggle"].Value == true then
            if OrionLib.Flags["AvoidRushToggle"].Value == true then
                OrionLib:MakeNotification({
                    Name = "警告",
                    Content = "躲避rush请稍等",
                    Time = 5
                })
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local con = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
                end)
                
                inst.Destroying:Wait()
                con:Disconnect()

                game.Players.LocalPlayer.Character:MoveTo(OldPos)
            else
                OrionLib:MakeNotification({
                    Name = "警告",
                    Content = "rush已刷新",
                    Time = 5
                })
            end
        elseif inst.Name == "AmbushMoving" and OrionLib.Flags["MobToggle"].Value == true then
            if OrionLib.Flags["AvoidRushToggle"].Value == true then
                OrionLib:MakeNotification({
                    Name = "警告",
                    Content = "躲避ambush请稍等",
                    Time = 5
                })
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local con = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
                end)
                
                inst.Destroying:Wait()
                con:Disconnect()
                
                game.Players.LocalPlayer.Character:MoveTo(OldPos)
            else
                OrionLib:MakeNotification({
                    Name = "警告",
                    Content = "ambush刷新",
                    Time = 5
                })
            end
        end
    end)
end)

--// ok actual code ends here

local CreditsTab = Window:MakeTab({
	Name = "我的",
	Icon = "APT汉化",
	PremiumOnly = false
})

CreditsTab:AddParagraph("APT汉化")

coroutine.resume(NotificationCoroutine)

OrionLib:Init()

task.wait(2)

end
})
Tab:AddButton({
	Name = "一只坤哥",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Chicken%20Item.lua"))()

end
})
Tab:AddButton({
	Name = "backdoor中文脚本|APT汉化",
	Callback = function()

if _G.Executed then
	warn("Already executed!")
	return
end
_G.Executed = true

if game:GetService("ReplicatedStorage").GameData.Floor.Value ~= "Backdoor" then
	return
end

local screen_gui = Instance.new("ScreenGui")
screen_gui.DisplayOrder = 999999999
screen_gui.IgnoreGuiInset = false
screen_gui.ResetOnSpawn = false
screen_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screen_gui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.AnchorPoint = Vector2.new(0, 1)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 1
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0, 0, 1, 0)
frame.Size = UDim2.new(0.386924595, 0, 0.576817155, 0)
frame.Visible = true
frame.Parent = screen_gui

local uigrid_layout = Instance.new("UIGridLayout")
uigrid_layout.CellPadding = UDim2.new(0, 0, 0.0500000007, 0)
uigrid_layout.CellSize = UDim2.new(0.800000012, 0, 0.200000003, 0)
uigrid_layout.StartCorner = Enum.StartCorner.BottomLeft
uigrid_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uigrid_layout.SortOrder = Enum.SortOrder.LayoutOrder
uigrid_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uigrid_layout.Parent = frame

local uipadding = Instance.new("UIPadding")
uipadding.PaddingBottom = UDim.new(0.02500000037252903, 0)
uipadding.Parent = frame

local template = Instance.new("Frame")
template.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
template.BorderColor3 = Color3.new(0, 0, 0)
template.BorderSizePixel = 0
template.Position = UDim2.new(0, 0, 0.605726838, 0)
template.Size = UDim2.new(0, 231, 0, 286)
template.Visible = false
template.Name = "template"
template.Parent = frame

local uiscale = Instance.new("UIScale")
uiscale.Parent = template

local uicorner = Instance.new("UICorner")
uicorner.Parent = template

local uistroke = Instance.new("UIStroke")
uistroke.Color = Color3.new(0.588235, 0.588235, 0.588235)
uistroke.Thickness = 2.5
uistroke.Parent = template

local uigradient = Instance.new("UIGradient")
uigradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.996078, 0.0392157, 0)), ColorSequenceKeypoint.new(0.1599999964237213, Color3.new(1, 0.615686, 0)), ColorSequenceKeypoint.new(0.3199999928474426, Color3.new(1, 1, 0)), ColorSequenceKeypoint.new(0.47999998927116394, Color3.new(0, 1, 0)), ColorSequenceKeypoint.new(0.6399999856948853, Color3.new(0, 0.666667, 1)), ColorSequenceKeypoint.new(0.800000011920929, Color3.new(1, 0.333333, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.666667, 0, 1))})
uigradient.Parent = uistroke

local text_label = Instance.new("TextLabel")
text_label.Font = Enum.Font.GothamBold
text_label.Text = "实体已生成"
text_label.TextColor3 = Color3.new(1, 1, 1)
text_label.TextScaled = true
text_label.TextSize = 14
text_label.TextWrapped = true
text_label.BackgroundColor3 = Color3.new(1, 1, 1)
text_label.BackgroundTransparency = 1
text_label.BorderColor3 = Color3.new(0, 0, 0)
text_label.BorderSizePixel = 0
text_label.Size = UDim2.new(1, 0, 1, 0)
text_label.Visible = true
text_label.ZIndex = 3
text_label.Parent = template

local uistroke_2 = Instance.new("UIStroke")
uistroke_2.Thickness = 2.5
uistroke_2.Parent = text_label

local uipadding_2 = Instance.new("UIPadding")
uipadding_2.PaddingBottom = UDim.new(0.10000000149011612, 0)
uipadding_2.PaddingLeft = UDim.new(0.10000000149011612, 0)
uipadding_2.PaddingRight = UDim.new(0.10000000149011612, 0)
uipadding_2.PaddingTop = UDim.new(0.10000000149011612, 0)
uipadding_2.Parent = text_label

local uigradient_2 = Instance.new("UIGradient")
uigradient_2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.3799654543399811, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.580392, 0.580392, 0.580392)), ColorSequenceKeypoint.new(0.5336787700653076, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))})
uigradient_2.Offset = Vector2.new(-1, 0)
uigradient_2.Rotation = 45
uigradient_2.Parent = template

local shadow = Instance.new("ImageLabel")
shadow.Image = "rbxassetid://14001321443"
shadow.ImageColor3 = Color3.new(0, 0, 0)
shadow.ImageTransparency = 0.75
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(50, 50, 150, 150)
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.BackgroundColor3 = Color3.new(1, 1, 1)
shadow.BackgroundTransparency = 1
shadow.BorderColor3 = Color3.new(0, 0, 0)
shadow.BorderSizePixel = 0
shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
shadow.Size = UDim2.new(1, 35, 1, 35)
shadow.Visible = true
shadow.ZIndex = -1
shadow.Name = "shadow"
shadow.Parent = template

local uiaspect_ratio_constraint = Instance.new("UIAspectRatioConstraint")
uiaspect_ratio_constraint.AspectRatio = 1.107398509979248
uiaspect_ratio_constraint.Parent = frame

local timer = Instance.new("Frame")
timer.AnchorPoint = Vector2.new(1, 0.9700000286102295)
timer.BackgroundColor3 = Color3.new(1, 1, 1)
timer.BackgroundTransparency = 1
timer.BorderColor3 = Color3.new(0, 0, 0)
timer.BorderSizePixel = 0
timer.Position = UDim2.new(1, 0, 0.982205212, 0)
timer.Size = UDim2.new(1, 0, 0.112479456, 0)
timer.Visible = true
timer.Name = "Timer"
timer.Parent = screen_gui

local image_label = Instance.new("ImageLabel")
image_label.Image = "rbxassetid://16781696827"
image_label.BackgroundColor3 = Color3.new(1, 1, 1)
image_label.BackgroundTransparency = 1
image_label.BorderColor3 = Color3.new(0, 0, 0)
image_label.BorderSizePixel = 0
image_label.Position = UDim2.new(0.829316378, 0, 0, 0)
image_label.Size = UDim2.new(0.170516863, 0, 1, 0)
image_label.Visible = true
image_label.ZIndex = 0
image_label.Parent = timer

local timer_2 = Instance.new("TextLabel")
timer_2.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold)
timer_2.Text = "01:00"
timer_2.TextColor3 = Color3.new(1, 0.705882, 0.298039)
timer_2.TextScaled = true
timer_2.TextSize = 14
timer_2.TextWrapped = true
timer_2.TextXAlignment = Enum.TextXAlignment.Right
timer_2.AnchorPoint = Vector2.new(0.5, 0.5)
timer_2.BackgroundColor3 = Color3.new(1, 1, 1)
timer_2.BackgroundTransparency = 1
timer_2.BorderColor3 = Color3.new(0, 0, 0)
timer_2.BorderSizePixel = 0
timer_2.Position = UDim2.new(0.5, 0, 0.5, 0)
timer_2.Size = UDim2.new(0.999833286, 0, 1, 0)
timer_2.Visible = true
timer_2.Name = "Timer"
timer_2.Parent = image_label

local uipadding_3 = Instance.new("UIPadding")
uipadding_3.PaddingBottom = UDim.new(0.07999999821186066, 0)
uipadding_3.PaddingLeft = UDim.new(0.20000000298023224, 0)
uipadding_3.PaddingRight = UDim.new(0.20000000298023224, 0)
uipadding_3.Parent = timer_2

local uiaspect_ratio_constraint_2 = Instance.new("UIAspectRatioConstraint")
uiaspect_ratio_constraint_2.AspectRatio = 15.940258026123047
uiaspect_ratio_constraint_2.Parent = timer

function sound()
	local notification = Instance.new("Sound", workspace)
	notification.SoundId = "rbxassetid://5153734608"
	notification.Parent = workspace
	notification:Play()
end

function notify(entity, bypassed, other)
	sound()
	local tem = template:Clone()
	tem.Visible = true
	tem.TextLabel.Text = entity .. " 刚刚生成!"
	if bypassed then
		tem.TextLabel.Text = entity .. " 此功能正在修复!"
	end
	if other then
		tem.TextLabel.Text = other
	end
	tem.Parent = frame
	game:GetService("TweenService"):Create(tem.UIScale, TweenInfo.new(0.25, Enum.EasingStyle.Sine), { Scale = 1 }):Play()
	spawn(function()
		while true do
			task.wait(0.01)
			if not tem or not tem:FindFirstChild("UIStroke") or not tem:FindFirstChild("UIStroke"):FindFirstChild("UIGradient") then
				return
			end
			tem.UIStroke.UIGradient.Rotation += 1
		end
	end)

	spawn(function()
		while true do
			task.wait(0.01)
			if not tem or not tem:FindFirstChild("UIGradient") then
				return
			end
			if tem.UIGradient.Offset.X >= 1 then
				tem.UIGradient.Offset = Vector2.new(-1, 0)
			end
			tem.UIGradient.Offset += Vector2.new(0.01, 0)
		end
	end)
	spawn(function()
		task.wait(15)
		if tem and tem:FindFirstChild("UIScale") then
			game:GetService("TweenService"):Create(tem.UIScale, TweenInfo.new(0.25, Enum.EasingStyle.Sine), { Scale = 0 }):Play()
			task.wait(.25)
			tem:Destroy()
		end
	end)
end

function billboard(child, name)
	local billboard_gui = Instance.new("BillboardGui")
	billboard_gui.Active = true
	billboard_gui.AlwaysOnTop = true
	billboard_gui.ClipsDescendants = true
	billboard_gui.LightInfluence = 1
	billboard_gui.Size = UDim2.new(10, 0, 2, 0)
	billboard_gui.ResetOnSpawn = false
	billboard_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	billboard_gui.Parent = child

	local text_label = Instance.new("TextLabel")
	text_label.Font = Enum.Font.GothamBold
	text_label.Text = name
	text_label.TextColor3 = Color3.new(1, 1, 1)
	text_label.TextScaled = true
	text_label.TextSize = 14
	text_label.TextWrapped = true
	text_label.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label.BackgroundTransparency = 1
	text_label.BorderColor3 = Color3.new(0, 0, 0)
	text_label.BorderSizePixel = 0
	text_label.Size = UDim2.new(1, 0, 1, 0)
	text_label.Visible = true
	text_label.Parent = billboard_gui

	local uistroke = Instance.new("UIStroke")
	uistroke.Thickness = 2.5
	uistroke.Parent = text_label
	
	spawn(function()
		while task.wait() do
			local hue = tick() % 5 / 5
			local color = Color3.fromHSV(hue, 1, 1) 
			text_label.TextColor3 = color
		end
	end)
end

function selection(child, name)
	billboard(child, name)
	local hi = Instance.new("Highlight")
	hi.Parent = child
	hi.Adornee = child
	hi.OutlineColor = Color3.fromRGB(161, 0, 0)
	hi.FillColor = Color3.fromRGB(255, 0, 0)
	hi.FillTransparency = 0.75
	if child:IsA("Part") then
		child.Color = Color3.fromRGB(0, 0, 0)
		child.Transparency = 0
	end
	spawn(function()
		while task.wait() do
			local hue = tick() % 5 / 5
			local color = Color3.fromHSV(hue, 1, 1) 
			hi.OutlineColor = color
			hi.FillColor = color
		end
	end)
end

workspace.ChildAdded:Connect(function(child)
	if child.Name == "BackdoorLookman" then
		if child then
			task.wait()
			child.Parent = game:GetService("Debris")
			return
		end
		notify("👁️后门 Lookman")
		selection(child:WaitForChild("Core"), "👁️ Backdoor Lookman")
	elseif child.Name == "BackdoorRush" then
		notify("💨 闪电战(Backdoor Rush)")
		selection(child:WaitForChild("Main"), "💨 闪电战 (Backdoor Rush)")
	end
end)

function checkDistance(part)
	if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or not part then
		return false
	end
	local distanceToPart = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.Position).magnitude
	if distanceToPart <= 10 then
		return true
	end
	return false
end

for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
	if v:IsA("BasePart") and v.Name == "Door" and v.Parent.Name == "Door" then
		selection(v, "🚪 门")
	elseif v.Name == "KeyObtain" then
		selection(v, "🔑 钥匙")
		spawn(function()
			while task.wait() do
				if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
					fireproximityprompt(v.ModulePrompt)
				end
			end
		end)
	elseif v.Name == "Backdoor_Wardrobe" then
		selection(v, "🗄️ 柜子")
	elseif v.Name == "TimerLever" then
		selection(v, "⏳ 时间拉杆")
		spawn(function()
			while task.wait() do
				if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
					fireproximityprompt(v.ActivateEventPrompt)
				end
			end
		end)
	elseif v.Name == "ActivateEventPrompt" and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "DrawerContainer" then
		spawn(function()
			while task.wait() do
				if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
					fireproximityprompt(v)
				end
			end
		end)
	elseif v.Name == "LootPrompt" and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "DrawerContainer" then
		spawn(function()
			while task.wait() do
				if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
					fireproximityprompt(v)
				end
			end
		end)
	end
end

workspace.CurrentRooms.ChildAdded:Connect(function(child)
	spawn(function()
		task.wait(5)
		if child.Assets:FindFirstChild("TimerLever") then
			selection(child.Assets.TimerLever, "⏳ 时间拉杆")
			spawn(function()
				while task.wait() do
					fireproximityprompt(child.Assets.TimerLever.ActivateEventPrompt)
				end
			end)
		end
	end)
	task.wait(1)
	for _, v in pairs(child:GetDescendants()) do
		if v:IsA("BasePart") and v.Name == "Door" and v.Parent.Name == "Door" then
			selection(v, "🚪 门")
		elseif v.Name == "KeyObtain" then
			selection(v, "🔑 钥匙")
			spawn(function()
				while task.wait() do
					if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
						fireproximityprompt(v.ModulePrompt)
					end
				end
			end)
		elseif v.Name == "Backdoor_Wardrobe" then
			selection(v, "🗄️ 柜子")
		elseif v.Name == "ActivateEventPrompt" and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "DrawerContainer" then
			spawn(function()
				while task.wait() do
					if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
						fireproximityprompt(v)
					end
				end
			end)
		elseif v.Name == "LootPrompt" and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "DrawerContainer" then
			spawn(function()
				while task.wait() do
					if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
						fireproximityprompt(v)
					end
				end
			end)
		end
	end
end)

notify("", nil, "脚本作者kiwib汉化APT ")
notify("👁️ 你现在看不见lookman", true)
notify("", nil, "⚡ 红色骷髅头现在是服务器端的，所以它不能被删除，讨厌的视觉效果被删除.")

if game:GetService("ReplicatedStorage").FloorClientStuff.ClientRemote:FindFirstChild("Haste") then
	game:GetService("ReplicatedStorage").FloorClientStuff.ClientRemote.Haste:Destroy()
end

local Notified = false

game:GetService("ReplicatedStorage").FloorClientStuff.DigitalTimer:GetPropertyChangedSignal("Value"):Connect(function()
	if game:GetService("ReplicatedStorage").FloorClientStuff.DigitalTimer.Value == 0 then
		if not Notified then
			Notified = true
			notify("", nil, "⚡ 红色骷髅头已经生成了，快去拉拉杆😡")
		end
	else
		Notified = false
	end
	local formattedTime = string.format("%02d:%02d", math.floor(game:GetService("ReplicatedStorage").FloorClientStuff.DigitalTimer.Value / 60), game:GetService("ReplicatedStorage").FloorClientStuff.DigitalTimer.Value % 60)
	timer_2.Text = formattedTime
end)

spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		workspace.CurrentCamera.FieldOfView = 120
		game:GetService("ReplicatedStorage").RemotesFolder.MotorReplication:FireServer(0, 90, 0, false)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 21
		game.Lighting.Brightness = 2
		game.Lighting.ClockTime = 14
		game.Lighting.FogEnd = 100000
		game.Lighting.GlobalShadows = false
		game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if child:IsA("BasePart") and child.CanCollide == true then
				child.CanCollide = false
			end
		end
	end)
end)

end
})
Tab:AddButton({
	Name = "A1000大药水",
	Callback = function()

loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\67\104\105\110\97\81\89\47\83\99\114\105\112\116\115\47\77\97\105\110\47\83\116\97\114\74\117\103"))()

end
})
Tab:AddButton({
	Name = "黑洞［不确定支持不支持其他服务器，小心使用］",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Black%20Hole.lua"))()

end
})
Tab:AddButton({
	Name = "可爱的无翼鸟",
	Callback = function()

loadstring(game:HttpGet("https://pastebin.com/raw/PFERptU5", true))()

end
})
Tab:AddButton({
	Name = "老外的体力值脚本",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/nervehammer1/stupidhc/refs/heads/main/JaysHardcore"))() 

end
})
Tab:AddButton({
	Name = "夜视仪",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ChinaQY/Scripts/Main/NVCS-3000"))()

end
})
Tab:AddButton({
	Name = "引导之光桶",
	Callback = function()

loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/04d7dd5e02688624b958b8c2604b924c/raw/9e86b34249f44ed2dd433176e67daaf3db30cde8/MoonBottle'))()

end
})
Tab:AddButton({
	Name = "可控制物品［不会用进群］",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/F3X.lua"))()

end
})
Tab:AddButton({
	Name = "恶作剧之光桶",
	Callback = function()

loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/8b05c837bea9effac2554340465b4be1/raw/3f3be0ee72e7f153db39a16a40fa63dce6cde72d/SpiralBottle'))()

end
})
Tab:AddButton({
	Name = "大举办",
	Callback = function()

-- settings
local SNAKE_LENGTH = 10
local SNAKE_SIZE = 1
local SNAKE_WOBBLINESS = 50








-- secript
local Character = game:GetService("Players").LocalPlayer.Character
local Root: BasePart = Character:WaitForChild("HumanoidRootPart")

local PpAttachment = Instance.new("Attachment")
PpAttachment.Name = "PpAttachment"
PpAttachment.Position = Vector3.new(0, -1, -0.5)
PpAttachment.Orientation = Vector3.new(0, 90, 0)
PpAttachment.Parent = Root

local PpHolder = Instance.new("Folder")
PpHolder.Name = "PpHolder"
PpHolder.Parent = workspace

local function MakeSnake(Length: number, Size: number, Wobbliness: number)
	PpHolder:ClearAllChildren()

	local LastSection
	local Sections = {}
	
	local PpRoot = Instance.new("Part")
	PpRoot.Transparency = 1
	PpRoot.CanCollide = false
	PpRoot.CanQuery = false
	PpRoot.CanTouch = false
	PpRoot.Massless = true
	PpRoot.Name = "NewPPRoot"
	PpRoot.Parent = PpHolder
	
	local NewPpAttachment = Instance.new("Attachment")
	NewPpAttachment.Parent = PpRoot
	
	local AlignPp = Instance.new("AlignPosition")
	AlignPp.RigidityEnabled = true
	AlignPp.Attachment0 = NewPpAttachment
	AlignPp.Attachment1 = PpAttachment
	AlignPp.Parent = PpRoot
	
	local AlignPpRotation = Instance.new("AlignOrientation")
	AlignPpRotation.RigidityEnabled = true
	AlignPpRotation.Attachment0 = NewPpAttachment
	AlignPpRotation.Attachment1 = PpAttachment
	AlignPpRotation.Parent = PpRoot
	
	local MinimumIndex = math.ceil(1 / Size) * 1
	
	for i = 1, Length do
		local PpSection = Instance.new("Part")
		PpSection.Shape = Enum.PartType.Cylinder
		PpSection.CanCollide = i > MinimumIndex
		PpSection.Massless = true
		PpSection.Material = Enum.Material.SmoothPlastic
		PpSection.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001)
		PpSection.Position = Root.Position
		PpSection.Size = Vector3.one * Size

		local BackAttachment = Instance.new("Attachment")
		BackAttachment.Position = Vector3.new(-Size / 2, 0, 0)
		BackAttachment.Parent = PpSection

		local FrontAttachment = Instance.new("Attachment")
		FrontAttachment.Position = Vector3.new(Size / 2, 0, 0)
		FrontAttachment.Name = "Important"
		FrontAttachment.Parent = PpSection

		local BallsConstraint = Instance.new("BallSocketConstraint")
		BallsConstraint.Attachment0 = LastSection and LastSection:FindFirstChild("Important") or NewPpAttachment
		BallsConstraint.Attachment1 = BackAttachment
		BallsConstraint.Parent = PpSection

		local AlignOrientation = Instance.new("AlignOrientation")
		AlignOrientation.Responsiveness = Wobbliness or 10
		AlignOrientation.Attachment0 = BackAttachment
		AlignOrientation.Attachment1 = LastSection and LastSection:FindFirstChild("Important") or NewPpAttachment
		AlignOrientation.Parent = PpSection

		local AlignPosition = Instance.new("AlignPosition")
		AlignPosition.Responsiveness = 10
		AlignPosition.Attachment0 = BackAttachment
		AlignPosition.Attachment1 = LastSection and LastSection:FindFirstChild("Important") or PpAttachment
		AlignPosition.Parent = PpSection

		PpSection.Parent = PpHolder
		LastSection = PpSection

		table.insert(Sections, PpSection)
	end

	for _, Section in pairs(Sections) do
		for _, OtherSection in pairs(Sections) do
			if Section == OtherSection then continue end

			local Constraint = Instance.new("NoCollisionConstraint")
			Constraint.Part0 = Section
			Constraint.Part1 = OtherSection
			Constraint.Parent = Section
		end
	end
end

MakeSnake(SNAKE_LENGTH, SNAKE_SIZE, SNAKE_WOBBLINESS)

end
})
Tab:AddButton({
	Name = "小地图",
	Callback = function()

-- settings
local MINIMAP_SIZE = 0.12
local MINIMAP_SCALE = 500
local MINIMAP_PADDING = 12

local ELEMENT_BORDER = 1
























-- script
local RunService = game:GetService("RunService")
local Player = game:GetService("Players").LocalPlayer
local CurrentRooms = workspace:WaitForChild("CurrentRooms")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Minimap"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
ScreenGui.Parent = Player.PlayerGui

local MinimapFrame = Instance.new("Frame")
MinimapFrame.Size = UDim2.fromScale(MINIMAP_SIZE, MINIMAP_SIZE)
MinimapFrame.SizeConstraint = Enum.SizeConstraint.RelativeXX
MinimapFrame.AnchorPoint = Vector2.new(0, 1)
MinimapFrame.Position = UDim2.new(0, MINIMAP_PADDING, 1, -MINIMAP_PADDING)
MinimapFrame.BackgroundColor3 = Color3.new()
MinimapFrame.ClipsDescendants = true
MinimapFrame.ZIndex = -1
MinimapFrame.Parent = ScreenGui

local ElementHolder = Instance.new("Frame")
ElementHolder.BackgroundTransparency = 1
ElementHolder.Size = UDim2.fromScale(1, 1)
ElementHolder.Position = UDim2.fromScale(0.5, 0.5)
ElementHolder.AnchorPoint = Vector2.new(0.5, 0.5)
ElementHolder.ZIndex = 0
ElementHolder.Parent = MinimapFrame

local Arrow = Instance.new("ImageLabel")
Arrow.Size = UDim2.fromScale(0.07, 0.09)
Arrow.Position = UDim2.fromScale(0.5, 0.5)
Arrow.AnchorPoint = Vector2.new(0.5, 0.5)
Arrow.BackgroundTransparency = 1
Arrow.Image = "rbxassetid://13069495837"
Arrow.ZIndex = 12345
Arrow.Parent = MinimapFrame

local function AddPartToMap(Part: BasePart, Color: Color3, ZIndex: number, SizeOverride: UDim2?)
	local Frame = Instance.new("Frame")
	Frame.Size = SizeOverride or UDim2.new(Part.Size.X / MINIMAP_SCALE, -ELEMENT_BORDER * 2, Part.Size.Z / MINIMAP_SCALE, -ELEMENT_BORDER * 2)
	Frame.Position = UDim2.fromScale(Part.Position.X / MINIMAP_SCALE + 0.5, Part.Position.Z / MINIMAP_SCALE + 0.5)
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.new()
	Frame.BorderColor3 = Color
	Frame.BorderSizePixel = ELEMENT_BORDER
	Frame.ZIndex = ZIndex + 2
	Frame.Rotation = Part.Rotation.Y
	Frame.Parent = ElementHolder
end

local function AddRoomToMap(Room: Model)
	for _, Part in pairs(Room:GetChildren()) do
		if not Part:IsA("BasePart") then continue end
		
		if Part.CollisionGroup == "BaseCheck" then
			AddPartToMap(Part, Color3.new(0, 0.85, 0), 0)
		elseif Part == Room.PrimaryPart then
			AddPartToMap(Part, Color3.new(0.85, 0, 0), 1, UDim2.fromScale(8 / MINIMAP_SCALE, 8 / MINIMAP_SCALE))
		end
	end
end

for _, Room in pairs(CurrentRooms:GetChildren()) do
	AddRoomToMap(Room)
end

CurrentRooms.ChildAdded:Connect(function(NewRoom)
	repeat
		task.wait()
	until NewRoom:FindFirstChild("RoomEntrance") and NewRoom:FindFirstChild(NewRoom.Name)
	
	AddRoomToMap(NewRoom)
end)

RunService.RenderStepped:Connect(function()
	local Character = Player.Character; if not Character then return end
	local Root = Character:FindFirstChild("Collision"); if not Root then return end
	local LookVector = workspace.CurrentCamera.CFrame.LookVector
	local Rotation = math.atan2(LookVector.X, LookVector.Z)
	
	ElementHolder.Position = UDim2.fromScale(0.5 - Root.Position.X / MINIMAP_SCALE, 0.5 - Root.Position.Z / MINIMAP_SCALE)
	Arrow.Rotation = -math.deg(Rotation) + 180
end)

end
})
Tab:AddButton({
	Name = "seek枪",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/main/seekgun.lua"))()

end
})
Tab:AddButton({
	Name = "中文DOORS最强脚本",
	Callback = function()

loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()

end
})
Tab:AddButton({
	Name = "紫色手电",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/munciseek/Other-script/main/Purple-flashlight"))()

end
})
Tab:AddButton({
	Name = "引导蜡烛",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/munciseek/Other-script/main/Guiding-Candle"))()

end
})


local Tab = Window:MakeTab({
        Name = "监狱人生",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "脚本",
        Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/devguy100/PrizzLife/main/Source/release_v0.8.1.lua'))()
          end
})


local Tab = Window:MakeTab({
        Name = "越狱",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "脚本",
        Callback = function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/57c3827dc1393b8fcae8ef3e6cb84297.lua"))()
          end
})


local Tab = Window:MakeTab({
        Name = "造船寻宝",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "脚本",
        Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealAsu/BABFT/refs/heads/main/Source.lua'))()
          end
})


local Tab = Window:MakeTab({
        Name = "危险运输",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "脚本",
        Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/railme37509124/weqwdsadasdsa/refs/heads/main/justgetituploadedalreadyihateriskyhaul.lua"))()
          end
})


local Tab = Window:MakeTab({
        Name = "宠物故事",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "脚本",
        Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/wYAxD7n9'))()
          end
})


local Tab = Window:MakeTab({
        Name = "谋杀之谜",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "脚本",
        Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FOGOTY/foggy-loader/refs/heads/main/loader"))()
          end
})


local Tab = Window:MakeTab({
        Name = "炸弹模拟器",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "脚本",
        Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Vexrya/Script/refs/heads/main/Games/BSX.lua"))()
          end
})


local Tab = Window:MakeTab({
        Name = "篮球传奇",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "脚本",
        Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vnausea/absence-mini/refs/heads/main/absencemini.lua"))()
          end
})


local Tab = Window:MakeTab({
        Name = "冰刃球",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "脚本",
        Callback = function()
        loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/冰刃球.lua", true))()
          end
})


local Tab = Window:MakeTab({
        Name = "能量模拟器",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "自动收集",
        Callback = function()
        loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/p.lua", true))()
          end
})


local Tab = Window:MakeTab({
        Name = "健身房之星模拟器",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "脚本",
        Callback = function()
        loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/v.lua", true))()
          end
})


local Tab = Window:MakeTab({
        Name = "磁铁模拟器",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "自动收集硬币",
        Callback = function()
        loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/b.lua", true))()
          end
})


local Tab = Window:MakeTab({
  Name = "聊天",
  Icon = "rbxassetid://11109742737",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "聊天间谍[可偷看别人私聊]",
	Callback = function()

--[[
	Simple Chat Spy
	Type "spy" to enable or disable the chat spy.
	Only tested if this works executed with Synapse (should work with other exploits though)
--]]

print("-- Chat Spy Executed --")
print("Type \"spy\" to enable or disable the chat spy.")
print("Only tested if this works executed with Synapse (should work with other exploits though)")
print("https://github.com/dehoisted/Chat-Spy")

-- Config
Config = {
	enabled = true,
	spyOnMyself = true,
	public = false,
	publicItalics = true
}

-- Customizing Log Output
PrivateProperties = {
	Color = Color3.fromRGB(0,255,255); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}

	local StarterGui = game:GetService("StarterGui")
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
	local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
	local instance = (_G.chatSpyInstance or 0) + 1
	_G.chatSpyInstance = instance

	local function onChatted(p,msg)
		if _G.chatSpyInstance == instance then
			if p==player and msg:lower():sub(1,4)=="/spy" then
				Config.enabled = not Config.enabled
				wait(0.3)
				PrivateProperties.Text = "{SPY "..(Config.enabled and "EN" or "DIS").."ABLED}"
				StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
			elseif Config.enabled and (Config.spyOnMyself==true or p~=player) then
				msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
				local hidden = true
				local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
					if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and Config.public==false and Players[packet.FromSpeaker].Team==player.Team)) then
						hidden = false
					end
				end)
				wait(1)
				conn:Disconnect()
				if hidden and Config.enabled then
					if Config.public then
						saymsg:FireServer((Config.publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
					else
						PrivateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
						StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
					end
				end
			end
		end
	end
	
	for _,p in ipairs(Players:GetPlayers()) do
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end

	Players.PlayerAdded:Connect(function(p)
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end)

	PrivateProperties.Text = "{SPY "..(Config.enabled and "EN" or "DIS").."ABLED}"
	StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
	local chatFrame = player.PlayerGui.Chat.Frame
	chatFrame.ChatChannelParentFrame.Visible = true
	chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)

end
})


local Tab = Window:MakeTab({
        Name = "力量传奇",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "脚本",
        Callback = function()
        loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/ggg.lua", true))()
          end
})

Tab:AddButton({
        Name = "工具包",
        Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()        
          end
})
Tab:AddButton({
        Name = "防止掉线（反挂机）",
        Callback = function()
        print("Anti Afk On")
                local vu = game:GetService("VirtualUser")
                game:GetService("Players").LocalPlayer.Idled:connect(function()
                   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                   wait(1)
                   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                end)
          end
})


local Tab = Window:MakeTab({
        Name = "doors",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})
Tab:AddButton({
        Name = "脚本",
 Callback = function()
 loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/Doors.lua", true))()
  end
})

Tab:AddButton({
        Name = "工具包",
        Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()        
          end
})
Tab:AddButton({
        Name = "防止掉线（反挂机）",
        Callback = function()
        print("Anti Afk On")
                local vu = game:GetService("VirtualUser")
                game:GetService("Players").LocalPlayer.Idled:connect(function()
                   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                   wait(1)
                   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                end)
          end
})


local Tab = Window:MakeTab({
        Name = "忍者传奇",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "脚本",
 Callback = function()
 loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/ooo.lua", true))()
  end
})

Tab:AddButton({
        Name = "工具包",
        Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()        
          end
})
Tab:AddButton({
        Name = "防止掉线（反挂机）",
        Callback = function()
        print("Anti Afk On")
                local vu = game:GetService("VirtualUser")
                game:GetService("Players").LocalPlayer.Idled:connect(function()
                   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                   wait(1)
                   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                end)
          end
})


local Tab = Window:MakeTab({
        Name = "俄亥俄洲",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})
Tab:AddButton({
        Name = "脚本",
 Callback = function()
loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/qwa.lua", true))()
  end
})


Tab:AddButton({
        Name = "工具包",
        Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()        
          end
})
Tab:AddButton({
        Name = "防止掉线（反挂机）",
        Callback = function()
        print("Anti Afk On")
                local vu = game:GetService("VirtualUser")
                game:GetService("Players").LocalPlayer.Idled:connect(function()
                   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                   wait(1)
                   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                end)
          end
})


local Tab = Window:MakeTab({
        Name = "自然灾害",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "自然灾害控制物体",
        Callback = function()
        loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/自然灾害.lua", true))()
          end
})


Tab:AddButton({
        Name = "工具包",
        Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()        
          end
})
Tab:AddButton({
        Name = "防止掉线（反挂机）",
        Callback = function()
        print("Anti Afk On")
                local vu = game:GetService("VirtualUser")
                game:GetService("Players").LocalPlayer.Idled:connect(function()
                   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                   wait(1)
                   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                end)
          end
})


local Tab = Window:MakeTab({
        Name = "极速传奇",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddButton({
        Name = "开启卡宠",
        Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/uR6azdQQ"))()
        end
})


Tab:AddButton({
        Name = "自动重生和自动刷等级",
        Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/T9wTL150"))()        
          end    
})

local Section = Tab:AddSection({
        Name = "传送岛屿"
})

Tab:AddButton({
        Name = "返还出生岛",
        Callback = function()
        XA.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828125, 58.87917709350586, 3099.033935546875)      
          end    
})

Tab:AddButton({
        Name = "白雪城",
        Callback = function()
        XA.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.138671875, 58.87917709350586, 3782.69384765625)   
          end    
})

Tab:AddButton({
        Name = "熔岩城",
        Callback = function()
        XA.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.96875, 216.83917236328125, 4898.62841796875)       
          end    
})

Tab:AddButton({
        Name = "传奇公路",
        Callback = function()
    XA.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.87109375, 216.83917236328125, 5907.6279296875)    
          end    
})


local Tab = Window:MakeTab({
        Name = "鲨口求生2",
        Icon = "rbxassetid://6087485864",
        PremiumOnly = false
})

Tab:AddDropdown({
        Name = "免费船只",
        Default = "1",
        Options = {"DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat", "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat", "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat", "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat", "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat", "MilitarySubmarine",  "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile", "CruiseShip"},
        Callback = function(Value)
local ohString1 = (Value)

game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(ohString1)
        end    
})

Tab:AddButton({
        Name = "自动杀鲨鱼🦈",
        Callback = function()
     local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "彩云脚本测试版",
    Text = "（自动已开启）",
    Duration = 3, 
})
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
          end    
})


local Tab2 = Window:MakeTab({
        Name = "工具",
        Icon = "rbxassetid://12308581351",
        PremiumOnly = false
})

Tab2:AddButton({
        Name = "工具包",
        Callback = function()
     loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
          end    
})

Tab2:AddButton({
        Name = "点击传送",
        Callback = function()
     mouse = XA:GetMouse()
                tool = Instance.new("Tool")
                tool.RequiresHandle = false
                tool.Name = "点击传送"
                tool.Activated:connect(function()
                local pos = mouse.Hit+Vector3.new(0,2.5,0)
                pos = CFrame.new(pos.X,pos.Y,pos.Z)
                XA.Character.HumanoidRootPart.CFrame = pos
                end)
                tool.Parent = XA.Backpack
          end    
})

Tab2:AddButton({
        Name = "工具脚本",
        Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()
          end    
})

local LL = Window:MakeTab({
        Name = "娱乐",
        Icon = "rbxassetid://6031086173",
        PremiumOnly = false
})

LL:AddButton({
        Name = "流畅画质（极速版）",
        Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/8QZGBLW8"))()
          end    
})

LL:AddButton({
        Name = "超高清画质",
        Callback = function()
     -- Roblox Graphics Enhancher
local light = game.Lighting
for i, v in pairs(light:GetChildren()) do
        v:Destroy()
end

local ter = workspace.Terrain
local color = Instance.new("ColorCorrectionEffect")
local bloom = Instance.new("BloomEffect")
local sun = Instance.new("SunRaysEffect")
local blur = Instance.new("BlurEffect")

color.Parent = light
bloom.Parent = light
sun.Parent = light
blur.Parent = light

-- enable or disable shit

local config = {

        Terrain = true;
        ColorCorrection = true;
        Sun = true;
        Lighting = true;
        BloomEffect = true;

}

-- settings {

color.Enabled = false
color.Contrast = 0.15
color.Brightness = 0.1
color.Saturation = 0.25
color.TintColor = Color3.fromRGB(255, 222, 211)

bloom.Enabled = false
bloom.Intensity = 0.1

sun.Enabled = false
sun.Intensity = 0.2
sun.Spread = 1

bloom.Enabled = false
bloom.Intensity = 0.05
bloom.Size = 32
bloom.Threshold = 1

blur.Enabled = false
blur.Size = 6

-- settings }


if config.ColorCorrection then
        color.Enabled = true
end


if config.Sun then
        sun.Enabled = true
end


if config.Terrain then
        -- settings {
        ter.WaterWaveSize = 0.1
        ter.WaterWaveSpeed = 22
        ter.WaterTransparency = 0.9
        ter.WaterReflectance = 0.05
        -- settings }
end
if config.Lighting then
        -- settings {
        light.Ambient = Color3.fromRGB(0, 0, 0)
        light.Brightness = 4
        light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
        light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
        light.ExposureCompensation = 0
        light.FogColor = Color3.fromRGB(132, 132, 132)
        light.GlobalShadows = true
        light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
        light.Outlines = false
        -- settings }
end
local a = game.Lighting
a.Ambient = Color3.fromRGB(33, 33, 33)
a.Brightness = 5.69
a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
a.EnvironmentDiffuseScale = 0.105
a.EnvironmentSpecularScale = 0.522
a.GlobalShadows = true
a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
a.ShadowSoftness = 0.18
a.GeographicLatitude = -15.525
a.ExposureCompensation = 0.75
b.Enabled = true
b.Intensity = 0.99
b.Size = 9999 
b.Threshold = 0
local c = Instance.new("ColorCorrectionEffect", a)
c.Brightness = 0.015
c.Contrast = 0.25
c.Enabled = true
c.Saturation = 0.2
c.TintColor = Color3.fromRGB(217, 145, 57)
if getgenv().mode == "Summer" then
   c.TintColor = Color3.fromRGB(255, 220, 148)
elseif getgenv().mode == "Autumn" then
   c.TintColor = Color3.fromRGB(217, 145, 57)
else
   warn("没有选择模式！")
   print("请选择一种模式")
   b:Destroy()
   c:Destroy()
end
local d = Instance.new("DepthOfFieldEffect", a)
d.Enabled = true
d.FarIntensity = 0.077
d.FocusDistance = 21.54
d.InFocusRadius = 20.77
d.NearIntensity = 0.277
local e = Instance.new("ColorCorrectionEffect", a)
e.Brightness = 0
e.Contrast = -0.07
e.Saturation = 0
e.Enabled = true
e.TintColor = Color3.fromRGB(255, 247, 239)
local e2 = Instance.new("ColorCorrectionEffect", a)
e2.Brightness = 0.2
e2.Contrast = 0.45
e2.Saturation = -0.1
e2.Enabled = true
e2.TintColor = Color3.fromRGB(255, 255, 255)
local s = Instance.new("SunRaysEffect", a)
s.Enabled = true
s.Intensity = 0.01
s.Spread = 0.146

print("RTX图形加载完毕！创造制作BrickoIcko")
          end    
})

LL:AddButton({
        Name = "死亡",
        Callback = function()
     XA.Character.Humanoid.Health = 0
          end    
})

LL:AddButton({
        Name = "反挂机（20分钟防踢出）",
        Callback = function()
     wait(0.5)
    local bb=game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    end)

    print("Antiafk enabled")
          end    
})

LL:AddButton({
        Name = "刷新字符",
        Callback = function()
                      repeat chlplr.Health = 0 task.wait() until chlplr.Health ~= 0
          end    
})

LL:AddButton({
        Name = "重置字符",
        Callback = function()
                      loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/AnAvaragelilmemer/scripts/main/refresh%20character"))()
          end    
})

LL:AddButton({
        Name = "Rejoin",
        Callback = function()
                      game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService('Players').LocalPlayer)
          end    
})

LL:AddButton({
        Name = "保存游戏",
        Callback = function()
                      saveinstance()
          end    
})

LL:AddButton({
        Name = "离开游戏",
        Callback = function()
                      game:Shutdown()
          end    
})

LL:AddButton({
        Name = "开启1-999FPS",
        Callback = function()
                      setfpscap(999)
          end    
})

LL:AddButton({
        Name = "键盘脚本",
        Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
          end    
})
local guis = Window:MakeTab({
        Name = "脚本大全",
        Icon = "rbxassetid://6031086173",
        PremiumOnly = false
})

local Section = guis:AddSection({
        Name = "通用"
})

guis:AddButton({
        Name = "力量传奇",
        Callback = function()
                      loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/yyy.lua", true))()
          end    
})

guis:AddButton({
        Name = "Dex v4",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/AnAvaragelilmemer/main/dexv4"))()
          end    
})

guis:AddButton({
    Name = "了不起的探险家",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/awesome-explorer/main/source.lua"))()
          end    
})

guis:AddButton({
        Name = "Cmd X",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
          end    
})

guis:AddButton({
        Name = "无限产量",
        Callback = function()
                      loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
          end    
})

guis:AddButton({
        Name = "简单间谍",
        Callback = function()
                      loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
          end    
})

guis:AddButton({
        Name = "海龟间谍",
        Callback = function()
                      loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
          end    
})

guis:AddButton({
        Name = "Domain x",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/fortnitemodder/DomainX/main/Source", true))()
          end    
})

guis:AddButton({
        Name = "Orca",
        Callback = function()
                      loadstring(
  game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua")
)()
          end    
})

guis:AddButton({
        Name = "Hitbox expander",
        Callback = function()

                      loadstring(game:HttpGet("https://raw.githubusercontent.com/roburox/s1mple/main/scripts/hitboxexpand"))()
          end    
})

local Section = guis:AddSection({
        Name = "动画中心"
})

guis:AddButton({
        Name = "通用FE中心",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script"))()
          end    
})

guis:AddButton({
        Name = "简单性 v2",
        Callback = function()
                      loadstring(game:HttpGet('https://raw.githubusercontent.com/HeyGyt/simplityv2/main/main',true))()
          end    
})

guis:AddButton({
        Name = "Pendulum hub v5",
        Callback = function()
                      loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
          end    
})

local Section = guis:AddSection({
        Name = "脚本中心"
})

guis:AddButton({
        Name = "Vhub",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/Quan8008/V-Hub/Master/Launch-Screen.lua"))();
          end    
})

guis:AddButton({
        Name = "EZ hub",
        Callback = function()
                      loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
          end    
})

guis:AddButton({
        Name = "unfair hub",
        Callback = function()
                      loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
    end
})

guis:AddButton({
        Name = "VG hub（支持100个服务器）",
        Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()

          end    
})

local Section = guis:AddSection({
        Name = "bf"
})

guis:AddButton({
        Name = "Ripper hub",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/hajibeza/RIPPER-HUB/main/Bloxfruit"))()
          end    
})

guis:AddButton({
        Name = "Hoho hub",
        Callback = function()
                      loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
          end    
})

guis:AddButton({
        Name = "Table hub",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/AltsegoD/scripts/egoD/tablekhoc.lua"))()
          end    
})

guis:AddButton({
        Name = "Mukuro hub",
        Callback = function()
                      loadstring(game:HttpGet('https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua'))()
          end    
})

guis:AddButton({
        Name = "Mango hub",
        Callback = function()
                      loadstring(game:HttpGet('https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta'))()
          end    
})

guis:AddButton({
        Name = "PlaybackX Hub",
        Callback = function()
                      loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt'))()
          end    
})

guis:AddButton({
        Name = "2x Hub",
        Callback = function()
                      loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/2XHUB-UPDBIG/main/README.md'))()
          end    
})

local Section = guis:AddSection({
        Name = "Bedwars"
})

guis:AddButton({
        Name = "Vape V4",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
          end    
})

local Section = guis:AddSection({
        Name = "监狱"
})

guis:AddButton({
        Name = "Septex",
        Callback = function()
                      loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
          end    
})


local Section = guis:AddSection({
        Name = "Doors"
})

guis:AddButton({
        Name = "Vynixisu - doors",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
          end    
})

guis:AddButton({
        Name = "plamen6789rock's doors enti spawner gui",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/plamen6789/DoorsEntitySummonerGUI/main/EntityGUI"))()
          end    
})

guis:AddButton({
        Name = "Doors v4",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/main.lua"))()
          end    
})

guis:AddButton({
        Name = "Doors GUI v1.2",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/AnAvaragelilmemer/main/doorsspeedrun"))()
          end    
})

local Section = guis:AddSection({
        Name = "Aimbot/透视/slientaim脚本"
})

guis:AddButton({
        Name = "Universal Slient Aim",
        Callback = function()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))()
          end    
})

guis:AddButton({
        Name = "Parvus hub",
        Callback = function()
                      loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/AlexR32/Parvus/main/Loader.lua"))()
          end    
})

guis:AddButton({
        Name = "Vision hub",
        Callback = function()
                      loadstring(game:HttpGetAsync('https://visionhub.dev/loader.lua'))()
          end    
})

guis:AddButton({
        Name = "Unnamed esp",
        Callback = function()
                      pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))() end)
          end    
})
 OrionLib:Init()

 --[[
  local Section = Tab:AddSection({ 
 Name = "部分" 
 }) 
  
 Tab:AddButton({ 
 Name = "点击", 
 Callback = function() 
           print("button pressed") 
   end     
 }) 
  
 Tab:AddToggle({ 
 Name = "开关", 
 Default = false, 
 Callback = function(Value) 
     print(Value) 
 end     
 }) 
  
 Tab:AddColorpicker({ 
 Name = "颜色选择器", 
 Default = Color3.fromRGB(255, 0, 0), 
 Callback = function(Value) 
     print(Value) 
 end           
 }) 
  
 Tab:AddSlider({ 
 Name = "滑块", 
 Min = 0, 
 Max = 20, 
 Default = 5, 
 Color = Color3.fromRGB(255,255,255), 
 Increment = 1, 
 ValueName = "bananas", 
 Callback = function(Value) 
     print(Value) 
 end     
 }) 
 
  
 Tab:AddLabel("标签") 
  
 Tab:AddParagraph("段落","LOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOL") 
  
 Tab:AddTextbox({ 
 Name = "文本框", 
 Default = "默认框输入", 
 TextDisappear = true, 
 Callback = function(Value) 
     print(Value) 
 end           
 }) 
  
 Tab:AddBind({ 
 Name = "约束", 
 Default = Enum.KeyCode.E, 
 Hold = false, 
 Callback = function() 
     print("press") 
 end     
 }) 
  
 Tab:AddDropdown({ 
 Name = "下拉式", 
 Default = "1", 
 Options = {"1", "2"}, 
 Callback = function(Value) 
     print(Value) 
 end     
 }) 
]]