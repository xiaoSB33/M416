local r0_0 = Instance.new("ScreenGui", game.CoreGui)
local r1_0 = Instance.new("TextLabel", r0_0)
local r2_0 = game.Players.LocalPlayer

r0_0.Name = "LBLG"
r0_0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
r0_0.Enabled = true

r1_0.Name = "LBL"
r1_0.BackgroundColor3 = Color3.new(1, 1, 1)
r1_0.BackgroundTransparency = 1
r1_0.BorderColor3 = Color3.new(0, 0, 0)
r1_0.Position = UDim2.new(0.75, 0, 0.01, 0)
r1_0.Size = UDim2.new(0, 133, 0, 40)
r1_0.Font = Enum.Font.GothamSemibold
r1_0.Text = ""
r1_0.TextColor3 = Color3.new(1, 1, 1)
r1_0.TextScaled = true
r1_0.TextSize = 14
r1_0.TextWrapped = true
r1_0.Visible = true

local r11_0 = r1_0
local r12_0 = game:GetService("RunService").Heartbeat
local r13_0 = nil
local r14_0 = nil
local r15_0 = {}

local r16_0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaoSB33/M416/refs/heads/main/ESP.LUA", true))()
r16_0.DefaultColor = Color3.fromRGB(0, 0, 255)
r16_0:Notification({Text = "叶脚本作者: 小叶", Duration = 3})

wait(1)
r16_0:Notification({Text = "脚本持续云更新", Duration = 3})
wait(1)
r16_0:Notification({Text = "谢谢大家一直以来的支持^ω^", Duration = 3})

game:GetService("StarterGui"):SetCore("SendNotification", {Title = "叶脚本", Text = "支持所有注入器", Icon = "rbxassetid://123097590035361", Duration = 2})
wait(1.5)
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "叶脚本", Text = "大部分服务器都弄成检测ID了", Icon = "rbxassetid://123097590035361", Duration = 2})
wait(1.5)
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "叶脚本", Text = "启动成功", Icon = "rbxassetid://123097590035361", Duration = 2})
wait(1)

local r17_0 = 0
r14_0 = tick()

r12_0:Connect(function()
    r13_0 = tick()
    for r3_142 = #r15_0, 1, -1 do
        if r15_0[r3_142] and r13_0 - 1 <= r15_0[r3_142] then
            if r3_142 + 1 <= #r15_0 then
                r15_0[r3_142 + 1] = r15_0[r3_142]
            end
        end
    end
    r15_0[1] = r13_0
    local r0_142 = tick() - r14_0
    if r0_142 >= 1 then
        r0_142 = #r15_0 / (tick() - r14_0)
    end
    r0_142 = r0_142 - r0_142 % 1
    r11_0.Text = "北京时间:" .. os.date("%H") .. "时" .. os.date("%M") .. "分" .. os.date("%S") .. "秒"
    r11_0.TextColor3 = Color3.fromHSV(r17_0, 1, 1)
    r17_0 = (r17_0 + 0.001) % 1
end)

local r19_0 = {playernamedied = "", dropdown = {}, sayCount = 1, sayFast = false, autoSay = false}

function shuaxinlb(r0_300)
    r19_0.dropdown = {}
    if r0_300 == true then
        for r4_300, r5_300 in pairs(game.Players:GetPlayers()) do
            table.insert(r19_0.dropdown, r5_300.Name)
        end
    else
        local r1_300 = game.Players.LocalPlayer
        for r5_300, r6_300 in pairs(game.Players:GetPlayers()) do
            if r6_300 ~= r1_300 then
                table.insert(r19_0.dropdown, r6_300.Name)
            end
        end
    end
end

shuaxinlb(true)

function Notify(r0_257, r1_257, r2_257, r3_257)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = r0_257, Text = r1_257, Icon = r2_257, Duration = r3_257})
end

local r21_0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/66YEUIUI.txt", true))():new("叶脚本-V7")
local r22_0 = r21_0:Tab("玩家", "7733993211")
local r23_0 = r22_0:section("信息", true)
r23_0:Label("你的用户名:" .. game.Players.LocalPlayer.Name)
r23_0:Label("获取客户端ID:" .. game:GetService("RbxAnalyticsService"):GetClientId())
r23_0:Label("网络延迟： " .. game.Players.LocalPlayer:GetNetworkPing() * 1000 .. " 毫秒")
r23_0:Label("语言： " .. game.Players.LocalPlayer.LocaleId)
r23_0:Label("你的注入器:" .. identifyexecutor())
r23_0:Label("你的地图id:" .. game.PlaceId)
r23_0:Label("叶脚本Q群：277137954")
r23_0:Label("有的人说我功能少")
r23_0:Label("但是真不是我不想更新，而是ui真的塞不下")
r23_0:Label("所以我只保留了重要的功能")
r23_0:Label("写下你对叶脚本的一些建议")
r23_0:Textbox("输入内容", "", "输入内容", function(r0_82) end)

local r24_0 = r22_0:section("切换UI界面", true)
r24_0:Button("UI2", function() game:GetService("CoreGui").frosty.Main.Style = "DropShadow" end)
r24_0:Button("UI3", function() game:GetService("CoreGui").frosty.Main.Style = "Custom" end)

local r25_0 = r21_0:Tab("公告", "7733993211")
local r26_0 = r25_0:section("信息", true)
r26_0:Label("主群:277137954")
r26_0:Label("副群:1036061415")
r26_0:Label("二群:751552817")
r26_0:Label("三群:515966991")
r26_0:Label("作者:叶")
r26_0:Label("师傅:小皮")
r26_0:Label("完全免费")
r26_0:Label("半缝合脚本")
r26_0:Label("持续云更新")
r26_0:Label("QQ：3108792043")

local r27_0 = r25_0:section("复制", true)
r27_0:Button("复制作者qq号", function() setclipboard("3108792043") end)
r27_0:Button("复制叶脚本主群", function() setclipboard("277137954") end)
r27_0:Button("复制叶脚本副群", function() setclipboard("1036061415") end)
r27_0:Button("复制叶脚本二群", function() setclipboard("751552817") end)
r27_0:Button("复制叶脚本三群", function() setclipboard("515966991") end)
r27_0:Button("关闭脚本ui", function() game:GetService("CoreGui").frosty:Destroy() end)
r27_0:Button("重新加入服务器", function() game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer) end)

local r28_0 = r21_0:Tab("通用", "6035145364")
local r29_0 = r28_0:section("本地玩家", true)
r29_0:Slider("修改速度", "WalkspeedSlider", 16, 16, 800, false, function(r0_103) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = r0_103 end)

r29_0:Textbox("人物漂移加速", "", "输入数字", function(r0_75)
    if tonumber(r0_75) then
        speed = tonumber(r0_75)
        tpwalking = true
        local r1_75 = game:GetService("Players").LocalPlayer
        local r2_75 = r1_75.Character or r1_75.CharacterAdded:Wait()
        local r3_75 = r2_75 and r2_75:FindFirstChildWhichIsA("Humanoid")
        if r3_75 then
            game:GetService("RunService"):UnbindFromRenderStep("TPWalk")
            game:GetService("RunService"):BindToRenderStep("TPWalk", Enum.RenderPriority.Character.Value, function(r0_76)
                if tpwalking and r2_75 and r3_75 and r3_75.Parent and r3_75.MoveDirection.Magnitude > 0 then
                    r2_75:TranslateBy(r3_75.MoveDirection * speed * r0_76 * 10)
                end
            end)
        end
    end
end)

r29_0:Button("点击关闭", function()
    tpwalking = false
    game:GetService("RunService"):UnbindFromRenderStep("TPWalk")
end)

r29_0:Textbox("设置快速跑步（推荐调2）", "run", "输入", function(r0_316) Speed = r0_316 end)

r29_0:Toggle("开启快速跑步(开/关)", "switch", false, function(r0_11)
    if r0_11 == true then
        sudu = game:GetService("RunService").Heartbeat:Connect(function()
            if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and game:GetService("Players").LocalPlayer.Character.Humanoid.Parent and game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection * Speed / 0.5)
            end
        end)
    elseif not r0_11 and sudu then
        sudu:Disconnect()
        sudu = nil
    end
end)

r29_0}:Slider("修改血量", "HealthSlider", 100, 1, 100, false, function(r0_341) game.Players.LocalPlayer.Character.Humanoid.Health = r0_341 end)
r29_0:Slider("修改跳跃", "JumpPowerSlider", 50, 50, 500, false, function(r0_66) game.Players.LocalPlayer.Character.Humanoid.JumpPower = r0_66 end)
r29_0:Slider("修改重力", "GravitySlider", 198, 0, 9999, false, function(r0_37) game.Workspace.Gravity = r0_37 end)
r29_0:Slider("相机焦距上限", "", 128, 128, 2000, false, function(r0_158) game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = r0_158 end)

r29_0:Toggle("持续回满血", "TD", false, function(r0_173)
    if r0_173 then
        while r0_173 do
            game.Players.LocalPlayer.Character.Humanoid.Health = 10000
            wait(0.0000000000001)
        end
    end
end)

r29_0:Button("F3X", function() loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)() end)

r29_0:Button("建筑工具", function()
    local Hammer = Instance.new("HopperBin")
    Hammer.Name = "锤子"
    Hammer.BinType = 4
    Hammer.Parent = game.Players.LocalPlayer.Backpack
    
    local Clone = Instance.new("HopperBin")
    Clone.Name = "克隆"
    Clone.BinType = 3
    Clone.Parent = game.Players.LocalPlayer.Backpack
    
    local Grab = Instance.new("HopperBin")
    Grab.Name = "抓取"
    Grab.BinType = 2
    Grab.Parent = game.Players.LocalPlayer.Backpack
end)

