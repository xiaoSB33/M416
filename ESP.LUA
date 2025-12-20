-- 修复后的完整UI库
local library = {}
library.Flags = {}
library.DefaultColor = Color3.fromRGB(56, 207, 154)

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local Blacklist = {Enum.KeyCode.Unknown, Enum.KeyCode.CapsLock, Enum.KeyCode.Escape, 
                   Enum.KeyCode.Tab, Enum.KeyCode.Return, Enum.KeyCode.Backspace, 
                   Enum.KeyCode.Space, Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D}

-- 清理旧界面
for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "Revenant" then
        v:Destroy()
    end
end

-- 修复核心函数
function library:GetXY(GuiObject)
    if not GuiObject then return 0, 0 end
    local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
    local Px = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max)
    local Py = math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
    return Px/Max, Py/May
end

function library:Toggle()
    for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v.Name == "Revenant" then
            v.Enabled = not v.Enabled
        end
    end
end

-- 简化的通知系统
function library:Notification(NotificationInfo)
    NotificationInfo = NotificationInfo or {}
    local Text = NotificationInfo.Text or "Notification"
    local Duration = NotificationInfo.Duration or 5
    local Color = NotificationInfo.Color or self.DefaultColor
    
    print("[Notification] " .. Text) -- 简化版本，只用控制台输出
end

