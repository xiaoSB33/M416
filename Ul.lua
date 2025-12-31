repeat
    task.wait()
until game:IsLoaded()
local vu1 = {}
local vu2 = false
vu1.currentTab = nil
vu1.flags = {}
local vu4 = setmetatable({}, {
    __index = function(_, p3)
        return game.GetService(game, p3)
    end
})
local vu5 = vu4.Players.LocalPlayer:GetMouse()
function Tween(p6, p7, p8)
    vu4.TweenService:Create(p6, TweenInfo.new(p7[1], Enum.EasingStyle[p7[2] ], Enum.EasingDirection[p7[3] ]), p8):Play()
    return true
end
function Ripple(pu9)
    spawn(function()
        if pu9.ClipsDescendants ~= true then
            pu9.ClipsDescendants = true
        end
        local v10 = Instance.new("ImageLabel")
        v10.Name = "Ripple"
        v10.Parent = pu9
        v10.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
        v10.BackgroundTransparency = 1
        v10.ZIndex = 8
        v10.Image = "rbxassetid://98541457845136"
        v10.ImageTransparency = 0.8
        v10.ScaleType = Enum.ScaleType.Fit
        v10.ImageColor3 = Color3.fromRGB(135, 206, 235)
        v10.Position = UDim2.new((vu5.X - v10.AbsolutePosition.X) / pu9.AbsoluteSize.X, 0, (vu5.Y - v10.AbsolutePosition.Y) / pu9.AbsoluteSize.Y, 0)
        Tween(v10, {
            0.3,
            "Linear",
            "InOut"
        }, {
            Position = UDim2.new(- 5.5, 0, - 5.5, 0),
            Size = UDim2.new(12, 0, 12, 0)
        })
        wait(0.15)
        Tween(v10, {
            0.3,
            "Linear",
            "InOut"
        }, {
            ImageTransparency = 1
        })
        wait(0.3)
        v10:Destroy()
    end)
end
local vu11 = false
local vu12 = false
function switchTab(p13)
    if vu12 then
        return
    else
        local v14 = vu1.currentTab
        if v14 == nil then
            p13[2].Visible = true
            vu1.currentTab = p13
            vu4.TweenService:Create(p13[1], TweenInfo.new(0.1), {
                ImageTransparency = 0
            }):Play()
            vu4.TweenService:Create(p13[1].TabText, TweenInfo.new(0.1), {
                TextTransparency = 0
            }):Play()
            return
        elseif v14[1] ~= p13[1] then
            vu12 = true
            vu1.currentTab = p13
            vu4.TweenService:Create(v14[1], TweenInfo.new(0.1), {
                ImageTransparency = 0.2
            }):Play()
            vu4.TweenService:Create(p13[1], TweenInfo.new(0.1), {
                ImageTransparency = 0
            }):Play()
            vu4.TweenService:Create(v14[1].TabText, TweenInfo.new(0.1), {
                TextTransparency = 0.2
            }):Play()
            vu4.TweenService:Create(p13[1].TabText, TweenInfo.new(0.1), {
                TextTransparency = 0
            }):Play()
            v14[2].Visible = false
            p13[2].Visible = true
            task.wait(0.1)
            vu12 = false
        end
    end
end
function drag(pu15, p16)
    local vu17 = nil
    local vu18 = nil
    local vu19 = nil
    local vu20 = nil
    local function vu23(p21)
        local v22 = p21.Position - vu19
        pu15.Position = UDim2.new(vu20.X.Scale, vu20.X.Offset + v22.X, vu20.Y.Scale, vu20.Y.Offset + v22.Y)
    end;
    (p16 or pu15).InputBegan:Connect(function(pu24)
        if pu24.UserInputType == Enum.UserInputType.MouseButton1 then
            vu17 = true
            vu19 = pu24.Position
            vu20 = pu15.Position
            pu24.Changed:Connect(function()
                if pu24.UserInputState == Enum.UserInputState.End then
                    vu17 = false
                end
            end)
        end
    end)
    pu15.InputChanged:Connect(function(p25)
        if p25.UserInputType == Enum.UserInputType.MouseMovement then
            vu18 = p25
        end
    end)
    vu4.UserInputService.InputChanged:Connect(function(p26)
        if p26 == vu18 and vu17 then
            vu23(p26)
        end
    end)