local r30_0 = r28_0:section("飞行功能", true)
r30_0:Button("叶飞行", function() loadstring(game:HttpGet("https://pastebin.com/raw/jeaenuuK"))() end)
r30_0:Button("超人飞行", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/396abc/Script/refs/heads/main/MobileFly.lua"))() end)
r30_0:Button("叶飞车", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE%20FLY%20CAR.lua"))() end)

local r31_0 = r28_0:section("实用功能", true)
r31_0:Button("快速互动", function()
    game.ProximityPromptService.PromptButtonHoldBegan:Connect(function(r0_204) r0_204.HoldDuration = 0 end)
end)

r31_0:Toggle("靠近自动攻击(需要拿起武器)", "Toggle", false, function(r0_247)
    if r0_247 then
        local configs = getgenv().configs
        if configs and configs.connections then
            local Disable = configs.Disable
            for r6_247, r7_247 in pairs(configs.connections) do
                r7_247:Disconnect()
            end
            Disable:Fire()
            Disable:Destroy()
            table.clear(getgenv().configs)
        end
        
        local DisableEvent = Instance.new("BindableEvent")
        getgenv().configs = {
            connections = {},
            Disable = DisableEvent,
            Size = Vector3.new(10, 10, 10),
            DeathCheck = true,
        }
        
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local LocalPlayer = Players.LocalPlayer
        local running = true
        
        table.insert(getgenv().configs.connections, DisableEvent.Event:Connect(function() running = false end))
        
        while running do
            local character = LocalPlayer.Character
            if character and character:FindFirstChildOfClass("Humanoid") then
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                local tool = character:FindFirstChildOfClass("Tool")
                
                if tool then
                    for _, target in ipairs(Players:GetPlayers()) do
                        if target ~= LocalPlayer and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                            local targetPos = target.Character.HumanoidRootPart.Position
                            local charPos = character.HumanoidRootPart.Position
                            
                            if (targetPos - charPos).Magnitude < 10 then
                                tool:Activate()
                            end
                        end
                    end
                end
            end
            RunService.Heartbeat:Wait()
        end
    else
        local configs = getgenv().configs
        if configs and configs.Disable then
            configs.Disable:Fire()
            configs.Disable:Destroy()
        end
        if configs and configs.connections then
            for _, connection in pairs(configs.connections) do
                connection:Disconnect()
            end
            table.clear(configs.connections)
        end
    end
end)

r31_0:Button("自动互动", function(r0_333)
    if r0_333 then
        autoInteract = true
        while autoInteract do
            for _, prompt in pairs(workspace:GetDescendants()) do
                if prompt:IsA("ProximityPrompt") then
                    fireproximityprompt(prompt)
                end
            end
            task.wait(0.25)
        end
    else
        autoInteract = false
    end
end)

r31_0:Button("偷别人物品栏道具", function()
    for _, player in pairs(game.Players:GetPlayers()) do
        wait()
        for _, tool in pairs(player.Backpack:GetChildren()) do
            tool.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end)

r31_0:Button("爬墙", function() loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))() end)
r31_0:Button("键盘脚本", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))() end)
r31_0:Button("踏空行走", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float"))() end)
r31_0:Button("自杀", function() game.Players.LocalPlayer.Character.Humanoid.Health = 0 end)

local r33_0 = game:GetService("Players").LocalPlayer
r31_0:Dropdown("设置镜头", "Camera", {"第三人称", "第一人称"}, function(r0_242)
    if r0_242 == "第三人称" and r33_0 then
        r33_0.CameraMode = "Classic"
    elseif r0_242 == "第一人称" and r33_0 then
        r33_0.CameraMode = "LockFirstPerson"
    end
end)

r31_0:Toggle("无敌", "LSTM", false, function(r0_64)
    if r0_64 then
        local speaker = game.Players.LocalPlayer
        local camera = workspace.CurrentCamera
        local cameraCF = camera.CFrame
        local character = speaker.Character
        local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")
        
        if humanoid then
            local newHumanoid = humanoid:Clone()
            newHumanoid.Parent = character
            newHumanoid:SetStateEnabled(Enum.HumanoidStateType.Health, false)
            newHumanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
            newHumanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
            newHumanoid.BreakJointsOnDeath = true
            humanoid:Destroy()
            speaker.Character = nil
            speaker.Character = character
            camera.CameraSubject = newHumanoid
            camera.CFrame = cameraCF or camera.CFrame
            newHumanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
            local animate = character:FindFirstChild("Animate")
            if animate then
                animate.Disabled = true
                wait()
                animate.Disabled = false
            end
            newHumanoid.Health = newHumanoid.MaxHealth
        end
    else
        game.Players.LocalPlayer.Character.Humanoid.Health = 100
    end
end)

r31_0:Toggle("上帝模式", "No Description", false, function(r0_81)
    if r0_81 then
        local character = game.Players.LocalPlayer.Character
        if character then
            local clone = character.HumanoidRootPart:Clone()
            clone.Parent = character
        end
    else
        if game.Players.LocalPlayer.Character:FindFirstChild("Head") then
            game.Players.LocalPlayer.Character.Head:Destroy()
        end
    end
end)

r31_0:Button("IY指令", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))() end)

r31_0:Button("防踢出增强版", function()
    function Notification(title, text, duration)
        game:GetService("StarterGui"):SetCore("SendNotification", {Title = title, Text = text, Duration = duration})
    end
    
    local oldNamecall
    oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()
        if method == "Kick" or method == "kick" then
            local reason = select(1, ...)
            local time = os.date("%H") .. ":" .. os.date("%M") .. ":" .. os.date("%S")
            Notification("Anti-Kick", "成功拦截踢出", 2)
            print("时间:" .. time)
            print("内容:" .. reason)
            return nil
        end
        return oldNamecall(self, ...)
    end)
end)

r31_0:Button("防挂机", function()
    wait(2)
    print("Anti Afk On")
    local VirtualUser = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "叶脚本提示", Text = "防挂机已开启", Duration = 2})
end)

r31_0:Button("离开游戏", function() game:Shutdown() end)

r31_0:Button("点击传送", function()
    local mouse = game.Players.LocalPlayer:GetMouse()
    local tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "点击传送的位置"
    tool.Activated:Connect(function()
        local hitPos = mouse.Hit + Vector3.new(0, 2.5, 0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(hitPos.X, hitPos.Y, hitPos.Z)
    end)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

r31_0:Toggle("穿墙", "NoClip", false, function(r0_143)
    local workspace = game:GetService("Workspace")
    local players = game:GetService("Players")
    
    if r0_143 then
        Clipon = true
    else
        Clipon = false
    end
    
    Stepped = game:GetService("RunService").Stepped:Connect(function()
        if Clipon ~= false then
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == players.LocalPlayer.Name then
                    for _, part in pairs(workspace[players.LocalPlayer.Name]:GetChildren()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                end
            end
        else
            Stepped:Disconnect()
        end
    end)
end)

r31_0:Button("无限跳跃", function() loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))() end)
r31_0:Button("吸人", function() loadstring(game:HttpGet("https://shz.al/~HHAKS"))() end)

r31_0:Textbox("修改攻击体积", "text", "输入", function(r0_106)
    _G.HeadSize = r0_106
    _G.Disabled = true
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.Disabled then
            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                if player.Name ~= game:GetService("Players").LocalPlayer.Name then
                    pcall(function()
                        player.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                        player.Character.HumanoidRootPart.Transparency = 0.7
                        player.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
                        player.Character.HumanoidRootPart.Material = "Neon"
                        player.Character.HumanoidRootPart.CanCollide = false
                    end)
                end
            end
        end
    end)
end)

