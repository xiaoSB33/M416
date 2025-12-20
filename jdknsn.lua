local r0_0 = Instance.new("ScreenGui", getParent)
local r1_0 = Instance.new("TextLabel", getParent)
local r2_0 = game.Players.LocalPlayer
game:GetService("TextChatService"):DisplayBubble((r2_0.Character or r2_0.CharacterAdded:Wait()):WaitForChild("Head"), "欢迎使用叶脚本本")
game:GetService("TextChatService"):DisplayBubble((r2_0.Character or r2_0.CharacterAdded:Wait()):WaitForChild("Head"), "此信息别人看不见")
r0_0.Name = "LBLG"
r0_0.Parent = game.CoreGui
r0_0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
r0_0.Enabled = true
r1_0.Name = "LBL"
r1_0.Parent = r0_0
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
local r16_0 = loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/ESP.LUA", true))()
r16_0.DefaultColor = Color3.fromRGB(0, 0, 255)
r16_0:Notification({
  Text = "叶脚本作者: 小叶",
  Duration = 3,
})
wait(1)
r16_0:Notification({
  Text = "脚本持续云更新",
  Duration = 3,
})
wait(1)
r16_0:Notification({
  Text = "谢谢大家一直以来的支持^ω^",
  Duration = 3,
})
game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "叶脚本",
  Text = "支持所有注入器",
  Icon = "rbxassetid://123097590035361",
  Duration = 2,
  Callback = bindable,
  Button1 = "    ",
  Button2 = "   ",
})
wait(1.5)
game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "叶脚本",
  Text = "大部分服务器都弄成检测ID了",
  Icon = "rbxassetid://123097590035361",
  Duration = 2,
  Callback = bindable,
  Button1 = "累死我了",
  Button2 = "很麻烦",
})
wait(1.5)
game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "叶脚本",
  Text = "启动成功",
  Icon = "rbxassetid://123097590035361",
  Duration = 2,
  Callback = bindable,
  Button1 = "祝您使用愉快",
  Button2 = "玩的开心",
})
wait(1)
local r17_0 = 0
r14_0 = tick()
r12_0:Connect(function()
  -- line: [67, 69420] id: 142
  r13_0 = tick()
  for r3_142 = #r15_0, 1, -1 do
    local r4_142 = r15_0
    local r5_142 = r3_142 + 1
    local r6_142 = r15_0[r3_142]
    if r13_0 - 1 <= r6_142 then
      r6_142 = r15_0[r3_142] or nil
    else
      goto label_20	-- block#3 is visited secondly
    end
    r4_142[r5_142] = r6_142
  end
  r15_0[1] = r13_0
  local r0_142 = tick() - r14_0
  if r0_142 >= 1 then
    r0_142 = #r15_0 or #r15_0 / (tick() - r14_0)
  else
    goto label_36	-- block#8 is visited secondly
  end
  r0_142 = r0_142 - r0_142 % 1
  r11_0.Text = "北京时间:" .. os.date("%H") .. "时" .. os.date("%M") .. "分" .. os.date("%S") .. "秒"
  r11_0.TextColor3 = Color3.fromHSV(r17_0, 1, 1)
  r17_0 = (r17_0 + 0.001) % 1
end)
local r19_0 = {
  playernamedied = "",
  dropdown = {},
  sayCount = 1,
  sayFast = false,
  autoSay = false,
}
function shuaxinlb(r0_300)
  -- line: [67, 69420] id: 300
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
  -- line: [67, 69420] id: 257
  game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = r0_257,
    Text = r1_257,
    Icon = r2_257,
    Duration = r3_257,
  })
end
local r21_0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/66YEUIUI.txt"))():new("叶脚本-河北唐县")
local r22_0 = r21_0:Tab("玩家", "7733993211")
local r23_0 = r22_0:section("信息", true)
r23_0:Label("你的用户名:" .. game.Players.LocalPlayer.Character.Name)
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
r23_0:Textbox("输入内容", "", "输入内容", function(r0_82)
  -- line: [67, 69420] id: 82
  -- error: decompile function#82: Condition failed: `def_pos <= last_end && last_end <= self.stmts.len()`
end)
local r24_0 = r22_0:section("切换UI界面", true)
r24_0:Button("UI2", function()
  -- line: [67, 69420] id: 200
  game:GetService("CoreGui").frosty.Main.Style = "DropShadow"
end)
r24_0:Button("UI3", function()
  -- line: [67, 69420] id: 354
  game:GetService("CoreGui").frosty.Main.Style = "Custom"
end)
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
r27_0:Button("复制作者qq号", function()
  -- line: [67, 69420] id: 211
  setclipboard("3108792043")
end)
r27_0:Button("复制叶脚本主群", function()
  -- line: [67, 69420] id: 23
  setclipboard("277137954")
end)
r27_0:Button("复制叶脚本副群", function()
  -- line: [67, 69420] id: 8
  setclipboard("1036061415")
end)
r27_0:Button("复制叶脚本二群", function()
  -- line: [67, 69420] id: 188
  setclipboard("751552817")
end)
r27_0:Button("复制叶脚本三群", function()
  -- line: [67, 69420] id: 94
  setclipboard("515966991")
end)
r27_0:Button("关闭脚本ui", function()
  -- line: [67, 69420] id: 83
  game:GetService("CoreGui").frosty:Destroy()
end)
r27_0:Button("重新加入服务器", function()
  -- line: [67, 69420] id: 345
  game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end)
local r28_0 = r21_0:Tab("通用", "6035145364")
local r29_0 = r28_0:section("本地玩家", true)
r29_0:Slider("修改速度", "WalkspeedSlider", 16, 16, 800, false, function(r0_103)
  -- line: [67, 69420] id: 103
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = r0_103
end)
r29_0:Textbox("人物漂移加速", "", "输入数字", function(r0_75)
  -- line: [67, 69420] id: 75
  if tonumber(r0_75) then
    speed = tonumber(r0_75)
    tpwalking = true
    local r1_75 = game:GetService("Players").LocalPlayer
    local r2_75 = r1_75.Character or r1_75.CharacterAdded:Wait()
    local r3_75 = r2_75 and r2_75:FindFirstChildWhichIsA("Humanoid")
    if r3_75 then
      RunService:UnbindFromRenderStep("TPWalk")
      RunService:BindToRenderStep("TPWalk", Enum.RenderPriority.Character.Value, function(r0_76)
        -- line: [67, 69420] id: 76
        if tpwalking and r2_75 and r3_75 and r3_75.Parent and 0 < r3_75.MoveDirection.Magnitude then
          r2_75:TranslateBy(r3_75.MoveDirection * speed * r0_76 * 10)
        end
      end)
    end
    -- close: r1_75
  else
    print("Invalid input. Please enter a number.")
  end
end)
r29_0:Button("点击关闭", function()
  -- line: [67, 69420] id: 170
  tpwalking = false
  RunService:UnbindFromRenderStep("TPWalk")
end)
r29_0:Textbox("设置快速跑步（推荐调2）", "run", "输入", function(r0_316)
  -- line: [67, 69420] id: 316
  Speed = r0_316
end)
r29_0:Toggle("开启快速跑步(开/关)", "switch", false, function(r0_11)
  -- line: [67, 69420] id: 11
  if r0_11 == true then
    sudu = game:GetService("RunService").Heartbeat:Connect(function()
      -- line: [67, 69420] id: 12
      if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and game:GetService("Players").LocalPlayer.Character.Humanoid.Parent and 0 < game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection.Magnitude then
        game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection * Speed / 0.5)
      end
    end)
  elseif not r0_11 and sudu then
    sudu:Disconnect()
    sudu = nil
  end
end)
r29_0:Slider("修改血量", "HealthSlider", 100, 1, 100, false, function(r0_341)
  -- line: [67, 69420] id: 341
  game.Players.LocalPlayer.Character.Humanoid.Health = r0_341
end)
r29_0:Slider("修改跳跃", "JumpPowerSlider", 50, 50, 500, false, function(r0_66)
  -- line: [67, 69420] id: 66
  game.Players.LocalPlayer.Character.Humanoid.JumpPower = r0_66
end)
r29_0:Slider("修改重力", "GravitySlider", 198, 0, 9999, false, function(r0_37)
  -- line: [67, 69420] id: 37
  game.Workspace.Gravity = r0_37
end)
r29_0:Slider("相机焦距上限", "", 128, 128, 2000, false, function(r0_158)
  -- line: [67, 69420] id: 158
  game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = r0_158
end)
r29_0:Toggle("持续回满血", "TD", false, function(r0_173)
  -- line: [67, 69420] id: 173
  if r0_173 then
    while r0_173 do
      game.Players.LocalPlayer.Character.Humanoid.Health = 10000
      wait(0.0000000000001)
    end
  end
end)
r29_0:Button("F3X", function()
  -- line: [67, 69420] id: 199
  loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
end)
r29_0:Button("建筑工具", function()
  -- line: [67, 69420] id: 128
  Hammer = Instance.new("HopperBin")
  Hammer.Name = "锤子"
  Hammer.BinType = 4
  Hammer.Parent = game.Players.LocalPlayer.Backpack
  Clone = Instance.new("HopperBin")
  Clone.Name = "克隆"
  Clone.BinType = 3
  Clone.Parent = game.Players.LocalPlayer.Backpack
  Grab = Instance.new("HopperBin")
  Grab.Name = "抓取"
  Grab.BinType = 2
end)
local r30_0 = r28_0:section("飞行功能", true)
r30_0:Button("叶飞行", function()
  -- line: [67, 69420] id: 207
  loadstring(game:HttpGet("https://pastebin.com/raw/jeaenuuK"))()
end)
r30_0:Button("超人飞行", function()
  -- line: [67, 69420] id: 72
  loadstring(game:HttpGet("https://raw.githubusercontent.com/396abc/Script/refs/heads/main/MobileFly.lua"))()
end)
r30_0:Button("叶飞车", function()
  -- line: [67, 69420] id: 38
  loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE%20FLY%20CAR.lua"))()
end)
local r31_0 = r28_0:section("实用功能", true)
r31_0:Button("快速互动", function()
  -- line: [67, 69420] id: 203
  game.ProximityPromptService.PromptButtonHoldBegan:Connect(function(r0_204)
    -- line: [67, 69420] id: 204
    r0_204.HoldDuration = 0
  end)
end)
r31_0:Toggle("靠近自动攻击(需要拿起武器)", "Toggle", false, function(r0_247)
  -- line: [67, 69420] id: 247
  local r3_247 = nil	-- notice: implicit variable refs by block#[28, 31]
  local r6_247 = nil	-- notice: implicit variable refs by block#[29]
  if r0_247 then
    local r1_247 = getgenv().configs and getgenv().configs.connections
    if r1_247 then
      local r2_247 = getgenv().configs.Disable
      r3_247 = pairs
      for r6_247, r7_247 in r3_247(r1_247) do
        r7_247:Disconnect()
      end
      r2_247:Fire()
      r2_247:Destroy()
      table.clear(getgenv().configs)
    end
    local r2_247 = Instance.new("BindableEvent")
    r3_247 = getgenv()
    r3_247.configs = {
      connections = {},
      Disable = r2_247,
      Size = Vector3.new(10, 10, 10),
      DeathCheck = true,
    }
    r3_247 = game:GetService("Players")
    local r4_247 = game:GetService("RunService")
    local r5_247 = r3_247.LocalPlayer
    r6_247 = true
    local r7_247 = OverlapParams.new()
    r7_247.FilterType = Enum.RaycastFilterType.Include
    local function r8_247(r0_249)
      -- line: [67, 69420] id: 249
      if not r0_249 then
        r0_249 = r5_247
      end
      return r0_249.Character
    end
    local function r9_247(r0_252)
      -- line: [67, 69420] id: 252
      local r1_252 = r0_252:IsA("Model")
      if r1_252 then
        r1_252 = r0_252 or r8_247(r0_252)
      else
        goto label_7	-- block#2 is visited secondly
      end
      if r1_252 then
        local r4_252 = "Humanoid"
        ... = r1_252:FindFirstChildWhichIsA(r4_252) -- error: untaken top expr
      end
    end
    local function r10_247(r0_251)
      -- line: [67, 69420] id: 251
      return r0_251 and 0 < r0_251.Health
    end
    local function r11_247(r0_253)
      -- line: [67, 69420] id: 253
      return r0_253 and r0_253:FindFirstChildWhichIsA("TouchTransmitter", true)
    end
    local function r12_247(r0_248)
      -- line: [67, 69420] id: 248
      local r1_248 = {}
      for r5_248, r6_248 in pairs(r3_247:GetPlayers()) do
        table.insert(r1_248, r8_247(r6_248))
      end
      for r5_248, r6_248 in pairs(r1_248) do
        if r6_248 == r0_248 then
          table.remove(r1_248, r5_248)
          break
        end
      end
      return r1_248
    end
    local function r13_247(r0_250, r1_250, r2_250)
      -- line: [67, 69420] id: 250
      if r0_250:IsDescendantOf(workspace) then
        r0_250:Activate()
        firetouchinterest(r1_250, r2_250, 1)
        firetouchinterest(r1_250, r2_250, 0)
      end
    end
    table.insert(getgenv().configs.connections, r2_247.Event:Connect(function()
      -- line: [67, 69420] id: 254
      r6_247 = false
    end))
    while r6_247 do
      local r14_247 = r8_247()
      if r10_247(r9_247(r14_247)) then
        local r15_247 = r14_247 and r14_247:FindFirstChildWhichIsA("Tool")
        local r16_247 = r15_247 and r11_247(r15_247)
        if r16_247 then
          local r17_247 = r16_247.Parent
          local r18_247 = r12_247(r14_247)
          r7_247.FilterDescendantsInstances = r18_247
          for r23_247, r24_247 in pairs(workspace:GetPartBoundsInBox(r17_247.CFrame, r17_247.Size + getgenv().configs.Size, r7_247)) do
            local r25_247 = r24_247:FindFirstAncestorWhichIsA("Model")
            if table.find(r18_247, r25_247) then
              if getgenv().configs.DeathCheck and r10_247(r9_247(r25_247)) then
                r13_247(r15_247, r17_247, r24_247)
              elseif not getgenv().configs.DeathCheck then
                r13_247(r15_247, r17_247, r24_247)
              end
            end
          end
        end
      end
      r4_247.Heartbeat:Wait()
    end
    -- close: r1_247
  else
    local r1_247 = getgenv().configs.Disable
    if r1_247 then
      r1_247:Fire()
      r1_247:Destroy()
    end
    r3_247 = getgenv
    r3_247 = r3_247()
    r3_247 = r3_247.configs
    r3_247 = r3_247.connections
    for r5_247, r6_247 in pairs(r3_247) do
      r6_247:Disconnect()
    end
    r3_247 = getgenv
    r3_247 = r3_247()
    r3_247 = r3_247.configs
    r3_247 = r3_247.connections
    table.clear(r3_247)
    Run = false
  end
end)
r31_0:Button("自动互动", function(r0_333)
  -- line: [67, 69420] id: 333
  if r0_333 then
    autoInteract = true
    while autoInteract do
      local r1_333 = pairs
      for r4_333, r5_333 in r1_333(workspace:GetDescendants()) do
        if r5_333:IsA("ProximityPrompt") then
          fireproximityprompt(r5_333)
        end
      end
      task.wait(0.25)
    end
  else
    autoInteract = false
  end
end)
r31_0:Button("偷别人物品栏道具", function()
  -- line: [67, 69420] id: 239
  for r3_239, r4_239 in pairs(game.Players:GetChildren()) do
    wait()
    for r8_239, r9_239 in pairs(r4_239.Backpack:GetChildren()) do
      r9_239.Parent = game.Players.LocalPlayer.Backpack
    end
  end
end)
r31_0:Button("爬墙", function()
  -- line: [67, 69420] id: 241
  loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)
r31_0:Button("键盘脚本", function()
  -- line: [67, 69420] id: 141
  loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
r31_0:Button("踏空行走", function()
  -- line: [67, 69420] id: 244
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float"))()
end)
r31_0:Button("自杀", function()
  -- line: [67, 69420] id: 342
  game.Players.LocalPlayer.Character.Humanoid.Health = 0
  HumanDied = true
end)
local r33_0 = game:GetService("Players").LocalPlayer
local function r34_0(r0_183, r1_183, r2_183, r3_183)
  -- line: [67, 69420] id: 183
  print("Dropdown label:", r0_183)
  print("Dropdown name:", r1_183)
  print("Options:", table.concat(r2_183, ", "))
  r3_183(r2_183[1])
end
r31_0:Dropdown("设置镜头", "Camera", {
  "第三人称",
  "第一人称"
}, function(r0_242)
  -- line: [67, 69420] id: 242
  if r0_242 == "第三人称" and r33_0 then
    r33_0.CameraMode = "Classic"
  elseif r0_242 == "第一人称" and r33_0 then
    r33_0.CameraMode = "LockFirstPerson"
  end
end)
r31_0:Toggle("无敌", "LSTM", false, function(r0_64)
  -- line: [67, 69420] id: 64
  if r0_64 then
    local r1_64 = workspace.CurrentCamera
    local r2_64 = r1_64.CFrame
    local r3_64 = speaker.Character
    local r4_64 = r3_64 and r3_64:FindFirstChildWhichIsA("Humanoid")
    local r5_64 = r4_64:Clone()
    r5_64.Parent = r3_64
    r5_64:SetStateEnabled(Enum.HumanoidStateType.Health, false)
    r5_64:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    r5_64:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
    r5_64.BreakJointsOnDeath = true
    r4_64:Destroy()
    speaker.Character = nil
    speaker.Character = r3_64
    r1_64.CameraSubject = r5_64
    local r6_64 = wait()
    if r6_64 then
      r6_64 = r2_64 or r1_64.CFrame
    else
      goto label_47	-- block#5 is visited secondly
    end
    r1_64.CFrame = r6_64
    r5_64.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
    r6_64 = r3_64:FindFirstChild("Animate")
    if r6_64 then
      r6_64.Disabled = true
      wait()
      r6_64.Disabled = false
    end
    r5_64.Health = r5_64.MaxHealth
  else
    game.Players.LocalPlayer.Character.Humanoid.Health = 100
  end
end)
r31_0:Toggle("上帝模式", "No Description", false, function(r0_81)
  -- line: [67, 69420] id: 81
  if r0_81 then
    (game:GetService("Players").LocalPlayer.Character and r1_81.Character.HumanoidRootPart):Clone().Parent = r1_81.Character
  else
    game.Players.LocalPlayer.Character.Head:Destroy()
  end
end)
r31_0:Button("IY指令", function()
  -- line: [67, 69420] id: 118
  loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)
r31_0:Button("防踢出增强版", function()
  -- line: [67, 69420] id: 346
  function Notification(r0_347, r1_347, r2_347)
    -- line: [67, 69420] id: 347
    game:GetService("StarterGui"):SetCore("SendNotification", {
      Title = r0_347,
      Text = r1_347,
      Duration = r2_347,
    })
  end
  local r0_346 = nil
  r0_346 = hookmetamethod(game, "__namecall", function(r0_348, ...)
    -- line: [67, 69420] id: 348
    local r2_348 = getnamecallmethod()
    if r2_348 == "Kick" or r2_348 == "kick" then
      local r4_348 = ({
        ...
      })[1]
      local r5_348 = os.date("%H") .. ":" .. os.date("%M") .. ":" .. os.date("%S")
      Notification("Anti-Kick", "成功拦截踢出", 2)
      print("时间:" .. r5_348)
      print("内容:" .. r4_348)
      return nil
    end
    return r0_346(r0_348, ...)
  end)
end)
r31_0:Button("防挂机", function()
  -- line: [67, 69420] id: 320
  wait(2)
  print("Anti Afk On")
  local r0_320 = game:GetService("VirtualUser")
  game:GetService("Players").LocalPlayer.Idled:connect(function()
    -- line: [67, 69420] id: 321
    r0_320:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    r0_320:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
  end)
  game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "叶脚本提示",
    Text = "防挂机已开启",
    Duration = 2,
  })