-- 修复窗口创建函数
function library:Window(Info)
    Info = Info or {}
    local WindowTitle = Info.Text or "Revenant"
    
    -- 创建主界面
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "Revenant"
    screenGui.ResetOnSpawn = false
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.Parent = game:GetService("CoreGui")
    
    -- 创建顶部栏
    local topbar = Instance.new("Frame")
    topbar.Name = "Topbar"
    topbar.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    topbar.Position = UDim2.new(0.05, 0, 0.1, 0)
    topbar.Size = UDim2.new(0, 225, 0, 38)
    topbar.Parent = screenGui
    
    -- 圆角
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 4)
    corner.Parent = topbar
    
    -- 窗口标题
    local title = Instance.new("TextLabel")
    title.Name = "Title"
    title.Font = Enum.Font.GothamBold
    title.Text = WindowTitle
    title.TextColor3 = Color3.fromRGB(214, 214, 214)
    title.TextSize = 14
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(1, 0, 1, 0)
    title.Parent = topbar
    
    -- 关闭按钮
    local closeBtn = Instance.new("ImageButton")
    closeBtn.Name = "CloseButton"
    closeBtn.Image = "rbxassetid://7733717447"
    closeBtn.ImageColor3 = Color3.fromRGB(214, 214, 214)
    closeBtn.BackgroundTransparency = 1
    closeBtn.Position = UDim2.new(0.9, 0, 0.2, 0)
    closeBtn.Size = UDim2.new(0, 20, 0, 20)
    closeBtn.Parent = topbar
    
    -- 内容区域
    local contentFrame = Instance.new("Frame")
    contentFrame.Name = "ContentFrame"
    contentFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    contentFrame.Position = UDim2.new(0, 0, 1, 0)
    contentFrame.Size = UDim2.new(0, 225, 0, 0)
    contentFrame.ClipsDescendants = true
    contentFrame.Parent = topbar
    
    local contentCorner = Instance.new("UICorner")
    contentCorner.CornerRadius = UDim.new(0, 4)
    contentCorner.Parent = contentFrame
    
    -- 项目容器
    local itemContainer = Instance.new("Frame")
    itemContainer.Name = "ItemContainer"
    itemContainer.BackgroundTransparency = 1
    itemContainer.Size = UDim2.new(1, 0, 1, 0)
    itemContainer.Parent = contentFrame
    
    local layout = Instance.new("UIListLayout")
    layout.Parent = itemContainer
    
    -- 窗口控制变量
    local windowOpen = true
    local items = {}
    
    -- 拖动功能
    local dragging = false
    local dragInput, dragStart, startPos
    
    topbar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = topbar.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    topbar.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            topbar.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, 
                                      startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
    
    -- 开关窗口
    closeBtn.MouseButton1Click:Connect(function()
        windowOpen = not windowOpen
        contentFrame.Visible = windowOpen
        
        if windowOpen then
            contentFrame.Size = UDim2.new(0, 225, 0, layout.AbsoluteContentSize.Y)
        else
            contentFrame.Size = UDim2.new(0, 225, 0, 0)
        end
    end)
    
    -- 自动调整内容区域大小
    layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        if windowOpen then
            contentFrame.Size = UDim2.new(0, 225, 0, layout.AbsoluteContentSize.Y)
        end
    end)
    
    -- 创建窗口方法表
    local windowMethods = {}
    
    -- 按钮方法
    function windowMethods:Button(Info)
        Info = Info or {}
        local ButtonText = Info.Text or "Button"
        local Callback = Info.Callback or function() end
        
        local buttonFrame = Instance.new("Frame")
        buttonFrame.Name = "Button"
        buttonFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
        buttonFrame.Size = UDim2.new(1, 0, 0, 38)
        buttonFrame.Parent = itemContainer
        
        local buttonCorner = Instance.new("UICorner")
        buttonCorner.CornerRadius = UDim.new(0, 4)
        buttonCorner.Parent = buttonFrame
        
        local buttonLabel = Instance.new("TextLabel")
        buttonLabel.Name = "ButtonLabel"
        buttonLabel.Font = Enum.Font.GothamBold
        buttonLabel.Text = ButtonText
        buttonLabel.TextColor3 = Color3.fromRGB(214, 214, 214)
        buttonLabel.TextSize = 13
        buttonLabel.TextXAlignment = Enum.TextXAlignment.Left
        buttonLabel.BackgroundTransparency = 1
        buttonLabel.Position = UDim2.new(0.05, 0, 0, 0)
        buttonLabel.Size = UDim2.new(0.9, 0, 1, 0)
        buttonLabel.Parent = buttonFrame
        
        local buttonBtn = Instance.new("TextButton")
        buttonBtn.Name = "Button"
        buttonBtn.Text = ""
        buttonBtn.BackgroundTransparency = 1
        buttonBtn.Size = UDim2.new(1, 0, 1, 0)
        buttonBtn.Parent = buttonFrame
        
        -- 悬停效果
        buttonBtn.MouseEnter:Connect(function()
            buttonFrame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
        end)
        
        buttonBtn.MouseLeave:Connect(function()
            buttonFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
        end)
        
        -- 点击事件
        buttonBtn.MouseButton1Click:Connect(function()
            pcall(Callback)
        end)
        
        return buttonFrame
    end
    
    -- 标签方法
    function windowMethods:Label(Info)
        Info = Info or {}
        local LabelText = Info.Text or "Label"
        local LabelColor = Info.Color or Color3.fromRGB(214, 214, 214)
        
        local labelFrame = Instance.new("Frame")
        labelFrame.Name = "Label"
        labelFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
        labelFrame.Size = UDim2.new(1, 0, 0, 38)
        labelFrame.Parent = itemContainer
        
        local labelCorner = Instance.new("UICorner")
        labelCorner.CornerRadius = UDim.new(0, 4)
        labelCorner.Parent = labelFrame
        
        local labelText = Instance.new("TextLabel")
        labelText.Name = "LabelText"
        labelText.Font = Enum.Font.GothamBold
        labelText.Text = LabelText
        labelText.TextColor3 = LabelColor
        labelText.TextSize = 13
        labelText.TextXAlignment = Enum.TextXAlignment.Left
        labelText.BackgroundTransparency = 1
        labelText.Position = UDim2.new(0.05, 0, 0, 0)
        labelText.Size = UDim2.new(0.9, 0, 1, 0)
        labelText.Parent = labelFrame
        
        -- 悬停效果
        labelFrame.MouseEnter:Connect(function()
            labelFrame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
        end)
        
        labelFrame.MouseLeave:Connect(function()
            labelFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
        end)
        
        local labelMethods = {}
        
        function labelMethods:Set(NewInfo)
            NewInfo = NewInfo or {}
            labelText.Text = NewInfo.Text or labelText.Text
            labelText.TextColor3 = NewInfo.Color or labelText.TextColor3
        end
        
        return labelMethods
    end
    
    -- 开关方法
    function windowMethods:Toggle(Info)
        Info = Info or {}
        local ToggleText = Info.Text or "Toggle"
        local Default = Info.Default or false
        local Callback = Info.Callback or function() end
        local Flag = Info.Flag or ToggleText
        
        library.Flags[Flag] = Default
        
        local toggleFrame = Instance.new("Frame")
        toggleFrame.Name = "Toggle"
        toggleFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
        toggleFrame.Size = UDim2.new(1, 0, 0, 38)
        toggleFrame.Parent = itemContainer
        
        local toggleCorner = Instance.new("UICorner")
        toggleCorner.CornerRadius = UDim.new(0, 4)
        toggleCorner.Parent = toggleFrame
        
        local toggleLabel = Instance.new("TextLabel")
        toggleLabel.Name = "ToggleLabel"
        toggleLabel.Font = Enum.Font.GothamBold
        toggleLabel.Text = ToggleText
        toggleLabel.TextColor3 = Color3.fromRGB(214, 214, 214)
        toggleLabel.TextSize = 13
        toggleLabel.TextXAlignment = Enum.TextXAlignment.Left
        toggleLabel.BackgroundTransparency = 1
        toggleLabel.Position = UDim2.new(0.05, 0, 0, 0)
        toggleLabel.Size = UDim2.new(0.7, 0, 1, 0)
        toggleLabel.Parent = toggleFrame
        
        local toggleBtn = Instance.new("TextButton")
        toggleBtn.Name = "ToggleButton"
        toggleBtn.Text = ""
        toggleBtn.BackgroundTransparency = 1
        toggleBtn.Size = UDim2.new(1, 0, 1, 0)
        toggleBtn.Parent = toggleFrame
        
        local toggleState = Default
        local toggleIndicator = Instance.new("Frame")
        toggleIndicator.Name = "ToggleIndicator"
        toggleIndicator.BackgroundColor3 = toggleState and library.DefaultColor or Color3.fromRGB(62, 62, 62)
        toggleIndicator.Position = UDim2.new(0.8, 0, 0.3, 0)
        toggleIndicator.Size = UDim2.new(0, 40, 0, 20)
        toggleIndicator.Parent = toggleFrame
        
        local toggleCorner2 = Instance.new("UICorner")
        toggleCorner2.CornerRadius = UDim.new(1, 0)
        toggleCorner2.Parent = toggleIndicator
        
        local toggleDot = Instance.new("Frame")
        toggleDot.Name = "ToggleDot"
        toggleDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        toggleDot.Position = toggleState and UDim2.new(0.5, 0, 0.1, 0) or UDim2.new(0, 2, 0.1, 0)
        toggleDot.Size = UDim2.new(0, 16, 0, 16)
        toggleDot.Parent = toggleIndicator
        
        local toggleDotCorner = Instance.new("UICorner")
        toggleDotCorner.CornerRadius = UDim.new(1, 0)
        toggleDotCorner.Parent = toggleDot
        
        -- 悬停效果
        toggleBtn.MouseEnter:Connect(function()
            toggleFrame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
        end)
        
        toggleBtn.MouseLeave:Connect(function()
            toggleFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
        end)
        
        -- 点击切换
        toggleBtn.MouseButton1Click:Connect(function()
            toggleState = not toggleState
            library.Flags[Flag] = toggleState
            
            -- 动画效果
            toggleIndicator.BackgroundColor3 = toggleState and library.DefaultColor or Color3.fromRGB(62, 62, 62)
            toggleDot.Position = toggleState and UDim2.new(0.5, 0, 0.1, 0) or UDim2.new(0, 2, 0.1, 0)
            
            pcall(Callback, toggleState)
        end)
        
        local toggleMethods = {}
        
        function toggleMethods:Set(State)
            if toggleState ~= State then
                toggleState = State
                library.Flags[Flag] = toggleState
                
                toggleIndicator.BackgroundColor3 = toggleState and library.DefaultColor or Color3.fromRGB(62, 62, 62)
                toggleDot.Position = toggleState and UDim2.new(0.5, 0, 0.1, 0) or UDim2.new(0, 2, 0.1, 0)
                
                pcall(Callback, toggleState)
            end
        end
        
        return toggleMethods
    end
    
    return windowMethods
end

return library