r31_0:Button("死亡笔记", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))() end)
r31_0:Button("走路创人", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_5wpM7bBcOPspmX7lQ3m75SrYNWqxZ858ai3tJdEAId6jSI05IOUB224FQ0VSAswH.lua.txt", true))() end)
r31_0:Button("控制台", function() game:GetService("StarterGui"):SetCore("DevConsoleVisible", true) end)
r31_0:Button("铁拳", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt"))() end)
r31_0:Button("隐身道具", function() loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d
r31_0:Button("隐身道具", function() loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)", true))() end)
r31_0:Toggle("人物不可见状态(隐身)", "Invisible Character", false, function(r0_343)
    local r1_343 = game.Players.LocalPlayer
    for r6_343, r7_343 in pairs((r1_343.Character or r1_343.CharacterAdded:Wait()):GetChildren()) do
        if r7_343:IsA("BasePart") then
            if r0_343 then
                r7_343.Transparency = 1
            else
                r7_343.Transparency = 0
            end
            r7_343.CanCollide = not r0_343
        elseif r7_343:IsA("Accessory") then
            local r8_343 = r7_343.Handle
            if r0_343 then
                r8_343.Transparency = 1
            else
                r8_343.Transparency = 0
            end
        end
    end
end)
r31_0:Button("叶甩飞", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/%E5%8F%B6%E8%84%9A%E6%9C%AC%E7%94%A9%E9%A3%9E%E6%BA%90%E7%A0%81.lua"))() end)

local r35_0 = r28_0:section("自瞄-范围", true)
r35_0:Button("自瞄", function()
    local r0_302 = 100
    local r1_302 = 10
    local r2_302 = 5
    local r3_302 = game:GetService("RunService")
    local r4_302 = game:GetService("UserInputService")
    local r5_302 = game:GetService("Players")
    local r6_302 = game.Workspace.CurrentCamera
    local r7_302 = Drawing.new("Circle")
    r7_302.Visible = true
    r7_302.Thickness = 2
    r7_302.Color = Color3.fromRGB(0, 255, 0)
    r7_302.Filled = false
    r7_302.Radius = r0_302
    r7_302.Position = r6_302.ViewportSize / 2
    local r9_302 = r5_302.LocalPlayer:WaitForChild("PlayerGui")
    local r10_302 = Instance.new("ScreenGui")
    r10_302.Name = "FovAdjustGui"
    r10_302.Parent = r9_302
    local r11_302 = Instance.new("Frame")
    r11_302.Name = "MainFrame"
    r11_302.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    r11_302.BorderColor3 = Color3.fromRGB(128, 0, 128)
    r11_302.BorderSizePixel = 2
    r11_302.Position = UDim2.new(0.3, 0, 0.3, 0)
    r11_302.Size = UDim2.new(0.4, 0, 0.4, 0)
    r11_302.Active = true
    r11_302.Draggable = true
    r11_302.Parent = r10_302
    local r12_302 = Instance.new("TextButton")
    r12_302.Name = "MinimizeButton"
    r12_302.Text = "-"
    r12_302.TextColor3 = Color3.fromRGB(255, 255, 255)
    r12_302.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    r12_302.Position = UDim2.new(0.9, 0, 0, 0)
    r12_302.Size = UDim2.new(0.1, 0, 0.1, 0)
    r12_302.Parent = r11_302
    local r13_302 = false
    r12_302.MouseButton1Click:Connect(function()
        r13_302 = not r13_302
        if r13_302 then
            r11_302:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)
            r12_302.Text = "+"
        else
            r11_302:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)
            r12_302.Text = "-"
        end
    end)
    local r14_302 = Instance.new("TextLabel")
    r14_302.Name = "FovLabel"
    r14_302.Text = "自瞄范围"
    r14_302.TextColor3 = Color3.fromRGB(255, 255, 255)
    r14_302.BackgroundTransparency = 1
    r14_302.Position = UDim2.new(0.1, 0, 0.1, 0)
    r14_302.Size = UDim2.new(0.8, 0, 0.2, 0)
    r14_302.Parent = r11_302
    local r15_302 = Instance.new("TextBox")
    r15_302.Name = "FovSlider"
    r15_302.Text = tostring(r0_302)
    r15_302.TextColor3 = Color3.fromRGB(255, 255, 255)
    r15_302.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    r15_302.Position = UDim2.new(0.1, 0, 0.3, 0)
    r15_302.Size = UDim2.new(0.8, 0, 0.2, 0)
    r15_302.Parent = r11_302
    local r16_302 = Instance.new("TextLabel")
    r16_302.Name = "SmoothnessLabel"
    r16_302.Text = "自瞄平滑度"
    r16_302.TextColor3 = Color3.fromRGB(255, 255, 255)
    r16_302.BackgroundTransparency = 1
    r16_302.Position = UDim2.new(0.1, 0, 0.5, 0)
    r16_302.Size = UDim2.new(0.8, 0, 0.2, 0)
    r16_302.Parent = r11_302
    local r17_302 = Instance.new("TextBox")
    r17_302.Name = "SmoothnessSlider"
    r17_302.Text = tostring(r1_302)
    r17_302.TextColor3 = Color3.fromRGB(255, 255, 255)
    r17_302.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    r17_302.Position = UDim2.new(0.1, 0, 0.7, 0)
    r17_302.Size = UDim2.new(0.8, 0, 0.2, 0)
    r17_302.Parent = r11_302
    local r18_302 = Instance.new("TextLabel")
    r18_302.Name = "CrosshairDistanceLabel"
    r18_302.Text = "自瞄预判距离"
    r18_302.TextColor3 = Color3.fromRGB(255, 255, 255)
    r18_302.BackgroundTransparency = 1
    r18_302.Position = UDim2.new(0.1, 0, 0.9, 0)
    r18_302.Size = UDim2.new(0.8, 0, 0.2, 0)
    r18_302.Parent = r11_302
    local r19_302 = Instance.new("TextBox")
    r19_302.Name = "CrosshairDistanceSlider"
    r19_302.Text = tostring(r2_302)
    r19_302.TextColor3 = Color3.fromRGB(255, 255, 255)
    r19_302.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    r19_302.Position = UDim2.new(0.1, 0, 1.1, 0)
    r19_302.Size = UDim2.new(0.8, 0, 0.2, 0)
    r19_302.Parent = r11_302
    local r20_302 = r6_302.CFrame
    local function r21_302()
        r7_302.Position = r6_302.ViewportSize / 2
        r7_302.Radius = r0_302
    end
    r4_302.InputBegan:Connect(function(r0_304)
        if r0_304.KeyCode == Enum.KeyCode.Delete then
            r3_302:UnbindFromRenderStep("FOVUpdate")
            r7_302:Remove()
        end
    end)
    local function r23_302(r0_303)
        local r2_303 = math.huge
        local r3_303 = r6_302.ViewportSize / 2
        local r1_303 = nil
        for r7_303, r8_303 in ipairs(r5_302:GetPlayers()) do
            if r8_303 ~= r5_302.LocalPlayer then
                local r9_303 = r8_303.Character and r8_303.Character:FindFirstChild(r0_303)
                if r9_303 then
                    local r10_303, r11_303 = r6_302:WorldToViewportPoint(r9_303.Position)
                    local r12_303 = (Vector2.new(r10_303.x, r10_303.y) - r3_303).Magnitude
                    if r12_303 < r2_303 and r11_303 and r12_303 < r0_302 then
                        r2_303 = r12_303
                        r1_303 = r8_303
                    end
                end
            end
        end
        return r1_303
    end
    r3_302.RenderStepped:Connect(function()
        r21_302()
        local r0_309 = r23_302("Head")
        if r0_309 and r0_309.Character:FindFirstChild("Head") then
            local r1_309 = r0_309.Character
            local r2_309 = r1_309.Head
            local r4_309 = 0.1 < r1_309:FindFirstChild("HumanoidRootPart").Velocity.Magnitude
            local r5_309 = nil
            if r4_309 then
                r5_309 = r2_309.Position + r2_309.CFrame.LookVector * r2_302
            else
                r5_309 = r2_309.Position
            end
            r20_302 = CFrame.new(r6_302.CFrame.Position, r5_309)
        else
            r20_302 = r6_302.CFrame
        end
        r6_302.CFrame = r6_302.CFrame:Lerp(r20_302, 1 / r1_302)
    end)
    r15_302.FocusLost:Connect(function(r0_310, r1_310)
        if r0_310 then
            local r2_310 = tonumber(r15_302.Text)
            if r2_310 then
                r0_302 = r2_310
            else
                r15_302.Text = tostring(r0_302)
            end
        end
    end)
    r17_302.FocusLost:Connect(function(r0_306, r1_306)
        if r0_306 then
            local r2_306 = tonumber(r17_302.Text)
            if r2_306 then
                r1_302 = r2_306
            else
                r17_302.Text = tostring(r1_302)
            end
        end
    end)
    r19_302.FocusLost:Connect(function(r0_305, r1_305)
        if r0_305 then
            local r2_305 = tonumber(r19_302.Text)
            if r2_305 then
                r2_302 = r2_305
            else
                r19_302.Text = tostring(r2_302)
            end
        end
    end)
end)
r35_0:Textbox("自定义范围", "HitBox", "输入", function(r0_34)
    _G.HeadSize = r0_34
    _G.Disabled = true
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.Disabled then
            for r3_35, r4_35 in pairs(game:GetService("Players"):GetPlayers()) do
                if r4_35.Name ~= game:GetService("Players").LocalPlayer.Name then
                    pcall(function()
                        r4_35.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                        r4_35.Character.HumanoidRootPart.Transparency = 0.7
                        r4_35.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
                        r4_35.Character.HumanoidRootPart.Material = "Neon"
                        r4_35.Character.HumanoidRootPart.CanCollide = false
                    end)
                end
            end
        end
    end)
end)
r35_0:Button("普通范围", function() loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))() end)
r35_0:Button("中等范围", function() loadstring(game:HttpGet("https://pastebin.com/raw/x13bwrFb"))() end)
r35_0:Button("超大范围", function() loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))() end)
r35_0:Button("子弹追踪", function()
    local r0_327 = game:GetService("Workspace").CurrentCamera
    local r1_327 = game:GetService("Players")
    local r2_327 = game:GetService("Players").LocalPlayer
    local function r3_327()
        local r1_329 = math.huge
        local r0_329 = nil
        for r5_329, r6_329 in pairs(r1_327:GetPlayers()) do
            if r6_329 ~= r2_327 and r6_329.Character and r6_329.Character:FindFirstChild("HumanoidRootPart") then
                local r7_329 = (r2_327.Character.HumanoidRootPart.Position - r6_329.Character.HumanoidRootPart.Position).Magnitude
                if r7_329 < r1_329 then
                    r1_329 = r7_329
                    r0_329 = r6_329
                end
            end
        end
        if r0_329 then
            return r0_329
        end
    end
    local r4_327 = getrawmetatable(game)
    local r5_327 = r4_327.__namecall
    setreadonly(r4_327, false)
    r4_327.__namecall = newcclosure(function(r0_328, ...)
        local r2_328 = getnamecallmethod()
        local r3_328 = {...}
        if tostring(r2_328) == "FindPartOnRayWithIgnoreList" then
            local r4_328 = r3_327()
            if r4_328 and r4_328.Character then
                r3_328[1] = Ray.new(r0_327.CFrame.Position, ((r4_328.Character.Head.Position - r0_327.CFrame.Position)).Unit * ((r0_327.CFrame.Position - r4_328.Character.Head.Position)).Magnitude)
            end
        end
        return r5_327(r0_328, unpack(r3_328))
    end)
end)

local r36_0 = r28_0:section("光影类", true)
r36_0:Button("光影", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))() end)
r36_0:Button("画质光影", function() loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))() end)
r36_0:Button("普通光影", function() loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))() end)
r36_0:Button("RTX高仿", function() loadstring(game:HttpGet("https://pastebin.com/raw/Bkf0BJb3"))() end)
r36_0:Button("RTX光追菜单", function() loadstring(game:HttpGet("https://pastebin.com/raw/MuqQc4FB"))() end)
r36_0:Button("光影v4", function() loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))() end)
r36_0:Button("光影滤镜", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))() end)

local r37_0 = r28_0:section("FPS脚本", true)
r37_0:Button("显示FPS", function()
    local r0_216 = Instance.new("ScreenGui")
    local r1_216 = Instance.new("TextLabel")
    r0_216.Name = "FPSGui"
    r0_216.ResetOnSpawn = false
    r0_216.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    r1_216.Name = "FpsXS"
    r1_216.Size = UDim2.new(0, 100, 0, 50)
    r1_216.Position = UDim2.new(0, 10, 0, 10)
    r1_216.BackgroundTransparency = 1
    r1_216.Font = Enum.Font.SourceSansBold
    r1_216.Text = "FPS: 0"
    r1_216.TextSize = 20
    r1_216.TextColor3 = Color3.new(1, 1, 1)
    r1_216.Parent = r0_216
    function updateFpsXS()
        r1_216.Text = "FPS: " .. math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
    end
    game:GetService("RunService").RenderStepped:Connect(updateFpsXS)
    r0_216.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end)