end)
r31_0:Button("离开游戏", function()
  -- line: [67, 69420] id: 127
  game:Shutdown()
end)
r31_0:Button("点击传送", function()
  -- line: [67, 69420] id: 130
  mouse = game.Players.LocalPlayer:GetMouse()
  tool = Instance.new("Tool")
  tool.RequiresHandle = false
  tool.Name = "点击传送的位置"
  tool.Activated:connect(function()
    -- line: [67, 69420] id: 131
    local r0_131 = mouse.Hit + Vector3.new(0, 2.5, 0)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(r0_131.X, r0_131.Y, r0_131.Z)
  end)
  tool.Parent = game.Players.LocalPlayer.Backpack
end)
r31_0:Toggle("穿墙", "NoClip", false, function(r0_143)
  -- line: [67, 69420] id: 143
  local r1_143 = game:GetService("Workspace")
  local r2_143 = game:GetService("Players")
  if r0_143 then
    Clipon = true
  else
    Clipon = false
  end
  Stepped = game:GetService("RunService").Stepped:Connect(function()
    -- line: [67, 69420] id: 144
    if not Clipon == false then
      for r3_144, r4_144 in pairs(r1_143:GetChildren()) do
        if r4_144.Name == r2_143.LocalPlayer.Name then
          for r8_144, r9_144 in pairs(r1_143[r2_143.LocalPlayer.Name]:GetChildren()) do
            if r9_144:IsA("BasePart") then
              r9_144.CanCollide = false
            end
          end
        end
      end
    else
      Stepped:Disconnect()
    end
  end)
end)
r31_0:Button("无限跳跃", function()
  -- line: [67, 69420] id: 134
  loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
end)
r31_0:Button("吸人", function()
  -- line: [67, 69420] id: 140
  loadstring(game:HttpGet("https://shz.al/~HHAKS"))()
end)
r31_0:Textbox("修改攻击体积", "text", "输入", function(r0_106)
  -- line: [67, 69420] id: 106
  _G.HeadSize = r0_106
  _G.Disabled = true
  game:GetService("RunService").RenderStepped:connect(function()
    -- line: [67, 69420] id: 107
    if _G.Disabled then
      local r0_107 = next
      local r1_107, r2_107 = game:GetService("Players"):GetPlayers()
      for r3_107, r4_107 in r0_107, r1_107, r2_107 do
        if r4_107.Name ~= game:GetService("Players").LocalPlayer.Name then
          pcall(function()
            -- line: [67, 69420] id: 108
            r4_107.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
            r4_107.Character.HumanoidRootPart.Transparency = 0.7
            r4_107.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
            r4_107.Character.HumanoidRootPart.Material = "Neon"
            r4_107.Character.HumanoidRootPart.CanCollide = false
          end)
        end
        -- close: r3_107
      end
    end
  end)
end)
r31_0:Button("死亡笔记", function()
  -- line: [67, 69420] id: 159
  loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
end)
r31_0:Button("走路创人", function()
  -- line: [67, 69420] id: 109
  loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_5wpM7bBcOPspmX7lQ3m75SrYNWqxZ858ai3tJdEAId6jSI05IOUB224FQ0VSAswH.lua.txt", true))()
end)
r31_0:Button("控制台", function()
  -- line: [67, 69420] id: 317
  game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
end)
r31_0:Button("铁拳", function()
  -- line: [67, 69420] id: 29
  loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt"))()
end)
r31_0:Button("隐身道具", function()
  -- line: [67, 69420] id: 174
  loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)", true))()
