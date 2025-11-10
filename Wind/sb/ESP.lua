local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

-- 创建ESP窗口
local ESPWindow = WindUI:CreateWindow({
    Title = "空云ESP v2.1",
    Author = "修复版ESP",
    Icon = "eye",
    Folder = "ESPConfig",
    Size = UDim2.new(0, 400, 0, 350),
    ToggleKey = Enum.KeyCode.F5
})

-- 初始化全局变量
_G.ESPEnabled = false  -- 默认关闭，不自动开启
_G.ShowNames = true
_G.ShowDistance = true
_G.ShowBoxes = true
_G.ShowHealth = true
_G.ShowTracers = false
_G.MaxDistance = 1000
_G.TeamCheck = false   -- 修复：默认显示所有人
_G.UseTeamColor = true
_G.EnemyColor = Color3.fromRGB(255, 0, 0)
_G.FriendColor = Color3.fromRGB(0, 255, 0)
_G.RefreshRate = 30    -- 降低刷新率减少延迟

-- ESP对象缓存
local ESPCache = {}
local LastUpdate = 0
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- 修复后的ESP绘制系统
local ESPManager = {
    Objects = {},
    Connections = {},
    Enabled = false
}

-- 创建单个ESP对象
function ESPManager:CreateESP(player)
    if self.Objects[player] then return self.Objects[player] end
    
    local esp = {
        Player = player,
        Drawings = {},
        Valid = false,
        LastUpdate = 0
    }
    
    -- 预创建所有绘图对象
    esp.Drawings.Name = Drawing.new("Text")
    esp.Drawings.Distance = Drawing.new("Text")
    esp.Drawings.Box = Drawing.new("Square")
    esp.Drawings.HealthBar = Drawing.new("Square")
    esp.Drawings.Tracer = Drawing.new("Line")
    
    -- 一次性设置属性
    esp.Drawings.Name.Size = 16
    esp.Drawings.Name.Outline = true
    esp.Drawings.Name.Center = true
    
    esp.Drawings.Distance.Size = 14
    esp.Drawings.Distance.Outline = true
    esp.Drawings.Distance.Center = true
    
    esp.Drawings.Box.Thickness = 2
    esp.Drawings.Box.Filled = false
    
    esp.Drawings.HealthBar.Thickness = 1
    esp.Drawings.HealthBar.Filled = true
    
    esp.Drawings.Tracer.Thickness = 1
    
    self.Objects[player] = esp
    return esp
end

-- 修复：正确显示所有人
function ESPManager:ShouldShowPlayer(player)
    if player == LocalPlayer then return false end  -- 不显示自己
    
    -- 修复：_G.TeamCheck为false时显示所有人
    if not _G.TeamCheck then return true end
    
    -- 只有当TeamCheck为true时才检查队伍
    return player.Team ~= LocalPlayer.Team
end