end
function vu1.new(pu27, p28, p29)
    local v30 = next
    local v31, v32 = vu4.CoreGui:GetChildren()
    while true do
        local v33, v34 = v30(v31, v32)
        if v33 == nil then
            break
        end
        v32 = v33
        if v34.Name == "frosty" then
            v34:Destroy()
        end
    end
    ALTransparency = 0.6
    ALcolor = Color3.fromRGB(255, 192, 203)
    if p29 == "dark" then
        Color = Color3.fromRGB(25, 25, 25)
        Background = Color3.fromRGB(25, 25, 25)
        zyColor = Color3.fromRGB(25, 25, 25)
        beijingColor = Color3.fromRGB(25, 25, 25)
    else
        MainColor = Color3.fromRGB(25, 25, 25)
        Background = Color3.fromRGB(25, 25, 25)
        zyColor = Color3.fromRGB(25, 25, 25)
        beijingColor = Color3.fromRGB(25, 25, 25)
    end
    local vu35 = Instance.new("ScreenGui")
    local vu36 = Instance.new("Frame")
    local vu37 = Instance.new("Frame")
    local v38 = Instance.new("UICorner")
    local v39 = Instance.new("Frame")
    local v40 = Instance.new("UICorner")
    local v41 = Instance.new("Frame")
    local v42 = Instance.new("UIGradient")
    local vu43 = Instance.new("ScrollingFrame")
    local vu44 = Instance.new("UIListLayout")
    local vu45 = Instance.new("TextLabel")
    local v46 = Instance.new("UIGradient")
    local vu47 = Instance.new("ImageButton")
    local v48 = Instance.new("UIGradient")
    local v49 = Instance.new("Frame")
    local v50 = Instance.new("ImageLabel")
    local v51 = Instance.new("UICorner")
    local v52 = Instance.new("UIGradient")
    local v53 = Instance.new("UIGradient")
    local v54 = Instance.new("Frame")
    local v55 = Instance.new("UICorner")
    local v56 = Instance.new("UICorner")
    if syn and syn.protect_gui then
        syn.protect_gui(vu35)
    end
    vu35.Name = "frosty"
    vu35.Parent = vu4.CoreGui
    function UiDestroy()
        vu35:Destroy()
    end
    function ToggleUILib()
        if vu2 then
            vu2 = false
            vu35.Enabled = true
        else
            vu35.Enabled = false
            vu2 = true
        end
    end
    vu36.Name = "Main"
    vu36.Parent = vu35
    vu36.Name = "Main"
    vu36.ClipsDescendants = true
    vu36.AnchorPoint = Vector2.new(0.5, 0.5)
    vu36.BackgroundColor3 = Background
    vu36.BorderColor3 = MainColor
    vu36.Position = UDim2.new(0.5, 0, 0.5, 0)
    vu36.Size = UDim2.new(0, 572, 0, 353)
    vu36.ZIndex = 1
    vu36.Active = true
    vu36.Draggable = true
    vu36.Transparency = 1
    vu4.UserInputService.InputEnded:Connect(function(p57)
        if p57.KeyCode == Enum.KeyCode.LeftControl then
            if vu36.Visible ~= true then
                vu36.Visible = true
            else
                vu36.Visible = false
            end
        end
    end)
    drag(vu36)
    v51.Parent = vu36
    v51.CornerRadius = UDim.new(0, 10)
    local v58 = Instance.new("TextButton")
    v58.Name = "CloseButton"
    v58.Parent = vu36
    v58.BackgroundTransparency = 1
    v58.Text = "X"
    v58.TextColor3 = Color3.fromRGB(255, 80, 80)
    v58.TextSize = 20
    v58.Font = Enum.Font.GothamBold
    v58.Size = UDim2.new(0, 30, 0, 30)
    v58.Position = UDim2.new(1, - 35, 0, 5)
    v58.ZIndex = 5
    v58.TextTransparency = 0
    v58.MouseButton1Click:Connect(function()
        vu35:Destroy()
    end)
    v49.Name = "DropShadowHolder"
    v49.Parent = vu36
    v49.BackgroundTransparency = 1
    v49.BorderSizePixel = 0
    v49.Size = UDim2.new(1, 0, 1, 0)
    v49.BorderColor3 = Color3.fromRGB(255, 255, 255)
    v49.ZIndex = 0
    v50.Name = "DropShadow"
    v50.Parent = v49
    v50.AnchorPoint = Vector2.new(0.5, 0.5)
    v50.BackgroundTransparency = 1
    v50.Position = UDim2.new(0.5, 0, 0.5, 0)
    v50.Size = UDim2.new(1, - 10, 1, - 10)
    v50.ZIndex = - 1
    v50.Image = "rbxassetid://98541457845136"
    v50.ImageColor3 = Color3.fromRGB(255, 255, 255)
    v50.SliceCenter = Rect.new(49, 49, 450, 450)
    local v59 = Instance.new("ImageLabel")
    v59.Name = "BackgroundImage"
    v59.Image = "rbxassetid://77423948289875"  -- 修正为正确的图片ID
    v59.Size = UDim2.new(1, 0, 1, 0)
    v59.Position = UDim2.new(0, 0, 0, 0)  -- 确保位置正确
    v59.BackgroundTransparency = 1  -- 背景透明
    v59.ImageTransparency = 0  -- 图片不透明
    v59.ZIndex = 0  -- 调整为有效ZIndex
    v59.ScaleType = Enum.ScaleType.Crop  -- 添加缩放类型
    v59.Parent = vu36
    local v60 = Instance.new("UICorner")
    v60.CornerRadius = UDim.new(0, 10)
    v60.Parent = v59
    v52.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(0.1, Color3.fromRGB(255, 127, 0)),
        ColorSequenceKeypoint.new(0.2, Color3.fromRGB(255, 255, 0)),
        ColorSequenceKeypoint.new(0.3, Color3.fromRGB(135, 206, 235)),
        ColorSequenceKeypoint.new(0.4, Color3.fromRGB(0, 255, 255)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 0, 255)),
        ColorSequenceKeypoint.new(0.6, Color3.fromRGB(135, 206, 235)),
        ColorSequenceKeypoint.new(0.7, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(0.8, Color3.fromRGB(255, 127, 0)),
        ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 255, 0)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(135, 206, 235))
    })
    game:GetService("TweenService"):Create(v52, TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.In, - 1), {
        Rotation = 360
    }):Play()
    function toggleui()
        vu11 = not vu11
        spawn(function()
            if vu11 then
                wait(0.3)
            end
        end)
        Tween(vu36, {
            0.3,
            "Sine",
            "InOut"
        }, {
            Size = UDim2.new(0, 609, 0, vu11 and 505 or 0)
        })
    end
    vu37.Name = "TabMain"
    vu37.Parent = vu36
    vu37.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
    vu37.BackgroundTransparency = 1
    vu37.Position = UDim2.new(0.217000037, 0, 0, 3)
    vu37.Size = UDim2.new(0, 448, 0, 353)
    vu37.Transparency = 50
    v38.CornerRadius = UDim.new(0, 5.5)
    v38.Name = "MainC"
    v38.Parent = v54
    v39.Name = "SB"
    v39.Parent = vu36
    v39.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
    v39.BorderColor3 = MainColor
    v39.Size = UDim2.new(0, 8, 0, 353)
    v39.Transparency = 1
    v40.CornerRadius = UDim.new(0, 6)
    v40.Name = "SBC"
    v40.Parent = v39
    v41.Name = "Side"
    v41.Parent = v39
    v41.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
    v41.BorderColor3 = Color3.fromRGB(135, 206, 235)
    v41.BorderSizePixel = 0
    v41.ClipsDescendants = true
    v41.Position = UDim2.new(1, 0, 0, 0)
    v41.Size = UDim2.new(0, 110, 0, 353)
    v41.Transparency = 1
    v42.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, zyColor),
        ColorSequenceKeypoint.new(1, zyColor)
    })
    v42.Rotation = 90
    v42.Name = "SideG"
    v42.Parent = v41
    vu43.Name = "TabBtns"
    vu43.Parent = v41
    vu43.Active = true
    vu43.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
    vu43.BackgroundTransparency = 1
    vu43.BorderSizePixel = 0
    vu43.Position = UDim2.new(0, 0, 0.0973535776, 0)
    vu43.Size = UDim2.new(0, 110, 0, 318)
    vu43.CanvasSize = UDim2.new(0, 0, 1, 0)
    vu43.ScrollBarThickness = 0
    vu44.Name = "TabBtnsL"
    vu44.Parent = vu43
    vu44.SortOrder = Enum.SortOrder.LayoutOrder
    vu44.Padding = UDim.new(0, 12)
    vu45.Name = "ScriptTitle"
    vu45.Parent = v41
    vu45.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
    vu45.BackgroundTransparency = 1
    vu45.Position = UDim2.new(0, 0, 0.00953488424, 0)
    vu45.Size = UDim2.new(0, 102, 0, 20)
    vu45.Font = Enum.Font.GothamSemibold
    vu45.Text = p28
    vu45.TextColor3 = Color3.fromRGB(255, 0, 0)
    vu45.TextSize = 14
    vu45.TextScaled = true
    vu45.TextXAlignment = Enum.TextXAlignment.Left
    v53.Parent = vu45
    coroutine.wrap(function()
        local vu61 = Instance.new("LocalScript", vu45).Parent.UIGradient
        local vu62 = game:GetService("TweenService"):Create(vu61, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
            Offset = Vector2.new(1, 0)
        })
        local vu63 = Vector2.new(- 1, 0)
        local vu64 = {}
        local vu65 = ColorSequence.new
        local vu66 = ColorSequenceKeypoint.new
        local vu67 = "down"
        vu61.Offset = vu63;
        (function()
            local v68 = 255
            local v69 = 255
            for v70 = 1, 10 do
                local v71 = v70 * 17
                table.insert(vu64, Color3.fromHSV(v71 / 255, v68 / 255, v69 / 255))
            end
        end)()
        vu61.Color = vu65({
            vu66(0, vu64[# vu64]),
            vu66(0.5, vu64[# vu64 - 1]),
            vu66(1, vu64[# vu64 - 2])
        })
        local vu72 = # vu64
        local function vu73()
            vu62:Play()
            vu62.Completed:Wait()
            vu61.Offset = vu63
            vu61.Rotation = 180
            if vu72 ~= # vu64 - 1 or vu67 ~= "down" then
                if vu72 ~= # vu64 or vu67 ~= "down" then
                    if vu72 <= # vu64 - 2 and vu67 == "down" then
                        vu61.Color = vu65({
                            vu66(0, vu61.Color.Keypoints[1].Value),
                            vu66(0.5, vu64[vu72 + 1]),
                            vu66(1, vu64[vu72 + 2])
                        })
                        vu72 = vu72 + 2
                        vu67 = "up"
                    end
                else
                    vu61.Color = vu65({
                        vu66(0, vu61.Color.Keypoints[1].Value),
                        vu66(0.5, vu64[1]),
                        vu66(1, vu64[2])
                    })
                    vu72 = 2
                    vu67 = "up"
                end
            else
                vu61.Color = vu65({
                    vu66(0, vu61.Color.Keypoints[1].Value),
                    vu66(0.5, vu64[# vu64]),
                    vu66(1, vu64[1])
                })
                vu72 = 1
                vu67 = "up"
            end
            vu62:Play()
            vu62.Completed:Wait()
            vu61.Offset = vu63
            vu61.Rotation = 0
            if vu72 ~= # vu64 - 1 or vu67 ~= "up" then
                if vu72 ~= # vu64 or vu67 ~= "up" then
                    if vu72 <= # vu64 - 2 and vu67 == "up" then
                        vu61.Color = vu65({
                            vu66(0, vu64[vu72 + 2]),
                            vu66(0.5, vu64[vu72 + 1]),
                            vu66(1, vu61.Color.Keypoints[3].Value)
                        })
                        vu72 = vu72 + 2
                        vu67 = "down"
                    end
                else
                    vu61.Color = vu65({
                        vu66(0, vu64[2]),
                        vu66(0.5, vu64[1]),
                        vu66(1, vu61.Color.Keypoints[3].Value)
                    })
                    vu72 = 2
                    vu67 = "down"
                end
            else
                vu61.Color = vu65({
                    vu66(0, vu64[1]),
                    vu66(0.5, vu64[# vu64]),
                    vu66(1, vu61.Color.Keypoints[3].Value)
                })
                vu72 = 1
                vu67 = "down"
            end
            vu73()
        end
        vu73()
    end)()
    v46.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, zyColor),
        ColorSequenceKeypoint.new(1, zyColor)
    })
    v46.Rotation = 90
    v46.Name = "SBG"
    v46.Parent = v39
    vu44:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        vu43.CanvasSize = UDim2.new(0, 0, 0, vu44.AbsoluteContentSize.Y + 18)
    end)
    v54.Parent = vu35
    v54.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v54.BorderColor3 = Color3.fromRGB(0, 0, 0)
    v54.BorderSizePixel = 0
    v54.Position = UDim2.new(0.00829315186, 0, 0.31107837, 0)
    v54.Size = UDim2.new(0, 50, 0, 50)
    v54.BackgroundTransparency = 1
    v55.CornerRadius = UDim.new(0, 90)
    v55.Parent = v54
    vu47.Parent = v54
    vu47.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu47.BorderColor3 = Color3.fromRGB(135, 206, 235)
    vu47.BorderSizePixel = 0
    vu47.Size = UDim2.new(0, 50, 0, 50)
    vu47.Active = true
    vu47.Draggable = true
    vu47.Image = "rbxassetid://98541457845136"
    vu47.MouseButton1Click:Connect(function()
        vu36.Visible = not vu36.Visible
        vu47.Image = vu36.Visible and "rbxassetid://125169554049330" or "rbxassetid://78614661389908"
    end)
    v56.CornerRadius = UDim.new(0, 90)
    v56.Parent = vu47
    v48.Parent = vu47
    return {
        Tab = function(_, p74, p75)
            local vu76 = Instance.new("ScrollingFrame")
            local vu77 = Instance.new("ImageLabel")
            local v78 = Instance.new("TextLabel")
            local vu79 = Instance.new("TextButton")
            local vu80 = Instance.new("UIListLayout")
            vu76.Name = "Tab"
            vu76.Parent = vu37
            vu76.Active = true
            vu76.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
            vu76.BackgroundTransparency = 1
            vu76.Size = UDim2.new(1, 0, 1, 0)
            vu76.ScrollBarThickness = 2
            vu76.Visible = false
            vu77.Name = "TabIco"
            vu77.Parent = vu43
            vu77.BackgroundTransparency = 1
            vu77.BorderSizePixel = 0
            vu77.Size = UDim2.new(0, 24, 0, 24)
            local v81 = "rbxassetid://98541457845136"
            if v81 then
                p75 = v81
            elseif p75 then
                p75 = "rbxassetid://" .. p75
            end
            vu77.Image = p75
            vu77.ImageTransparency = 0.2
            v78.Name = "TabText"
            v78.Parent = vu77
            v78.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
            v78.BackgroundTransparency = 1
            v78.Position = UDim2.new(1.41666663, 0, 0, 0)
            v78.Size = UDim2.new(0, 76, 0, 24)
            v78.Font = Enum.Font.GothamSemibold
            v78.Text = p74
            v78.TextColor3 = ALcolor
            v78.TextSize = 14
            v78.TextXAlignment = Enum.TextXAlignment.Left
            v78.TextTransparency = 0.2
            vu79.Name = "TabBtn"
            vu79.Parent = vu77
            vu79.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
            vu79.BackgroundTransparency = 1
            vu79.BorderSizePixel = 0
            vu79.Size = UDim2.new(0, 110, 0, 24)
            vu79.AutoButtonColor = false
            vu79.Font = Enum.Font.SourceSans
            vu79.Text = ""
            vu79.TextColor3 = Color3.fromRGB(255, 0, 0)
            vu79.TextSize = 14
            vu80.Name = "TabL"
            vu80.Parent = vu76
            vu80.SortOrder = Enum.SortOrder.LayoutOrder
            vu80.Padding = UDim.new(0, 4)
            vu79.MouseButton1Click:Connect(function()
                spawn(function()
                    Ripple(vu79)
                end)
                local v82 = {
                    vu77,
                    vu76
                }
                switchTab(v82)
            end)
            if pu27.currentTab == nil then
                switchTab({
                    vu77,
                    vu76
                })
            end
            vu80:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                vu76.CanvasSize = UDim2.new(0, 0, 0, vu80.AbsoluteContentSize.Y + 8)
            end)
            local v83 = Instance.new("Sound")
            v83.SoundId = "rbxassetid://98541457845136"
            v83.Parent = game.Workspace
            v83:Play()
            return {
                section = function(_, p84, p85)
                    local vu86 = Instance.new("Frame")
                    local v87 = Instance.new("UICorner")
                    local v88 = Instance.new("TextLabel")
                    local vu89 = Instance.new("ImageLabel")
                    local vu90 = Instance.new("ImageLabel")
                    local v91 = Instance.new("ImageButton")
                    local vu92 = Instance.new("Frame")
                    local vu93 = Instance.new("UIListLayout")
                    vu86.Name = "Section"
                    vu86.Parent = vu76
                    vu86.BackgroundColor3 = zyColor
                    vu86.BackgroundTransparency = 1
                    vu86.BorderSizePixel = 0
                    vu86.ClipsDescendants = true
                    vu86.Size = UDim2.new(0.981000006, 0, 0, 36)
                    v87.CornerRadius = UDim.new(0, 6)
                    v87.Name = "SectionC"
                    v87.Parent = vu86
                    v88.Name = "SectionText"
                    v88.Parent = vu86
                    v88.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                    v88.BackgroundTransparency = 1
                    v88.Position = UDim2.new(0.0887396261, 0, 0, 0)
                    v88.Size = UDim2.new(0, 401, 0, 36)
                    v88.Font = Enum.Font.GothamSemibold
                    v88.Text = p84
                    v88.TextColor3 = ALcolor
                    v88.TextSize = 16
                    v88.TextXAlignment = Enum.TextXAlignment.Left
                    vu89.Name = "SectionOpen"
                    vu89.Parent = v88
                    vu89.BackgroundTransparency = 1
                    vu89.BorderSizePixel = 0
                    vu89.Position = UDim2.new(0, - 33, 0, 5)
                    vu89.Size = UDim2.new(0, 26, 0, 26)
                    vu89.Image = "rbxassetid://98541457845136"
                    vu90.Name = "SectionOpened"
                    vu90.Parent = vu89
                    vu90.BackgroundTransparency = 1
                    vu90.BorderSizePixel = 0
                    vu90.Size = UDim2.new(0, 26, 0, 26)
                    vu90.Image = "rbxassetid://98541457845136"
                    vu90.ImageTransparency = 1
                    v91.Name = "SectionToggle"
                    v91.Parent = vu89
                    v91.BackgroundTransparency = 1
                    v91.BorderSizePixel = 0
                    v91.Size = UDim2.new(0, 26, 0, 26)
                    vu92.Name = "Objs"
                    vu92.Parent = vu86
                    vu92.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                    vu92.BackgroundTransparency = 1
                    vu92.BorderSizePixel = 0
                    vu92.Position = UDim2.new(0, 6, 0, 36)
                    vu92.Size = UDim2.new(0.986347735, 0, 0, 0)
                    vu93.Name = "ObjsL"
                    vu93.Parent = vu92
                    vu93.SortOrder = Enum.SortOrder.LayoutOrder
                    vu93.Padding = UDim.new(0, 8)
                    local vu94 = p85
                    if p85 ~= false then
                        vu86.Size = UDim2.new(0.981000006, 0, 0, vu94 and (36 + vu93.AbsoluteContentSize.Y + 8 or 36) or 36)
                        vu90.ImageTransparency = vu94 and 0 or 1
                        vu89.ImageTransparency = vu94 and 1 or 0
                    end
                    v91.MouseButton1Click:Connect(function()
                        vu94 = not vu94
                        vu86.Size = UDim2.new(0.981000006, 0, 0, vu94 and 36 + vu93.AbsoluteContentSize.Y + 8 or 36)
                        vu90.ImageTransparency = vu94 and 0 or 1
                        vu89.ImageTransparency = vu94 and 1 or 0
                    end)
                    vu93:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                        if vu94 then
                            vu86.Size = UDim2.new(0.981000006, 0, 0, 36 + vu93.AbsoluteContentSize.Y + 8)
                        end
                    end)
                    return {
                        Button = function(_, p95, p96)
                            local vu97 = p96 or function()
                            end
                            local v98 = Instance.new("Frame")
                            local vu99 = Instance.new("TextButton")
                            local v100 = Instance.new("UICorner")
                            v98.Name = "BtnModule"
                            v98.Parent = vu92
                            v98.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                            v98.BackgroundTransparency = 1
                            v98.BorderSizePixel = 0
                            v98.Position = UDim2.new(0, 0, 0, 0)
                            v98.Size = UDim2.new(0, 428, 0, 38)
                            v98.Transparency = 0.75
                            vu99.Name = "Btn"
                            vu99.Parent = v98
                            vu99.BackgroundColor3 = zyColor
                            vu99.BorderSizePixel = 0
                            vu99.Size = UDim2.new(0, 428, 0, 38)
                            vu99.AutoButtonColor = false
                            vu99.Font = Enum.Font.GothamSemibold
                            vu99.Text = "   " .. p95
                            vu99.TextColor3 = ALcolor
                            vu99.TextSize = 16
                            vu99.TextXAlignment = Enum.TextXAlignment.Left
                            vu99.BackgroundTransparency = ALTransparency
                            v100.CornerRadius = UDim.new(0, 12)
                            v100.Name = "BtnC"
                            v100.Parent = vu99
                            vu99.MouseButton1Click:Connect(function()
                                spawn(function()
                                    Ripple(vu99)
                                end)
                                spawn(vu97)
                            end)
                        end,
                        Label = function(_, p101)
                            local v102 = Instance.new("Frame")
                            local v103 = Instance.new("TextLabel")
                            local v104 = Instance.new("UICorner")
                            v102.Name = "LabelModule"
                            v102.Parent = vu92
                            v102.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                            v102.BackgroundTransparency = 1
                            v102.BorderSizePixel = 0
                            v102.Position = UDim2.new(0, 0, NAN, 0)
                            v102.Size = UDim2.new(0, 428, 0, 19)
                            v103.Parent = v102
                            v103.BackgroundColor3 = zyColor
                            v103.Size = UDim2.new(0, 428, 0, 22)
                            v103.Font = Enum.Font.GothamSemibold
                            v103.Text = p101
                            v103.TextColor3 = ALcolor
                            v103.BackgroundTransparency = ALTransparency
                            v103.TextSize = 14
                            v104.CornerRadius = UDim.new(0, 18)
                            v104.Name = "LabelC"
                            v104.Parent = v103
                            return v103
                        end,
                        Toggle = function(_, p105, pu106, p107, p108)
                            local vu109 = p108 or function()
                            end
                            local v110 = p107 or false
                            assert(p105, "No text provided")
                            assert(pu106, "No flag provided")
                            pu27.flags[pu106] = v110
                            local v111 = Instance.new("Frame")
                            local v112 = Instance.new("TextButton")
                            local v113 = Instance.new("UICorner")
                            local v114 = Instance.new("Frame")
                            local vu115 = Instance.new("Frame")
                            local v116 = Instance.new("UICorner")
                            local v117 = Instance.new("UICorner")
                            v111.Name = "ToggleModule"
                            v111.Parent = vu92
                            v111.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                            v111.BackgroundTransparency = 1
                            v111.BorderSizePixel = 0
                            v111.Position = UDim2.new(0, 0, 0, 0)
                            v111.Size = UDim2.new(0, 428, 0, 38)
                            v112.Name = "ToggleBtn"
                            v112.Parent = v111
                            v112.BackgroundColor3 = zyColor
                            v112.BackgroundTransparency = ALTransparency
                            v112.BorderSizePixel = 0
                            v112.Size = UDim2.new(0, 428, 0, 38)
                            v112.AutoButtonColor = false
                            v112.Font = Enum.Font.GothamSemibold
                            v112.Text = "   " .. p105
                            v112.TextColor3 = ALcolor
                            v112.TextSize = 16
                            v112.TextXAlignment = Enum.TextXAlignment.Left
                            v113.CornerRadius = UDim.new(0, 18)
                            v113.Name = "ToggleBtnC"
                            v113.Parent = v112
                            v114.Name = "ToggleDisable"
                            v114.Parent = v112
                            v114.BackgroundColor3 = Background
                            v114.BackgroundTransparency = 0.5
                            v114.BorderSizePixel = 0
                            v114.Position = UDim2.new(0.901869178, 0, 0.208881587, 0)
                            v114.Size = UDim2.new(0, 36, 0, 22)
                            vu115.Name = "ToggleSwitch"
                            vu115.Parent = v114
                            vu115.BackgroundColor3 = beijingColor
                            vu115.Size = UDim2.new(0, 24, 0, 22)
                            v116.CornerRadius = UDim.new(0, 18)
                            v116.Name = "ToggleSwitchC"
                            v116.Parent = vu115
                            v117.CornerRadius = UDim.new(0, 9)
                            v117.Name = "ToggleDisableC"
                            v117.Parent = v114
                            local vu119 = {
                                SetState = function(_, p118)
                                    if p118 == nil then
                                        p118 = not pu27.flags[pu106]
                                    end
                                    if pu27.flags[pu106] ~= p118 then
                                        vu4.TweenService:Create(vu115, TweenInfo.new(0.2), {
                                            Position = UDim2.new(0, p118 and vu115.Size.X.Offset / 2 or 0, 0, 0),
                                            BackgroundColor3 = p118 and Color3.fromRGB(135, 206, 235) or beijingColor
                                        }):Play()
                                        pu27.flags[pu106] = p118
                                        vu109(p118)
                                    end
                                end,
                                Module = v111
                            }
                            if v110 ~= false then
                                vu119:SetState(pu106, true)
                            end
                            v112.MouseButton1Click:Connect(function()
                                vu119:SetState()
                            end)
                            return vu119
                        end,
                        Keybind = function(_, p120, pu121, p122)
                            local vu123 = p122 or function()
                            end
                            assert(p120, "No text provided")
                            assert(pu121, "No default key provided")
                            if typeof(pu121) == "string" then
                                pu121 = Enum.KeyCode[pu121] or pu121
                            end
                            local vu124 = {
                                Return = true,
                                Space = true,
                                Tab = true,
                                Backquote = true,
                                CapsLock = true,
                                Escape = true,
                                Unknown = true
                            }
                            local vu125 = {
                                RightControl = "Right Ctrl",
                                LeftControl = "Left Ctrl",
                                LeftShift = "Left Shift",
                                RightShift = "Right Shift",
                                Semicolon = ";",
                                Quote = "\"",
                                LeftBracket = "[",
                                RightBracket = "]",
                                Equals = "=",
                                Minus = "-",
                                RightAlt = "Right Alt",
                                LeftAlt = "Left Alt"
                            }
                            local vu126 = not pu121 or vu125[pu121.Name] or (pu121.Name or "None")
                            local v127 = Instance.new("Frame")
                            local v128 = Instance.new("TextButton")
                            local v129 = Instance.new("UICorner")
                            local vu130 = Instance.new("TextButton")
                            local v131 = Instance.new("UICorner")
                            local v132 = Instance.new("UIListLayout")
                            local v133 = Instance.new("UIPadding")
                            v127.Name = "KeybindModule"
                            v127.Parent = vu92
                            v127.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                            v127.BackgroundTransparency = 1
                            v127.BorderSizePixel = 0
                            v127.Position = UDim2.new(0, 0, 0, 0)
                            v127.Size = UDim2.new(0, 428, 0, 38)
                            v128.Name = "KeybindBtn"
                            v128.Parent = v127
                            v128.BackgroundColor3 = zyColor
                            v128.BorderSizePixel = 0
                            v128.Size = UDim2.new(0, 428, 0, 38)
                            v128.AutoButtonColor = false
                            v128.Font = Enum.Font.GothamSemibold
                            v128.Text = "   " .. p120
                            v128.TextColor3 = ALcolor
                            v128.TextSize = 16
                            v128.TextXAlignment = Enum.TextXAlignment.Left
                            v129.CornerRadius = UDim.new(0, 6)
                            v129.Name = "KeybindBtnC"
                            v129.Parent = v128
                            vu130.Name = "KeybindValue"
                            vu130.Parent = v128
                            vu130.BackgroundColor3 = Background
                            vu130.BorderSizePixel = 0
                            vu130.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
                            vu130.Size = UDim2.new(0, 100, 0, 28)
                            vu130.AutoButtonColor = false
                            vu130.Font = Enum.Font.Gotham
                            vu130.Text = vu126
                            vu130.TextColor3 = Color3.fromRGB(255, 0, 0)
                            vu130.TextSize = 14
                            v131.CornerRadius = UDim.new(0, 6)
                            v131.Name = "KeybindValueC"
                            v131.Parent = vu130
                            v132.Name = "KeybindL"
                            v132.Parent = v128
                            v132.HorizontalAlignment = Enum.HorizontalAlignment.Right
                            v132.SortOrder = Enum.SortOrder.LayoutOrder
                            v132.VerticalAlignment = Enum.VerticalAlignment.Center
                            v133.Parent = v128
                            v133.PaddingRight = UDim.new(0, 6)
                            vu4.UserInputService.InputBegan:Connect(function(p134, p135)
                                if p135 then
                                    return
                                elseif p134.UserInputType == Enum.UserInputType.Keyboard then
                                    if p134.KeyCode == pu121 then
                                        vu123(pu121.Name)
                                    end
                                else
                                    return
                                end
                            end)
                            vu130.MouseButton1Click:Connect(function()
                                vu130.Text = "..."
                                wait()
                                local v136, _ = vu4.UserInputService.InputEnded:Wait()
                                local v137 = tostring(v136.KeyCode.Name)
                                if v136.UserInputType == Enum.UserInputType.Keyboard then
                                    if vu124[v137] then
                                        vu130.Text = vu126
                                    else
                                        wait()
                                        pu121 = Enum.KeyCode[v137]
                                        vu130.Text = vu125[v137] or v137
                                    end
                                else
                                    vu130.Text = vu126
                                    return
                                end
                            end)
                            local v138 = vu130
                            vu130.GetPropertyChangedSignal(v138, "TextBounds"):Connect(function()
                                vu130.Size = UDim2.new(0, vu130.TextBounds.X + 30, 0, 28)
                            end)
                            vu130.Size = UDim2.new(0, vu130.TextBounds.X + 30, 0, 28)
                        end,
                        Textbox = function(_, p139, pu140, pu141, p142)
                            local vu143 = p142 or function()
                            end
                            assert(p139, "No text provided")
                            assert(pu140, "No flag provided")
                            assert(pu141, "No default text provided")
                            pu27.flags[pu140] = pu141
                            local v144 = Instance.new("Frame")
                            local v145 = Instance.new("TextButton")
                            local v146 = Instance.new("UICorner")
                            local vu147 = Instance.new("TextButton")
                            local v148 = Instance.new("UICorner")
                            local vu149 = Instance.new("TextBox")
                            local v150 = Instance.new("UIListLayout")
                            local v151 = Instance.new("UIPadding")
                            v144.Name = "TextboxModule"
                            v144.Parent = vu92
                            v144.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                            v144.BackgroundTransparency = 1
                            v144.BorderSizePixel = 0
                            v144.Position = UDim2.new(0, 0, 0, 0)
                            v144.Size = UDim2.new(0, 428, 0, 38)
                            v145.Name = "TextboxBack"
                            v145.Parent = v144
                            v145.BackgroundColor3 = zyColor
                            v145.BackgroundTransparency = ALTransparency
                            v145.BorderSizePixel = 0
                            v145.Size = UDim2.new(0, 428, 0, 38)
                            v145.AutoButtonColor = false
                            v145.Font = Enum.Font.GothamSemibold
                            v145.Text = "   " .. p139
                            v145.TextColor3 = ALcolor
                            v145.TextSize = 16
                            v145.TextXAlignment = Enum.TextXAlignment.Left
                            v146.CornerRadius = UDim.new(0, 12)
                            v146.Name = "TextboxBackC"
                            v146.Parent = v145
                            vu147.Name = "BoxBG"
                            vu147.Parent = v145
                            vu147.BackgroundColor3 = Background
                            vu147.BorderSizePixel = 0
                            vu147.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
                            vu147.Size = UDim2.new(0, 100, 0, 28)
                            vu147.AutoButtonColor = false
                            vu147.Font = Enum.Font.Gotham
                            vu147.Text = ""
                            vu147.TextColor3 = Color3.fromRGB(255, 0, 0)
                            vu147.TextSize = 14
                            v148.CornerRadius = UDim.new(0, 12)
                            v148.Name = "BoxBGC"
                            v148.Parent = vu147
                            vu149.Parent = vu147
                            vu149.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                            vu149.BackgroundTransparency = 1
                            vu149.BorderSizePixel = 0
                            vu149.Size = UDim2.new(1, 0, 1, 0)
                            vu149.Font = Enum.Font.Gotham
                            vu149.Text = pu141
                            vu149.TextColor3 = Color3.fromRGB(255, 0, 0)
                            vu149.TextSize = 14
                            v150.Name = "TextboxBackL"
                            v150.Parent = v145
                            v150.HorizontalAlignment = Enum.HorizontalAlignment.Right
                            v150.SortOrder = Enum.SortOrder.LayoutOrder
                            v150.VerticalAlignment = Enum.VerticalAlignment.Center
                            v151.Name = "TextboxBackP"
                            v151.Parent = v145
                            v151.PaddingRight = UDim.new(0, 12)
                            vu149.FocusLost:Connect(function()
                                if vu149.Text == "" then
                                    vu149.Text = pu141
                                end
                                pu27.flags[pu140] = vu149.Text
                                vu143(vu149.Text)
                            end)
                            local v152 = vu149
                            vu149.GetPropertyChangedSignal(v152, "TextBounds"):Connect(function()
                                vu147.Size = UDim2.new(0, vu149.TextBounds.X + 30, 0, 28)
                            end)
                            vu147.Size = UDim2.new(0, vu149.TextBounds.X + 30, 0, 28)
                        end,
                        Slider = function(_, p153, pu154, p155, p156, p157, p158, p159)
                            local vu160 = p159 or function()
                            end
                            local vu161 = p156 or 1
                            local vu162 = p157 or 10
                            local vu163 = p155 or vu161
                            local vu164 = p158 or false
                            pu27.flags[pu154] = vu163
                            assert(p153, "No text provided")
                            assert(pu154, "No flag provided")
                            assert(vu163, "No default value provided")
                            local v165 = Instance.new("Frame")
                            local v166 = Instance.new("TextButton")
                            local v167 = Instance.new("UICorner")
                            local vu168 = Instance.new("Frame")
                            local v169 = Instance.new("UICorner")
                            local vu170 = Instance.new("Frame")
                            local v171 = Instance.new("UICorner")
                            local v172 = Instance.new("TextButton")
                            local v173 = Instance.new("UICorner")
                            local vu174 = Instance.new("TextBox")
                            local v175 = Instance.new("TextButton")
                            local v176 = Instance.new("TextButton")
                            v165.Name = "SliderModule"
                            v165.Parent = vu92
                            v165.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                            v165.BackgroundTransparency = 1
                            v165.BorderSizePixel = 0
                            v165.Position = UDim2.new(0, 0, 0, 0)
                            v165.Size = UDim2.new(0, 428, 0, 38)
                            v166.Name = "SliderBack"
                            v166.Parent = v165
                            v166.BackgroundColor3 = zyColor
                            v166.BackgroundTransparency = ALTransparency
                            v166.BorderSizePixel = 0
                            v166.Size = UDim2.new(0, 428, 0, 38)
                            v166.AutoButtonColor = false
                            v166.Font = Enum.Font.GothamSemibold
                            v166.Text = "   " .. p153
                            v166.TextColor3 = ALcolor
                            v166.TextSize = 16
                            v166.TextXAlignment = Enum.TextXAlignment.Left
                            v167.CornerRadius = UDim.new(0, 12)
                            v167.Name = "SliderBackC"
                            v167.Parent = v166
                            vu168.Name = "SliderBar"
                            vu168.Parent = v166
                            vu168.AnchorPoint = Vector2.new(0, 0.5)
                            vu168.BackgroundColor3 = Background
                            vu168.BackgroundTransparency = ALTransparency
                            vu168.BorderSizePixel = 0
                            vu168.Position = UDim2.new(0.369000018, 40, 0.5, 0)
                            vu168.Size = UDim2.new(0, 140, 0, 12)
                            v169.CornerRadius = UDim.new(0, 12)
                            v169.Name = "SliderBarC"
                            v169.Parent = vu168
                            vu170.Name = "SliderPart"
                            vu170.Parent = vu168
                            vu170.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                            vu170.BorderSizePixel = 0
                            vu170.Size = UDim2.new(0, 54, 0, 13)
                            v171.CornerRadius = UDim.new(0, 4)
                            v171.Name = "SliderPartC"
                            v171.Parent = vu170
                            v172.Name = "SliderValBG"
                            v172.Parent = v166
                            v172.BackgroundColor3 = Background
                            v172.BackgroundTransparency = ALTransparency
                            v172.BorderSizePixel = 0
                            v172.Position = UDim2.new(0.883177578, 0, 0.131578952, 0)
                            v172.Size = UDim2.new(0, 44, 0, 28)
                            v172.AutoButtonColor = false
                            v172.Font = Enum.Font.Gotham
                            v172.Text = ""
                            v172.TextColor3 = Color3.fromRGB(255, 0, 0)
                            v172.TextSize = 14
                            v173.CornerRadius = UDim.new(0, 6)
                            v173.Name = "SliderValBGC"
                            v173.Parent = v172
                            vu174.Name = "SliderValue"
                            vu174.Parent = v172
                            vu174.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                            vu174.BackgroundTransparency = 1
                            vu174.BorderSizePixel = 0
                            vu174.Size = UDim2.new(1, 0, 1, 0)
                            vu174.Font = Enum.Font.Gotham
                            vu174.Text = "1000"
                            vu174.TextColor3 = Color3.fromRGB(255, 0, 0)
                            vu174.TextSize = 14
                            v175.Name = "MinSlider"
                            v175.Parent = v165
                            v175.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                            v175.BackgroundTransparency = 1
                            v175.BorderSizePixel = 0
                            v175.Position = UDim2.new(0.296728969, 40, 0.236842096, 0)
                            v175.Size = UDim2.new(0, 20, 0, 20)
                            v175.Font = Enum.Font.Gotham
                            v175.Text = "-"
                            v175.TextColor3 = ALcolor
                            v175.TextSize = 24
                            v175.TextWrapped = true
                            v176.Name = "AddSlider"
                            v176.Parent = v165
                            v176.AnchorPoint = Vector2.new(0, 0.5)
                            v176.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                            v176.BackgroundTransparency = 1
                            v176.BorderSizePixel = 0
                            v176.Position = UDim2.new(0.810906529, 0, 0.5, 0)
                            v176.Size = UDim2.new(0, 20, 0, 20)
                            v176.Font = Enum.Font.Gotham
                            v176.Text = "+"
                            v176.TextColor3 = ALcolor
                            v176.TextSize = 24
                            v176.TextWrapped = true
                            local vu181 = {
                                SetValue = function(_, p177)
                                    local v178 = (vu5.X - vu168.AbsolutePosition.X) / vu168.AbsoluteSize.X
                                    if p177 then
                                        v178 = (p177 - vu161) / (vu162 - vu161)
                                    end
                                    local v179 = math.clamp(v178, 0, 1)
                                    local v180
                                    if vu164 then
                                        v180 = p177 or tonumber(string.format("%.1f", tostring(vu161 + (vu162 - vu161) * v179)))
                                    else
                                        v180 = p177 or math.floor(vu161 + (vu162 - vu161) * v179)
                                    end
                                    pu27.flags[pu154] = tonumber(v180)
                                    vu174.Text = tostring(v180)
                                    vu170.Size = UDim2.new(v179, 0, 1, 0)
                                    vu160(tonumber(v180))
                                end
                            }
                            v175.MouseButton1Click:Connect(function()
                                local v182 = pu27.flags[pu154]
                                vu181:SetValue((math.clamp(v182 - 1, vu161, vu162)))
                            end)
                            v176.MouseButton1Click:Connect(function()
                                local v183 = pu27.flags[pu154]
                                vu181:SetValue((math.clamp(v183 + 1, vu161, vu162)))
                            end)
                            local v184 = vu181
                            vu181.SetValue(v184, vu163)
                            local vu185 = false
                            local vu186 = false
                            local vu187 = {
                                [""] = true,
                                ["-"] = true
                            }
                            vu168.InputBegan:Connect(function(p188)
                                if p188.UserInputType == Enum.UserInputType.MouseButton1 then
                                    vu181:SetValue()
                                    vu185 = true
                                end
                            end)
                            vu4.UserInputService.InputEnded:Connect(function(p189)
                                if vu185 and p189.UserInputType == Enum.UserInputType.MouseButton1 then
                                    vu185 = false
                                end
                            end)
                            vu4.UserInputService.InputChanged:Connect(function(p190)
                                if vu185 and p190.UserInputType == Enum.UserInputType.MouseMovement then
                                    vu181:SetValue()
                                end
                            end)
                            vu168.InputBegan:Connect(function(p191)
                                if p191.UserInputType == Enum.UserInputType.Touch then
                                    vu181:SetValue()
                                    vu185 = true
                                end
                            end)
                            vu4.UserInputService.InputEnded:Connect(function(p192)
                                if vu185 and p192.UserInputType == Enum.UserInputType.Touch then
                                    vu185 = false
                                end
                            end)
                            vu4.UserInputService.InputChanged:Connect(function(p193)
                                if vu185 and p193.UserInputType == Enum.UserInputType.Touch then
                                    vu181:SetValue()
                                end
                            end)
                            vu174.Focused:Connect(function()
                                vu186 = true
                            end)
                            vu174.FocusLost:Connect(function()
                                vu186 = false
                                if vu174.Text == "" then
                                    vu181:SetValue(vu163)
                                end
                            end)
                            local v194 = vu174
                            vu174.GetPropertyChangedSignal(v194, "Text"):Connect(function()
                                if vu186 then
                                    vu174.Text = vu174.Text:gsub("%D+", "")
                                    local v195 = vu174.Text
                                    if tonumber(v195) then
                                        if not vu187[v195] then
                                            if vu162 < tonumber(v195) then
                                                v195 = vu162
                                                vu174.Text = tostring(vu162)
                                            end
                                            vu181:SetValue(tonumber(v195))
                                        end
                                    else
                                        vu174.Text = vu174.Text:gsub("%D+", "")
                                    end
                                end
                            end)
                            return vu181
                        end,
                        Dropdown = function(_, p196, pu197, p198, p199)
                            local vu200 = p199 or function()
                            end
                            assert(p196, "No text provided")
                            assert(pu197, "No flag provided")
                            pu27.flags[pu197] = nil
                            local vu201 = Instance.new("Frame")
                            local v202 = Instance.new("TextButton")
                            local v203 = Instance.new("UICorner")
                            local vu204 = Instance.new("TextButton")
                            local vu205 = Instance.new("TextBox")
                            local vu206 = Instance.new("UIListLayout")
                            Instance.new("TextButton")
                            Instance.new("UICorner")
                            vu201.Name = "DropdownModule"
                            vu201.Parent = vu92
                            vu201.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                            vu201.BackgroundTransparency = 1
                            vu201.BorderSizePixel = 0
                            vu201.ClipsDescendants = true
                            vu201.Position = UDim2.new(0, 0, 0, 0)
                            vu201.Size = UDim2.new(0, 428, 0, 38)
                            v202.Name = "DropdownTop"
                            v202.Parent = vu201
                            v202.BackgroundColor3 = zyColor
                            v202.BackgroundTransparency = ALTransparency
                            v202.BorderSizePixel = 0
                            v202.Size = UDim2.new(0, 428, 0, 38)
                            v202.AutoButtonColor = false
                            v202.Font = Enum.Font.GothamSemibold
                            v202.Text = ""
                            v202.TextColor3 = ALcolor
                            v202.TextSize = 16
                            v202.TextXAlignment = Enum.TextXAlignment.Left
                            v203.CornerRadius = UDim.new(0, 12)
                            v203.Name = "DropdownTopC"
                            v203.Parent = v202
                            vu204.Name = "DropdownOpen"
                            vu204.Parent = v202
                            vu204.AnchorPoint = Vector2.new(0, 0.5)
                            vu204.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                            vu204.BackgroundTransparency = 1
                            vu204.BorderSizePixel = 0
                            vu204.Position = UDim2.new(0.918383181, 0, 0.5, 0)
                            vu204.Size = UDim2.new(0, 20, 0, 20)
                            vu204.Font = Enum.Font.Gotham
                            vu204.Text = "+"
                            vu204.TextColor3 = ALcolor
                            vu204.TextSize = 24
                            vu204.TextWrapped = true
                            vu205.Name = "DropdownText"
                            vu205.Parent = v202
                            vu205.BackgroundColor3 = Color3.fromRGB(135, 206, 235)
                            vu205.BackgroundTransparency = 1
                            vu205.BorderSizePixel = 0
                            vu205.Position = UDim2.new(0.0373831764, 0, 0, 0)
                            vu205.Size = UDim2.new(0, 184, 0, 38)
                            vu205.Font = Enum.Font.GothamSemibold
                            vu205.PlaceholderColor3 = Color3.fromRGB(135, 206, 235)
                            vu205.PlaceholderText = p196
                            vu205.Text = ""
                            vu205.TextColor3 = Color3.fromRGB(255, 0, 0)
                            vu205.TextSize = 16
                            vu205.TextXAlignment = Enum.TextXAlignment.Left
                            vu206.Name = "DropdownModuleL"
                            vu206.Parent = vu201
                            vu206.SortOrder = Enum.SortOrder.LayoutOrder
                            vu206.Padding = UDim.new(0, 8)
                            local function vu210()
                                local v207 = vu201:GetChildren()
                                for v208 = 1, # v207 do
                                    local v209 = v207[v208]
                                    if v209:IsA("TextButton") then
                                        if v209.Name:match("Option_") then
                                            v209.Visible = true
                                        end
                                    end
                                end
                            end
                            local function vu215(p211)
                                local v212 = vu201:GetChildren()
                                for v213 = 1, # v212 do
                                    local v214 = v212[v213]
                                    if p211 == "" then
                                        vu210()
                                    elseif v214:IsA("TextButton") then
                                        if v214.Name:match("Option_") then
                                            if v214.Text:lower():match(p211:lower()) then
                                                v214.Visible = true
                                            else
                                                v214.Visible = false
                                            end
                                        end
                                    end
                                end
                            end
                            local vu216 = false
                            local function vu217()
                                vu216 = not vu216
                                if vu216 then
                                    vu210()
                                end
                                vu204.Text = vu216 and "-" or "+"
                                vu201.Size = UDim2.new(0, 428, 0, vu216 and vu206.AbsoluteContentSize.Y + 4 or 38)
                            end
                            vu204.MouseButton1Click:Connect(vu217)
                            vu205.Focused:Connect(function()
                                if not vu216 then
                                    vu217()
                                end
                            end)
                            local v218 = vu205
                            vu205.GetPropertyChangedSignal(v218, "Text"):Connect(function()
                                if vu216 then
                                    vu215(vu205.Text)
                                end
                            end)
                            local v219 = vu206
                            vu206.GetPropertyChangedSignal(v219, "AbsoluteContentSize"):Connect(function()
                                if vu216 then
                                    vu201.Size = UDim2.new(0, 428, 0, vu206.AbsoluteContentSize.Y + 4)
                                end
                            end)
                            local vu233 = {
                                AddOption = function(_, p220)
                                    local vu221 = Instance.new("TextButton")
                                    local v222 = Instance.new("UICorner")
                                    vu221.Name = "Option_" .. p220
                                    vu221.Parent = vu201
                                    vu221.BackgroundColor3 = zyColor
                                    vu221.BorderSizePixel = 0
                                    vu221.Position = UDim2.new(0, 0, 0.328125, 0)
                                    vu221.Size = UDim2.new(0, 428, 0, 26)
                                    vu221.AutoButtonColor = false
                                    vu221.Font = Enum.Font.Gotham
                                    vu221.Text = p220
                                    vu221.TextColor3 = ALcolor
                                    vu221.TextSize = 14
                                    v222.CornerRadius = UDim.new(0, 6)
                                    v222.Name = "OptionC"
                                    v222.Parent = vu221
                                    vu221.MouseButton1Click:Connect(function()
                                        vu217()
                                        vu200(vu221.Text)
                                        vu205.Text = vu221.Text
                                        pu27.flags[pu197] = vu221.Text
                                    end)
                                end,
                                RemoveOption = function(_, p223)
                                    local v224 = vu201:FindFirstChild("Option_" .. p223)
                                    if v224 then
                                        v224:Destroy()
                                    end
                                end,
                                SetOptions = function(_, p225)
                                    local v226 = next
                                    local v227, v228 = vu201:GetChildren()
                                    while true do
                                        local v229
                                        v228, v229 = v226(v227, v228)
                                        if v228 == nil then
                                            break
                                        end
                                        if v229.Name:match("Option_") then
                                            v229:Destroy()
                                        end
                                    end
                                    local v230 = next
                                    local v231 = nil
                                    while true do
                                        local v232
                                        v231, v232 = v230(p225, v231)
                                        if v231 == nil then
                                            break
                                        end
                                        vu233:AddOption(v232)
                                    end
                                end
                            }
                            local v234 = vu233
                            vu233.SetOptions(v234, p198 or {})
                            return vu233
                        end
                    }
                end
            }
        end
    }
end
return vu1