end)
r31_0:Toggle("人物不可见状态(隐身)", "Invisible Character", false, function(r0_343)
  -- line: [67, 69420] id: 343
  local r1_343 = game.Players.LocalPlayer
  for r6_343, r7_343 in pairs((r1_343.Character or r1_343.CharacterAdded:Wait()):GetChildren()) do
    local r8_343 = r7_343:IsA("BasePart")
    if r8_343 then
      if r0_343 then
        r8_343 = 1 or 0
      else
        goto label_24	-- block#6 is visited secondly
      end
      r7_343.Transparency = r8_343
      r7_343.CanCollide = not r0_343
    elseif r7_343:IsA("Accessory") then
      r8_343 = r7_343.Handle
      local r9_343 = nil	-- notice: implicit variable refs by block#[12]
      if r0_343 then
        r9_343 = 1
        if not r9_343 then
          ::label_40::
          r9_343 = 0
        end
      else
        goto label_40	-- block#11 is visited secondly
      end
      r8_343.Transparency = r9_343
    end
  end
end)
r31_0:Button("叶甩飞", function()
  -- line: [67, 69420] id: 151
  loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/%E5%8F%B6%E8%84%9A%E6%9C%AC%E7%94%A9%E9%A3%9E%E6%BA%90%E7%A0%81.lua"))()
end)
local r35_0 = r28_0:section("自瞄-范围", true)
r35_0:Button("自瞄", function()
  -- line: [67, 69420] id: 302
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
    -- line: [67, 69420] id: 308
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
    -- line: [67, 69420] id: 307
    r7_302.Position = r6_302.ViewportSize / 2
    r7_302.Radius = r0_302
  end
  r4_302.InputBegan:Connect(function(r0_304)
    -- line: [67, 69420] id: 304
    if r0_304.KeyCode == Enum.KeyCode.Delete then
      r3_302:UnbindFromRenderStep("FOVUpdate")
      r7_302:Remove()
    end
  end)
  local function r23_302(r0_303)
    -- line: [67, 69420] id: 303
    local r2_303 = math.huge
    local r3_303 = r6_302.ViewportSize / 2
    local r1_303 = nil	-- notice: implicit variable refs by block#[10]
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
    -- line: [67, 69420] id: 309
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
    -- line: [67, 69420] id: 310
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
    -- line: [67, 69420] id: 306
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
    -- line: [67, 69420] id: 305
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
  -- line: [67, 69420] id: 34
  _G.HeadSize = r0_34
  _G.Disabled = true
  game:GetService("RunService").RenderStepped:connect(function()
    -- line: [67, 69420] id: 35
    if _G.Disabled then
      local r0_35 = next
      local r1_35, r2_35 = game:GetService("Players"):GetPlayers()
      for r3_35, r4_35 in r0_35, r1_35, r2_35 do
        if r4_35.Name ~= game:GetService("Players").LocalPlayer.Name then
          pcall(function()
            -- line: [67, 69420] id: 36
            r4_35.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
            r4_35.Character.HumanoidRootPart.Transparency = 0.7
            r4_35.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
            r4_35.Character.HumanoidRootPart.Material = "Neon"
            r4_35.Character.HumanoidRootPart.CanCollide = false
          end)
        end
        -- close: r3_35
      end
    end
  end)
end)
r35_0:Button("普通范围", function()
  -- line: [67, 69420] id: 156
  loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
end)
r35_0:Button("中等范围", function()
  -- line: [67, 69420] id: 234
  loadstring(game:HttpGet("https://pastebin.com/raw/x13bwrFb"))()
end)
r35_0:Button("超大范围", function()
  -- line: [67, 69420] id: 16
  loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()
end)
r35_0:Button("子弹追踪", function()
  -- line: [67, 69420] id: 327
  local r0_327 = game:GetService("Workspace").CurrentCamera
  local r1_327 = game:GetService("Players")
  local r2_327 = game:GetService("Players").LocalPlayer
  local function r3_327()
    -- line: [67, 69420] id: 329
    local r1_329 = math.huge
    local r0_329 = nil	-- notice: implicit variable refs by block#[7, 8]
    for r5_329, r6_329 in pairs(r1_327.GetPlayers(r1_327)) do
      if r6_329 ~= r2_327 and r6_329.Character and r6_329.Character.FindFirstChild(r6_329.Character, "HumanoidRootPart") then
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
    -- line: [67, 69420] id: 328
    local r2_328 = getnamecallmethod()
    local r3_328 = {
      ...
    }
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
r36_0:Button("光影", function()
  -- line: [67, 69420] id: 7
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)
r36_0:Button("画质光影", function()
  -- line: [67, 69420] id: 229
  loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)
r36_0:Button("普通光影", function()
  -- line: [67, 69420] id: 22
  loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)
r36_0:Button("RTX高仿", function()
  -- line: [67, 69420] id: 13
  loadstring(game:HttpGet("https://pastebin.com/raw/Bkf0BJb3"))()
end)
r36_0:Button("RTX光追菜单", function()
  -- line: [67, 69420] id: 332
  loadstring(game:HttpGet("https://pastebin.com/raw/MuqQc4FB"))()
end)
r36_0:Button("光影v4", function()
  -- line: [67, 69420] id: 42
  loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)
r36_0:Button("光影滤镜", function()
  -- line: [67, 69420] id: 74
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)
local r37_0 = r28_0:section("FPS脚本", true)
r37_0:Button("显示FPS", function()
  -- line: [67, 69420] id: 216
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
    -- line: [67, 69420] id: 217
    r1_216.Text = "FPS: " .. math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
  end
  game:GetService("RunService").RenderStepped:Connect(updateFpsXS)
  r0_216.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end)
r37_0:Button("显示FPSv2", function()
  -- line: [67, 69420] id: 340
  loadstring(game:HttpGet("https://raw.githubusercontent.com/CaseohCASEOH/aabbaaii/refs/heads/main/FPSCOUNTER"))()
end)
r37_0:Slider("修改FPS", "FPS", 300, 300, 999, false, function(r0_67)
  -- line: [67, 69420] id: 67
  setfpscap(r0_67)
end)
local r38_0 = r28_0:section("娱乐功能（撸管）", true)
r38_0:Toggle("无法移动", "Fake flag", false, function(r0_182)
  -- line: [67, 69420] id: 182
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
r38_0:Button("坐下", function()
  -- line: [67, 69420] id: 95
  game.Players.LocalPlayer.Character.Humanoid.Sit = true
end)
r38_0:Button("人物螺旋上天", function()
  -- line: [67, 69420] id: 58
  if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    spawn(function()
      -- line: [67, 69420] id: 60
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
      -- line: [67, 69420] id: 59
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
  -- line: [67, 69420] id: 356
  game:GetService("TextChatService"):DisplayBubble((r2_0.Character or r2_0.CharacterAdded:Wait()):WaitForChild("Head"), r0_356)
end)
r38_0:Button("免费动作脚本", function()
  -- line: [67, 69420] id: 351
  loadstring(game:HttpGet("https://pastebin.com/raw/Zj4NnKs6"))()
end)
r38_0:Button("聊天气泡美化", function()
  -- line: [67, 69420] id: 101
  loadstring(game:HttpGet("https://pastefy.app/lCEPuiQO/raw"))()
end)
r38_0:Toggle("声音折磨", "", false, function(r0_77)
  -- line: [67, 69420] id: 77
  getgenv().spamSoond = r0_77
  if r0_77 then
    spamSound()
  end
end)
function spamSound()
  -- line: [67, 69420] id: 113
  while getgenv().spamSoond == true do
    local r0_113 = game.IsA
    local r1_113 = Instance.new("Sound")
    local r2_113 = r1_113.Play
    local r4_113 = next
    local r5_113, r6_113 = game.GetDescendants(game)
    for r7_113, r8_113 in r4_113, r5_113, r6_113 do
      if r0_113(r8_113, "Sound") then
        r2_113(r8_113)
      end
    end
    local r3_113 = nil
    r1_113:Remove()
    r3_113 = nil
    r2_113 = nil
    task.wait()
  end
end
r38_0:Toggle("七彩建筑", "", false, function(r0_132)
  -- line: [67, 69420] id: 132
  local r1_132 = nil	-- notice: implicit variable refs by block#[13]
  if r0_132 then
    Break = false
    r1_132 = {}
    local r2_132 = Enum.Material:GetEnumItems()
    for r6_132, r7_132 in pairs(game.Workspace:GetDescendants()) do
      if r7_132:IsA("BasePart") then
        table.insert(r1_132, r7_132)
      end
    end
    game.Workspace.DescendantAdded:Connect(function(r0_133)
      -- line: [67, 69420] id: 133
      if r0_133:IsA("BasePart") then
        table.insert(r1_132, r0_133)
      end
    end)
    while task.wait(0.025) do
      local r3_132 = pairs
      local r4_132 = r1_132
      for r6_132, r7_132 in r3_132(r4_132) do
        r7_132.Material = r2_132[math.random(1, #r2_132)]
        r7_132.Color = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
        if Break then
        end
      end
    end
    -- close: r1_132
  else
    r1_132 = true
    Break = r1_132
  end
end)
r38_0:Button("动态模糊", function()
  -- line: [67, 69420] id: 167
  local r0_167 = workspace.CurrentCamera
  local r1_167 = 10
  local r2_167 = 5
  local r3_167 = r0_167.CFrame.LookVector
  local r4_167 = Instance.new("BlurEffect", r0_167)
  local r5_167 = game:GetService("RunService")
  workspace.Changed:Connect(function(r0_168)
    -- line: [67, 69420] id: 168
    if r0_168 == "CurrentCamera" then
      print("Changed")
      local r1_168 = workspace.CurrentCamera
      if r4_167 and r4_167.Parent then
        r4_167.Parent = r1_168
      else
        r4_167 = Instance.new("BlurEffect", r1_168)
      end
    end
  end)
  r5_167.Heartbeat:Connect(function()
    -- line: [67, 69420] id: 169
    if not r4_167 or r4_167.Parent == nil then
      r4_167 = Instance.new("BlurEffect", r0_167)
    end
    r4_167.Size = math.abs(((r0_167.CFrame.LookVector - r3_167)).magnitude) * r1_167 * r2_167 / 2
    r3_167 = r0_167.CFrame.LookVector
  end)
end)
r38_0:Button("锁定视角", function()
  -- line: [67, 69420] id: 268
  loadstring(game:HttpGet("https://pastebin.com/raw/gdLR5Z7X"))()
end)
r38_0:Button("变成天使", function()
  -- line: [67, 69420] id: 49
  loadstring(game:HttpGet("https://pastebin.com/raw/RaXbiByH"))()
end)
r38_0:Button("表情菜单", function()
  -- line: [67, 69420] id: 27
  loadstring(game:HttpGet("https://yarhm.goteamst.com/scr?channel=afem"))()
end)
r38_0:Toggle("灵魂出窍", "", false, function(r0_161)
  -- line: [67, 69420] id: 161
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
r38_0:Button("音乐播放器", function()
  -- line: [67, 69420] id: 246
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Maan04ka/CodingScripts/main/MusicUI.lua"))()
end)
r38_0:Button("R6人物撸管", function()
  -- line: [67, 69420] id: 277
  loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
end)
r38_0:Button("R15人物撸管", function()
  -- line: [67, 69420] id: 160
  loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
end)
r38_0:Button("R6远程C蛋", function()
  -- line: [67, 69420] id: 163
  loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE-R6CB-SCRIPT.lua"))()
end)
r38_0:Button("R15远程C蛋", function()
  -- line: [67, 69420] id: 55
  loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE-R15CB-SCRIPT.lua"))()
end)
r38_0:Button("蓝屏脚本（娱乐）", function()
  -- line: [67, 69420] id: 195
  loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/ROBLOX-XIAOYE666.lua"))()
end)
local r39_0 = r28_0:section("亮度功能", true)
r39_0:Toggle("亮度1", "", false, function(r0_70)
  -- line: [67, 69420] id: 70
  if r0_70 then
    game.Lighting.Ambient = Color3.new(1, 1, 1)
  else
    game.Lighting.Ambient = Color3.new(0, 0, 0)
  end
end)
r39_0:Toggle("亮度2", "", false, function(r0_175)
  -- line: [67, 69420] id: 175
  if r0_175 then
    game.Lighting.Ambient = Color3.new(2, 2, 2)
  else
    game.Lighting.Ambient = Color3.new(0, 0, 0)
  end
end)
r39_0:Toggle("亮度3", "", false, function(r0_145)
  -- line: [67, 69420] id: 145
  if r0_145 then
    game.Lighting.Ambient = Color3.new(3, 3, 3)
  else
    game.Lighting.Ambient = Color3.new(0, 0, 0)
  end
end)
r39_0:Toggle("亮度4", "", false, function(r0_278)
  -- line: [67, 69420] id: 278
  if r0_278 then
    game.Lighting.Ambient = Color3.new(4, 4, 4)
  else
    game.Lighting.Ambient = Color3.new(0, 0, 0)
  end
end)
r39_0:Toggle("亮度5", "", false, function(r0_352)
  -- line: [67, 69420] id: 352
  if r0_352 then
    game.Lighting.Ambient = Color3.new(5, 5, 5)
  else
    game.Lighting.Ambient = Color3.new(0, 0, 0)
  end
end)
local r40_0 = r28_0:section("音乐", true)
r40_0:Button("防空警报", function()
  -- line: [67, 69420] id: 105
  local r0_105 = Instance.new("Sound")
  r0_105.SoundId = "rbxassetid://792323017"
  r0_105.Parent = game.Workspace
  r0_105:Play()
end)
r40_0:Button("义勇军进行曲", function()
  -- line: [67, 69420] id: 41
  local r0_41 = Instance.new("Sound")
  r0_41.SoundId = "rbxassetid://1845918434"
  r0_41.Parent = game.Workspace
  r0_41:Play()
end)
local r41_0 = r28_0:section("注入器界面", true)
r41_0:Button("syn", function()
  -- line: [67, 69420] id: 176
  loadstring(game:HttpGet("https://pastebin.com/raw/tWGxhNq0"))()
end)
r41_0:Button("syn2", function()
  -- line: [67, 69420] id: 230
  loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/main/Synapse-X-Remake.lua"))()
end)
r41_0:Button("阿尔宙斯V3", function()
  -- line: [67, 69420] id: 40
  loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
end)
local r42_0 = r28_0:section("踢人模式", true)
local r43_0 = game:GetService("Players")
local r44_0 = {}
for r48_0, r49_0 in pairs(r43_0:GetPlayers()) do
  table.insert(r44_0, r49_0.Name)
end
local r45_0 = nil
local r46_0 = r42_0:Dropdown("选择玩家", "", r44_0, function(r0_100)
  -- line: [67, 69420] id: 100
  r45_0 = r43_0:FindFirstChild(r0_100)
end)
r42_0:Button("踢出", function()
  -- line: [67, 69420] id: 349
  if r45_0 then
    r45_0:Kick("you are banned")
  end
end)
r42_0:Button("踢出模式增强版", function()
  -- line: [67, 69420] id: 80
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
  -- line: [67, 69420] id: 293
  r48_0 = r0_293
end)
r47_0:Button("执行", function()
  -- line: [67, 69420] id: 212
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
  -- line: [67, 69420] id: 353
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
  -- line: [67, 69420] id: 25
  r49_0.Text = ""
  r50_0 = ""
end)
r47_0:Button("复制已拦截到的后门链接", function()
  -- line: [67, 69420] id: 336
  setclipboard(r50_0)
end)
local r53_0 = r28_0:section("后门轰炸", true)
local r54_0 = nil
r53_0:Textbox("输入后门url", "", "输入内容", function(r0_337)
  -- line: [67, 69420] id: 337
  r54_0 = r0_337
end)
r53_0:Button("开始轰炸", function()
  -- line: [67, 69420] id: 78
  local r0_78 = r54_0
  local r1_78 = {
    username = "叶脚本",
    embeds = {
      {
        color = tonumber(tostring("0x32CD32")),
        title = "拒绝Wehook",
        fields = {},
      }
    },
  }
  local r2_78 = game:GetService("HttpService")
  for r6_78 = 1, 10, 1 do
    local r7_78, r8_78 = pcall(function()
      -- line: [67, 69420] id: 79
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
  -- line: [67, 69420] id: 17
  lighting = game:GetService("Lighting")
  if lighting.TimeOfDay == "00:00:00" then
    lighting.TimeOfDay = 11
  else
    lighting.TimeOfDay = 24
  end
end)
r55_0:Button("下午4点", function()
  -- line: [67, 69420] id: 73
  lighting = game:GetService("Lighting")
  if lighting.TimeOfDay == "16:00:00" then
    lighting.TimeOfDay = 11
  else
    lighting.TimeOfDay = 24
  end
end)
r55_0:Button("中午十一点", function()
  -- line: [67, 69420] id: 255
  lighting = game:GetService("Lighting")
  if lighting.TimeOfDay == "11:00:00" then
    lighting.TimeOfDay = 11
  else
    lighting.TimeOfDay = 24
  end
end)
r55_0:Button("早上六点", function()
  -- line: [67, 69420] id: 180
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
  -- line: [67, 69420] id: 45
  game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = r0_45,
    Text = r1_45,
    Icon = r2_45,
    Duration = r3_45,
  })
end
local r63_0 = r57_0:Dropdown("选择玩家的名称", "Dropdown", r19_0.dropdown, function(r0_240)
  -- line: [67, 69420] id: 240
  r19_0.playernamedied = r0_240
end)
r57_0:Button("刷新玩家名称", function()
  -- line: [67, 69420] id: 26
  shuaxinlb(true)
  r63_0:SetOptions(r19_0.dropdown)
end)
r57_0:Button("传送到玩家旁边", function()
  -- line: [67, 69420] id: 292
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
  -- line: [67, 69420] id: 326
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
  -- line: [67, 69420] id: 68
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
  -- line: [67, 69420] id: 119
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
  -- line: [67, 69420] id: 18
  if r0_18 then
    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players"):FindFirstChild(r19_0.playernamedied).Character.Humanoid
    Notify("叶脚本", "已开启查看玩家", "rbxassetid://", 5)
  else
    game:GetService("Workspace").CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    Notify("叶脚本", "已关闭查看玩家", "rbxassetid://", 5)
  end
end)
r57_0:Button("甩飞一次", function()
  -- line: [67, 69420] id: 259
  if r19_0.playernamedied ~= nil and r19_0.playernamedied ~= nil then
    local r0_259 = {
      r19_0.playernamedied
    }
    local r1_259 = game:GetService("Players")
    local r2_259 = r1_259.LocalPlayer
    local r3_259 = false
    local function r4_259(r0_265)
      -- line: [67, 69420] id: 265
      r0_265 = r0_265:lower()
      if r0_265 == "all" or r0_265 == "others" then
        r3_259 = true
        return 
      end
      if r0_265 == "random" then
        local r1_265 = r1_259:GetPlayers()
        if table.find(r1_265, r2_259) then
          table.remove(r1_265, table.find(r1_265, r2_259))
        end
        return r1_265[math.random(#r1_265)]
      end
      if r0_265 ~= "random" and r0_265 ~= "all" and r0_265 ~= "others" then
        local r1_265 = next
        local r2_265, r3_265 = r1_259:GetPlayers()
        for r4_265, r5_265 in r1_265, r2_265, r3_265 do
          if r5_265 ~= r2_259 then
            if r5_265.Name:lower():match("^" .. r0_265) then
              return r5_265
            end
            if r5_265.DisplayName:lower():match("^" .. r0_265) then
              return r5_265
            end
          end
        end
      else
        return 
      end
    end
    local function r5_259(r0_260, r1_260, r2_260)
      -- line: [67, 69420] id: 260
      game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = r0_260,
        Text = r1_260,
        Duration = r2_260,
      })
    end
    local function r6_259(r0_261)
      -- line: [67, 69420] id: 261
      local r1_261 = r2_259.Character
      local r2_261 = r1_261 and r1_261:FindFirstChildOfClass("Humanoid")
      local r3_261 = r2_261 and r2_261.RootPart
      local r4_261 = r0_261.Character
      local r5_261 = nil
      local r6_261 = nil
      local r7_261 = nil
      local r8_261 = nil
      local r9_261 = nil
      if r4_261:FindFirstChildOfClass("Humanoid") then
        r5_261 = r4_261:FindFirstChildOfClass("Humanoid")
      end
      if r5_261 and r5_261.RootPart then
        r6_261 = r5_261.RootPart
      end
      if r4_261:FindFirstChild("Head") then
        r7_261 = r4_261.Head
      end
      if r4_261:FindFirstChildOfClass("Accessory") then
        r8_261 = r4_261:FindFirstChildOfClass("Accessory")
      end
      if Accessoy and r8_261:FindFirstChild("Handle") then
        r9_261 = r8_261.Handle
      end
      if r1_261 and r2_261 and r3_261 then
        if r3_261.Velocity.Magnitude < 50 then
          getgenv().OldPos = r3_261.CFrame
        end
        if r5_261 and r5_261.Sit and not r3_259 then
          return r5_259("玩家消失", "已停止", 5)
        end
        if r7_261 then
          workspace.CurrentCamera.CameraSubject = r7_261
        elseif not r7_261 and r9_261 then
          workspace.CurrentCamera.CameraSubject = r9_261
        elseif r5_261 and r6_261 then
          workspace.CurrentCamera.CameraSubject = r5_261
        end
        if not r4_261:FindFirstChildWhichIsA("BasePart") then
          return 
        end
        local function r10_261(r0_263, r1_263, r2_263)
          -- line: [67, 69420] id: 263
          r3_261.CFrame = CFrame.new(r0_263.Position) * r1_263 * r2_263
          r1_261:SetPrimaryPartCFrame(CFrame.new(r0_263.Position) * r1_263 * r2_263)
          r3_261.Velocity = Vector3.new(90000000, 900000000, 90000000)
          r3_261.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
        end
        local function r11_261(r0_264)
          -- line: [67, 69420] id: 264
          local r1_264 = 2
          local r2_264 = tick()
          local r3_264 = 0
          while r3_261 do
            local r4_264 = r5_261
            if r4_264 then
              r4_264 = r0_264.Velocity.Magnitude
              if r4_264 < 50 then
                r3_264 = r3_264 + 100
                r10_261(r0_264, CFrame.new(0, 1.5, 0) + r5_261.MoveDirection * r0_264.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(r3_264), 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(0, -1.5, 0) + r5_261.MoveDirection * r0_264.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(r3_264), 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(2.25, 1.5, -2.25) + r5_261.MoveDirection * r0_264.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(r3_264), 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(-2.25, -1.5, 2.25) + r5_261.MoveDirection * r0_264.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(r3_264), 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(0, 1.5, 0) + r5_261.MoveDirection, CFrame.Angles(math.rad(r3_264), 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(0, -1.5, 0) + r5_261.MoveDirection, CFrame.Angles(math.rad(r3_264), 0, 0))
                task.wait()
              else
                r10_261(r0_264, CFrame.new(0, 1.5, r5_261.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(0, -1.5, -r5_261.WalkSpeed), CFrame.Angles(0, 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(0, 1.5, r5_261.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(0, 1.5, r6_261.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(0, -1.5, -r6_261.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(0, 1.5, r6_261.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(-90), 0, 0))
                task.wait()
                r10_261(r0_264, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                task.wait()
              end
              r4_264 = r0_264.Velocity.Magnitude
              if r4_264 <= 500 then
                r4_264 = r0_264.Parent
                if r4_264 == r0_261.Character then
                  r4_264 = r0_261.Parent
                  if r4_264 == r1_259 then
                    r4_264 = not r0_261.Character
                    if r4_264 ~= r4_261 then
                      r4_264 = r5_261.Sit
                      if not r4_264 then
                        r4_264 = r2_261.Health
                        if r4_264 > 0 then
                          r4_264 = tick()
                          if r2_264 + r1_264 < r4_264 then
                            break
                          end
                        else
                          break
                        end
                      else
                        break
                      end
                    else
                      break
                    end
                  else
                    break
                  end
                else
                  break
                end
              else
                break
              end
            else
              break
            end
          end
        end
        workspace.FallenPartsDestroyHeight = 0 / 0
        local r12_261 = Instance.new("BodyVelocity")
        r12_261.Name = "EpixVel"
        r12_261.Parent = r3_261
        r12_261.Velocity = Vector3.new(900000000, 900000000, 900000000)
        r12_261.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
        r2_261:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        if r6_261 and r7_261 then
          if (r6_261.CFrame.p - r7_261.CFrame.p).Magnitude > 5 then
            r11_261(r7_261)
          else
            r11_261(r6_261)
          end
        elseif r6_261 and not r7_261 then
          r11_261(r6_261)
        elseif not r6_261 and r7_261 then
          r11_261(r7_261)
        elseif not r6_261 and not r7_261 and r8_261 and r9_261 then
          r11_261(r9_261)
        else
          return r5_259("已开/关", "叶脚本", 5)
        end
        r12_261:Destroy()
        r2_261:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = r2_261
        repeat
          r3_261.CFrame = getgenv().OldPos * CFrame.new(0, 0.5, 0)
          r1_261:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, 0.5, 0))
          r2_261:ChangeState("GettingUp")
          table.foreach(r1_261:GetChildren(), function(r0_262, r1_262)
            -- line: [67, 69420] id: 262
            if r1_262:IsA("BasePart") then
              local r2_262 = Vector3.new()
              r1_262.RotVelocity = Vector3.new()
              r1_262.Velocity = r2_262
            end
          end)
          task.wait()
        until (r3_261.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
        -- close: r10_261
      else
        local r10_261 = r5_259
        local r11_261 = "玩家消失"
        local r12_261 = "已停止"
        local r13_261 = 5
        ... = r10_261(r11_261, r12_261, r13_261) -- error: untaken top expr
      end
    end
    if r0_259[1] then
      for r10_259, r11_259 in next, r0_259, nil do
        r4_259(r11_259)
      end
    else
      return 
    end
    if r3_259 then
      local r7_259 = next
      local r8_259, r9_259 = r1_259:GetPlayers()
      for r10_259, r11_259 in r7_259, r8_259, r9_259 do
        r6_259(r11_259)
      end
    end
    for r10_259, r11_259 in next, r0_259, nil do
      if r4_259(r11_259) and r4_259(r11_259) ~= r2_259 then
        if r4_259(r11_259).UserId ~= 1414978355 then
          local r12_259 = r4_259(r11_259)
          if r12_259 then
            r6_259(r12_259)
          end
        else
          r5_259("检测到玩家消失", "己停止", 5)
        end
      elseif not r4_259(r11_259) and not r3_259 then
        r5_259("未获取到玩家或工具", "已停止", 5)
      end
    end
    -- close: r0_259
  end
end)
r57_0:Toggle("循环甩飞", "Auto Fling", false, function(r0_281)
  -- line: [67, 69420] id: 281
  if r19_0.playernamedied ~= nil and r19_0.playernamedied ~= nil then
    getgenv().autofling = r0_281
    spawn(function()
      -- line: [67, 69420] id: 282
      while autofling do
        wait()
        pcall(function()
          -- line: [67, 69420] id: 283
          local r0_283 = {
            r19_0.playernamedied
          }
          local r1_283 = game:GetService("Players")
          local r2_283 = r1_283.LocalPlayer
          local r3_283 = false
          local function r4_283(r0_289)
            -- line: [67, 69420] id: 289
            r0_289 = r0_289:lower()
            if r0_289 == "all" or r0_289 == "others" then
              r3_283 = true
              return 
            end
            if r0_289 == "random" then
              local r1_289 = r1_283:GetPlayers()
              if table.find(r1_289, r2_283) then
                table.remove(r1_289, table.find(r1_289, r2_283))
              end
              return r1_289[math.random(#r1_289)]
            end
            if r0_289 ~= "random" and r0_289 ~= "all" and r0_289 ~= "others" then
              local r1_289 = next
              local r2_289, r3_289 = r1_283:GetPlayers()
              for r4_289, r5_289 in r1_289, r2_289, r3_289 do
                if r5_289 ~= r2_283 then
                  if r5_289.Name:lower():match("^" .. r0_289) then
                    return r5_289
                  end
                  if r5_289.DisplayName:lower():match("^" .. r0_289) then
                    return r5_289
                  end
                end
              end
            else
              return 
            end
          end
          local function r5_283(r0_288, r1_288, r2_288)
            -- line: [67, 69420] id: 288
            game:GetService("StarterGui"):SetCore("SendNotification", {
              Title = r0_288,
              Text = r1_288,
              Duration = r2_288,
            })
          end
          local function r6_283(r0_284)
            -- line: [67, 69420] id: 284
            local r1_284 = r2_283.Character
            local r2_284 = r1_284 and r1_284:FindFirstChildOfClass("Humanoid")
            local r3_284 = r2_284 and r2_284.RootPart
            local r4_284 = r0_284.Character
            local r5_284 = nil
            local r6_284 = nil
            local r7_284 = nil
            local r8_284 = nil
            local r9_284 = nil
            if r4_284:FindFirstChildOfClass("Humanoid") then
              r5_284 = r4_284:FindFirstChildOfClass("Humanoid")
            end
            if r5_284 and r5_284.RootPart then
              r6_284 = r5_284.RootPart
            end
            if r4_284:FindFirstChild("Head") then
              r7_284 = r4_284.Head
            end
            if r4_284:FindFirstChildOfClass("Accessory") then
              r8_284 = r4_284:FindFirstChildOfClass("Accessory")
            end
            if Accessoy and r8_284:FindFirstChild("Handle") then
              r9_284 = r8_284.Handle
            end
            if r1_284 and r2_284 and r3_284 then
              if r3_284.Velocity.Magnitude < 50 then
                getgenv().OldPos = r3_284.CFrame
              end
              if r5_284 and r5_284.Sit and not r3_283 then
                return r5_283("错误", "叶脚本", 5)
              end
              if r7_284 then
                workspace.CurrentCamera.CameraSubject = r7_284
              elseif not r7_284 and r9_284 then
                workspace.CurrentCamera.CameraSubject = r9_284
              elseif r5_284 and r6_284 then
                workspace.CurrentCamera.CameraSubject = r5_284
              end
              if not r4_284:FindFirstChildWhichIsA("BasePart") then
                return 
              end
              local function r10_284(r0_285, r1_285, r2_285)
                -- line: [67, 69420] id: 285
                r3_284.CFrame = CFrame.new(r0_285.Position) * r1_285 * r2_285
                r1_284:SetPrimaryPartCFrame(CFrame.new(r0_285.Position) * r1_285 * r2_285)
                r3_284.Velocity = Vector3.new(90000000, 900000000, 90000000)
                r3_284.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
              end
              local function r11_284(r0_286)
                -- line: [67, 69420] id: 286
                local r1_286 = 2
                local r2_286 = tick()
                local r3_286 = 0
                while r3_284 do
                  local r4_286 = r5_284
                  if r4_286 then
                    r4_286 = r0_286.Velocity.Magnitude
                    if r4_286 < 50 then
                      r3_286 = r3_286 + 100
                      r10_284(r0_286, CFrame.new(0, 1.5, 0) + r5_284.MoveDirection * r0_286.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(r3_286), 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(0, -1.5, 0) + r5_284.MoveDirection * r0_286.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(r3_286), 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(2.25, 1.5, -2.25) + r5_284.MoveDirection * r0_286.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(r3_286), 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(-2.25, -1.5, 2.25) + r5_284.MoveDirection * r0_286.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(r3_286), 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(0, 1.5, 0) + r5_284.MoveDirection, CFrame.Angles(math.rad(r3_286), 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(0, -1.5, 0) + r5_284.MoveDirection, CFrame.Angles(math.rad(r3_286), 0, 0))
                      task.wait()
                    else
                      r10_284(r0_286, CFrame.new(0, 1.5, r5_284.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(0, -1.5, -r5_284.WalkSpeed), CFrame.Angles(0, 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(0, 1.5, r5_284.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(0, 1.5, r6_284.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(0, -1.5, -r6_284.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(0, 1.5, r6_284.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(-90), 0, 0))
                      task.wait()
                      r10_284(r0_286, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                      task.wait()
                    end
                    r4_286 = r0_286.Velocity.Magnitude
                    if r4_286 <= 500 then
                      r4_286 = r0_286.Parent
                      if r4_286 == r0_284.Character then
                        r4_286 = r0_284.Parent
                        if r4_286 == r1_283 then
                          r4_286 = not r0_284.Character
                          if r4_286 ~= r4_284 then
                            r4_286 = r5_284.Sit
                            if not r4_286 then
                              r4_286 = r2_284.Health
                              if r4_286 > 0 then
                                r4_286 = tick()
                                if r2_286 + r1_286 < r4_286 then
                                  break
                                end
                              else
                                break
                              end
                            else
                              break
                            end
                          else
                            break
                          end
                        else
                          break
                        end
                      else
                        break
                      end
                    else
                      break
                    end
                  else
                    break
                  end
                end
              end
              workspace.FallenPartsDestroyHeight = 0 / 0
              local r12_284 = Instance.new("BodyVelocity")
              r12_284.Name = "EpixVel"
              r12_284.Parent = r3_284
              r12_284.Velocity = Vector3.new(900000000, 900000000, 900000000)
              r12_284.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
              r2_284:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
              if r6_284 and r7_284 then
                if (r6_284.CFrame.p - r7_284.CFrame.p).Magnitude > 5 then
                  r11_284(r7_284)
                else
                  r11_284(r6_284)
                end
              elseif r6_284 and not r7_284 then
                r11_284(r6_284)
              elseif not r6_284 and r7_284 then
                r11_284(r7_284)
              elseif not r6_284 and not r7_284 and r8_284 and r9_284 then
                r11_284(r9_284)
              else
                return r5_283("已开/关", "叶脚本", 5)
              end
              r12_284:Destroy()
              r2_284:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
              workspace.CurrentCamera.CameraSubject = r2_284
              repeat
                r3_284.CFrame = getgenv().OldPos * CFrame.new(0, 0.5, 0)
                r1_284:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, 0.5, 0))
                r2_284:ChangeState("GettingUp")
                table.foreach(r1_284:GetChildren(), function(r0_287, r1_287)
                  -- line: [67, 69420] id: 287
                  if r1_287:IsA("BasePart") then
                    local r2_287 = Vector3.new()
                    r1_287.RotVelocity = Vector3.new()
                    r1_287.Velocity = r2_287
                  end
                end)
                task.wait()
              until (r3_284.Position - getgenv().OldPos.p).Magnitude < 25
              workspace.FallenPartsDestroyHeight = getgenv().FPDH
              -- close: r10_284
            else
              local r10_284 = r5_283
              local r11_284 = "玩家消失"
              local r12_284 = "已停止"
              local r13_284 = 5
              ... = r10_284(r11_284, r12_284, r13_284) -- error: untaken top expr
            end
          end
          if r0_283[1] then
            for r10_283, r11_283 in next, r0_283, nil do
              r4_283(r11_283)
            end
          else
            return 
          end
          if r3_283 then
            local r7_283 = next
            local r8_283, r9_283 = r1_283:GetPlayers()
            for r10_283, r11_283 in r7_283, r8_283, r9_283 do
              r6_283(r11_283)
            end
          end
          for r10_283, r11_283 in next, r0_283, nil do
            if r4_283(r11_283) and r4_283(r11_283) ~= r2_283 then
              if r4_283(r11_283).UserId ~= 1414978355 then
                local r12_283 = r4_283(r11_283)
                if r12_283 then
                  r6_283(r12_283)
                end
              else
                r5_283("检测到玩家消失", "已停止", 5)
              end
            elseif not r4_283(r11_283) and not r3_283 then
              r5_283("未获取到玩家或工具", "已停止", 5)
            end
          end
        end)
      end
    end)
  end
end)
r57_0:Button("甩飞所有人", function()
  -- line: [67, 69420] id: 324
  loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
r57_0:Toggle("开启指定自瞄目标", "TD", false, function(r0_47)
  -- line: [67, 69420] id: 47
  if r0_47 then
    _G.TD = true
    task.spawn(function()
      -- line: [67, 69420] id: 48
      while _G.TD == true do
        local r0_48 = workspace.CurrentCamera
        local r1_48 = game.Players:FindFirstChild(r19_0.playernamedied)
        local r2_48 = r1_48 and r1_48.Character and r1_48.Character.HumanoidRootPart
        if r2_48 and r0_48 then
          r0_48.CFrame = CFrame.new(r0_48.CFrame.Position, r0_48.CFrame.Position + (r2_48.Position - r0_48.CFrame.Position).unit)
          wait()
        end
        _G.TD = false
      end
    end)
  else
    _G.TD = false
  end
end)
local r64_0 = r56_0:section("传送玩家前后方", true)
r64_0:Dropdown("选择玩家", "Dropdown", r58_0, function(r0_20)
  -- line: [67, 69420] id: 20
  r59_0 = r0_20
end)
game.Players.ChildAdded:Connect(function(r0_86)
  -- line: [67, 69420] id: 86
  table.insert(r58_0, r0_86.Name)
  r64_0:UpdateDropdown("选择玩家", r58_0)
end)
game.Players.ChildRemoved:Connect(function(r0_164)
  -- line: [67, 69420] id: 164
  for r4_164, r5_164 in pairs(r58_0) do
    if r5_164 == r0_164.Name then
      table.remove(r58_0, r4_164)
      break
    end
  end
  r64_0:UpdateDropdown("选择玩家", r58_0)
end)
r64_0:Slider("传送至玩家前方距离", "Slider", r61_0, 3, 25, false, function(r0_28)
  -- line: [67, 69420] id: 28
  r61_0 = r0_28
end)
r64_0:Toggle("循环传送至玩家前方", "Toggle", false, function(r0_177)
  -- line: [67, 69420] id: 177
  local r1_177 = nil	-- notice: implicit variable refs by block#[8, 9, 10]
  local r2_177 = nil	-- notice: implicit variable refs by block#[10]
  local r3_177 = nil	-- notice: implicit variable refs by block#[6, 10]
  local r5_177 = nil	-- notice: implicit variable refs by block#[6, 10]
  if r0_177 then
    r1_177 = game.Players.LocalPlayer
    r2_177 = game.Players:FindFirstChild(r59_0)
    local r6_177 = nil	-- notice: implicit variable refs by block#[6]
    if r1_177 and r2_177 then
      r3_177 = r1_177.Character
      if r3_177 then
        r3_177 = r2_177.Character
        if r3_177 then
          function r3_177()
            -- line: [67, 69420] id: 179
            local r1_179 = r2_177.Character.HumanoidRootPart
            r1_177.Character.HumanoidRootPart.CFrame = CFrame.new((r1_179.CFrame * CFrame.new(0, 0, -r61_0)).Position, r1_179.Position)
          end
          local r4_177 = game:GetService("RunService")
          r5_177 = 0
          r6_177 = 0.01
          r60_0 = r4_177.Heartbeat:Connect(function(r0_178)
            -- line: [67, 69420] id: 178
            r5_177 = r5_177 + r0_178
            if r6_177 <= r5_177 then
              r3_177()
              r5_177 = 0
            end
          end)
          -- close: r3_177
        end
      end
    else
      r3_177 = Notify
      r5_177 = "玩家或角色不存在，无法启动循环传送"
      r6_177 = "rbxassetid://"
      r3_177("叶脚本", r5_177, r6_177, 5)
    end
    -- close: r1_177
  else
    r1_177 = r60_0
    if r1_177 then
      r1_177 = r60_0
      r1_177:Disconnect()
      r1_177 = nil
      r60_0 = r1_177
    end
    r1_177 = Notify
    r2_177 = "提示"
    r3_177 = "已停止循环传送至玩家正背后"
    r5_177 = 5
    r1_177(r2_177, r3_177, "rbxassetid://", r5_177)
  end
end)
r64_0:Slider("循环传送至玩家头顶高度", "Slider", r62_0, 4, 25, false, function(r0_85)
  -- line: [67, 69420] id: 85
  r62_0 = r0_85
end)
r64_0:Toggle("循环传送至玩家头顶", "Toggle", false, function(r0_185)
  -- line: [67, 69420] id: 185
  local r1_185 = nil	-- notice: implicit variable refs by block#[8, 9, 10]
  local r2_185 = nil	-- notice: implicit variable refs by block#[10]
  local r3_185 = nil	-- notice: implicit variable refs by block#[6, 10]
  local r5_185 = nil	-- notice: implicit variable refs by block#[6, 10]
  if r0_185 then
    r1_185 = game.Players.LocalPlayer
    r2_185 = game.Players:FindFirstChild(r59_0)
    local r6_185 = nil	-- notice: implicit variable refs by block#[6]
    if r1_185 and r2_185 then
      r3_185 = r1_185.Character
      if r3_185 then
        r3_185 = r2_185.Character
        if r3_185 then
          function r3_185()
            -- line: [67, 69420] id: 186
            r1_185.Character.HumanoidRootPart.CFrame = r2_185.Character.HumanoidRootPart.CFrame * CFrame.new(0, r62_0, 0)
          end
          local r4_185 = game:GetService("RunService")
          r5_185 = 0
          r6_185 = 0.01
          r60_0 = r4_185.Heartbeat:Connect(function(r0_187)
            -- line: [67, 69420] id: 187
            r5_185 = r5_185 + r0_187
            if r6_185 <= r5_185 then
              r3_185()
              r5_185 = 0
            end
          end)
          -- close: r3_185
        end
      end
    else
      r3_185 = Notify
      r5_185 = "玩家或角色不存在，无法启动循环传送"
      r6_185 = "rbxassetid://"
      r3_185("叶脚本", r5_185, r6_185, 5)
    end
    -- close: r1_185
  else
    r1_185 = r60_0
    if r1_185 then
      r1_185 = r60_0
      r1_185:Disconnect()
      r1_185 = nil
      r60_0 = r1_185
    end
    r1_185 = Notify
    r2_185 = "提示"
    r3_185 = "已停止循环传送至玩家头顶"
    r5_185 = 5
    r1_185(r2_185, r3_185, "rbxassetid://", r5_185)
  end
end)
r64_0:Slider("循环传送至玩家后面的距离", "Slider", 4, 4, 30, false, function(r0_162)
  -- line: [67, 69420] id: 162
  r61_0 = r0_162
end)
r64_0:Toggle("循环传送至玩家后面", "Toggle", false, function(r0_231)
  -- line: [67, 69420] id: 231
  local r1_231 = nil	-- notice: implicit variable refs by block#[8, 9, 10]
  local r2_231 = nil	-- notice: implicit variable refs by block#[10]
  local r3_231 = nil	-- notice: implicit variable refs by block#[6, 10]
  local r5_231 = nil	-- notice: implicit variable refs by block#[6, 10]
  if r0_231 then
    r1_231 = game.Players.LocalPlayer
    r2_231 = game.Players:FindFirstChild(r59_0)
    local r6_231 = nil	-- notice: implicit variable refs by block#[6]
    if r1_231 and r2_231 then
      r3_231 = r1_231.Character
      if r3_231 then
        r3_231 = r2_231.Character
        if r3_231 then
          function r3_231()
            -- line: [67, 69420] id: 232
            local r1_232 = r2_231.Character.HumanoidRootPart
            r1_231.Character.HumanoidRootPart.CFrame = CFrame.new((r1_232.CFrame * CFrame.new(0, 0, r61_0)).Position, r1_232.Position - r1_232.CFrame.LookVector)
          end
          local r4_231 = game:GetService("RunService")
          r5_231 = 0
          r6_231 = 0.01
          r60_0 = r4_231.Heartbeat:Connect(function(r0_233)
            -- line: [67, 69420] id: 233
            r5_231 = r5_231 + r0_233
            if r6_231 <= r5_231 then
              r3_231()
              r5_231 = 0
            end
          end)
          -- close: r3_231
        end
      end
    else
      r3_231 = Notify
      r5_231 = "玩家或角色不存在，无法启动循环传送"
      r6_231 = "rbxassetid://"
      r3_231("叶脚本", r5_231, r6_231, 5)
    end
    -- close: r1_231
  else
    r1_231 = r60_0
    if r1_231 then
      r1_231 = r60_0
      r1_231:Disconnect()
      r1_231 = nil
      r60_0 = r1_231
    end
    r1_231 = Notify
    r2_231 = "提示"
    r3_231 = "已停止循环传送至玩家后面"
    r5_231 = 5
    r1_231(r2_231, r3_231, "rbxassetid://", r5_231)
  end
end)
local r66_0 = r21_0:Tab("加入服务器", "6035145364"):section("内容", true)
r66_0:Button("杀手vs警长", function()
  -- line: [67, 69420] id: 350
  local r0_350 = 12355337193
  local r1_350 = "https://www.roblox.com/games/" .. r0_350
  game:GetService("TeleportService"):Teleport(r0_350, game.Players.LocalPlayer)
end)
r66_0:Button("一路向西", function()
  -- line: [67, 69420] id: 154
  local r0_154 = 2474168535
  local r1_154 = "https://www.roblox.com/games/" .. r0_154
  game:GetService("TeleportService"):Teleport(r0_154, game.Players.LocalPlayer)
end)
r66_0:Button("力量传奇", function()
  -- line: [67, 69420] id: 256
  local r0_256 = 3623096087
  local r1_256 = "https://www.roblox.com/games/" .. r0_256
  game:GetService("TeleportService"):Teleport(r0_256, game.Players.LocalPlayer)
end)
r66_0:Button("忍者传奇", function()
  -- line: [67, 69420] id: 197
  local r0_197 = 3956818381
  local r1_197 = "https://www.roblox.com/games/" .. r0_197
  game:GetService("TeleportService"):Teleport(r0_197, game.Players.LocalPlayer)
end)
r66_0:Button("极速传奇", function()
  -- line: [67, 69420] id: 355
  local r0_355 = 3101667897
  local r1_355 = "https://www.roblox.com/games/" .. r0_355
  game:GetService("TeleportService"):Teleport(r0_355, game.Players.LocalPlayer)
end)
r66_0:Button("战争大亨", function()
  -- line: [67, 69420] id: 192
  local r0_192 = 4639625707
  local r1_192 = "https://www.roblox.com/games/" .. r0_192
  game:GetService("TeleportService"):Teleport(r0_192, game.Players.LocalPlayer)
end)
r66_0:Button("兵工厂", function()
  -- line: [67, 69420] id: 267
  local r0_267 = 286090429
  local r1_267 = "https://www.roblox.com/games/" .. r0_267
  game:GetService("TeleportService"):Teleport(r0_267, game.Players.LocalPlayer)
end)
r66_0:Button("fisch（鱼）", function()
  -- line: [67, 69420] id: 171
  local r0_171 = 16732694052
  local r1_171 = "https://www.roblox.com/games/" .. r0_171
  game:GetService("TeleportService"):Teleport(r0_171, game.Players.LocalPlayer)
end)
local r68_0 = r21_0:Tab("透视功能", "6035145364"):section("内容", true)
r68_0:Button("通用ESP", function()
  -- line: [67, 69420] id: 165
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP"))()
end)
r68_0:Toggle("ESP 显示名字", "AMG", ENABLED, function(r0_14)
  -- line: [67, 69420] id: 14
  if r0_14 then
    ENABLED = true
    for r4_14, r5_14 in ipairs(r63_0:GetPlayers()) do
      onPlayerAdded(r5_14)
    end
    r63_0.PlayerAdded:Connect(onPlayerAdded)
    r63_0.PlayerRemoving:Connect(onPlayerRemoving)
    local r1_14 = r63_0.LocalPlayer
    if r1_14 and r1_14.Character then
      for r5_14, r6_14 in ipairs(r63_0:GetPlayers()) do
        if r6_14.Character then
          createNameLabel(r6_14)
        end
      end
    end
    RunService.Heartbeat:Connect(function()
      -- line: [67, 69420] id: 15
      if ENABLED then
        for r3_15, r4_15 in ipairs(r63_0:GetPlayers()) do
          if r4_15.Character then
            createNameLabel(r4_15)
          end
        end
      end
    end)
  else
    ENABLED = false
    for r4_14, r5_14 in ipairs(r63_0:GetPlayers()) do
      onPlayerRemoving(r5_14)
    end
    RunService:UnbindFromRenderStep("move")
  end
end)
r68_0:Toggle("Circle ESP", "ESP", false, function(r0_193)
  -- line: [67, 69420] id: 193
  for r4_193, r5_193 in pairs(game.Players:GetPlayers()) do
    if r5_193 ~= game.Players.LocalPlayer then
      if r0_193 then
        local r6_193 = Instance.new("Highlight")
        r6_193.Parent = r5_193.Character
        r6_193.Adornee = r5_193.Character
        local r7_193 = Instance.new("BillboardGui")
        r7_193.Parent = r5_193.Character
        r7_193.Adornee = r5_193.Character
        r7_193.Size = UDim2.new(0, 100, 0, 100)
        r7_193.StudsOffset = Vector3.new(0, 3, 0)
        r7_193.AlwaysOnTop = true
        local r8_193 = Instance.new("TextLabel")
        r8_193.Parent = r7_193
        r8_193.Size = UDim2.new(1, 0, 1, 0)
        r8_193.BackgroundTransparency = 1
        r8_193.Text = r5_193.Name
        r8_193.TextColor3 = Color3.new(1, 1, 1)
        r8_193.TextStrokeTransparency = 0.5
        r8_193.TextScaled = true
        local r9_193 = Instance.new("ImageLabel")
        r9_193.Parent = r7_193
        r9_193.Size = UDim2.new(0, 50, 0, 50)
        r9_193.Position = UDim2.new(0.5, 0, 0.5, 0)
        r9_193.AnchorPoint = Vector2.new(0.5, 0.5)
        r9_193.BackgroundTransparency = 1
        r9_193.Image = "rbxassetid://2200552246"
      else
        if r5_193.Character:FindFirstChildOfClass("Highlight") then
          r5_193.Character:FindFirstChildOfClass("Highlight"):Destroy()
        end
        if r5_193.Character:FindFirstChildOfClass("BillboardGui") then
          r5_193.Character:FindFirstChildOfClass("BillboardGui"):Destroy()
        end
      end
    end
  end
end)
r68_0:Button("查看游戏中的所有玩家", function()
  -- line: [67, 69420] id: 88
  assert(Drawing, "missing dependency: \'Drawing\'")
  local r0_88 = game:GetService("Players")
  local r1_88 = game:GetService("RunService")
  local r2_88 = r0_88.LocalPlayer
  local r3_88 = workspace.CurrentCamera
  local r4_88 = {}
  local r5_88 = Color3.new(0, 0, 0)
  local r6_88 = Color3.new(1, 0, 0)
  local r7_88 = Color3.new(1, 1, 1)
  local r8_88 = Color3.new(0, 0, 0)
  local r9_88 = Color3.new(0, 1, 0)
  local r10_88 = Color3.new(1, 0, 0)
  local r11_88 = Vector2.new(4, 6)
  local function r12_88(r0_90, r1_90)
    -- line: [67, 69420] id: 90
    local r2_90 = Drawing.new(r0_90)
    for r6_90, r7_90 in pairs(r1_90) do
      r2_90[r6_90] = r7_90
    end
    return r2_90
  end
  local function r13_88(r0_91)
    -- line: [67, 69420] id: 91
    return Vector2.new(math.floor(r0_91.X), math.floor(r0_91.Y))
  end
  local function r14_88(r0_89)
    -- line: [67, 69420] id: 89
    local r1_89 = {
      boxOutline = r12_88("Square", {
        Color = r5_88,
        Thickness = 3,
        Filled = false,
      }),
      box = r12_88("Square", {
        Color = r6_88,
        Thickness = 1,
        Filled = false,
      }),
    }
    local r2_89 = r12_88
    local r3_89 = "Text"
    local r4_89 = {
      Color = r7_88,
    }
    local r5_89 = syn
    if r5_89 then
      r5_89 = RectDynamic or 2 or 1
    else
      goto label_33	-- block#3 is visited secondly
    end
    r4_89.Font = r5_89
    r4_89.Outline = true
    r4_89.Center = true
    r4_89.Size = 13
    r1_89.name = r2_89(r3_89, r4_89)
    r1_89.healthOutline = r12_88("Line", {
      Thickness = 3,
      Color = r8_88,
    })
    r1_89.health = r12_88("Line", {
      Thickness = 1,
    })
    r4_88[r0_89] = r1_89
  end
  local function r15_88(r0_93)
    -- line: [67, 69420] id: 93
    local r1_93 = r4_88[r0_93]
    if not r1_93 then
      return 
    end
    for r5_93, r6_93 in pairs(r1_93) do
      r6_93:Remove()
    end
    r4_88[r0_93] = nil
  end
  local function r16_88()
    -- line: [67, 69420] id: 92
    for r3_92, r4_92 in pairs(r4_88) do
      local r5_92 = r3_92.Character
      local r6_92 = r3_92.Team
      if r5_92 and (not r6_92 or r6_92 ~= r2_88.Team) then
        local r8_92, r9_92 = r3_88:WorldToViewportPoint(r5_92:GetPivot().Position)
        local r14_92 = nil	-- notice: implicit variable refs by block#[8]
        if r9_92 then
          local r11_92 = r3_88.ViewportSize.Y / math.tan(math.rad(r3_88.FieldOfView * 0.5)) * 2 * r8_92.Z * r11_88
          local r12_92 = Vector2.new(r8_92.X, r8_92.Y)
          r4_92.boxOutline.Size = r13_88(r11_92)
          r4_92.boxOutline.Position = r13_88(r12_92 - r11_92 * 0.5)
          r4_92.box.Size = r4_92.boxOutline.Size
          r4_92.box.Position = r4_92.boxOutline.Position
          r4_92.name.Text = string.lower(r3_92.Name)
          r4_92.name.Position = r13_88(r12_92 - Vector2.yAxis * (r11_92.Y * 0.5 + r4_92.name.TextBounds.Y + 2))
          local r13_92 = r5_92:FindFirstChildOfClass("Humanoid")
          if r13_92 then
            r14_92 = r13_92.Health
            if not r14_92 then
              ::label_93::
              r14_92 = 100
            end
          else
            goto label_93	-- block#7 is visited secondly
          end
          r14_92 = r14_92 / 100
          r4_92.healthOutline.From = r13_88(r12_92 - r11_92 * 0.5) - Vector2.xAxis * 5
          r4_92.healthOutline.To = r13_88(r12_92 - r11_92 * Vector2.new(0.5, -0.5)) - Vector2.xAxis * 5
          r4_92.health.From = r4_92.healthOutline.To
          r4_92.health.To = r13_88(r4_92.healthOutline.To:Lerp(r4_92.healthOutline.From, r14_92))
          r4_92.health.Color = r10_88:Lerp(r9_88, r14_92)
          r4_92.healthOutline.From = Vector2.yAxis
          r4_92.healthOutline.To = Vector2.yAxis
        end
        for r13_92, r14_92 in pairs(r4_92) do
          r14_92.Visible = r9_92
        end
      else
        for r10_92, r11_92 in pairs(r4_92) do
          r11_92.Visible = false
        end
      end
    end
  end
  r0_88.PlayerAdded:Connect(r14_88)
  r0_88.PlayerRemoving:Connect(r15_88)
  r1_88.RenderStepped:Connect(r16_88)
  for r20_88, r21_88 in ipairs(r0_88:GetPlayers()) do
    if r20_88 ~= 1 then
      r14_88(r21_88)
    end
  end
end)
r68_0:Button("玩家和血量", function()
  -- line: [67, 69420] id: 220
  print("加载完成")
  local r0_220 = game:GetService("Players")
  local r1_220 = r0_220.LocalPlayer
  local function r2_220(r0_222)
    -- line: [67, 69420] id: 222
    local r1_222 = Drawing.new("Circle")
    r1_222.Radius = 5
    r1_222.Color = Color3.fromRGB(255, 0, 0)
    r1_222.Thickness = 2
    r1_222.Transparency = 0.5
    r1_222.Visible = false
    local r2_222 = Drawing.new("Text")
    r2_222.Size = 10
    r2_222.Color = Color3.fromRGB(255, 255, 255)
    r2_222.Visible = false
    game:GetService("RunService").RenderStepped:Connect(function()
      -- line: [67, 69420] id: 223
      if r0_222.Character and r0_222.Character:FindFirstChild("HumanoidRootPart") then
        local r0_223, r1_223 = workspace.CurrentCamera:WorldToViewportPoint(r0_222.Character.HumanoidRootPart.Position)
        r1_222.Position = Vector2.new(r0_223.X, r0_223.Y)
        r1_222.Visible = r1_223
        r2_222.Position = Vector2.new(r0_223.X, r0_223.Y + 50)
        r2_222.Visible = r1_223
        r2_222.Text = r0_222.Name
      else
        r1_222.Visible = false
        r2_222.Visible = false
      end
    end)
  end
  for r6_220, r7_220 in ipairs(r0_220:GetPlayers()) do
    if r7_220 ~= r1_220 then
      r2_220(r7_220)
    end
  end
  r0_220.PlayerAdded:Connect(function(r0_224)
    -- line: [67, 69420] id: 224
    if r0_224 ~= r1_220 then
      r2_220(r0_224)
    end
  end)
  r0_220.PlayerRemoving:Connect(function(r0_221)
    -- line: [67, 69420] id: 221
  end)
end)
r68_0:Button("玩家名字和位置", function()
  -- line: [67, 69420] id: 50
  local function r0_50(r0_54)
    -- line: [67, 69420] id: 54
    if r0_54.Character and r0_54.Character:FindFirstChildOfClass("Humanoid") then
      r0_54.Character.Humanoid.NameDisplayDistance = 9000000000
      r0_54.Character.Humanoid.NameOcclusion = "NoOcclusion"
      r0_54.Character.Humanoid.HealthDisplayDistance = 9000000000
      r0_54.Character.Humanoid.HealthDisplayType = "AlwaysOn"
      r0_54.Character.Humanoid.Health = r0_54.Character.Humanoid.Health
    end
  end
  for r4_50, r5_50 in pairs(game.Players:GetPlayers()) do
    r0_50(r5_50)
    r5_50.CharacterAdded:Connect(function()
      -- line: [67, 69420] id: 53
      task.wait(0.33)
      r0_50(r5_50)
    end)
    -- close: r4_50
  end
  game.Players.PlayerAdded:Connect(function(r0_51)
    -- line: [67, 69420] id: 51
    r0_50(r0_51)
    r0_51.CharacterAdded:Connect(function()
      -- line: [67, 69420] id: 52
      task.wait(0.33)
      r0_50(r0_51)
    end)
  end)
end)
r68_0:Button("AI Esp", function()
  -- line: [67, 69420] id: 120
  local r0_120 = game:GetService("Players")
  local r1_120 = game:GetService("RunService")
  local function r2_120(r0_122)
    -- line: [67, 69420] id: 122
    r0_122.CharacterAdded:Connect(function(r0_123)
      -- line: [67, 69420] id: 123
      local r1_123 = r0_123:WaitForChild("Head")
      local r2_123 = Instance.new("BillboardGui")
      r2_123.Name = "NameTag"
      r2_123.Adornee = r1_123
      r2_123.Size = UDim2.new(0, 100, 0, 40)
      r2_123.StudsOffset = Vector3.new(0, 2, 0)
      r2_123.AlwaysOnTop = true
      local r3_123 = Instance.new("TextLabel")
      r3_123.Size = UDim2.new(1, 0, 1, 0)
      r3_123.Text = r0_122.Name
      r3_123.BackgroundTransparency = 1
      r3_123.TextScaled = true
      r3_123.Font = Enum.Font.SourceSansBold
      r3_123.TextStrokeTransparency = 0.5
      local r4_123 = r0_122.Team
      if r4_123 then
        r4_123 = r0_122.Team.TeamColor.Color or Color3.new(1, 1, 1)
      else
        goto label_57	-- block#2 is visited secondly
      end
      r3_123.TextColor3 = r4_123
      r3_123.Parent = r2_123
      r2_123.Parent = r1_123
      r0_122:GetPropertyChangedSignal("Team"):Connect(function()
        -- line: [67, 69420] id: 126
        local r0_126 = r3_123
        local r1_126 = r0_122.Team
        if r1_126 then
          r1_126 = r0_122.Team.TeamColor.Color or Color3.new(1, 1, 1)
        else
          goto label_11	-- block#2 is visited secondly
        end
        r0_126.TextColor3 = r1_126
      end)
      r4_123 = Drawing.new("Line")
      r4_123.Thickness = 1
      r4_123.Color = r3_123.TextColor3
      r4_123.Visible = false
      local r5_123 = nil
      r5_123 = r1_120.RenderStepped:Connect(function()
        -- line: [67, 69420] id: 125
        if r0_123 and r0_123:FindFirstChild("HumanoidRootPart") then
          local r1_125, r2_125 = workspace.CurrentCamera:WorldToViewportPoint(r0_123.HumanoidRootPart.Position)
          if r2_125 then
            r4_123.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y)
            r4_123.To = Vector2.new(r1_125.X, r1_125.Y)
            r4_123.Visible = true
            local r3_125 = r4_123
            local r4_125 = r0_122.Team
            if r4_125 then
              r4_125 = r0_122.Team.TeamColor.Color or Color3.new(1, 1, 1)
            else
              goto label_52	-- block#5 is visited secondly
            end
            r3_125.Color = r4_125
          else
            r4_123.Visible = false
          end
        else
          r4_123.Visible = false
        end
      end)
      r0_123:WaitForChild("Humanoid").Died:Connect(function()
        -- line: [67, 69420] id: 124
        r4_123.Visible = false
        if r5_123 then
          r5_123:Disconnect()
        end
      end)
    end)
  end
  for r6_120, r7_120 in ipairs(r0_120:GetPlayers()) do
    if r7_120 ~= r0_120.LocalPlayer then
      r2_120(r7_120)
    end
  end
  r0_120.PlayerAdded:Connect(function(r0_121)
    -- line: [67, 69420] id: 121
    if r0_121 ~= r0_120.LocalPlayer then
      r2_120(r0_121)
    end
  end)
end)
local r69_0 = game:GetService("RunService")
local r70_0 = game:GetService("Players")
local r71_0 = r70_0.LocalPlayer
local r72_0 = false
local r73_0 = false
local r74_0 = false
local r75_0 = false
local r76_0 = false
local function r77_0(r0_97)
  -- line: [67, 69420] id: 97
  local r1_97 = Instance.new("BillboardGui")
  local r2_97 = Instance.new("TextLabel")
  r1_97.Name = "NameESP"
  r1_97.Adornee = r0_97.Character:WaitForChild("Head")
  r1_97.Size = UDim2.new(0, 100, 0, 50)
  r1_97.StudsOffset = Vector3.new(0, 3, 0)
  r1_97.AlwaysOnTop = true
  r2_97.Parent = r1_97
  r2_97.BackgroundTransparency = 1
  r2_97.Text = r0_97.Name
  r2_97.Size = UDim2.new(1, 0, 1, 0)
  r2_97.TextColor3 = Color3.new(1, 1, 1)
  r2_97.TextScaled = true
  local r3_97 = Instance.new("TextLabel")
  r3_97.Parent = r1_97
  r3_97.BackgroundTransparency = 1
  r3_97.Position = UDim2.new(0, 0, 0, 30)
  r3_97.Size = UDim2.new(1, 0, 0.5, 0)
  r3_97.TextColor3 = Color3.new(1, 1, 1)
  r3_97.TextScaled = true
  local function r4_97()
    -- line: [67, 69420] id: 98
    if r1_97.Parent then
      r3_97.Text = string.format("%.2f studs", (r71_0.Character.HumanoidRootPart.Position - r0_97.Character.HumanoidRootPart.Position).Magnitude)
    end
  end
  spawn(function()
    -- line: [67, 69420] id: 99
    while r1_97.Parent do
      r4_97()
      wait(0.1)
    end
  end)
  r1_97.Parent = r0_97.Character:WaitForChild("Head")
end
local function r78_0(r0_114)
  -- line: [67, 69420] id: 114
  if r0_114.Character and r0_114.Character:FindFirstChild("Head") and r0_114.Character.Head:FindFirstChild("NameESP") then
    r0_114.Character.Head.NameESP:Destroy()
  end
end
local function r79_0(r0_135)
  -- line: [67, 69420] id: 135
  local r1_135 = Instance.new("Highlight")
  r1_135.Name = "HighlightESP"
  r1_135.Adornee = r0_135.Character
  r1_135.FillTransparency = 0.5
  r1_135.OutlineColor = Color3.new(1, 1, 1)
  r1_135.OutlineTransparency = 0
  r1_135.Parent = r0_135.Character
  local function r2_135()
    -- line: [67, 69420] id: 136
    if r0_135.Team and r0_135.Team.TeamColor then
      r1_135.FillColor = r0_135.Team.TeamColor.Color
    else
      r1_135.FillColor = Color3.new(1, 1, 1)
    end
  end
  r2_135()
  r0_135:GetPropertyChangedSignal("Team"):Connect(r2_135)
end
local function r80_0(r0_325)
  -- line: [67, 69420] id: 325
  if r0_325.Character and r0_325.Character:FindFirstChild("Head") and r0_325.Character:FindFirstChild("HighlightESP") then
    r0_325.Character.HighlightESP:Destroy()
  end
end
local function r81_0(r0_225)
  -- line: [67, 69420] id: 225
  local r1_225 = Drawing.new("Line")
  r1_225.Visible = false
  r1_225.Color = Color3.new(1, 1, 1)
  r1_225.Thickness = 1
  r1_225.Transparency = 1
  r69_0.RenderStepped:Connect(function()
    -- line: [67, 69420] id: 226
    if r74_0 and r0_225.Character and r0_225.Character:FindFirstChild("HumanoidRootPart") and r71_0.Character and r71_0.Character:FindFirstChild("HumanoidRootPart") then
      r1_225.Visible = true
      local r1_226, r2_226 = workspace.CurrentCamera:WorldToViewportPoint(r0_225.Character.HumanoidRootPart.Position)
      if r2_226 then
        r1_225.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y)
        r1_225.To = Vector2.new(r1_226.X, r1_226.Y)
      else
        r1_225.Visible = false
      end
    else
      r1_225.Visible = false
    end
  end)
  r0_225.CharacterRemoving:Connect(function()
    -- line: [67, 69420] id: 227
    r1_225:Remove()
  end)
end
local function r82_0(r0_33)
  -- line: [67, 69420] id: 33
  if r0_33:FindFirstChild("TracerESP") then
    r0_33.TracerESP:Destroy()
  end
end
local function r83_0(r0_290)
  -- line: [67, 69420] id: 290
  local r1_290 = Instance.new("BoxHandleAdornment")
  r1_290.Name = "BoxESP"
  r1_290.Size = r0_290.Character:GetExtentsSize() * 1.1
  r1_290.Adornee = r0_290.Character
  r1_290.AlwaysOnTop = true
  r1_290.ZIndex = 5
  r1_290.Transparency = 0.5
  r1_290.Color3 = Color3.new(1, 0, 0)
  r1_290.Parent = r0_290.Character
end
local function r84_0(r0_198)
  -- line: [67, 69420] id: 198
  if r0_198.Character:FindFirstChild("BoxESP") then
    r0_198.Character.BoxESP:Destroy()
  end
end
local function r85_0(r0_208)
  -- line: [67, 69420] id: 208
  local r1_208 = Drawing.new("Square")
  r1_208.Visible = false
  r1_208.Transparency = 0.5
  r1_208.Color = Color3.new(1, 0, 0)
  r1_208.Thickness = 2
  r69_0.RenderStepped:Connect(function()
    -- line: [67, 69420] id: 210
    if r76_0 and r0_208.Character and r0_208.Character:FindFirstChild("HumanoidRootPart") and r71_0.Character and r71_0.Character:FindFirstChild("HumanoidRootPart") then
      r1_208.Visible = true
      local r0_210 = r0_208.Character.HumanoidRootPart
      local r1_210, r2_210 = workspace.CurrentCamera:WorldToViewportPoint(r0_210.Position)
      if r2_210 then
        local r3_210 = r0_208.Character:GetExtentsSize()
        local r4_210 = workspace.CurrentCamera:WorldToViewportPoint((r0_210.CFrame * CFrame.new(r3_210.X / -2, r3_210.Y / 2, 0)).p)
        local r5_210 = workspace.CurrentCamera:WorldToViewportPoint((r0_210.CFrame * CFrame.new(r3_210.X / 2, -r3_210.Y / 2, 0)).p)
        r1_208.Size = Vector2.new(r5_210.X - r4_210.X, r5_210.Y - r4_210.Y)
        r1_208.Position = Vector2.new(r4_210.X, r4_210.Y)
      else
        r1_208.Visible = false
      end
    else
      r1_208.Visible = false
    end
  end)
  r0_208.CharacterRemoving:Connect(function()
    -- line: [67, 69420] id: 209
    r1_208:Remove()
  end)
end
local function r86_0(r0_344)
  -- line: [67, 69420] id: 344
end
local function r87_0(r0_275)
  -- line: [67, 69420] id: 275
  r0_275.CharacterAdded:Connect(function(r0_276)
    -- line: [67, 69420] id: 276
    wait(1)
    if r72_0 then
      r77_0(r0_275)
    end
    if r73_0 then
      r79_0(r0_275)
    end
    if r74_0 then
      r81_0(r0_275)
    end
    if r75_0 then
      r83_0(r0_275)
    end
    if r76_0 then
      r85_0(r0_275)
    end
  end)
end
local function r88_0(r0_236)
  -- line: [67, 69420] id: 236
  r78_0(r0_236)
  r80_0(r0_236)
  r82_0(r0_236)
  r84_0(r0_236)
end
local function r89_0(r0_280)
  -- line: [67, 69420] id: 280
  r72_0 = r0_280
  for r4_280, r5_280 in pairs(r70_0:GetPlayers()) do
    if r5_280 ~= r71_0 then
      r78_0(r5_280)
    end
  end
  -- warn: not visited block [5]
  -- block#5:
  -- _u3(r5_280)
  -- goto label_29
end
local function r90_0(r0_44)
  -- line: [67, 69420] id: 44
  r73_0 = r0_44
  for r4_44, r5_44 in pairs(r70_0:GetChildren()) do
    if r5_44 ~= r71_0 then
      r80_0(r5_44)
    end
  end
  -- warn: not visited block [5]
  -- block#5:
  -- _u3(r5_44)
  -- goto label_26
end
local function r91_0(r0_294)
  -- line: [67, 69420] id: 294
  r74_0 = r0_294
  for r4_294, r5_294 in pairs(r70_0:GetPlayers()) do
    if r5_294 ~= r71_0 then
      if r74_0 then
        r81_0(r5_294)
      else
        r82_0(r5_294)
      end
    end
  end
end
local function r92_0(r0_104)
  -- line: [67, 69420] id: 104
  r75_0 = r0_104
  for r4_104, r5_104 in pairs(r70_0:GetPlayers()) do
    if r5_104 ~= r71_0 then
      if r75_0 then
        r83_0(r5_104)
      else
        r84_0(r5_104)
      end
    end
  end
end
local function r93_0(r0_138)
  -- line: [67, 69420] id: 138
  r76_0 = r0_138
  for r4_138, r5_138 in pairs(r70_0:GetPlayers()) do
    if r5_138 ~= r71_0 then
      if r76_0 then
        r85_0(r5_138)
      else
        r86_0(r5_138)
      end
    end
  end
end
for r97_0, r98_0 in pairs(r70_0:GetPlayers()) do
  if r98_0 ~= r71_0 then
    r87_0(r98_0)
  end
end
r70_0.PlayerAdded:Connect(function(r0_330)
  -- line: [67, 69420] id: 330
  if r0_330 ~= r71_0 then
    r87_0(r0_330)
  end
end)
r70_0.PlayerRemoving:Connect(r88_0)
local r95_0 = r21_0:Tab("绘制功能", "6035145364"):section("内容", true)
r95_0:Toggle("绘制 位置", "", false, function(r0_311)
  -- line: [67, 69420] id: 311
  local function r1_311(r0_312)
    -- line: [67, 69420] id: 312
    if r0_312.Character and r0_312.Character:FindFirstChildOfClass("Humanoid") then
      r0_312.Character.Humanoid.NameDisplayDistance = 9000000000
      r0_312.Character.Humanoid.NameOcclusion = "NoOcclusion"
      r0_312.Character.Humanoid.HealthDisplayDistance = 9000000000
      r0_312.Character.Humanoid.HealthDisplayType = "AlwaysOn"
      r0_312.Character.Humanoid.Health = r0_312.Character.Humanoid.Health
    end
  end
  for r5_311, r6_311 in pairs(game.Players:GetPlayers()) do
    r1_311(r6_311)
    r6_311.CharacterAdded:Connect(function()
      -- line: [67, 69420] id: 315
      task.wait(0.33)
      r1_311(r6_311)
    end)
    -- close: r5_311
  end
  game.Players.PlayerAdded:Connect(function(r0_313)
    -- line: [67, 69420] id: 313
    r1_311(r0_313)
    r0_313.CharacterAdded:Connect(function()
      -- line: [67, 69420] id: 314
      task.wait(0.33)
      r1_311(r0_313)
    end)
  end)
end)
r95_0:Toggle("绘制名字", "", false, function(r0_87)
  -- line: [67, 69420] id: 87
  r89_0(r0_87)
end)
r95_0:Toggle("绘制高亮", "", false, function(r0_1)
  -- line: [67, 69420] id: 1
  r90_0(r0_1)
end)
r95_0:Toggle("绘制射线", "", false, function(r0_112)
  -- line: [67, 69420] id: 112
  r91_0(r0_112)
end)
r95_0:Toggle("绘制盒子 3D", "", false, function(r0_153)
  -- line: [67, 69420] id: 153
  r92_0(r0_153)
end)
r95_0:Toggle("绘制盒子 2D", "", false, function(r0_301)
  -- line: [67, 69420] id: 301
  r93_0(r0_301)
end)
local r97_0 = r21_0:Tab("旋转", "7743873633"):section("旋转", true)
r97_0:Textbox("旋转速度", "TextBoxFlag", "输入", function(r0_202)
  -- line: [67, 69420] id: 202
  r26_0.speed = tonumber(r0_202) or 100
end)
r97_0:Toggle("开启/关闭旋转", "Spinbot", false, function(r0_157)
  -- line: [67, 69420] id: 157
  local r1_157 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_157.Character
  local r2_157 = r1_157.Character:WaitForChild("HumanoidRootPart")
  r1_157.Character:WaitForChild("Humanoid").AutoRotate = false
  if r0_157 then
    local r3_157 = Instance.new("AngularVelocity")
    r3_157.Attachment0 = r2_157:WaitForChild("RootAttachment")
    r3_157.MaxTorque = math.huge
    r3_157.AngularVelocity = Vector3.new(0, r26_0.speed, 0)
    r3_157.Parent = r2_157
    r3_157.Name = "Spinbot"
  else
    local r3_157 = r2_157:FindFirstChild("Spinbot")
    if r3_157 then
      r3_157:Destroy()
    end
  end
end)
r97_0:Textbox("自定义旋转速度", "TextBoxFlag", "输入", function(r0_30)
  -- line: [67, 69420] id: 30
  local r1_30 = r0_30
  local r2_30 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r2_30.Character
  local r3_30 = r2_30.Character:WaitForChild("HumanoidRootPart")
  r2_30.Character:WaitForChild("Humanoid").AutoRotate = false
  local r4_30 = Instance.new("AngularVelocity")
  r4_30.Attachment0 = r3_30:WaitForChild("RootAttachment")
  r4_30.MaxTorque = math.huge
  r4_30.AngularVelocity = Vector3.new(0, r1_30, 0)
  r4_30.Parent = r3_30
  r4_30.Name = "Spinbot"
end)
r97_0:Button("旋转0", function()
  -- line: [67, 69420] id: 319
  local r0_319 = 0
  local r1_319 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_319.Character
  local r2_319 = r1_319.Character:WaitForChild("HumanoidRootPart")
  r1_319.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_319 = Instance.new("AngularVelocity")
  r3_319.Attachment0 = r2_319:WaitForChild("RootAttachment")
  r3_319.MaxTorque = math.huge
  r3_319.AngularVelocity = Vector3.new(0, r0_319, 0)
  r3_319.Parent = r2_319
  r3_319.Name = "Spinbot"
end)
r97_0:Button("旋转10", function()
  -- line: [67, 69420] id: 146
  local r0_146 = 10
  local r1_146 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_146.Character
  local r2_146 = r1_146.Character:WaitForChild("HumanoidRootPart")
  r1_146.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_146 = Instance.new("AngularVelocity")
  r3_146.Attachment0 = r2_146:WaitForChild("RootAttachment")
  r3_146.MaxTorque = math.huge
  r3_146.AngularVelocity = Vector3.new(0, r0_146, 0)
  r3_146.Parent = r2_146
  r3_146.Name = "Spinbot"
end)
r97_0:Button("旋转30", function()
  -- line: [67, 69420] id: 115
  local r0_115 = 30
  local r1_115 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_115.Character
  local r2_115 = r1_115.Character:WaitForChild("HumanoidRootPart")
  r1_115.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_115 = Instance.new("AngularVelocity")
  r3_115.Attachment0 = r2_115:WaitForChild("RootAttachment")
  r3_115.MaxTorque = math.huge
  r3_115.AngularVelocity = Vector3.new(0, r0_115, 0)
  r3_115.Parent = r2_115
  r3_115.Name = "Spinbot"
end)
r97_0:Button("旋转40", function()
  -- line: [67, 69420] id: 102
  local r0_102 = 40
  local r1_102 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_102.Character
  local r2_102 = r1_102.Character:WaitForChild("HumanoidRootPart")
  r1_102.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_102 = Instance.new("AngularVelocity")
  r3_102.Attachment0 = r2_102:WaitForChild("RootAttachment")
  r3_102.MaxTorque = math.huge
  r3_102.AngularVelocity = Vector3.new(0, r0_102, 0)
  r3_102.Parent = r2_102
  r3_102.Name = "Spinbot"
end)
r97_0:Button("旋转50", function()
  -- line: [67, 69420] id: 10
  local r0_10 = 50
  local r1_10 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_10.Character
  local r2_10 = r1_10.Character:WaitForChild("HumanoidRootPart")
  r1_10.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_10 = Instance.new("AngularVelocity")
  r3_10.Attachment0 = r2_10:WaitForChild("RootAttachment")
  r3_10.MaxTorque = math.huge
  r3_10.AngularVelocity = Vector3.new(0, r0_10, 0)
  r3_10.Parent = r2_10
  r3_10.Name = "Spinbot"
end)
r97_0:Button("旋转60", function()
  -- line: [67, 69420] id: 206
  local r0_206 = 60
  local r1_206 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_206.Character
  local r2_206 = r1_206.Character:WaitForChild("HumanoidRootPart")
  r1_206.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_206 = Instance.new("AngularVelocity")
  r3_206.Attachment0 = r2_206:WaitForChild("RootAttachment")
  r3_206.MaxTorque = math.huge
  r3_206.AngularVelocity = Vector3.new(0, r0_206, 0)
  r3_206.Parent = r2_206
  r3_206.Name = "Spinbot"
end)
r97_0:Button("旋转70", function()
  -- line: [67, 69420] id: 56
  local r0_56 = 70
  local r1_56 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_56.Character
  local r2_56 = r1_56.Character:WaitForChild("HumanoidRootPart")
  r1_56.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_56 = Instance.new("AngularVelocity")
  r3_56.Attachment0 = r2_56:WaitForChild("RootAttachment")
  r3_56.MaxTorque = math.huge
  r3_56.AngularVelocity = Vector3.new(0, r0_56, 0)
  r3_56.Parent = r2_56
  r3_56.Name = "Spinbot"
end)
r97_0:Button("旋转80", function()
  -- line: [67, 69420] id: 69
  local r0_69 = 80
  local r1_69 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_69.Character
  local r2_69 = r1_69.Character:WaitForChild("HumanoidRootPart")
  r1_69.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_69 = Instance.new("AngularVelocity")
  r3_69.Attachment0 = r2_69:WaitForChild("RootAttachment")
  r3_69.MaxTorque = math.huge
  r3_69.AngularVelocity = Vector3.new(0, r0_69, 0)
  r3_69.Parent = r2_69
  r3_69.Name = "Spinbot"
end)
r97_0:Button("旋转90", function()
  -- line: [67, 69420] id: 228
  local r0_228 = 90
  local r1_228 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_228.Character
  local r2_228 = r1_228.Character:WaitForChild("HumanoidRootPart")
  r1_228.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_228 = Instance.new("AngularVelocity")
  r3_228.Attachment0 = r2_228:WaitForChild("RootAttachment")
  r3_228.MaxTorque = math.huge
  r3_228.AngularVelocity = Vector3.new(0, r0_228, 0)
  r3_228.Parent = r2_228
  r3_228.Name = "Spinbot"
end)
r97_0:Button("旋转100", function()
  -- line: [67, 69420] id: 274
  local r0_274 = 100
  local r1_274 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_274.Character
  local r2_274 = r1_274.Character:WaitForChild("HumanoidRootPart")
  r1_274.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_274 = Instance.new("AngularVelocity")
  r3_274.Attachment0 = r2_274:WaitForChild("RootAttachment")
  r3_274.MaxTorque = math.huge
  r3_274.AngularVelocity = Vector3.new(0, r0_274, 0)
  r3_274.Parent = r2_274
  r3_274.Name = "Spinbot"
end)
r97_0:Button("旋转150", function()
  -- line: [67, 69420] id: 39
  local r0_39 = 150
  local r1_39 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_39.Character
  local r2_39 = r1_39.Character:WaitForChild("HumanoidRootPart")
  r1_39.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_39 = Instance.new("AngularVelocity")
  r3_39.Attachment0 = r2_39:WaitForChild("RootAttachment")
  r3_39.MaxTorque = math.huge
  r3_39.AngularVelocity = Vector3.new(0, r0_39, 0)
  r3_39.Parent = r2_39
  r3_39.Name = "Spinbot"
end)
r97_0:Button("旋转200", function()
  -- line: [67, 69420] id: 279
  local r0_279 = 200
  local r1_279 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_279.Character
  local r2_279 = r1_279.Character:WaitForChild("HumanoidRootPart")
  r1_279.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_279 = Instance.new("AngularVelocity")
  r3_279.Attachment0 = r2_279:WaitForChild("RootAttachment")
  r3_279.MaxTorque = math.huge
  r3_279.AngularVelocity = Vector3.new(0, r0_279, 0)
  r3_279.Parent = r2_279
  r3_279.Name = "Spinbot"
end)
r97_0:Button("旋转250", function()
  -- line: [67, 69420] id: 190
  local r0_190 = 250
  local r1_190 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_190.Character
  local r2_190 = r1_190.Character:WaitForChild("HumanoidRootPart")
  r1_190.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_190 = Instance.new("AngularVelocity")
  r3_190.Attachment0 = r2_190:WaitForChild("RootAttachment")
  r3_190.MaxTorque = math.huge
  r3_190.AngularVelocity = Vector3.new(0, r0_190, 0)
  r3_190.Parent = r2_190
  r3_190.Name = "Spinbot"
end)
r97_0:Button("旋转300", function()
  -- line: [67, 69420] id: 19
  local r0_19 = 300
  local r1_19 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_19.Character
  local r2_19 = r1_19.Character:WaitForChild("HumanoidRootPart")
  r1_19.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_19 = Instance.new("AngularVelocity")
  r3_19.Attachment0 = r2_19:WaitForChild("RootAttachment")
  r3_19.MaxTorque = math.huge
  r3_19.AngularVelocity = Vector3.new(0, r0_19, 0)
  r3_19.Parent = r2_19
  r3_19.Name = "Spinbot"
end)
r97_0:Button("旋转350", function()
  -- line: [67, 69420] id: 129
  local r0_129 = 350
  local r1_129 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_129.Character
  local r2_129 = r1_129.Character:WaitForChild("HumanoidRootPart")
  r1_129.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_129 = Instance.new("AngularVelocity")
  r3_129.Attachment0 = r2_129:WaitForChild("RootAttachment")
  r3_129.MaxTorque = math.huge
  r3_129.AngularVelocity = Vector3.new(0, r0_129, 0)
  r3_129.Parent = r2_129
  r3_129.Name = "Spinbot"
end)
r97_0:Button("旋转400", function()
  -- line: [67, 69420] id: 61
  local r0_61 = 400
  local r1_61 = game:GetService("Players").LocalPlayer
  repeat
    task.wait()
  until r1_61.Character
  local r2_61 = r1_61.Character:WaitForChild("HumanoidRootPart")
  r1_61.Character:WaitForChild("Humanoid").AutoRotate = false
  local r3_61 = Instance.new("AngularVelocity")
  r3_61.Attachment0 = r2_61:WaitForChild("RootAttachment")
  r3_61.MaxTorque = math.huge
  r3_61.AngularVelocity = Vector3.new(0, r0_61, 0)
  r3_61.Parent = r2_61
  r3_61.Name = "Spinbot"
end)
local r98_0 = r21_0:Tab("河北唐县", "7733770599")
local r99_0 = r98_0:section("主要功能", true)
r99_0:Toggle("卡车刷钱", "", false, function(r0_296)
  -- line: [67, 69420] id: 296
  if r0_296 then
    getfenv().auto = true
    (function()
      -- line: [67, 69420] id: 297
      while getfenv().auto do
        local r0_297 = wait(0.3)
        if r0_297 then
          pcall(function()
            -- line: [67, 69420] id: 298
            local r0_298 = game.Players.LocalPlayer
            local r1_298 = r0_298.Character
            if not r1_298 then
              warn("[调试] 角色未加载")
              return 
            end
            local r2_298 = r1_298:FindFirstChild("Humanoid")
            if not r2_298 then
              warn("[调试] 缺少Humanoid")
              return 
            end
            local r3_298 = r2_298.SeatPart ~= nil
            warn("[调试] 已上车状态：" .. tostring(r3_298))
            if r0_298.PlayerGui.PackagesUI:FindFirstChildOfClass("BillboardGui") then
              warn("[调试] 检测到任务点，执行运输逻辑")
              local r4_298 = r2_298.SeatPart
              if r4_298 then
                local r5_298 = r4_298.Parent
                r5_298.PrimaryPart = r5_298.Body["#Weight"]
                r5_298:PivotTo(r0_298.PlayerGui.PackagesUI:FindFirstChildOfClass("BillboardGui").Adornee.CFrame * CFrame.new(0, 10, -20))
                wait(0.18)
                local r6_298 = r0_298.PlayerGui.TruckingJobUI.interaction
                if r6_298.Visible then
                  local r7_298 = r6_298.title.Text
                  if string.find(r7_298, "Load") and not string.find(r7_298, "Unload") then
                    warn("[调试] 执行装货")
                    game:GetService("ReplicatedStorage").Packages.Shared.Network.RemoteFunctions.ClientCoalRequester:InvokeServer("LoadCoal")
                  elseif string.find(r7_298, "Unload") then
                    warn("[调试] 执行卸货")
                    game:GetService("ReplicatedStorage").Packages.Shared.Network.RemoteFunctions.ClientCoalRequester:InvokeServer("UnloadCoal")
                  end
                end
              end
            elseif not r3_298 or tick() % 1 < 0.3 then
              warn("[调试] 未检测到任务点，执行找车上车")
              game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer(unpack({
                [1] = "Civilian",
              }))
              wait(0.39)
              game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer(unpack({
                [1] = "Trucker",
              }))
              game:GetService("ReplicatedStorage").Packages.Shared.Network.RemoteFunctions.ClientRequestCoalTrucks:InvokeServer()
              wait(0.18)
              game:GetService("ReplicatedStorage").Packages.Shared.Network.RemoteFunctions.ClientRequestCoalJob:InvokeServer(workspace.TruckingJob.Coal.routeA, "2012 Shacman M3000 4X2")
              wait(0.18)
              local r6_298 = r0_298.Name .. "\'s Car"
              local r7_298 = workspace:FindFirstChild("SpawnedCars")
              local r8_298 = r7_298 and r7_298:FindFirstChild(r6_298)
              if r8_298 then
                warn("[调试] 找到车辆：" .. r6_298)
                local r9_298 = {
                  "DriveSeat",
                  "DriverSeat",
                  "Seat"
                }
                local r10_298 = nil
                for r14_298, r15_298 in ipairs(r9_298) do
                  r10_298 = r8_298:FindFirstChild(r15_298)
                  if r10_298 then
                    warn("[调试] 找到座位：" .. r15_298)
                    break
                  end
                end
                if r10_298 then
                  local r11_298 = r1_298:FindFirstChild("HumanoidRootPart")
                  if r11_298 then
                    r11_298.CFrame = r10_298.CFrame + Vector3.new(0, 0.5, 0)
                    wait(0.1)
                    r10_298:Sit(r2_298)
                    warn("[调试] 尝试上车")
                  else
                    warn("[调试] 缺少HumanoidRootPart")
                  end
                else
                  warn("[调试] 未找到座位")
                end
              else
                warn("[调试] 未找到车辆：" .. r6_298)
              end
            end
          end)
        else
          break
        end
      end
    end)()
  else
    getfenv().auto = false
  end
end)
r99_0:Toggle("卖冰淇淋刷钱", "", false, function(r0_335)
  -- line: [67, 69420] id: 335
  if r0_335 then
    _G.TD = true
    game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer(unpack({
      [1] = "Civilian",
    }))
    wait(0.1)
    game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer(unpack({
      [1] = "Mixue Ice Cream",
    }))
    wait(0.1)
    game:GetService("Workspace").MixueJob.Scripted.Prompts.PromptFill.ProximityPrompt.MaxActivationDistance = 100000000000000000000000000000000000000000000000000
    wait(0.1)
    game:GetService("Workspace").MixueJob.Scripted.Prompts.Prompt.ProximityPrompt.MaxActivationDistance = 100000000000000000000000000000000000000000000000000
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6970.93212890625, 11.840015411376953, 1757.1531982421875)
    wait(1)
    while _G.TD == true do
      local r3_335 = pairs
      for r6_335, r7_335 in r3_335(workspace.MixueJob:GetDescendants()) do
        if r7_335:IsA("ProximityPrompt") then
          fireproximityprompt(r7_335)
        end
      end
      for r6_335 = 1, 6, 1 do
        local r7_335 = game:GetService("Workspace"):FindFirstChild("Customer" .. r6_335)
        if r7_335 then
          for r11_335, r12_335 in pairs(r7_335:GetDescendants()) do
            if r12_335:IsA("ProximityPrompt") then
              fireproximityprompt(r12_335)
            end
          end
        end
      end
      task.wait(0.25)
    end
  else
    _G.TD = false
  end
end)
r99_0:Toggle("卖茶刷钱", "", false, function(r0_166)
  -- line: [67, 69420] id: 166
  if r0_166 then
    _G.TD = true
    game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer(unpack({
      [1] = "Civilian",
    }))
    wait(0.1)
    game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer(unpack({
      [1] = "Teawen Barista",
    }))
    wait(0.1)
    game:GetService("Workspace").BaristaJob.Scripted.Prompts.PromptFill.ProximityPrompt.MaxActivationDistance = 9999
    wait(0.1)
    game:GetService("Workspace").BaristaJob.Scripted.Prompts.Prompt.ProximityPrompt.MaxActivationDistance = 9999
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5855.5146484375, 12.23734188079834, 3666.1201171875)
    wait(1)
    while _G.TD == true do
      local r3_166 = pairs
      for r6_166, r7_166 in r3_166(workspace.BaristaJob:GetDescendants()) do
        if r7_166:IsA("ProximityPrompt") then
          fireproximityprompt(r7_166)
        end
      end
      for r6_166 = 1, 6, 1 do
        local r7_166 = game:GetService("Workspace"):FindFirstChild("Customer" .. r6_166)
        if r7_166 then
          for r11_166, r12_166 in pairs(r7_166:GetDescendants()) do
            if r12_166:IsA("ProximityPrompt") then
              fireproximityprompt(r12_166)
            end
          end
        end
      end
      task.wait(0.25)
    end
  else
    _G.TD = false
  end
end)
local r101_0 = game:GetService("Players").LocalPlayer
local r102_0 = game:GetService("RunService")
_G.autoFarm = false
_G.hyperSpeed = math.random(120, 180)
local function r103_0(r0_24)
  -- line: [67, 69420] id: 24
  if r0_24 then
    for r4_24, r5_24 in pairs(r101_0.Character:GetDescendants()) do
      if r5_24:IsA("BasePart") then
        r5_24.CanCollide = false
      end
    end
  else
    for r4_24, r5_24 in pairs(r101_0.Character:GetDescendants()) do
      if r5_24:IsA("BasePart") then
        r5_24.CanCollide = true
      end
    end
  end
end
function deliverPackage(r0_322)
  -- line: [67, 69420] id: 322
  r103_0(true)
  local r1_322 = r101_0.Character.HumanoidRootPart
  local r2_322 = Instance.new("BodyPosition")
  r2_322.Position = r0_322.Position
  r2_322.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  r2_322.Parent = r1_322
  local r3_322 = false
  local r4_322 = r102_0.Heartbeat:Connect(function()
    -- line: [67, 69420] id: 323
    if (r1_322.Position - r0_322.Position).Magnitude < 3 then
      r3_322 = true
      connection:Disconnect()
    end
  end)
  task.wait(8)
  r2_322:Destroy()
  r103_0(false)
  return r3_322
end
function autoFarm()
  -- line: [67, 69420] id: 152
  while _G.autoFarm do
    fireclickdetector(game.Workspace.DeliverySys.Misc["Package Pile"].ClickDetector)
    local r0_152 = os.clock()
    while os.clock() - r0_152 < 10 do
      local r1_152 = _G.autoFarm
      if r1_152 then
        task.wait(0.5)
      else
        break
      end
    end
    for r4_152, r5_152 in pairs(game.Workspace.DeliverySys.DeliveryPoints:GetChildren()) do
      if r5_152:IsA("BasePart") and math.abs(r5_152.Transparency - 0.8) < 0.001 then
        deliverPackage(r5_152.CFrame)
        task.wait(1)
      end
    end
  end
end
r99_0:Toggle("送货员赚钱（踢出风险降低）", "text", false, function(r0_184)
  -- line: [67, 69420] id: 184
  _G.autoFarm = r0_184
  if r0_184 then
    game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer(unpack({
      [1] = "Delivery Driver",
    }))
    task.wait(1)
    autoFarm()
  elseif r101_0.Character then
    r103_0(false)
    local r1_184 = r101_0.Character:FindFirstChild("HumanoidRootPart")
    if r1_184 then
      for r5_184, r6_184 in ipairs(r1_184:GetChildren()) do
        if r6_184:IsA("BodyPosition") then
          r6_184:Destroy()
        end
      end
    end
  end
end)
r99_0:Toggle("穿墙", "NoClip", false, function(r0_110)
  -- line: [67, 69420] id: 110
  local r1_110 = game:GetService("Workspace")
  local r2_110 = game:GetService("Players")
  if r0_110 then
    Clipon = true
  else
    Clipon = false
  end
  Stepped = game:GetService("RunService").Stepped:Connect(function()
    -- line: [67, 69420] id: 111
    if not Clipon == false then
      for r3_111, r4_111 in pairs(r1_110:GetChildren()) do
        if r4_111.Name == r2_110.LocalPlayer.Name then
          for r8_111, r9_111 in pairs(r1_110[r2_110.LocalPlayer.Name]:GetChildren()) do
            if r9_111:IsA("BasePart") then
              r9_111.CanCollide = false
            end
          end
        end
      end
    else
      Stepped:Disconnect()
    end
  end)
end)
r99_0:Toggle("出租车刷钱", "", false, function(r0_269)
  -- line: [67, 69420] id: 269
  if r0_269 then
    _G.TD = true
    game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer(unpack({
      [1] = "Civilian",
    }))
    wait(0.1)
    game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer(unpack({
      [1] = "Taxi Driver",
    }))
    wait(0.1)
    local function r3_269(r0_270, r1_270)
      -- line: [67, 69420] id: 270
      local r2_270 = Instance.new("Part")
      r2_270.Size = Vector3.new(3, 3, 3)
      r2_270.Shape = Enum.PartType.Ball
      r2_270.Material = Enum.Material.Neon
      r2_270.Color = r1_270
      r2_270.Anchored = true
      r2_270.CanCollide = false
      r2_270.Position = r0_270
      r2_270.Parent = workspace
      game:GetService("Debris"):AddItem(r2_270, 5)
      return r2_270
    end
    local function r4_269(r0_271)
      -- line: [67, 69420] id: 271
      local r1_271 = game.Players.LocalPlayer
      if not r1_271 then
        return false
      end
      local r2_271 = r1_271.Character
      if not r2_271 then
        return false
      end
      local r3_271 = r2_271:FindFirstChildOfClass("Humanoid")
      if not r3_271 then
        return false
      end
      local r4_271 = r3_271.SeatPart
      if not r4_271 then
        r3_269(r2_271.HumanoidRootPart.Position, Color3.new(1, 0, 0))
        return false
      end
      local r5_271 = r4_271:FindFirstAncestorOfClass("Model")
      if not r5_271 then
        return false
      end
      local r6_271 = r5_271.PrimaryPart or r5_271:FindFirstChild("HumanoidRootPart") or r5_271:FindFirstChildWhichIsA("BasePart")
      local r7_271 = r2_271:FindFirstChild("HumanoidRootPart") or r2_271:FindFirstChildWhichIsA("BasePart")
      if not r6_271 or not r7_271 then
        return false
      end
      local r8_271 = 0
      pcall(function()
        -- line: [67, 69420] id: 272
        r8_271 = select(2, r0_271:ToEulerAnglesXYZ())
      end)
      local r10_271 = CFrame.new(r0_271.X, (r0_271.Y + 5), r0_271.Z) * CFrame.Angles(0, r8_271, 0)
      r3_269(r10_271.Position, Color3.new(0, 1, 0))
      r3_269(r0_271.Position, Color3.new(1, 1, 0))
      local r11_271 = r6_271.Position - r7_271.Position
      for r15_271, r16_271 in ipairs(r5_271:GetDescendants()) do
        if r16_271:IsA("BasePart") then
          r16_271.Anchored = true
        end
      end
      r5_271:PivotTo(r10_271)
      r7_271.CFrame = r10_271 + r11_271
      task.delay(0.5, function()
        -- line: [67, 69420] id: 273
        for r3_273, r4_273 in ipairs(r5_271:GetDescendants()) do
          if r4_273:IsA("BasePart") then
            r4_273.Anchored = false
          end
        end
      end)
      return true
    end
    while _G.TD do
      local r5_269 = game:GetService("Workspace")
      r5_269 = r5_269:FindFirstChild("TaxiSys")
      if r5_269 then
        local r6_269 = r5_269:FindFirstChild("PickupPoints")
        if r6_269 then
          for r10_269, r11_269 in ipairs(r6_269:GetChildren()) do
            if r11_269:IsA("BasePart") and math.abs(r11_269.Transparency - 0.8) < 0.01 then
              if r4_269(r11_269.CFrame) then
                task.wait(4)
              else
                task.wait(1)
              end
            end
          end
        end
        local r7_269 = r5_269:FindFirstChild("DropOffPoints")
        if r7_269 then
          for r11_269, r12_269 in ipairs(r7_269:GetChildren()) do
            if r12_269:IsA("BasePart") and math.abs(r12_269.Transparency - 0.8) < 0.01 then
              if r4_269(r12_269.CFrame) then
                task.wait(6)
              else
                task.wait(1)
              end
            end
          end
        end
      end
      task.wait()
    end
    -- close: r1_269
  else
    _G.TD = false
  end
end)
r99_0:Toggle("欧了线上出租车刷钱", "", false, function(r0_2)
  -- line: [67, 69420] id: 2
  if r0_2 then
    _G.TD = true
    game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer(unpack({
      [1] = "Civilian",
    }))
    wait(0.1)
    game:GetService("ReplicatedStorage").Feature_RemoteEvent.TeamSwitch:FireServer(unpack({
      [1] = "Ole Online Taxi Sharing",
    }))
    wait(0.1)
    local function r3_2(r0_6, r1_6)
      -- line: [67, 69420] id: 6
      local r2_6 = Instance.new("Part")
      r2_6.Size = Vector3.new(3, 3, 3)
      r2_6.Shape = Enum.PartType.Ball
      r2_6.Material = Enum.Material.Neon
      r2_6.Color = r1_6
      r2_6.Anchored = true
      r2_6.CanCollide = false
      r2_6.Position = r0_6
      r2_6.Parent = workspace
      game:GetService("Debris"):AddItem(r2_6, 5)
      return r2_6
    end
    local function r4_2(r0_3)
      -- line: [67, 69420] id: 3
      local r1_3 = game.Players.LocalPlayer
      if not r1_3 then
        return false
      end
      local r2_3 = r1_3.Character
      if not r2_3 then
        return false
      end
      local r3_3 = r2_3:FindFirstChildOfClass("Humanoid")
      if not r3_3 then
        return false
      end
      local r4_3 = r3_3.SeatPart
      if not r4_3 then
        r3_2(r2_3.HumanoidRootPart.Position, Color3.new(1, 0, 0))
        return false
      end
      local r5_3 = r4_3:FindFirstAncestorOfClass("Model")
      if not r5_3 then
        return false
      end
      local r6_3 = r5_3.PrimaryPart or r5_3:FindFirstChild("HumanoidRootPart") or r5_3:FindFirstChildWhichIsA("BasePart")
      local r7_3 = r2_3:FindFirstChild("HumanoidRootPart") or r2_3:FindFirstChildWhichIsA("BasePart")
      if not r6_3 or not r7_3 then
        return false
      end
      local r8_3 = 0
      pcall(function()
        -- line: [67, 69420] id: 5
        r8_3 = select(2, r0_3:ToEulerAnglesXYZ())
      end)
      local r10_3 = CFrame.new(r0_3.X, (r0_3.Y + 5), r0_3.Z) * CFrame.Angles(0, r8_3, 0)
      r3_2(r10_3.Position, Color3.new(0, 1, 0))
      r3_2(r0_3.Position, Color3.new(1, 1, 0))
      local r11_3 = r6_3.Position - r7_3.Position
      for r15_3, r16_3 in ipairs(r5_3:GetDescendants()) do
        if r16_3:IsA("BasePart") then
          r16_3.Anchored = true
        end
      end
      r5_3:PivotTo(r10_3)
      r7_3.CFrame = r10_3 + r11_3
      task.delay(0.5, function()
        -- line: [67, 69420] id: 4
        for r3_4, r4_4 in ipairs(r5_3:GetDescendants()) do
          if r4_4:IsA("BasePart") then
            r4_4.Anchored = false
          end
        end
      end)
      return true
    end
    while _G.TD do
      local r5_2 = game:GetService("Workspace")
      r5_2 = r5_2:FindFirstChild("TaxiSys")
      if r5_2 then
        local r6_2 = r5_2:FindFirstChild("PickupPoints")
        if r6_2 then
          for r10_2, r11_2 in ipairs(r6_2:GetChildren()) do
            if r11_2:IsA("BasePart") and math.abs(r11_2.Transparency - 0.8) < 0.01 then
              if r4_2(r11_2.CFrame) then
                task.wait(4)
              else
                task.wait(1)
              end
            end
          end
        end
        local r7_2 = r5_2:FindFirstChild("DropOffPoints")
        if r7_2 then
          for r11_2, r12_2 in ipairs(r7_2:GetChildren()) do
            if r12_2:IsA("BasePart") and math.abs(r12_2.Transparency - 0.8) < 0.01 then
              if r4_2(r12_2.CFrame) then
                task.wait(6)
              else
                task.wait(1)
              end
            end
          end
        end
      end
      task.wait()
    end
    -- close: r1_2
  else
    _G.TD = false
  end
end)
local r104_0 = r98_0:section("自定义刷钱", true)
local r105_0 = nil
r104_0:Textbox("输入钱数", "arg", "输入", function(r0_191)
  -- line: [67, 69420] id: 191
  r105_0 = tonumber(r0_191)
  if r105_0 then
    warn("已设置阈值：" .. r105_0)
  else
    warn("请输入有效的数字")
  end
end)
r104_0:Toggle("检测钱数", "", false, function(r0_31)
  -- line: [67, 69420] id: 31
  if r0_31 then
    getfenv().checkMoney = true
    while getfenv().checkMoney do
      task.wait(10)
      pcall(function()
        -- line: [67, 69420] id: 32
        local r0_32 = game:GetService("Players").LocalPlayer
        if not r0_32:FindFirstChild("Money") or not r0_32.Money:IsA("NumberValue") then
          warn("未找到金钱数据")
          return 
        end
        local r1_32 = r105_0
        if not r1_32 or r1_32 <= 0 then
          warn("请先输入有效的正数阈值")
          return 
        end
        if r1_32 <= r0_32.Money.Value then
          warn("金钱已达阈值：" .. r1_32)
          r0_32:Kick("钱已达到目标值，已踢出")
          r0_32:Destroy()
          getfenv().checkMoney = false
        end
      end)
    end
  else
    getfenv().checkMoney = false
  end
end)
local r106_0 = r98_0:section("自定义刷钱", true)
local r107_0 = nil
r106_0:Textbox("输入钱数", "arg", "输入", function(r0_139)
  -- line: [67, 69420] id: 139
  r107_0 = tonumber(r0_139)
  if r107_0 then
    warn("已设置阈值：" .. r107_0)
  else
    warn("请输入有效的数字")
  end
end)
r106_0:Toggle("检测钱数", "", false, function(r0_218)
  -- line: [67, 69420] id: 218
  if r0_218 then
    getfenv().checkMoney = true
    while getfenv().checkMoney do
      task.wait(10)
      pcall(function()
        -- line: [67, 69420] id: 219
        local r0_219 = game:GetService("Players").LocalPlayer
        local r1_219 = r0_219:FindFirstChild("PlayerGui") and r0_219.PlayerGui:FindFirstChild("UI") and r0_219.PlayerGui.UI:FindFirstChild("Uni") and r0_219.PlayerGui.UI.Uni:FindFirstChild("Hud") and r0_219.PlayerGui.UI.Uni.Hud:FindFirstChild("Money") and r0_219.PlayerGui.UI.Uni.Hud.Money:FindFirstChild("Label")
        if not r1_219 or not r1_219:IsA("TextLabel") then
          warn("未找到金钱文本UI")
          return 
        end
        local r2_219 = r1_219.Text
        local r3_219 = tonumber(r2_219:gsub("%D+", ""))
        if not r3_219 then
          warn("无法从UI文本中提取数字，当前文本：" .. r2_219)
          return 
        end
        local r4_219 = r107_0
        if not r4_219 or r4_219 <= 0 then
          warn("请先输入有效的正数阈值")
          return 
        end
        if r4_219 <= r3_219 then
          warn("金钱已达阈值：" .. r4_219 .. "，当前金钱：" .. r3_219)
          r0_219:Kick("钱已达到目标值，已踢出")
          r0_219:Destroy()
          getfenv().checkMoney = false
        end
      end)
    end
  else
    getfenv().checkMoney = false
  end
end)
r98_0:section("远程功能", true):Toggle("远程购买车辆", "", false, function(r0_21)
  -- line: [67, 69420] id: 21
  if r0_21 then
    game:GetService("Workspace")["Autolite Used Car Dealership"].Dealership.ProximityPrompt.MaxActivationDistance = 100000000000000000000000000000000000000000000000000
  else
    game:GetService("Workspace")["Autolite Used Car Dealership"].Dealership.ProximityPrompt.MaxActivationDistance = 20
  end
end)
local r109_0 = r98_0:section("查看功能", true)
local r110_0 = r109_0:Label("钱数:")
local r111_0 = {}
for r115_0, r116_0 in pairs(game:GetService("Players"):GetPlayers()) do
  table.insert(r111_0, r116_0.Name)
end
local r112_0 = r109_0:Dropdown("选择玩家", "", r111_0, function(r0_181)
  -- line: [67, 69420] id: 181
  local r1_181 = game:GetService("Players"):FindFirstChild(r0_181)
  if r1_181 and r1_181:FindFirstChild("Money") then
    r110_0.Text = "钱数:" .. r1_181.Money.Value
  end
end)
if #r111_0 > 0 then
  local r113_0 = game:GetService("Players")
  local r115_0 = "FindFirstChild"
  r115_0 = r111_0[1]
  r113_0 = r113_0:[r115_0](r115_0)
  if r113_0 then
    local r116_0 = "FindFirstChild"
    r116_0 = "Money"
    if r113_0:[r116_0](r116_0) then
      r110_0.Text = "钱数:" .. r113_0.Money.Value
    end
  end
end
r98_0:section("修改钱数（娱乐）", true):Textbox("修改钱数", "arg", "输入", function(r0_318)
  -- line: [67, 69420] id: 318
  game:GetService("Players").LocalPlayer.Money.Value = r0_318
end)
r98_0:section("删除功能", true):Toggle("删除警察局会议室空气墙", "TD", false, function(r0_117)
  -- line: [67, 69420] id: 117
  if r0_117 then
    while r0_117 do
      game:GetService("Workspace").MapsParts.MessyStuff.MessyStuff2["Team Door"]:Destroy()
      wait()
    end
  end
end)
r98_0:section("飞车功能", true):Button("叶飞车", function()
  -- line: [67, 69420] id: 9
  loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE%20FLY%20CAR.lua"))()
end)
r98_0:section("通用功能", true):Button("铁拳", function()
  -- line: [67, 69420] id: 196
  loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt"))()
end)
local r117_0 = r98_0:section("切换角色功能", true)
r117_0:Button("变成警察", function()
  -- line: [67, 69420] id: 237
  game:GetService("ReplicatedStorage").TeamSwitch:FireServer(unpack({
    [1] = "Police",
  }))
end)
r117_0:Button("变成巴士司机", function()
  -- line: [67, 69420] id: 155
  game:GetService("ReplicatedStorage").TeamSwitch:FireServer(unpack({
    [1] = "Bus Driver",
  }))
end)
r117_0:Button("变成囚犯", function()
  -- line: [67, 69420] id: 338
  game:GetService("ReplicatedStorage").TeamSwitch:FireServer(unpack({
    [1] = "Criminal",
  }))
end)
r117_0:Button("变成老师", function()
  -- line: [67, 69420] id: 266
  game:GetService("ReplicatedStorage").TeamSwitch:FireServer(unpack({
    [1] = "Teacher",
  }))
end)
r117_0:Button("变成茶丸趣员工", function()
  -- line: [67, 69420] id: 46
  game:GetService("ReplicatedStorage").TeamSwitch:FireServer(unpack({
    [1] = "Teawen Barista",
  }))
end)
r117_0:Button("变成平民", function()
  -- line: [67, 69420] id: 57
  game:GetService("ReplicatedStorage").TeamSwitch:FireServer(unpack({
    [1] = "Civilian",
  }))
end)
r117_0:Button("变成送货员", function()
  -- line: [67, 69420] id: 84
  game:GetService("ReplicatedStorage").TeamSwitch:FireServer(unpack({
    [1] = "Delivery Driver",
  }))
end)
r117_0:Button("变成卡车司机", function()
  -- line: [67, 69420] id: 71
  game:GetService("ReplicatedStorage").TeamSwitch:FireServer(unpack({
    [1] = "Trucker",
  }))
end)
r117_0:Button("变成医生", function()
  -- line: [67, 69420] id: 215
  game:GetService("ReplicatedStorage").TeamSwitch:FireServer(unpack({
    [1] = "Paramedic",
  }))
end)
r117_0:Button("变成学生", function()
  -- line: [67, 69420] id: 243
  game:GetService("ReplicatedStorage").TeamSwitch:FireServer(unpack({
    [1] = "Student",
  }))
end)
r117_0:Button("变成老师", function()
  -- line: [67, 69420] id: 62
  game:GetService("ReplicatedStorage").TeamSwitch:FireServer(unpack({
    [1] = "Teacher",
  }))
end)
local r118_0 = r98_0:section("传送功能", true)
r118_0:Button("传送到警察局", function()
  -- line: [67, 69420] id: 148
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5513.97412109375, 8.656171798706055, 4964.291015625)
end)
r118_0:Button("传送到出生点", function()
  -- line: [67, 69420] id: 189
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3338.31982421875, 10.048742294311523, 3741.84033203125)
end)
r118_0:Button("传送到医院", function()
  -- line: [67, 69420] id: 65
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5471.482421875, 14.149418830871582, 4259.75341796875)
end)
r118_0:Button("传送到小区房隐藏房间", function()
  -- line: [67, 69420] id: 213
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1370.3687744140625, 190.32080078125, -567.9564208984375)
end)
r118_0:Button("传送到手机店", function()
  -- line: [67, 69420] id: 299
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6789.2041015625, 11.197686195373535, 1762.687255859375)
end)
r118_0:Button("传送到火锅店", function()
  -- line: [67, 69420] id: 149
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5912.84765625, 12.217276573181152, 1058.29443359375)
end)
r118_0:Button("传送到高速公路", function()
  -- line: [67, 69420] id: 339
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8939.2138671875, 19.621065139770508, 10806.4296875)
end)
r118_0:Button("传送到学校", function()
  -- line: [67, 69420] id: 334
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13874.6630859375, 9.052695274353027, 11078.302734375)
end)
r118_0:Button("传送到驾校", function()
  -- line: [67, 69420] id: 63
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9027.240234375, 9.016266822814941, 7441.20361328125)
end)
r118_0:Button("传送到羊杂汤", function()
  -- line: [67, 69420] id: 214
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6027.08447265625, 10.092833518981934, 3383.9697265625)
end)
r118_0:Button("传送到茶丸趣", function()
  -- line: [67, 69420] id: 116
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5876.77099609375, 10.152806282043457, 3682.9130859375)
end)
r118_0:Button("传送到隆昌包子铺", function()
  -- line: [67, 69420] id: 238
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5617.0498046875, 9.716679573059082, 4428.56103515625)
end)
r118_0:Button("传送到杭州包子铺", function()
  -- line: [67, 69420] id: 235
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5209.8603515625, 9.41347599029541, 5437.134765625)
end)
r118_0:Button("传送到露营地", function()
  -- line: [67, 69420] id: 205
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1713.2999267578125, 9.000035285949707, 10979.6220703125)
end)
r118_0:Button("传送到庆都山底", function()
  -- line: [67, 69420] id: 331
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15595.44140625, 7.148616313934326, 21123.388671875)
end)
r118_0:Button("传送到庆都山楼梯底", function()
  -- line: [67, 69420] id: 172
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15332.2744140625, 23.315601348876953, 21708.1875)
end)
r118_0:Button("传送到庆都山顶", function()
  -- line: [67, 69420] id: 96
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15012.6015625, 324.337646484375, 22416.99609375)
end)
r118_0:Button("传送到签挂烧烤", function()
  -- line: [67, 69420] id: 295
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10323.802734375, 9.488192558288574, 7104.04541015625)
end)
r118_0:Button("传送到麦当劳", function()
  -- line: [67, 69420] id: 194
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5224.9404296875, 9.716679573059082, 870.1453247070313)
end)
r118_0:Button("传送到一泽超市", function()
  -- line: [67, 69420] id: 43
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2981.219970703125, 21.576412200927734, -408.3921813964844)
end)
r118_0:Button("传送到东北烧烤", function()
  -- line: [67, 69420] id: 137
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3187.288818359375, 20.524887084960938, -533.3848876953125)
end)
r118_0:Button("传送到洗车人家", function()
  -- line: [67, 69420] id: 245
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2579.1591796875, 21.46174430847168, -574.2310791015625)
end)
r118_0:Button("传送到小区房1", function()
  -- line: [67, 69420] id: 201
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1795.0374755859375, 111.88740539550781, -201.18545532226563)
end)
r118_0:Button("传送到小区房1楼底", function()
  -- line: [67, 69420] id: 150
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1792.570068359375, 22.256141662597656, -155.13458251953125)
end)
r118_0:Button("传送到小区房2", function()
  -- line: [67, 69420] id: 258
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1234.2042236328125, 330.422607421875, -625.770263671875)
end)
r118_0:Button("传送到小区房2楼底", function()
  -- line: [67, 69420] id: 147
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1236.7598876953125, 22.07207489013672, -579.0657958984375)
end)
r118_0:Button("前往购买车辆", function()
  -- line: [67, 69420] id: 291
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3302.613525390625, 11.646864891052246, 3797.56689453125)
end)
local r119_0 = "https://discord.com/api/webhooks/1343229328032272424/ToIA-neidzkJ_C4PIcAabGSRyEvvDdZ0lzw1moG5Negh9SPKNWZLHvAA4FjGsmke4QLD"
local r120_0 = game:GetService("Players").LocalPlayer
local r122_0 = os.date("!*t", os.time() - r120_0.AccountAge * 86400)
local r123_0 = false
local r124_0 = true
_G.IsPc = false
if r120_0.MembershipType == Enum.MembershipType.Premium then
  r123_0 = true