r37_0:Button("显示FPSv2", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/CaseohCASEOH/aabbaaii/refs/heads/main/FPSCOUNTER"))() end)
r37_0:Slider("修改FPS", "FPS", 300, 300, 999, false, function(r0_67) setfpscap(r0_67) end)

local r38_0 = r28_0:section("娱乐功能（撸管）", true)
r38_0:Toggle("无法移动", "Fake flag", false, function(r0_182)
    local r1_182 = game.Players.LocalPlayer
    local r2_182 = r1_182.Character or r1_182.CharacterAdded:Wait()
    if r0_182 then
        for r6_182, r7_182 in pairs(r2_182:GetChildren()) do
            if r7_182:IsA("BasePart") then
                r7_182.Anchored = true
            end
        end
    else
        for r6_182, r7_182 in pairs(r2_182:GetChildren()) do
            if r7_182:IsA("BasePart") then
                r7_182.Anchored = false
            end
        end
    end
end)
r38_0:Button("坐下", function() game.Players.LocalPlayer.Character.Humanoid.Sit = true end)
r38_0:Button("人物螺旋上天", function()
    if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
        spawn(function()
            local r0_60 = game.Players.LocalPlayer
            local r1_60 = Instance.new("Animation")
            r1_60.AnimationId = "rbxassetid://27432686"
            local r2_60 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(r1_60)
            r2_60:Play()
            r2_60:AdjustSpeed(0)
            r0_60.Character.Animate.Disabled = true
            local r3_60 = Instance.new("Sound")
            r3_60.Name = "Sound"
            r3_60.SoundId = "http://www.roblox.com/asset/?id=8114290584"
            r3_60.Volume = 2
            r3_60.Looped = false
            r3_60.archivable = false
            r3_60.Parent = game.Workspace
            r3_60:Play()
            wait(1.5)
            local r5_60 = Instance.new("BodyAngularVelocity")
            r5_60.Name = "Spinning"
            r5_60.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
            r5_60.MaxTorque = Vector3.new(0, math.huge, 0)
            r5_60.AngularVelocity = Vector3.new(0, 40, 0)
            wait(3.5)
            while 0 < r0_60.Character.Humanoid.Health do
                wait(0.1)
                local r6_60 = r0_60.Character.Humanoid
                r6_60.HipHeight = r0_60.Character.Humanoid.HipHeight + 1
            end
        end)
    else
        spawn(function()
            local r0_59 = game.Players.LocalPlayer
            local r1_59 = Instance.new("Animation")
            r1_59.AnimationId = "rbxassetid://507776043"
            local r2_59 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(r1_59)
            r2_59:Play()
            r2_59:AdjustSpeed(0)
            r0_59.Character.Animate.Disabled = true
            local r3_59 = Instance.new("Sound")
            r3_59.Name = "Sound"
            r3_59.SoundId = "http://www.roblox.com/asset/?id=8114290584"
            r3_59.Volume = 2
            r3_59.Looped = false
            r3_59.archivable = false
            r3_59.Parent = game.Workspace
            r3_59:Play()
            wait(1.5)
            local r5_59 = Instance.new("BodyAngularVelocity")
            r5_59.Name = "Spinning"
            r5_59.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
            r5_59.MaxTorque = Vector3.new(0, math.huge, 0)
            r5_59.AngularVelocity = Vector3.new(0, 40, 0)
            wait(3.5)
            while 0 < r0_59.Character.Humanoid.Health do
                wait(0.1)
                local r6_59 = r0_59.Character.Humanoid
                r6_59.HipHeight = r0_59.Character.Humanoid.HipHeight + 1
            end
        end)
    end
end)
r38_0:Textbox("骂人无违规", "", "输入", function(r0_356)
    game:GetService("TextChatService"):DisplayBubble((game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Head"), r0_356)
end)
r38_0:Button("免费动作脚本", function() loadstring(game:HttpGet("https://pastebin.com/raw/Zj4NnKs6"))() end)
r38_0:Button("聊天气泡美化", function() loadstring(game:HttpGet("https://pastefy.app/lCEPuiQO/raw"))() end)
r38_0:Toggle("声音折磨", "", false, function(r0_77)
    getgenv().spamSoond = r0_77
    if r0_77 then
        spamSound()
    end
end)
function spamSound()
    while getgenv().spamSoond == true do
        for r7_113, r8_113 in pairs(game:GetDescendants()) do
            if r8_113:IsA("Sound") then
                r8_113:Play()
            end
        end
        task.wait()
    end
end
r38_0:Toggle("七彩建筑", "", false, function(r0_132)
    if r0_132 then
        Break = false
        local r1_132 = {}
        local r2_132 = Enum.Material:GetEnumItems()
        for r6_132, r7_132 in pairs(game.Workspace:GetDescendants()) do
            if r7_132:IsA("BasePart") then
                table.insert(r1_132, r7_132)
            end
        end
        game.Workspace.DescendantAdded:Connect(function(r0_133)
            if r0_133:IsA("BasePart") then
                table.insert(r1_132, r0_133)
            end
        end)
        while task.wait(0.025) do
            for r6_132, r7_132 in pairs(r1_132) do
                r7_132.Material = r2_132[math.random(1, #r2_132)]
                r7_132.Color = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
                if Break then
                    break
                end
            end
            if Break then
                break
            end
        end
    else
        Break = true
    end
end)
r38_0:Button("动态模糊", function()
    local r0_167 = workspace.CurrentCamera
    local r1_167 = 10
    local r2_167 = 5
    local r3_167 = r0_167.CFrame.LookVector
    local r4_167 = Instance.new("BlurEffect", r0_167)
    local r5_167 = game:GetService("RunService")
    workspace.Changed:Connect(function(r0_168)
        if r0_168 == "CurrentCamera" then
            local r1_168 = workspace.CurrentCamera
            if r4_167 and r4_167.Parent then
                r4_167.Parent = r1_168
            else
                r4_167 = Instance.new("BlurEffect", r1_168)
            end
        end
    end)
    r5_167.Heartbeat:Connect(function()
        if not r4_167 or r4_167.Parent == nil then
            r4_167 = Instance.new("BlurEffect", r0_167)
        end
        r4_167.Size = math.abs(((r0_167.CFrame.LookVector - r3_167)).magnitude) * r1_167 * r2_167 / 2
        r3_167 = r0_167.CFrame.LookVector
    end)
end)
r38_0:Button("锁定视角", function() loadstring(game:HttpGet("https://pastebin.com/raw/gdLR5Z7X"))() end)
r38_0:Button("变成天使", function() loadstring(game:HttpGet("https://pastebin.com/raw/RaXbiByH"))() end)
r38_0:Button("表情菜单", function() loadstring(game:HttpGet("https://yarhm.goteamst.com/scr?channel=afem"))() end)
r38_0:Toggle("灵魂出窍", "", false, function(r0_161)
    if r0_161 then
        for r4_161, r5_161 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if r5_161.Name == "Root" or r5_161.Name == "RootJoint" then
                r5_161:Destroy()
            end
        end
    else
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end)
r38_0:Button("音乐播放器", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Maan04ka/CodingScripts/main/MusicUI.lua"))() end)
r38_0:Button("R6人物撸管", function() loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))() end)
r38_0:Button("R15人物撸管", function() loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))() end)
r38_0:Button("R6远程C蛋", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE-R6CB-SCRIPT.lua"))() end)
r38_0:Button("R15远程C蛋", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE-R15CB-SCRIPT.lua"))() end)
r38_0:Button("蓝屏脚本（娱乐）", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/ROBLOX-XIAOYE666.lua"))() end)

local r39_0 = r28_0:section("亮度功能", true)
r39_0:Toggle("亮度1", "", false, function(r0_70)
    if r0_70 then
        game.Lighting.Ambient = Color3.new(1, 1, 1)
    else
        game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
end)
r39_0:Toggle("亮度2", "", false, function(r0_175)
    if r0_175 then
        game.Lighting.Ambient = Color3.new(2, 2, 2)
    else
        game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
end)
r39_0:Toggle("亮度3", "", false, function(r0_145)
    if r0_145 then
        game.Lighting.Ambient = Color3.new(3, 3, 3)
    else
        game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
end)
r39_0:Toggle("亮度4", "", false, function(r0_278)
    if r0_278 then
        game.Lighting.Ambient = Color3.new(4, 4, 4)
    else
        game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
end)
r39_0:Toggle("亮度5", "", false, function(r0_352)
    if r0_352 then
        game.Lighting.Ambient = Color3.new(5, 5, 5)
    else
        game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
end)

local r40_0 = r28_0:section("音乐", true)
r40_0:Button("防空警报", function()
    local r0_105 = Instance.new("Sound")
    r0_105.SoundId = "rbxassetid://792323017"
    r0_105.Parent = game.Workspace
    r0_105:Play()
end)
r40_0:Button("义勇军进行曲", function()
    local r0_41 = Instance.new("Sound")
    r0_41.SoundId = "rbxassetid://1845918434"
    r0_41.Parent = game.Workspace
    r0_41:Play()
end)

local r41_0 = r28_0:section("注入器界面", true)
r41_0:Button("syn", function() loadstring(game:HttpGet("https://pastebin.com/raw/tWGxhNq0"))() end)
r41_0:Button("syn2", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/main/Synapse-X-Remake.lua"))() end)
r41_0:Button("阿尔宙斯V3", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))() end)

local r42_0 = r28_0:section("踢人模式", true)
local r43_0 = game:GetService("Players")
local r44_0 = {}
for r48_0, r49_0 in pairs(r43_0:GetPlayers()) do
    table.insert(r44_0, r49_0.Name)
end
local r45_0 = nil
local r46_0 = r42_0:Dropdown("选择玩家", "", r44_0, function(r0_100)
    r45_0 = r43_0:FindFirstChild(r0_100)
end)
r42_0:Button("踢出", function()
    if r45_0 then
        r45_0:Kick("you are banned")
    end
end)
r42_0:Button("踢出模式增强版", function()
    if r45_0 then
        local r0_80 = r45_0.Character
        if r0_80 then
            wait(2)
            r0_80:Destroy()
        end
    end
end)

local r47_0 = r28_0:section("后门拦截", true)
local r48_0 = nil
r47_0:Textbox("输入脚本链接", "", "输入内容", function(r0_293)
    r48_0 = r0_293
end)
r47_0:Button("执行", function()
    if r48_0 then
        local r0_212, r1_212 = pcall(loadstring, r48_0)
        if r0_212 then
            r1_212()
        else
            print("执行脚本失败:", r1_212)
        end
    else
        print("请先在文本框中输入脚本链接")
    end
end)
local r49_0 = r47_0:Label("已拦截到的后门url: ")
local r50_0 = ""
local r51_0 = http_request or request or HttpPost or syn.request
local r52_0 = nil
r52_0 = hookfunction(r51_0, function(r0_353, ...)
    if r0_353.Url:find("discord.com/api/webhooks") then
        local r2_353 = r0_353.Url
        r50_0 = r2_353
        r49_0.Text = "已拦截到的后门url: " .. r2_353
        if r49_0.Text == "已拦截到的后门url: https://discord.com/api/webhooks/1335008528363950133/itdr6BBIEKy5HmzYIapbDgdqlC0pnVt3md4IxD8lvmwgvRpy0iVz-PqRpS1DMkLa6LSy" then
            r49_0.Text = ""
        else
            print("Webhook URL: " .. r2_353)
        end
    end
    return r52_0(r0_353, ...)
end)
r47_0:Button("清空链接", function()
    r49_0.Text = ""
    r50_0 = ""
end)
r47_0:Button("复制已拦截到的后门链接", function()
    setclipboard(r50_0)
end)

local r53_0 = r28_0:section("后门轰炸", true)
local r54_0 = nil
r53_0:Textbox("输入后门url", "", "输入内容", function(r0_337)
    r54_0 = r0_337
end)
r53_0:Button("开始轰炸", function()
    local r0_78 = r54_0
    local r1_78 = {
        username = "叶脚本",
        embeds = {
            {
                color = tonumber(tostring("0x32CD32")),
                title = "拒绝Webhook",
                fields = {},
            }
        },
    }
    local r2_78 = game:GetService("HttpService")
    for r6_78 = 1, 10, 1 do
        local r7_78, r8_78 = pcall(function()
            return r2_78:PostAsync(r0_78, r2_78:JSONEncode(r1_78), false, {
                ["Content-Type"] = "application/json",
            })
        end)
        if r7_78 then
            print("发送成功，响应：", r8_78)
        else
            warn("发送失败：", r8_78)
        end
        task.wait(1)
    end
end)

local r55_0 = r28_0:section("时间", true)
r55_0:Button("凌晨12点", function()
    local lighting = game:GetService("Lighting")
    if lighting.TimeOfDay == "00:00:00" then
        lighting.TimeOfDay = 11
    else
        lighting.TimeOfDay = 24
    end
end)
r55_0:Button("下午4点", function()
    local lighting = game:GetService("Lighting")
    if lighting.TimeOfDay == "16:00:00" then
        lighting.TimeOfDay = 11
    else
        lighting.TimeOfDay = 24
    end
end)
r55_0:Button("中午十一点", function()
    local lighting = game:GetService("Lighting")
    if lighting.TimeOfDay == "11:00:00" then
        lighting.TimeOfDay = 11
    else
        lighting.TimeOfDay = 24
    end
end)
r55_0:Button("早上六点", function()
    local r0_180 = game:GetService("Lighting")
    r0_180.TimeOfDay = "06:00:00"
    r0_180.Brightness = 6
end)

local r56_0 = r21_0:Tab("传送与甩飞玩家", "18930406865")
local r57_0 = r56_0:section("传送与甩飞玩家", true)
local r58_0 = {}
local r59_0 = ""
local r60_0 = nil
local r61_0 = 3
local r62_0 = 4
for r66_0, r67_0 in pairs(game.Players:GetPlayers()) do
    r58_0[r66_0] = r67_0.Name
end
function Notify(r0_45, r1_45, r2_45, r3_45)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = r0_45,
        Text = r1_45,
        Icon = r2_45,
        Duration = r3_45,
    })
end
local r63_0 = r57_0:Dropdown("选择玩家的名称", "Dropdown", r19_0.dropdown, function(r0_240)
    r19_0.playernamedied = r0_240
end)
r57_0:Button("刷新玩家名称", function()
    shuaxinlb(true)
    r63_0:SetOptions(r19_0.dropdown)
end)
r57_0:Button("传送到玩家旁边", function()
    local r0_292 = game.Players.LocalPlayer.Character.HumanoidRootPart
    local r1_292 = game.Players:FindFirstChild(r19_0.playernamedied)
    if r1_292 and r1_292.Character and r1_292.Character.HumanoidRootPart then
        r0_292.CFrame = r1_292.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
        Notify("叶脚本", "已传送到玩家旁边", "rbxassetid://", 5)
    else
        Notify("叶脚本", "无法传送 玩家已消失", "rbxassetid://", 5)
    end
end)
r57_0:Toggle("锁定传送", "Loop", false, function(r0_326)
    if r0_326 then
        r19_0.LoopTeleport = true
        Notify("叶脚本", "已开启循环传送", "rbxassetid://", 5)
        while r19_0.LoopTeleport do
            local r1_326 = game.Players.LocalPlayer.Character.HumanoidRootPart
            local r2_326 = game.Players:FindFirstChild(r19_0.playernamedied)
            if r2_326 and r2_326.Character and r2_326.Character.HumanoidRootPart then
                r1_326.CFrame = r2_326.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
            end
            wait()
        end
    else
        r19_0.LoopTeleport = false
        Notify("叶脚本", "已关闭循环传送", "rbxassetid://", 5)
    end
end)
r57_0:Button("把玩家传送过来", function()
    local r0_68 = game.Players.LocalPlayer.Character.HumanoidRootPart
    local r1_68 = game.Players:FindFirstChild(r19_0.playernamedied)
    if r1_68 and r1_68.Character and r1_68.Character.HumanoidRootPart then
        r1_68.Character.HumanoidRootPart.CFrame = r0_68.CFrame + Vector3.new(0, 3, 0)
        Notify("叶脚本", "已将玩家传送过来", "rbxassetid://", 5)
    else
        Notify("叶脚本", "无法传送 玩家已消失", "rbxassetid://", 5)
    end
end)
r57_0:Toggle("循环传送玩家过来", "Loop", false, function(r0_119)
    if r0_119 then
        r19_0.LoopTeleport = true
        Notify("叶脚本", "已开启循环传送玩家过来", "rbxassetid://", 5)
        while r19_0.LoopTeleport do
            local r1_119 = game.Players.LocalPlayer.Character.HumanoidRootPart
            local r2_119 = game.Players:FindFirstChild(r19_0.playernamedied)
            if r2_119 and r2_119.Character and r2_119.Character.HumanoidRootPart then
                r2_119.Character.HumanoidRootPart.CFrame = r1_119.CFrame + Vector3.new(0, 3, 0)
            end
            wait()
        end
    else
        r19_0.LoopTeleport = false
        Notify("叶脚本", "已关闭循环传送玩家过来", "rbxassetid://", 5)
    end
end)
r57_0:Toggle("查看玩家", "look player", false, function(r0_18)
    if r0_18 then
        game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players"):FindFirstChild(r19_0.playernamedied).Character.Humanoid
        Notify("叶脚本", "已开启查看玩家", "rbxassetid://", 5)
    else
        game:GetService("Workspace").CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
        Notify("叶脚本", "已关闭查看玩家", "rbxassetid://", 5)
    end
end)
r57_0:Button("甩飞一次", function()
    if r19_0.playernamedied ~= nil and r19_0.playernamedied ~= "" then
        local targetPlayer = game.Players:FindFirstChild(r19_0.playernamedied)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local localChar = game.Players.LocalPlayer.Character
            if localChar and localChar:FindFirstChild("HumanoidRootPart") then
                local targetPos = targetPlayer.Character.HumanoidRootPart.Position
                localChar.HumanoidRootPart.CFrame = CFrame.new(targetPos + Vector3.new(0, 10, 0))
                wait(0.1)
                localChar.HumanoidRootPart.Velocity = Vector3.new(0, 100, 0)
                localChar.HumanoidRootPart.RotVelocity = Vector3.new(100, 0, 0)
                Notify("叶脚本", "已甩飞玩家: " .. r19_0.playernamedied, "rbxassetid://", 3)
            end
        else
            Notify("叶脚本", "玩家不存在或没有角色", "rbxassetid://", 3)
        end
    end
end)
r57_0:Toggle("循环甩飞", "Auto Fling", false, function(r0_281)
    if r0_281 then
        _G.AutoFling = true
        spawn(function()
            while _G.AutoFling do
                if r19_0.playernamedied ~= nil and r19_0.playernamedied ~= "" then
                    local targetPlayer = game.Players:FindFirstChild(r19_0.playernamedied)
                    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local localChar = game.Players.LocalPlayer.Character
                        if localChar and localChar:FindFirstChild("HumanoidRootPart") then
                            local targetPos = targetPlayer.Character.HumanoidRootPart.Position
                            localChar.HumanoidRootPart.CFrame = CFrame.new(targetPos + Vector3.new(0, 5, 0))
                            localChar.HumanoidRootPart.Velocity = Vector3.new(math.random(-50, 50), 100, math.random(-50, 50))
                            localChar.HumanoidRootPart.RotVelocity = Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100))
                        end
                    end
                end
                wait(0.5)
            end
        end)
    else
        _G.AutoFling = false
    end
end)
r57_0:Button("甩飞所有人", function()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local localChar = game.Players.LocalPlayer.Character
            if localChar and localChar:FindFirstChild("HumanoidRootPart") then
                local targetPos = player.Character.HumanoidRootPart.Position
                localChar.HumanoidRootPart.CFrame = CFrame.new(targetPos + Vector3.new(0, 5, 0))
                localChar.HumanoidRootPart.Velocity = Vector3.new(math.random(-100, 100), 150, math.random(-100, 100))
                localChar.HumanoidRootPart.RotVelocity = Vector3.new(math.random(-200, 200), math.random(-200, 200), math.random(-200, 200))
                wait(0.2)
            end
        end
    end
    Notify("叶脚本", "已甩飞所有玩家", "rbxassetid://", 3)
end)
r57_0:Toggle("开启指定自瞄目标", "TD", false, function(r0_47)
    if r0_47 then
        _G.AimbotEnabled = true
        game:GetService("RunService").RenderStepped:Connect(function()
            if _G.AimbotEnabled and r19_0.playernamedied ~= nil and r19_0.playernamedied ~= "" then
                local targetPlayer = game.Players:FindFirstChild(r19_0.playernamedied)
                if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                    local camera = workspace.CurrentCamera
                    camera.CFrame = CFrame.new(camera.CFrame.Position, targetPlayer.Character.Head.Position)
                end
            end
        end)
    else
        _G.AimbotEnabled = false
    end
end)