-- 更新单个ESP（修复延迟问题）
function ESPManager:UpdateESP(player)
    local esp = self.Objects[player]
    if not esp or not _G.ESPEnabled then return end
    
    -- 修复：检查是否应该显示这个玩家
    if not self:ShouldShowPlayer(player) then
        self:HideESP(player)
        return
    end
    
    local character = player.Character
    if not character then
        self:HideESP(player)
        return
    end
    
    local humanoid = character:FindFirstChild("Humanoid")
    local head = character:FindFirstChild("Head")
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    
    if not humanoid or not head or not rootPart or humanoid.Health <= 0 then
        self:HideESP(player)
        return
    end
    
    local camera = workspace.CurrentCamera
    local position, onScreen = camera:WorldToViewportPoint(head.Position)
    local distance = (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head") 
                     and (LocalPlayer.Character.Head.Position - head.Position).Magnitude) or 0
    
    if not onScreen or distance > _G.MaxDistance then
        self:HideESP(player)
        return
    end
    
    -- 修复：正确的颜色逻辑
    local teamColor = _G.EnemyColor
    if _G.UseTeamColor and player.Team == LocalPlayer.Team then
        teamColor = _G.FriendColor
    end
    
    -- 减少延迟：直接设置属性，不通过函数调用
    esp.Drawings.Name.Visible = _G.ShowNames
    esp.Drawings.Distance.Visible = _G.ShowDistance
    esp.Drawings.Box.Visible = _G.ShowBoxes
    esp.Drawings.HealthBar.Visible = _G.ShowHealth
    esp.Drawings.Tracer.Visible = _G.ShowTracers
    
    -- 更新位置和文本
    if _G.ShowNames then
        esp.Drawings.Name.Position = Vector2.new(position.X, position.Y - 50)
        esp.Drawings.Name.Text = player.Name
        esp.Drawings.Name.Color = teamColor
    end
    
    if _G.ShowDistance then
        esp.Drawings.Distance.Position = Vector2.new(position.X, position.Y - 30)
        esp.Drawings.Distance.Text = math.floor(distance) .. " studs"
        esp.Drawings.Distance.Color = teamColor
    end
    
    -- 修复：更精确的方框计算（减少延迟）
    if _G.ShowBoxes then
        local characterSize = character:GetExtentsSize()
        local boxWidth = math.max(30, characterSize.X * 0.8)
        local boxHeight = math.max(60, characterSize.Y * 0.6)
        
        esp.Drawings.Box.Position = Vector2.new(position.X - boxWidth/2, position.Y - boxHeight/2)
        esp.Drawings.Box.Size = Vector2.new(boxWidth, boxHeight)
        esp.Drawings.Box.Color = teamColor
    end
    
    if _G.ShowHealth then
        local healthPercent = humanoid.Health / humanoid.MaxHealth
        local boxWidth = 40
        local boxHeight = 80
        esp.Drawings.HealthBar.Position = Vector2.new(position.X - boxWidth/2 - 8, position.Y - boxHeight/2)
        esp.Drawings.HealthBar.Size = Vector2.new(4, boxHeight * healthPercent)
        esp.Drawings.HealthBar.Color = Color3.fromRGB(255 * (1 - healthPercent), 255 * healthPercent, 0)
    end
    
    if _G.ShowTracers then
        local screenCenter = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y)
        esp.Drawings.Tracer.From = screenCenter
        esp.Drawings.Tracer.To = Vector2.new(position.X, position.Y)
        esp.Drawings.Tracer.Color = teamColor
    end
    
    esp.Valid = true
    esp.LastUpdate = tick()
end

-- 隐藏ESP
function ESPManager:HideESP(player)
    local esp = self.Objects[player]
    if esp then
        for name, drawing in pairs(esp.Drawings) do
            drawing.Visible = false
        end
        esp.Valid = false
    end
end

-- 清理无效的ESP对象
function ESPManager:Cleanup()
    local currentTime = tick()
    for player, esp in pairs(self.Objects) do
        if not Players:FindFirstChild(player.Name) or 
           (currentTime - esp.LastUpdate > 5 and not esp.Valid) then
            self:RemoveESP(player)
        end
    end
end

-- 移除ESP对象
function ESPManager:RemoveESP(player)
    local esp = self.Objects[player]
    if esp then
        for name, drawing in pairs(esp.Drawings) do
            drawing:Remove()
        end
        self.Objects[player] = nil
    end
end

-- 修复：更高效的主更新循环
function ESPManager:Start()
    if self.Enabled then return end
    self.Enabled = true
    
    -- 连接玩家加入事件
    self.Connections.playerAdded = Players.PlayerAdded:Connect(function(player)
        self:CreateESP(player)
    end)
    
    -- 连接玩家离开事件
    self.Connections.playerRemoving = Players.PlayerRemoving:Connect(function(player)
        self:RemoveESP(player)
    end)
    
    -- 预创建现有玩家的ESP
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            self:CreateESP(player)
        end
    end
    
    -- 修复：更高效的渲染循环
    self.Connections.renderStepped = RunService.RenderStepped:Connect(function()
        if not _G.ESPEnabled then
            for player, esp in pairs(self.Objects) do
                self:HideESP(player)
            end
            return
        end
        
        local currentTime = tick()
        
        -- 修复：更简单的更新逻辑，减少延迟
        local updateInterval = 1 / _G.RefreshRate
        if currentTime - LastUpdate < updateInterval then return end
        LastUpdate = currentTime
        
        -- 修复：更新所有玩家，确保每个人都显示
        for player, esp in pairs(self.Objects) do
            self:UpdateESP(player)
        end
        
        -- 定期清理
        if currentTime % 3 < updateInterval then
            self:Cleanup()
        end
    end)
end

-- 停止ESP
function ESPManager:Stop()
    self.Enabled = false
    for _, connection in pairs(self.Connections) do
        connection:Disconnect()
    end
    for player, esp in pairs(self.Objects) do
        self:RemoveESP(player)
    end
end

-- 创建UI
local ESPTab = ESPWindow:Tab({
    Title = "ESP设置",
    Icon = "eye"
})