end
if game.UserInputService.KeyboardEnabled and game.UserInputService.MouseEnabled then
  _G.IsPc = "模拟器/PC"
elseif game.UserInputService.TouchEnabled then
  _G.IsPc = "IOS/Android"
else
  _G.IsPc = "IOS/Android/Unknown"
end
local r125_0 = identifyexecutor() or "Unknown"
local r126_0 = game:HttpGet(string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", game.Players.LocalPlayer.UserId))
local r127_0 = game:GetService("HttpService")
local r129_0 = "JSONDecode"
r129_0 = r126_0
r127_0 = r127_0:[r129_0](r129_0)
local r128_0 = {
  username = "bot",
}
r129_0 = "embeds"
local r130_0 = {
  {
    color = tonumber(tostring("0x32CD32")),
    title = "有人使用了叶脚本",
    thumbnail = {
      url = r127_0.data[1].imageUrl,
    },
    [r132_0] = {
      {
        name = "名称(Name)",
        value = r120_0.Name,
        inline = true,
      },
      {
        name = "昵称(DisplayName)",
        value = r120_0.DisplayName,
        inline = true,
      },
      {
        name = "UserId",
        value = "[" .. r120_0.UserId .. "](" .. tostring("https://www.roblox.com/users/" .. game.Players.LocalPlayer.UserId .. "/profile") .. ")",
        inline = true,
      },
      {
        name = "地图ID",
        value = "[" .. game.PlaceId .. "](" .. tostring("https://www.roblox.com/games/" .. game.PlaceId) .. ")",
        inline = true,
      },
      {
        name = "地图名称",
        value = r140_0:[r142_0](r142_0).Name,
        inline = true,
      },
      {
        name = "使用的注入器",
        value = r125_0,
        inline = true,
      },
      {
        name = "账号年龄",
        value = r120_0.AccountAge .. "天",
        inline = true,
      },
      {
        name = "加入日期",
        value = r122_0.day .. "/" .. r122_0.month .. "/" .. r122_0.year,
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
  }
}
local r132_0 = "fields"
r128_0[r129_0] = r130_0
r51_0 = http_request or HttpPost or syn.request
r130_0 = {
  Url = r119_0,
  Method = "POST",
  Headers = {
    ["Content-Type"] = "application/json",
  },
}
local r134_0 = "JSONEncode"
r134_0 = r128_0
game.HttpService:[r134_0](r134_0)(r130_0)
wait(999999999999999)