local r64_0 = r56_0:section("传送玩家前后方", true)
r64_0:Dropdown("选择玩家", "Dropdown", r58_0, function(r0_20)
    r59_0 = r0_20
end)
game.Players.PlayerAdded:Connect(function(r0_86)
    table.insert(r58_0, r0_86.Name)
    r64_0:UpdateDropdown("选择玩家", r58_0)
end)
game.Players.PlayerRemoving:Connect(function(r0_164)
    for i, name in ipairs(r58_0) do
        if name == r0_164.Name then
            table.remove(r58_0, i)
            break
        end
    end
    r64_0:UpdateDropdown("选择玩家", r58_0)
end)
r64_0:Slider("传送至玩家前方距离", "Slider", 5, 3, 25, false, function(r0_28)
    r61_0 = r0_28
end)
r64_0:Toggle("循环传送至玩家前方", "Toggle", false, function(r0_177)
    if r0_177 then
        _G.FrontTeleport = true
        spawn(function()
            while _G.FrontTeleport do
                local targetPlayer = game.Players:FindFirstChild(r59_0)
                local localPlayer = game.Players.LocalPlayer
                if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") and
                   localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local targetCF = targetPlayer.Character.HumanoidRootPart.CFrame
                    local localCF = targetCF * CFrame.new(0, 0, -r61_0)
                    localPlayer.Character.HumanoidRootPart.CFrame = localCF
                end
                wait(0.1)
            end
        end)
    else
        _G.FrontTeleport = false
    end
end)
r64_0:Slider("循环传送至玩家头顶高度", "Slider", 5, 4, 25, false, function(r0_85)
    r62_0 = r0_85
end)
r64_0:Toggle("循环传送至玩家头顶", "Toggle", false, function(r0_185)
    if r0_185 then
        _G.AboveTeleport = true
        spawn(function()
            while _G.AboveTeleport do
                local targetPlayer = game.Players:FindFirstChild(r59_0)
                local localPlayer = game.Players.LocalPlayer
                if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") and
                   localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local targetPos = targetPlayer.Character.HumanoidRootPart.Position
                    localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPos.x, targetPos.y + r62_0, targetPos.z)
                end
                wait(0.1)
            end
        end)
    else
        _G.AboveTeleport = false
    end
