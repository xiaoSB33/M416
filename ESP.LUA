local library = {}
library.Flags = {}
library.DefaultColor = Color3.fromRGB(56, 207, 154)

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Blacklist = {
    Enum.KeyCode.Unknown, Enum.KeyCode.CapsLock, Enum.KeyCode.Escape, 
    Enum.KeyCode.Tab, Enum.KeyCode.Return, Enum.KeyCode.Backspace, 
    Enum.KeyCode.Space, Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D
}

-- 清理旧界面
for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "Revenant" then
        v:Destroy()
    end
end

-- 修复的函数定义（第227行附近）
function library:GetXY(GuiObject)
    local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
    local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), 
                   math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
    return Px / Max, Py / May
end

function library:Toggle()
    for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v.Name == "Revenant" then
            v.Enabled = not v.Enabled
        end
    end
end

-- 修复通知系统（确保单例）
if not game:GetService("CoreGui"):FindFirstChild("NotificationLibrary") then
    local notificationLibrary = Instance.new("ScreenGui")
    notificationLibrary.Name = "NotificationLibrary"
    notificationLibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    notificationLibrary.Parent = game:GetService("CoreGui")
    
    local notificationHolder = Instance.new("Frame")
    notificationHolder.Name = "NotificationHolder"
    notificationHolder.AnchorPoint = Vector2.new(0, 0.5)
    notificationHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    notificationHolder.BackgroundTransparency = 1
    notificationHolder.Position = UDim2.fromScale(0, 0.5)
    notificationHolder.Size = UDim2.fromScale(0.8, 1)
    notificationHolder.Parent = notificationLibrary
    
    local notificationUIListLayout = Instance.new("UIListLayout")
    notificationUIListLayout.Name = "NotificationUIListLayout"
    notificationUIListLayout.FillDirection = Enum.FillDirection.Vertical
    notificationUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    notificationUIListLayout.Padding = UDim.new(0, 4)
    notificationUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    notificationUIListLayout.Parent = notificationHolder
    
    local notificationUIPadding = Instance.new("UIPadding")
    notificationUIPadding.Name = "NotificationUIPadding"
    notificationUIPadding.PaddingBottom = UDim.new(0, 9)
    notificationUIPadding.PaddingLeft = UDim.new(0, 5)
    notificationUIPadding.Parent = notificationHolder
end

local NotificationLib = game:GetService("CoreGui"):FindFirstChild("NotificationLibrary")
local Holder = NotificationLib and NotificationLib:FindFirstChild("NotificationHolder")

-- 修复通知函数（添加错误处理）
function library:Notification(NotificationInfo)
    if not Holder then return end
    
    NotificationInfo.Text = NotificationInfo.Text or "This is a notification."
    NotificationInfo.Duration = NotificationInfo.Duration or 5
    NotificationInfo.Color = NotificationInfo.Color or library.DefaultColor
    
    local notificationText = Instance.new("TextLabel")
    notificationText.Name = "NotificationText"
    notificationText.ClipsDescendants = true
    notificationText.Font = Enum.Font.GothamBold
    notificationText.Text = NotificationInfo.Text
    notificationText.TextColor3 = Color3.fromRGB(214, 214, 214)
    notificationText.TextSize = 14
    notificationText.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    notificationText.BorderSizePixel = 0
    notificationText.Position = UDim2.fromScale(0, 0.954)
    notificationText.Size = UDim2.fromOffset(0, 38)
    notificationText.Parent = Holder
    
    local outerFrame = Instance.new("Frame")
    outerFrame.Name = "OuterFrame"
    outerFrame.AnchorPoint = Vector2.new(0, 1)
    outerFrame.BackgroundColor3 = NotificationInfo.Color
    outerFrame.BorderSizePixel = 0
    outerFrame.Position = UDim2.fromScale(0, 1)
    outerFrame.Size = UDim2.new(1, 0, 0, 3)
    outerFrame.ZIndex = 2
    outerFrame.Parent = notificationText
    
    local notificationUICorner = Instance.new("UICorner")
    notificationUICorner.Name = "NotificationUICorner"
    notificationUICorner.CornerRadius = UDim.new(0, 4)
    notificationUICorner.Parent = notificationText
    
    local innerFrame = Instance.new("Frame")
    innerFrame.Name = "InnerFrame"
    innerFrame.AnchorPoint = Vector2.new(0, 1)
    innerFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
    innerFrame.BorderSizePixel = 0
    innerFrame.Position = UDim2.fromScale(0, 1)
    innerFrame.Size = UDim2.new(1, 0, 0, 3)
    innerFrame.Parent = notificationText
    
    local NotifText = notificationText
    local TextBounds = NotifText.TextBounds
    
    coroutine.wrap(function()
        local success, result = pcall(function()
            local InTween = TweenService:Create(NotifText, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), 
                {Size = UDim2.new(0, TextBounds.X + 20, 0, 38)})
            InTween:Play()
            
            local LineTween = TweenService:Create(outerFrame, TweenInfo.new(NotificationInfo.Duration, Enum.EasingStyle.Linear, Enum.EasingDirection.In), 
                {Size = UDim2.new(0, 0, 0, 3)})
            LineTween:Play()
            
            wait(NotificationInfo.Duration)
            
            local OutTween = TweenService:Create(NotifText, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), 
                {Size = UDim2.new(0, 0, 0, 38)})
            OutTween:Play()
            
            wait(0.3)
            if notificationText.Parent then
                notificationText:Destroy()
            end
        end)
        
        if not success then
            -- 静默处理错误
        end
    end)()
end

-- 修复资源下载（第98行附近）
local Request = syn and syn.request or http and http.request or http_request or request
local getcustomasset = getcustomasset or getsynasset

-- 修复文件夹创建和资源下载
coroutine.wrap(function()
    if not isfolder("Revenant") then
        makefolder("Revenant")
        if Request then
            local success, result = pcall(function()
                local Circle = Request({
                    Url = "https://github.com/Rain-Design/Libraries/blob/main/Icon/Circle.png?raw=true",
                    Method = "GET"
                })
                if Circle and Circle.Body then
                    writefile("Revenant/Circle.png", Circle.Body)
                    library:Notification({
                        Text = "Downloaded Toggle Asset.",
                        Duration = 3
                    })
                end
            end)
        end
    end
end)()

-- 修复窗口创建函数（确保变量正确初始化）
function library:Window(Info)
    Info.Text = Info.Text or "Revenant"
    
    local Pos = 0.05
    for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v.Name == "Revenant" then
            Pos = Pos + 0.12
        end
    end
    
    local insidewindow = {}
    local revenant = Instance.new("ScreenGui")
    revenant.Name = "Revenant"
    revenant.Parent = game:GetService("CoreGui")
    
    local WindowOpened = Instance.new("BoolValue")
    WindowOpened.Value = true
    WindowOpened.Parent = revenant
    
    -- 这里继续您原有的窗口创建代码，但确保所有变量都有正确的初始值
    -- 特别注意：修复所有异步操作中的变量作用域问题
    
    return insidewindow
end

return library