-- 基础设置
local BasicSection = ESPTab:Section({
    Title = "基础设置"
})

BasicSection:Toggle({
    Title = "启用ESP",
    Value = false,  -- 默认关闭
    Callback = function(value)
        _G.ESPEnabled = value
        if value then
            ESPManager:Start()
            WindUI:Notify({
                Title = "ESP已开启",
                Content = "ESP功能已激活",
                Icon = "eye",
                Duration = 2
            })
        else
            ESPManager:Stop()
            WindUI:Notify({
                Title = "ESP已关闭", 
                Content = "ESP功能已停用",
                Icon = "eye-off",
                Duration = 2
            })
        end
    end
})

BasicSection:Toggle({
    Title = "显示名称",
    Value = true,
    Callback = function(value)
        _G.ShowNames = value
    end
})

BasicSection:Toggle({
    Title = "显示距离", 
    Value = true,
    Callback = function(value)
        _G.ShowDistance = value
    end
})

BasicSection:Toggle({
    Title = "显示方框",
    Value = true,
    Callback = function(value)
        _G.ShowBoxes = value
    end
})

BasicSection:Toggle({
    Title = "显示血量",
    Value = true,
    Callback = function(value)
        _G.ShowHealth = value
    end
})

BasicSection:Toggle({
    Title = "显示射线",
    Value = false,
    Callback = function(value)
        _G.ShowTracers = value
    end
})

-- 修复：队伍设置说明更清晰
local AdvancedSection = ESPTab:Section({
    Title = "高级设置"
})

AdvancedSection:Slider({
    Title = "最大距离",
    Value = {Default = 1000, Min = 100, Max = 5000},
    Callback = function(value)
        _G.MaxDistance = value
    end
})

AdvancedSection:Slider({
    Title = "刷新频率(FPS)",
    Value = {Default = 30, Min = 10, Max = 60},  -- 降低最大刷新率
    Callback = function(value)
        _G.RefreshRate = value
    end
})

AdvancedSection:Toggle({
    Title = "仅显示敌人",  -- 更清晰的描述
    Value = false,  -- 默认显示所有人
    Callback = function(value)
        _G.TeamCheck = value
        WindUI:Notify({
            Title = "显示模式已更改",
            Content = value and "仅显示敌人" or "显示所有玩家",
            Icon = "users",
            Duration = 2
        })
    end
})

AdvancedSection:Toggle({
    Title = "使用队伍颜色",
    Value = true,
    Callback = function(value)
        _G.UseTeamColor = value
    end
})

-- 颜色设置
local ColorSection = ESPTab:Section({
    Title = "颜色设置"
})

ColorSection:Colorpicker({
    Title = "敌人颜色",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(color)
        _G.EnemyColor = color
    end
})

ColorSection:Colorpicker({
    Title = "队友颜色", 
    Default = Color3.fromRGB(0, 255, 0),
    Callback = function(color)
        _G.FriendColor = color
    end
})

-- 性能监控
local PerformanceSection = ESPTab:Section({
    Title = "状态监控"
})

local PlayerCountLabel = PerformanceSection:Paragraph({
    Title = "ESP状态: 未启用",
    Desc = "玩家数量: 0"
})

-- 更新状态监控
game:GetService("RunService").Heartbeat:Connect(function()
    local playerCount = #Players:GetPlayers() - 1
    local espCount = 0
    for player, esp in pairs(ESPManager.Objects) do
        if esp.Valid then espCount = espCount + 1 end
    end
    
    local status = _G.ESPEnabled and "已启用" or "未启用"
    local mode = _G.TeamCheck and "仅敌人" or "所有人"
    
    PlayerCountLabel:SetTitle(string.format("ESP状态: %s (%s)", status, mode))
    PlayerCountLabel:SetDesc(string.format("玩家: %d | 显示: %d", playerCount, espCount))
end)

-- 修复：不自动开启，显示提示
WindUI:Notify({
    Title = "ESP脚本已加载",
    Content = "按F5打开设置，手动启用ESP功能",
    Icon = "check",
    Duration = 5
})

-- 添加重置功能（可选）
local ResetButton = BasicSection:Button({
    Title = "重置ESP",
    Callback = function()
        ESPManager:Stop()
        task.wait(0.5)
        if _G.ESPEnabled then
            ESPManager:Start()
            WindUI:Notify({
                Title = "ESP已重置",
                Content = "ESP系统已重新初始化",
                Icon = "refresh-cw",
                Duration = 2
            })
        end
    end
})