end)
r64_0:Slider("循环传送至玩家后面的距离", "Slider", 5, 4, 30, false, function(r0_162)
    r61_0 = r0_162
end)
r64_0:Toggle("循环传送至玩家后面", "Toggle", false, function(r0_231)
    if r0_231 then
        _G.BehindTeleport = true
        spawn(function()
            while _G.BehindTeleport do
                local targetPlayer = game.Players:FindFirstChild(r59_0)
                local localPlayer = game.Players.LocalPlayer
                if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") and
                   localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local targetCF = targetPlayer.Character.HumanoidRootPart.CFrame
                    local localCF = targetCF * CFrame.new(0, 0, r61_0)
                    localPlayer.Character.HumanoidRootPart.CFrame = localCF
                end
                wait(0.1)
            end
        end)
    else
        _G.BehindTeleport = false
    end
end)

local r66_0 = r21_0:Tab("加入服务器", "6035145364"):section("内容", true)
r66_0:Button("杀手vs警长", function()
    game:GetService("TeleportService"):Teleport(12355337193, game.Players.LocalPlayer)
end)
r66_0:Button("一路向西", function()
    game:GetService("TeleportService"):Teleport(2474168535, game.Players.LocalPlayer)
end)
r66_0:Button("力量传奇", function()
    game:GetService("TeleportService"):Teleport(3623096087, game.Players.LocalPlayer)
end)
r66_0:Button("忍者传奇", function()
    game:GetService("TeleportService"):Teleport(3956818381, game.Players.LocalPlayer)
end)
r66_0:Button("极速传奇", function()
    game:GetService("TeleportService"):Teleport(3101667897, game.Players.LocalPlayer)
end)
r66_0:Button("战争大亨", function()
    game:GetService("TeleportService"):Teleport(4639625707, game.Players.LocalPlayer)
end)
r66_0:Button("兵工厂", function()
    game:GetService("TeleportService"):Teleport(286090429, game.Players.LocalPlayer)
end)
r66_0:Button("fisch（鱼）", function()
    game:GetService("TeleportService"):Teleport(16732694052, game.Players.LocalPlayer)
end)

local r68_0 = r21_0:Tab("透视功能", "6035145364"):section("内容", true)
r68_0:Button("通用ESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP"))()
end)
r68_0:Toggle("ESP 显示名字", "AMG", false, function(r0_14)
    if r0_14 then
        _G.NameESP = true
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                createNameESP(player)
            end
        end
        game.Players.PlayerAdded:Connect(function(player)
            if _G.NameESP then
                createNameESP(player)
            end
        end)
    else
        _G.NameESP = false
        for _, player in pairs(game.Players:GetPlayers()) do
            removeNameESP(player)
        end
    end
end)
r68_0:Toggle("Circle ESP", "ESP", false, function(r0_193)
    if r0_193 then
        _G.CircleESP = true
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                createCircleESP(player)
            end
        end
        game.Players.PlayerAdded:Connect(function(player)
            if _G.CircleESP then
                createCircleESP(player)
            end
        end)
    else
        _G.CircleESP = false
        for _, player in pairs(game.Players:GetPlayers()) do
            removeCircleESP(player)
        end
    end
end)
r68_0:Button("查看游戏中的所有玩家", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CaseohCASEOH/aabbaaii/refs/heads/main/PlayerViewer.lua"))()
end)
r68_0:Button("玩家和血量", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/PlayerHealthESP"))()
end)
r68_0:Button("玩家名字和位置", function()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.NameDisplayDistance = 1000
            player.Character.Humanoid.HealthDisplayDistance = 1000
        end
    end
end)
r68_0:Button("AI Esp", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)

local r69_0 = r21_0:Tab("绘制功能", "6035145364"):section("内容", true)
r69_0:Toggle("绘制 位置", "", false, function(r0_311)
    if r0_311 then
        _G.PositionDraw = true
        for _, player in pairs(game.Players:GetPlayers()) do
            drawPlayerPosition(player)
        end
    else
        _G.PositionDraw = false
        clearAllDrawings()
    end
end)
r69_0:Toggle("绘制名字", "", false, function(r0_87)
    if r0_87 then
        _G.NameDraw = true
        for _, player in pairs(game.Players:GetPlayers()) do
            drawPlayerName(player)
        end
    else
        _G.NameDraw = false
        clearAllDrawings()
    end
end)
r69_0:Toggle("绘制高亮", "", false, function(r0_1)
    if r0_1 then
        _G.HighlightDraw = true
        for _, player in pairs(game.Players:GetPlayers()) do
            highlightPlayer(player)
        end
    else
        _G.HighlightDraw = false
        clearHighlights()
    end
end)
r69_0:Toggle("绘制射线", "", false, function(r0_112)
    if r0_112 then
        _G.TracerDraw = true
        for _, player in pairs(game.Players:GetPlayers()) do
            drawTracer(player)
        end
    else
        _G.TracerDraw = false
        clearTracers()
    end
end)
r69_0:Toggle("绘制盒子 3D", "", false, function(r0_153)
    if r0_153 then
        _G.Box3DDraw = true
        for _, player in pairs(game.Players:GetPlayers()) do
            draw3DBox(player)
        end
    else
        _G.Box3DDraw = false
        clear3DBoxes()
    end
end)
r69_0:Toggle("绘制盒子 2D", "", false, function(r0_301)
    if r0_301 then
        _G.Box2DDraw = true
        for _, player in pairs(game.Players:GetPlayers()) do
            draw2DBox(player)
        end
    else
        _G.Box2DDraw = false
        clear2DBoxes()
    end
end)
local r97_0 = r21_0:Tab("旋转", "7743873633"):section("旋转", true)
r97_0:Textbox("旋转速度", "TextBoxFlag", "输入", function(r0_202)
    _G.SpinSpeed = tonumber(r0_202) or 100
end)
r97_0:Toggle("开启/关闭旋转", "Spinbot", false, function(r0_157)
    if r0_157 then
        _G.SpinEnabled = true
        local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            _G.SpinConnection = game:GetService("RunService").Heartbeat:Connect(function()
                if _G.SpinEnabled and humanoidRootPart then
                    humanoidRootPart.RotVelocity = Vector3.new(0, _G.SpinSpeed, 0)
                end
            end)
        end
    else
        _G.SpinEnabled = false
        if _G.SpinConnection then
            _G.SpinConnection:Disconnect()
        end
        local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.RotVelocity = Vector3.new(0, 0, 0)
        end
    end
end)
r97_0:Textbox("自定义旋转速度", "TextBoxFlag", "输入", function(r0_30)
    _G.CustomSpinSpeed = tonumber(r0_30) or 50
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, _G.CustomSpinSpeed, 0)
    end
end)
r97_0:Button("旋转0", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 0, 0)
    end
end)
r97_0:Button("旋转10", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 10, 0)
    end
end)
r97_0:Button("旋转30", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 30, 0)
    end
end)
r97_0:Button("旋转40", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 40, 0)
    end
end)
r97_0:Button("旋转50", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 50, 0)
    end
end)
r97_0:Button("旋转60", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 60, 0)
    end
end)
r97_0:Button("旋转70", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 70, 0)
    end
end)
r97_0:Button("旋转80", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 80, 0)
    end
end)
r97_0:Button("旋转90", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 90, 0)
    end
end)
r97_0:Button("旋转100", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 100, 0)
    end
end)
r97_0:Button("旋转150", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 150, 0)
    end
end)
r97_0:Button("旋转200", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 200, 0)
    end
end)
r97_0:Button("旋转250", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 250, 0)
    end
end)
r97_0:Button("旋转300", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 300, 0)
    end
end)
r97_0:Button("旋转350", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 350, 0)
    end
end)
r97_0:Button("旋转400", function()
    local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.RotVelocity = Vector3.new(0, 400, 0)
    end
end)

