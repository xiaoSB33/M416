local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

-- 创建自瞄窗口
local AimWindow = WindUI:CreateWindow({
    Title = "空云自瞄",
    Author = "Aim脚本",
    Icon = "crosshair", -- 使用WindUI内置图标
    Folder = "AimConfig",
    Size = UDim2.new(0, 400, 0, 350),
    ToggleKey = Enum.KeyCode.F6
})

-- 添加自瞄选项卡
local AimTab = AimWindow:Tab({
    Title = "自瞄设置",
    Icon = "crosshair"
})

-- 基础设置部分
local BasicSection = AimTab:Section({
    Title = "基础设置"
})

local AimEnabled = BasicSection:Toggle({
    Title = "启用自瞄",
    Value = false,
    Callback = function(value)
        _G.AimEnabled = value
    end
})

local AimKey = BasicSection:Keybind({
    Title = "自瞄按键",
    Value = "MouseButton2", -- 右键
    Callback = function(value)
        _G.AimKey = value
    end
})

local AimType = BasicSection:Dropdown({
    Title = "自瞄模式",
    Values = {"按住按键", "切换模式", "自动瞄准"},
    Value = "按住按键",
    Callback = function(value)
        _G.AimType = value
    end
})

local Smoothness = BasicSection:Slider({
    Title = "平滑度",
    Value = {Default = 10, Min = 1, Max = 50},
    Callback = function(value)
        _G.Smoothness = value
    end
})

-- 目标设置部分
local TargetSection = AimTab:Section({
    Title = "目标设置"
})

local AimPart = TargetSection:Dropdown({
    Title = "瞄准部位",
    Values = {"头部", "躯干", "随机"},
    Value = "头部",
    Callback = function(value)
        _G.AimPart = value
    end
})

local FOV = TargetSection:Slider({
    Title = "瞄准范围(FOV)",
    Value = {Default = 100, Min = 10, Max = 500},
    Callback = function(value)
        _G.FOV = value
        updateFOVCircle()
    end
})

local MaxDistance = TargetSection:Slider({
    Title = "最大距离",
    Value = {Default = 1000, Min = 50, Max = 5000},
    Callback = function(value)
        _G.MaxDistance = value
    end
})

local TeamCheck = TargetSection:Toggle({
    Title = "队友检查",
    Value = true,
    Callback = function(value)
        _G.TeamCheck = value
    end
})

local VisibleCheck = TargetSection:Toggle({
    Title = "可见性检查",
    Value = false,
    Callback = function(value)
        _G.VisibleCheck = value
    end
})

-- 高级设置部分
local AdvancedSection = AimTab:Section({
    Title = "高级设置"
})

local Prediction = AdvancedSection:Toggle({
    Title = "弹道预测",
    Value = false,
    Callback = function(value)
        _G.Prediction = value
    end
})

local PredictionAmount = AdvancedSection:Slider({
    Title = "预测强度",
    Value = {Default = 0.1, Min = 0.01, Max = 0.5},
    Callback = function(value)
        _G.PredictionAmount = value
    end
})

local AutoShoot = AdvancedSection:Toggle({
    Title = "自动射击",
    Value = false,
    Callback = function(value)
        _G.AutoShoot = value
    end
})

local ShootDelay = AdvancedSection:Slider({
    Title = "射击延迟(ms)",
    Value = {Default = 100, Min = 10, Max = 500},
    Callback = function(value)
        _G.ShootDelay = value
    end
})

-- 初始化全局变量
_G.AimEnabled = false
_G.AimKey = "MouseButton2"
_G.AimType = "按住按键"
_G.Smoothness = 10
_G.AimPart = "头部"
_G.FOV = 100
_G.MaxDistance = 1000
_G.TeamCheck = true
_G.VisibleCheck = false
_G.Prediction = false
_G.PredictionAmount = 0.1
_G.AutoShoot = false
_G.ShootDelay = 100

-- FOV圆圈显示
local FOVCircle = Drawing.new("Circle")
FOVCircle.Visible = false
FOVCircle.Radius = _G.FOV
FOVCircle.Color = Color3.fromRGB(255, 255, 255)
FOVCircle.Thickness = 1
FOVCircle.Filled = false
FOVCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)

function updateFOVCircle()
    FOVCircle.Radius = _G.FOV
    FOVCircle.Visible = _G.AimEnabled
end

-- 获取瞄准部位
function getAimPart(character)
    if _G.AimPart == "头部" then
        return character:FindFirstChild("Head") or character:FindFirstChild("HumanoidRootPart")
    elseif _G.AimPart == "躯干" then
        return character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Head")
    else -- 随机
        local parts = {"Head", "HumanoidRootPart", "UpperTorso"}
        for _, partName in pairs(parts) do
            local part = character:FindFirstChild(partName)
            if part then return part end
        end
        return character:FindFirstChild("HumanoidRootPart")
    end
end

