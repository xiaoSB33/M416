 local CoordManager = {
     isEnabled = false,
     currentCoord = nil, -- 存储当前坐标仪实例
     -- 依赖服务
     Players = game:GetService("Players"),
     RunService = game:GetService("RunService"),
     UserInputService = game:GetService("UserInputService"),
     StarterGui = game:GetService("StarterGui"),
     LocalPlayer = game:GetService("Players").LocalPlayer
 }
 -- 1. 创建全新坐标仪实例（每次开启都新建）
 function CoordManager:CreateNewCoord()
     -- 先销毁已有实例（防止重复）
     self:DestroyCoord()
     -- 新建坐标仪UI容器
     local gui = Instance.new("ScreenGui")
     gui.Name = "FXM_CoordDisplay_" .. os.clock() -- 唯一命名，避免冲突
     gui.Parent = self.LocalPlayer.PlayerGui
     -- 坐标显示容器
     local container = Instance.new("Frame")
     container.Size = UDim2.new(0,240,0,60)
     container.Position = UDim2.new(1,-250,0,10)
     container.BackgroundTransparency = 1
     container.Parent = gui
     -- 坐标背景框
     local coordFrame = Instance.new("Frame")
     coordFrame.Size = UDim2.new(0,200,1,0)
     coordFrame.BackgroundColor3 = Color3.new(0,0,0)
     coordFrame.BackgroundTransparency = 0.7
     coordFrame.BorderSizePixel = 1
     coordFrame.Parent = container
     -- 坐标文本
     local textLabel = Instance.new("TextLabel")
     textLabel.Size = UDim2.new(1,0,1,0)
     textLabel.BackgroundTransparency = 1
     textLabel.TextColor3 = Color3.new(1,1,1)
     textLabel.Font = Enum.Font.SourceSansBold
     textLabel.TextSize = 14
     textLabel.Text = "坐标加载中..."
     textLabel.Parent = coordFrame
     -- 复制按钮
     local copyBtn = Instance.new("TextButton")
     copyBtn.Size = UDim2.new(0,35,1,0)
     copyBtn.Position = UDim2.new(0,205,0,0)
     copyBtn.BackgroundColor3 = Color3.new(0.2,0.2,0.2)
     copyBtn.BackgroundTransparency = 0.5
     copyBtn.Text = "复"
     copyBtn.TextColor3 = Color3.new(1,1,1)
     copyBtn.TextSize = 14
     copyBtn.BorderSizePixel = 1
     copyBtn.Parent = container
     -- 复制功能
     copyBtn.MouseButton1Click:Connect(function()
         local char = self.LocalPlayer.Character
         local root = char and char:FindFirstChild("HumanoidRootPart")
         if root and setclipboard then
             local coordStr = string.format("X: %.2f, Y: %.2f, Z: %.2f",
                 root.Position.X, root.Position.Y, root.Position.Z
             )
             setclipboard(coordStr)
             self.StarterGui:SetCore("SendNotification",{
                 Title = "复制成功",
                 Text = coordStr,
                 Duration = 2
             })
         end
     end)
     -- 拖拽移动
     local isDragging = false
     local dragStartPos, containerStartPos = nil, nil
     container.InputBegan:Connect(function(input)
         if input.UserInputType == Enum.UserInputType.Touch then
             isDragging = true
             dragStartPos = input.Position
             containerStartPos = container.Position
         end
     end)
     self.UserInputService.InputChanged:Connect(function(input)
         if isDragging and input.UserInputType == Enum.UserInputType.Touch then
             local delta = input.Position - dragStartPos
             container.Position = UDim2.new(
                 containerStartPos.X.Scale, containerStartPos.X.Offset + delta.X,
                 containerStartPos.Y.Scale, containerStartPos.Y.Offset + delta.Y
             )
         end
     end)
     self.UserInputService.InputEnded:Connect(function(input)
         if input.UserInputType == Enum.UserInputType.Touch and isDragging then
             isDragging = false
         end
     end)
     -- 坐标更新事件
     local updateConn = self.RunService.Heartbeat:Connect(function()
         local char = self.LocalPlayer.Character
         local root = char and char:FindFirstChild("HumanoidRootPart")
         if root then
             textLabel.Text = string.format("X: %.2f\nY: %.2f\nZ: %.2f",
                 root.Position.X, root.Position.Y, root.Position.Z
             )
         else
             textLabel.Text = "等待角色加载..."
         end
     end)
     -- 存储当前坐标仪实例信息（UI+更新事件）
     self.currentCoord = {
         gui = gui,
         updateConn = updateConn
     }
     return self.currentCoord
 end
 -- 2. 销毁当前坐标仪实例（关闭时彻底清除）
 function CoordManager:DestroyCoord()
     if self.currentCoord then
         -- 断开更新事件
         if self.currentCoord.updateConn then
             self.currentCoord.updateConn:Disconnect()
             self.currentCoord.updateConn = nil
         end
         -- 销毁UI
         if self.currentCoord.gui and self.currentCoord.gui.Parent then
             self.currentCoord.gui:Destroy()
             self.currentCoord.gui = nil
         end
         -- 清空实例标记
         self.currentCoord = nil
     end
 end
-- 3. 开关控制逻辑（开启=重建，关闭=销毁）
 function CoordManager:Toggle(Value)
     self.isEnabled = Value
     if Value then
         -- 开启：创建全新坐标仪
         self:CreateNewCoord()
         self.StarterGui:SetCore("SendNotification",{
             Title = "FXM坐标仪",
             Text = "坐标仪已重新加载并开启",
             Duration = 2
         })
     else
         -- 关闭：销毁当前坐标仪
         self:DestroyCoord()
         self.StarterGui:SetCore("SendNotification",{
             Title = "FXM坐标仪",
             Text = "坐标仪已关闭并销毁",
             Duration = 2
         })
     end
 end
 -- 坐标仪开关按钮（默认关闭，切换时重建/销毁）
 about:Toggle("坐标仪","Toggle",false,function(Value)
     CoordManager:Toggle(Value)
 end)