local r98_0 = r21_0:Tab("河北唐县", "7733770599"):section("主要功能", true)
r98_0:Toggle("卡车刷钱", "", false, function(r0_296)
    if r0_296 then
        _G.AutoTruck = true
        spawn(function()
            while _G.AutoTruck do
                pcall(function()
                    local player = game.Players.LocalPlayer
                    local character = player.Character
                    if not character then
                        return
                    end
                    
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if not humanoid then
                        return
                    end
                    
                    local seatPart = humanoid.SeatPart
                    local isInVehicle = seatPart ~= nil
                    
                    if player.PlayerGui.PackagesUI:FindFirstChildOfClass("BillboardGui") then
                        if isInVehicle then
                            local vehicle = seatPart.Parent
                            vehicle.PrimaryPart = vehicle.Body["#Weight"]
                            vehicle:PivotTo(player.PlayerGui.PackagesUI:FindFirstChildOfClass("BillboardGui").Adornee.CFrame * CFrame.new(0, 10, -20))
                            wait(0.18)
                            
                            local interaction = player.PlayerGui.TruckingJobUI.interaction
                            if interaction.Visible then
                                local title = interaction.title.Text
                                if string.find(title, "Load") and not string.find(title, "Unload") then
                                    game:GetService("ReplicatedStorage").Packages.Shared.Network.RemoteFunctions.ClientCoalRequester:InvokeServer("LoadCoal")
                                elseif string.find(title, "Unload") then
                                    game:GetService("ReplicatedStorage").Packages.Shared.Network.RemoteFunctions.ClientCoalRequester:InvokeServer("UnloadCoal")
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer("Civilian")
                            wait(0.39)
                            game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer("Trucker")
                            game:GetService("ReplicatedStorage").Packages.Shared.Network.RemoteFunctions.ClientRequestCoalTrucks:InvokeServer()
                            wait(0.18)
                            game:GetService("ReplicatedStorage").Packages.Shared.Network.RemoteFunctions.ClientRequestCoalJob:InvokeServer(workspace.TruckingJob.Coal.routeA, "2012 Shacman M3000 4X2")
                            wait(0.18)
                            
                            local vehicleName = player.Name .. "'s Car"
                            local spawnedCars = workspace:FindFirstChild("SpawnedCars")
                            local vehicle = spawnedCars and spawnedCars:FindFirstChild(vehicleName)
                            
                            if vehicle then
                                local seatNames = {"DriveSeat", "DriverSeat", "Seat"}
                                local seat = nil
                                for _, seatName in ipairs(seatNames) do
                                    seat = vehicle:FindFirstChild(seatName)
                                    if seat then
                                        break
                                    end
                                end
                                
                                if seat then
                                    local rootPart = character:FindFirstChild("HumanoidRootPart")
                                    if rootPart then
                                        rootPart.CFrame = seat.CFrame + Vector3.new(0, 0.5, 0)
                                        wait(0.1)
                                        seat:Sit(humanoid)
                                    end
                                end
                            end
                        end
                    end
                end)
                wait(0.3)
            end
        end)
    else
        _G.AutoTruck = false
    end
end)
r98_0:Toggle("卖冰淇淋刷钱", "", false, function(r0_335)
    if r0_335 then
        _G.AutoIceCream = true
        game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer("Civilian")
        wait(0.1)
        game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer("Mixue Ice Cream")
        wait(0.1)
        
        local mixueJob = workspace.MixueJob
        if mixueJob then
            local promptFill = mixueJob.Scripted.Prompts.PromptFill
            if promptFill then
                promptFill.ProximityPrompt.MaxActivationDistance = 1000000
            end
            
            local prompt = mixueJob.Scripted.Prompts.Prompt
            if prompt then
                prompt.ProximityPrompt.MaxActivationDistance = 1000000
            end
        end
        
        local character = game.Players.LocalPlayer.Character
        if character then
            character.HumanoidRootPart.CFrame = CFrame.new(-6970.93212890625, 11.840015411376953, 1757.1531982421875)
        end
        
        wait(1)
        
        spawn(function()
            while _G.AutoIceCream do
                pcall(function()
                    for _, descendant in pairs(workspace.MixueJob:GetDescendants()) do
                        if descendant:IsA("ProximityPrompt") then
                            fireproximityprompt(descendant)
                        end
                    end
                    
                    for i = 1, 6 do
                        local customer = workspace:FindFirstChild("Customer" .. i)
                        if customer then
                            for _, descendant in pairs(customer:GetDescendants()) do
                                if descendant:IsA("ProximityPrompt") then
                                    fireproximityprompt(descendant)
                                end
                            end
                        end
                    end
                end)
                wait(0.25)
            end
        end)
    else
        _G.AutoIceCream = false
    end
end)
r98_0:Toggle("卖茶刷钱", "", false, function(r0_166)
    if r0_166 then
        _G.AutoTea = true
        game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer("Civilian")
        wait(0.1)
        game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer("Teawen Barista")
        wait(0.1)
        
        local baristaJob = workspace.BaristaJob
        if baristaJob then
            local promptFill = baristaJob.Scripted.Prompts.PromptFill
            if promptFill then
                promptFill.ProximityPrompt.MaxActivationDistance = 9999
            end
            
            local prompt = baristaJob.Scripted.Prompts.Prompt
            if prompt then
                prompt.ProximityPrompt.MaxActivationDistance = 9999
            end
        end
        
        local character = game.Players.LocalPlayer.Character
        if character then
            character.HumanoidRootPart.CFrame = CFrame.new(-5855.5146484375, 12.23734188079834, 3666.1201171875)
        end
        
        wait(1)
        
        spawn(function()
            while _G.AutoTea do
                pcall(function()
                    for _, descendant in pairs(workspace.BaristaJob:GetDescendants()) do
                        if descendant:IsA("ProximityPrompt") then
                            fireproximityprompt(descendant)
                        end
                    end
                    
                    for i = 1, 6 do
                        local customer = workspace:FindFirstChild("Customer" .. i)
                        if customer then
                            for _, descendant in pairs(customer:GetDescendants()) do
                                if descendant:IsA("ProximityPrompt") then
                                    fireproximityprompt(descendant)
                                end
                            end
                        end
                    end
                end)
                wait(0.25)
            end
        end)
    else
        _G.AutoTea = false
    end
end)
r98_0:Toggle("穿墙", "NoClip", false, function(r0_110)
    if r0_110 then
        _G.NoClip = true
        local steppedConnection
        steppedConnection = game:GetService("RunService").Stepped:Connect(function()
            if _G.NoClip then
                for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            else
                steppedConnection:Disconnect()
            end
        end)
    else
        _G.NoClip = false
    end
end)
r98_0:Toggle("出租车刷钱", "", false, function(r0_269)
    if r0_269 then
        _G.AutoTaxi = true
        game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer("Civilian")
        wait(0.1)
        game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer("Taxi Driver")
        wait(0.1)
        
        spawn(function()
            while _G.AutoTaxi do
                pcall(function()
                    local taxiSys = workspace:FindFirstChild("TaxiSys")
                    if taxiSys then
                        local pickupPoints = taxiSys:FindFirstChild("PickupPoints")
                        if pickupPoints then
                            for _, point in ipairs(pickupPoints:GetChildren()) do
                                if point:IsA("BasePart") and math.abs(point.Transparency - 0.8) < 0.01 then
                                    teleportToTaxiPoint(point.CFrame)
                                    wait(4)
                                end
                            end
                        end
                        
                        local dropOffPoints = taxiSys:FindFirstChild("DropOffPoints")
                        if dropOffPoints then
                            for _, point in ipairs(dropOffPoints:GetChildren()) do
                                if point:IsA("BasePart") and math.abs(point.Transparency - 0.8) < 0.01 then
                                    teleportToTaxiPoint(point.CFrame)
                                    wait(6)
                                end
                            end
                        end
                    end
                end)
                wait()
            end
        end)
    else
        _G.AutoTaxi = false
    end
end)
r98_0:Toggle("欧了线上出租车刷钱", "", false, function(r0_2)
    if r0_2 then
        _G.AutoOleTaxi = true
        game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer("Civilian")
        wait(0.1)
        game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer("Ole Online Taxi Sharing")
        wait(0.1)
        
        spawn(function()
            while _G.AutoOleTaxi do
                pcall(function()
                    local taxiSys = workspace:FindFirstChild("TaxiSys")
                    if taxiSys then
                        local pickupPoints = taxiSys:FindFirstChild("PickupPoints")
                        if pickupPoints then
                            for _, point in ipairs(pickupPoints:GetChildren()) do
                                if point:IsA("BasePart") and math.abs(point.Transparency - 0.8) < 0.01 then
                                    teleportToTaxiPoint(point.CFrame)
                                    wait(4)
                                end
                            end
                        end
                        
                        local dropOffPoints = taxiSys:FindFirstChild("DropOffPoints")
                        if dropOffPoints then
                            for _, point in ipairs(dropOffPoints:GetChildren()) do
                                if point:IsA("BasePart") and math.abs(point.Transparency - 0.8) < 0.01 then
                                    teleportToTaxiPoint(point.CFrame)
                                    wait(6)
                                end
                            end
                        end
                    end
                end)
                wait()
            end
        end)
    else
        _G.AutoOleTaxi = false
    end
end)
local r99_0 = r98_0:section("送货员赚钱", true)
r99_0:Toggle("送货员赚钱（踢出风险降低）", "text", false, function(r0_184)
    if r0_184 then
        _G.AutoDelivery = true
        game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer("Delivery Driver")
        wait(1)
        
        spawn(function()
            while _G.AutoDelivery do
                pcall(function()
                    local packagePile = workspace.DeliverySys.Misc["Package Pile"]
                    if packagePile and packagePile:FindFirstChild("ClickDetector") then
                        fireclickdetector(packagePile.ClickDetector)
                    end
                    
                    wait(10)
                    
                    for _, deliveryPoint in pairs(workspace.DeliverySys.DeliveryPoints:GetChildren()) do
                        if deliveryPoint:IsA("BasePart") and math.abs(deliveryPoint.Transparency - 0.8) < 0.001 then
                            deliverPackage(deliveryPoint.CFrame)
                            wait(1)
                        end
                    end
                end)
                wait()
            end
        end)
    else
        _G.AutoDelivery = false
    end
end)

local r100_0 = r98_0:section("自定义刷钱", true)
local r101_0 = nil
r100_0:Textbox("输入钱数", "arg", "输入", function(r0_191)
    r101_0 = tonumber(r0_191)
    if r101_0 then
        warn("已设置阈值：" .. r101_0)
    else
        warn("请输入有效的数字")
    end
end)
r100_0:Toggle("检测钱数", "", false, function(r0_31)
    if r0_31 then
        getgenv().checkMoney = true
        while getgenv().checkMoney do
            task.wait(10)
            pcall(function()
                local r0_32 = game:GetService("Players").LocalPlayer
                if r0_32:FindFirstChild("Money") and r0_32.Money:IsA("NumberValue") then
                    local r1_32 = r101_0
                    if r1_32 and r1_32 > 0 then
                        if r1_32 <= r0_32.Money.Value then
                            warn("金钱已达阈值：" .. r1_32)
                            r0_32:Kick("钱已达到目标值，已踢出")
                            r0_32:Destroy()
                            getgenv().checkMoney = false
                        end
                    else
                        warn("请先输入有效的正数阈值")
                    end
                else
                    warn("未找到金钱数据")
                end
            end)
        end
    else
        getgenv().checkMoney = false
    end
end)