-- 检查可见性
function isVisible(targetPart)
    if not _G.VisibleCheck then return true end
    
    local localPlayer = game.Players.LocalPlayer
    local camera = workspace.CurrentCamera
    local origin = camera.CFrame.Position
    local targetPos = targetPart.Position
    
    local ray = Ray.new(origin, (targetPos - origin).Unit * _G.MaxDistance)
    local hit, position = workspace:FindPartOnRayWithIgnoreList(ray, {localPlayer.Character, camera})
    
    return hit and hit:IsDescendantOf(targetPart.Parent)
end

-- 获取最近的玩家
function getClosestPlayer()
    if not _G.AimEnabled then return nil end
    
    local localPlayer = game.Players.LocalPlayer
    local camera = workspace.CurrentCamera
    local mousePos = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
    
    local closestPlayer = nil
    local closestDistance = _G.FOV
    
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= localPlayer and player.Character then
            local character = player.Character
            local humanoid = character:FindFirstChild("Humanoid")
            
            if humanoid and humanoid.Health > 0 then
                -- 队友检查
                if _G.TeamCheck and player.Team == localPlayer.Team then
                    continue
                end
                
                local aimPart = getAimPart(character)
                if aimPart then
                    local screenPos, onScreen = camera:WorldToViewportPoint(aimPart.Position)
                    
                    if onScreen then
                        local distance = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                        
                        if distance <= closestDistance then
                            local actualDistance = (localPlayer.Character.HumanoidRootPart.Position - aimPart.Position).Magnitude
                            
                            if actualDistance <= _G.MaxDistance and isVisible(aimPart) then
                                closestDistance = distance
                                closestPlayer = player
                            end
                        end
                    end
                end
            end
        end
    end
    
    return closestPlayer
end

-- 平滑瞄准
function smoothAim(targetPosition)
    local camera = workspace.CurrentCamera
    local currentCameraCFrame = camera.CFrame
    local targetCFrame = CFrame.lookAt(currentCameraCFrame.Position, targetPosition)
    
    local smoothFactor = _G.Smoothness / 10
    local smoothedCFrame = currentCameraCFrame:Lerp(targetCFrame, 1 / smoothFactor)
    
    camera.CFrame = smoothedCFrame
end

-- 弹道预测
function getPredictedPosition(targetPart, bulletSpeed)
    if not _G.Prediction or not bulletSpeed then return targetPart.Position end
    
    local localPlayer = game.Players.LocalPlayer
    local character = localPlayer.Character
    if not character then return targetPart.Position end
    
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return targetPart.Position end
    
    local distance = (targetPart.Position - humanoidRootPart.Position).Magnitude
    local timeToTarget = distance / bulletSpeed
    local targetVelocity = targetPart.Velocity or Vector3.new(0, 0, 0)
    
    return targetPart.Position + (targetVelocity * timeToTarget * _G.PredictionAmount)
end

-- 自动射击
local lastShot = 0
function autoShoot(targetPlayer)
    if not _G.AutoShoot or not targetPlayer then return end
    
    local currentTime = tick()
    if currentTime - lastShot < (_G.ShootDelay / 1000) then return end
    
    local localPlayer = game.Players.LocalPlayer
    local character = localPlayer.Character
    if not character then return end
    
    local tool = character:FindFirstChildOfClass("Tool")
    if tool then
        -- 模拟射击（具体实现取决于游戏）
        tool:Activate()
        lastShot = currentTime
    end
end

-- 按键状态跟踪
local aimKeyDown = false
local aimToggled = false

-- 输入检测
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Keyboard or input.UserInputType == Enum.UserInputType.MouseButton1 then
        local key = input.KeyCode.Name == "Unknown" and "MouseButton1" or input.KeyCode.Name
        
        if key == _G.AimKey then
            if _G.AimType == "按住按键" then
                aimKeyDown = true
            elseif _G.AimType == "切换模式" then
                aimToggled = not aimToggled
            end
        end
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Keyboard or input.UserInputType == Enum.UserInputType.MouseButton1 then
        local key = input.KeyCode.Name == "Unknown" and "MouseButton1" or input.KeyCode.Name
        
        if key == _G.AimKey and _G.AimType == "按住按键" then
            aimKeyDown = false
        end
    end
end)

-- 主循环
game:GetService("RunService").RenderStepped:Connect(function()
    FOVCircle.Visible = _G.AimEnabled
    
    if not _G.AimEnabled then return end
    
    local shouldAim = false
    if _G.AimType == "按住按键" then
        shouldAim = aimKeyDown
    elseif _G.AimType == "切换模式" then
        shouldAim = aimToggled
    else -- 自动瞄准
        shouldAim = true
    end
    
    if shouldAim then
        local closestPlayer = getClosestPlayer()
        if closestPlayer and closestPlayer.Character then
            local aimPart = getAimPart(closestPlayer.Character)
            if aimPart then
                local targetPosition = getPredictedPosition(aimPart, 1000) -- 假设子弹速度1000
                smoothAim(targetPosition)
                autoShoot(closestPlayer)
            end
        end
    end
end)

-- 显示成功消息
WindUI:Notify({
    Title = "自瞄已加载",
    Content = "按F6打开/关闭自瞄设置窗口",
    Icon = "crosshair",
    Duration = 5
})

-- 清理函数
game.Players.PlayerRemoving:Connect(function(player)
    -- 清理相关资源
end)