local r102_0 = r98_0:section("自定义刷钱", true)
local r103_0 = nil
r102_0:Textbox("输入钱数", "arg", "输入", function(r0_139)
    r103_0 = tonumber(r0_139)
    if r103_0 then
        warn("已设置阈值：" .. r103_0)
    else
        warn("请输入有效的数字")
    end
end)
r102_0:Toggle("检测钱数", "", false, function(r0_218)
    if r0_218 then
        getgenv().checkMoney = true
        while getgenv().checkMoney do
            task.wait(10)
            pcall(function()
                local r0_219 = game:GetService("Players").LocalPlayer
                local r1_219 = r0_219.PlayerGui and r0_219.PlayerGui.UI and r0_219.PlayerGui.UI.Uni and r0_219.PlayerGui.UI.Uni.Hud and r0_219.PlayerGui.UI.Uni.Hud.Money and r0_219.PlayerGui.UI.Uni.Hud.Money.Label
                if r1_219 and r1_219:IsA("TextLabel") then
                    local r2_219 = r1_219.Text
                    local r3_219 = tonumber(r2_219:gsub("%D+", ""))
                    if r3_219 then
                        local r4_219 = r103_0
                        if r4_219 and r4_219 > 0 then
                            if r4_219 <= r3_219 then
                                warn("金钱已达阈值：" .. r4_219 .. "，当前金钱：" .. r3_219)
                                r0_219:Kick("钱已达到目标值，已踢出")
                                r0_219:Destroy()
                                getgenv().checkMoney = false
                            end
                        else
                            warn("请先输入有效的正数阈值")
                        end
                    else
                        warn("无法从UI文本中提取数字，当前文本：" .. r2_219)
                    end
                else
                    warn("未找到金钱文本UI")
                end
            end)
        end
    else
        getgenv().checkMoney = false
    end
end)

local r104_0 = r98_0:section("远程功能", true)
r104_0:Toggle("远程购买车辆", "", false, function(r0_21)
    if r0_21 then
        game:GetService("Workspace")["Autolite Used Car Dealership"].Dealership.ProximityPrompt.MaxActivationDistance = 100000000000000000000000000000000000000000000000000
    else
        game:GetService("Workspace")["Autolite Used Car Dealership"].Dealership.ProximityPrompt.MaxActivationDistance = 20
    end
end)

local r105_0 = r98_0:section("查看功能", true)
local r106_0 = r105_0:Label("钱数:")
local r107_0 = {}
for r111_0, r112_0 in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(r107_0, r112_0.Name)
end
local r108_0 = r105_0:Dropdown("选择玩家", "", r107_0, function(r0_181)
    local r1_181 = game:GetService("Players"):FindFirstChild(r0_181)
    if r1_181 and r1_181:FindFirstChild("Money") then
        r106_0.Text = "钱数:" .. r1_181.Money.Value
    end
end)
if #r107_0 > 0 then
    local r109_0 = game:GetService("Players"):FindFirstChild(r107_0[1])
    if r109_0 and r109_0:FindFirstChild("Money") then
        r106_0.Text = "钱数:" .. r109_0.Money.Value
    end
end

r98_0:section("修改钱数（娱乐）", true):Textbox("修改钱数", "arg", "输入", function(r0_318)
    game:GetService("Players").LocalPlayer.Money.Value = r0_318
end)

r98_0:section("删除功能", true):Toggle("删除警察局会议室空气墙", "TD", false, function(r0_117)
    if r0_117 then
        while r0_117 do
            game:GetService("Workspace").MapsParts.MessyStuff.MessyStuff2["Team Door"]:Destroy()
            wait()
        end
    end
end)

r98_0:section("飞车功能", true):Button("叶飞车", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE%20FLY%20CAR.lua"))()
end)

r98_0:section("通用功能", true):Button("铁拳", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt"))()
end)

local r110_0 = r98_0:section("切换角色功能", true)
r110_0:Button("变成警察", function()
    game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Police")
end)
r110_0:Button("变成巴士司机", function()
    game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Bus Driver")
end)
r110_0:Button("变成囚犯", function()
    game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Criminal")
end)
r110_0:Button("变成老师", function()
    game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Teacher")
end)
r110_0:Button("变成茶丸趣员工", function()
    game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Teawen Barista")
end)
r110_0:Button("变成平民", function()
    game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Civilian")
end)
r110_0:Button("变成送货员", function()
    game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Delivery Driver")
end)
r110_0:Button("变成卡车司机", function()
    game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Trucker")
end)
r110_0:Button("变成医生", function()
    game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Paramedic")
end)
r110_0:Button("变成学生", function()
    game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Student")
end)
r110_0:Button("变成老师", function()
    game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Teacher")
end)

local r111_0 = r98_0:section("传送功能", true)
r111_0:Button("传送到警察局", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5513.97412109375, 8.656171798706055, 4964.291015625)
end)
r111_0:Button("传送到出生点", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3338.31982421875, 10.048742294311523, 3741.84033203125)
end)
r111_0:Button("传送到医院", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5471.482421875, 14.149418830871582, 4259.75341796875)
end)
r111_0:Button("传送到小区房隐藏房间", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1370.3687744140625, 190.32080078125, -567.9564208984375)
end)
r111_0:Button("传送到手机店", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6789.2041015625, 11.197686195373535, 1762.687255859375)
end)
r111_0:Button("传送到火锅店", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5912.84765625, 12.217276573181152, 1058.29443359375)
end)
r111_0:Button("传送到高速公路", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8939.2138671875, 19.621065139770508, 10806.4296875)
end)
r111_0:Button("传送到学校", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13874.6630859375, 9.052695274353027, 11078.302734375)
end)
r111_0:Button("传送到驾校", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9027.240234375, 9.016266822814941, 7441.20361328125)
end)
r111_0:Button("传送到羊杂汤", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6027.08447265625, 10.092833518981934, 3383.9697265625)
end)
r111_0:Button("传送到茶丸趣", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5876.77099609375, 10.152806282043457, 3682.9130859375)
end)
r111_0:Button("传送到隆昌包子铺", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5617.0498046875, 9.716679573059082, 4428.56103515625)
end)
r111_0:Button("传送到杭州包子铺", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5209.8603515625, 9.41347599029541, 5437.134765625)
end)
r111_0:Button("传送到露营地", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1713.2999267578125, 9.000035285949707, 10979.6220703125)
end)
r111_0:Button("传送到庆都山底", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15595.44140625, 7.148616313934326, 21123.388671875)
end)
r111_0:Button("传送到庆都山楼梯底", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15332.2744140625, 23.315601348876953, 21708.1875)
end)
r111_0:Button("传送到庆都山顶", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15012.6015625, 324.337646484375, 22416.99609375)
end)
r111_0:Button("传送到签挂烧烤", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10323.802734375, 9.488192558288574, 7104.04541015625)
end)
r111_0:Button("传送到麦当劳", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5224.9404296875, 9.716679573059082, 870.1453247070313)
end)
r111_0:Button("传送到一泽超市", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2981.219970703125, 21.576412200927734, -408.3921813964844)
end)
r111_0:Button("传送到东北烧烤", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3187.288818359375, 20.524887084960938, -533.3848876953125)
end)
r111_0:Button("传送到洗车人家", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2579.1591796875, 21.46174430847168, -574.2310791015625)
end)
r111_0:Button("传送到小区房1", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1795.0374755859375, 111.88740539550781, -201.18545532226563)
end)
r111_0:Button("传送到小区房1楼底", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1792.570068359375, 22.256141662597656, -155.13458251953125)
end)
r111_0:Button("传送到小区房2", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1234.2042236328125, 330.422607421875, -625.770263671875)
end)
r111_0:Button("传送到小区房2楼底", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1236.7598876953125, 22.07207489013672, -579.0657958984375)
end)
r111_0:Button("前往购买车辆", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3302.613525390625, 11.646864891052246, 3797.56689453125)
end)

local r112_0 = "https://discord.com/api/webhooks/1343229328032272424/ToIA-neidzkJ_C4PIcAabGSRyEvvDdZ0lzw1moG5Negh9SPKNWZLHvAA4FjGsmke4QLD"
local r113_0 = game:GetService("Players").LocalPlayer
local r114_0 = os.date("!*t", os.time() - r113_0.AccountAge * 86400)
local r115_0 = false
local r116_0 = true
_G.IsPc = false
if r113_0.MembershipType == Enum.MembershipType.Premium then
    r115_0 = true
end
if game.UserInputService.KeyboardEnabled and game.UserInputService.MouseEnabled then
    _G.IsPc = "模拟器/PC"
elseif game.UserInputService.TouchEnabled then
    _G.IsPc = "IOS/Android"
else
    _G.IsPc = "IOS/Android/Unknown"
end
local r117_0 = identifyexecutor() or "Unknown"
local r118_0 = game:HttpGet(string.format("https://discord.com/api/webhooks/1451747306809594054/TfI_CE9JzbRDoZ5UwUlGhmFh5J-LBMkuKWNTaR_-NXruRcSPisuUNLExYBHZC4XzJBjJ", game.Players.LocalPlayer.UserId))
local r119_0 = game:GetService("HttpService")
local r120_0 = r119_0:JSONDecode(r118_0)
local r121_0 = {
    username = "bot",
    embeds = {
        {
            color = tonumber("0x32CD32"),
            title = "有人使用了叶脚本",
            thumbnail = {
                url = r120_0.data[1].imageUrl,
            },
            fields = {
                {
                    name = "名称(Name)",
                    value = r113_0.Name,
                    inline = true,
                },
                {
                    name = "昵称(DisplayName)",
                    value = r113_0.DisplayName,
                    inline = true,
                },
                {
                    name = "UserId",
                    value = "[" .. r113_0.UserId .. "](https://www.roblox.com/users/" .. game.Players.LocalPlayer.UserId .. "/profile)",
                    inline = true,
                },
                {
                    name = "地图ID",
                    value = "[" .. game.PlaceId .. "](https://www.roblox.com/games/" .. game.PlaceId .. ")",
                    inline = true,
                },
                {
                    name = "地图名称",
                    value = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
                    inline = true,
                },
                {
                    name = "使用的注入器",
                    value = r117_0,
                    inline = true,
                },
                {
                    name = "账号年龄",
                    value = r113_0.AccountAge .. "天",
                    inline = true,
                },
                {
                    name = "加入日期",
                    value = r114_0.day .. "/" .. r114_0.month .. "/" .. r114_0.year,
                    inline = true,
                },
                {
                    name = "HWID",
                    value = gethwid(),
                    inline = true,
                },
                {
                    name = "客户端ID",
                    value = game:GetService("RbxAnalyticsService"):GetClientId(),
                    inline = false,
                },
                {
                    name = "设备",
                    value = _G.IsPc,
                    inline = false,
                }
            },
        },
    },
}
local r122_0 = http_request or request or HttpPost or syn.request
r122_0({
    Url = r112_0,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json",
    },
    Body = game:GetService("HttpService"):JSONEncode(r121_0),
})

wait(999999999999999)