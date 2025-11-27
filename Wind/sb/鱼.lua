local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/123fa98/Xi_Pro/refs/heads/main/UI.lua"))()


WindUI:AddTheme({
  Name = "Halloween",
  Accent = "#3c0b0b",
  Outline = "#ff0000",
  Text = "#FFFFFF",
  PlaceholderText = "#AAAAAA",
})

local Window = WindUI:CreateWindow({
  Title = "空云丨FISCH",
  Icon = "rbxassetid://1070643268",
  Author = "V1.0",
  Folder = "CloudHub",
  Size = UDim2.fromOffset(600, 350),
  Transparent = false,
  Theme = "Halloween",
  SideBarWidth = 200,
  HasOutline = true,
})
Window:EditOpenButton({
  Title = "开启",
  Color = ColorSequence.new(Color3.fromHex("2C2C2C"), Color3.fromHex("FFFFFF")),
  HoverColor = ColorSequence.new(Color3.fromHex("1A1A1A"), Color3.fromHex("D9D9D9")),
  PressedColor = ColorSequence.new(Color3.fromHex("000000"), Color3.fromHex("BFBFBF")),
  BorderColor = Color3.fromRGB(0, 0, 0),
  BorderTransparency = 0.5,
  BorderSize = 2,
  CornerRadius = UDim.new(0, 12),
  Font = Enum.Font.ArialBold,
  TextSize = 18,
  Size = UDim2.new(0.7, 0, 0.12, 0),
  Position = UDim2.new(0.15, 0, 0.85, 0),
  Icon = "rbxassetid://1070643268",
  IconSize = 24,
  ShadowColor = Color3.fromRGB(0, 0, 0),
  ShadowTransparency = 0.5,
  ShadowOffset = Vector2.new(2, 2),
})
WindUI:Notify({
  Title = "加载完成",
  Content = "欢迎使用",
  Icon = "droplet",
  Duration = 3,
})
local dataTable = {}
ReplicatedStorage = game:GetService("ReplicatedStorage")
local buyPurchaseEvent = ReplicatedStorage:FindFirstChild("events") and ReplicatedStorage.events:FindFirstChild("purchase")
local buySelectedItem, buyItemQuantity = "None", 1
local buySelectedRod = "None"
local function getBuyResourceList(t)
  local r = ReplicatedStorage:FindFirstChild("resources")
  if not r then return {} end
  local f = r:FindFirstChild(t)
  if not f then return {} end
  local list = {}
  for _, c in ipairs(f:GetChildren()) do
    if c:IsA("Folder") then table.insert(list, c.Name) end
  end
  return list
end
local function buyFromMerlin(n)
  local w = workspace:FindFirstChild("world")
  if not w then return end
  local npcs = w:FindFirstChild("npcs")
  if not npcs then return end
  local m = npcs:FindFirstChild("Merlin")
  if not m then return end
  local mm = m:FindFirstChild("Merlin")
  if not mm then return end
  local r = mm:FindFirstChild(n)
  if r then r:InvokeServer() end
end
local buyItemList = getBuyResourceList("items")
if #buyItemList == 0 then table.insert(buyItemList, "None") end
buySelectedItem = buyItemList[1]
local buyRodList = getBuyResourceList("rods")
if #buyRodList == 0 then table.insert(buyRodList, "None") end
buySelectedRod = buyRodList[1]
HttpService = game:GetService("HttpService")
local settingsFolderName = "WindUI"
if makefolder then makefolder(settingsFolderName) end
local function saveSettings(fileName, data)
  if writefile then
    writefile(settingsFolderName .. "/" .. fileName .. ".json", HttpService:JSONEncode(data))
  end
end
local function loadSettings(fileName)
  if isfile and readfile then
    local filePath = settingsFolderName .. "/" .. fileName .. ".json"
    if isfile(filePath) then
      local fileContent = readfile(filePath)
      if fileContent then
        local success, decodedData = pcall(function()
          return HttpService:JSONDecode(fileContent)
        end)
        if success then return decodedData end
      end
    end
  end
  return nil
end
local function listSettingsFiles()
  local fileList = {}
  if listfiles then
    for _, filePath in ipairs(listfiles(settingsFolderName)) do
      local fileName = filePath:match("([^/]+)%.json$")
      if fileName then table.insert(fileList, fileName) end
    end
  end
  return fileList
end
local currentThemeName = WindUI:GetCurrentTheme()
local themes = WindUI:GetThemes()
local currentTheme = themes[currentThemeName]
local accentColor = (currentTheme and currentTheme.Accent and type(currentTheme.Accent) == "string" and currentTheme.Accent ~= "") and currentTheme.Accent or "#1e88e5"
local outlineColor = (currentTheme and currentTheme.Outline and type(currentTheme.Outline) == "string" and currentTheme.Outline ~= "") and currentTheme.Outline or "#ffffff"
local textColor = (currentTheme and currentTheme.Text and type(currentTheme.Text) == "string" and currentTheme.Text ~= "") and currentTheme.Text or "#ffffff"
local placeholderTextColor = (currentTheme and currentTheme.PlaceholderText and type(currentTheme.PlaceholderText) == "string" and currentTheme.PlaceholderText ~= "") and currentTheme.PlaceholderText or "#808080"
local function updateTheme()
  WindUI:AddTheme({
    Name = currentThemeName,
    Accent = accentColor,
    Outline = outlineColor,
    Text = textColor,
    PlaceholderText = placeholderTextColor,
  })
  WindUI:SetTheme(currentThemeName)
end
local themeList = {}
for tn, td in pairs(WindUI:GetThemes()) do
  table.insert(themeList, tn)
end
local feedbackParagraph1, feedbackParagraph2, themeNameInput, transparencyToggle, settingsFileName, fileDropdown
Players = game:GetService("Players")
Lighting = game:GetService("Lighting")
GuiService = game:GetService("GuiService")
VirtualInputManager = game:GetService("VirtualInputManager")
UserInputService = game:GetService("UserInputService")
MarketplaceService = game:GetService("MarketplaceService")
RbxAnalyticsService = game:GetService("RbxAnalyticsService")
RunService = game:GetService("RunService")
TweenService = game:GetService("TweenService")
ProximityPromptService = game:GetService("ProximityPromptService")
Workspace = game:GetService("Workspace")
local playerTeleportButtons = {}
local webhookUrl = [[https://discord.com/api/webhooks/1310067885267484763/dExL1AHg5i-XSgwKFJUmXN96J0fn3FpDz966w_RTISQJ0NMhnbBiX1-OLuRpSt3h6mNA]]
LocalPlayer = Players.LocalPlayer
local feedbackCurrentTime = os.time()
local feedbackJoinDateTable = os.date("*t", os.time() - LocalPlayer.AccountAge * 86400 + os.difftime(feedbackCurrentTime, os.time(os.date("!*t", feedbackCurrentTime))))
local feedbackJoinDateString = string.format("%02d/%02d/%d %02d:%02d:%02d", feedbackJoinDateTable.day, feedbackJoinDateTable.month, feedbackJoinDateTable.year, feedbackJoinDateTable.hour, feedbackJoinDateTable.min, feedbackJoinDateTable.sec)
local feedbackIsPremium = LocalPlayer.MembershipType == Enum.MembershipType.Premium
local feedbackDeviceType = nil
if UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
  feedbackDeviceType = "模拟器/PC"
elseif UserInputService.TouchEnabled then
  feedbackDeviceType = "IOS/Android"
else
  feedbackDeviceType = "IOS/Android/Unknown"
end
local feedbackExecutorName = "Unknown"
if identifyexecutor then feedbackExecutorName = identifyexecutor() or "Unknown" end
local feedbackHwid = "Unknown"
if gethwid then feedbackHwid = gethwid() or "Unknown" end
local feedbackAvatarResponse = nil
local feedbackAvatarImageUrl = ""
pcall(function()
  feedbackAvatarResponse = game:HttpGet(string.format([[https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true]], LocalPlayer.UserId))
  if feedbackAvatarResponse then
    local decodedResponse = HttpService:JSONDecode(feedbackAvatarResponse)
    if decodedResponse and decodedResponse.data and decodedResponse.data[1] then
      feedbackAvatarImageUrl = decodedResponse.data[1].imageUrl or ""
    end
  end
end)
local TextChatService = game:GetService("TextChatService")
local isAutoSendingEnabled = false
local chatMessage = "默认消息"
local sendCount = 1
local sendInterval = 1
local function sendChatMessage(message)
  if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
    local generalChannel = TextChatService:FindFirstChild("TextChannels")
    if generalChannel then
      local rbxGeneral = generalChannel:FindFirstChild("RBXGeneral")
      if rbxGeneral then rbxGeneral:SendAsync(message) end
    end
  else
    local defaultChatEvents = ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
    if defaultChatEvents then
      local sayMessageRequest = defaultChatEvents:FindFirstChild("SayMessageRequest")
      if sayMessageRequest then sayMessageRequest:FireServer(message, "All") end
    end
  end
end

local InfoTab = Window:Tab({
  Title = "信息",
  Icon = "frown",
})

local MainTab = Window:Tab({
  Title = "主要功能",
  Icon = "house",
})

local SubTab = Window:Tab({
  Title = "副功能",
})

local SellTab = Window:Tab({
  Title = "出售功能",
})

local TeleportTab = Window:Tab({
  Title = "传送",
})

local TPTab = Window:Tab({
  Title = "TP",
})

local BuyTab = Window:Tab({
  Title = "购买",
})

local FeedbackTab = Window:Tab({
  Title = "反馈",
})

Window:Divider()

local ChatTab = Window:Tab({
  Title = "发言功能",
})

local GuideTab = Window:Tab({
  Title = "攻略",
})

Window:Divider()

local SettingsTab = Window:Tab({
  Title = "窗口和文件配置",
  Icon = "settings",
})

local ThemeTab = Window:Tab({
  Title = "自定义主题",
  Icon = "palette",
})

InfoTab:Section({
  Title = "qq群",
  TextSize = 22,
})

InfoTab:Section({
  Title = "空云脚本交流群",
  TextXAlignment = "Left",
})

InfoTab:Section({
  Title = "942272935",
  TextXAlignment = "Center",
})

local accountAge = LocalPlayer.AccountAge
local currentTime = os.time()

InfoTab:Section({
  Title = "你的用户名: " .. LocalPlayer.Name,
  TextXAlignment = Enum.TextXAlignment.Center,
})

InfoTab:Section({
  Title = "账号天数: " .. accountAge .. " 天",
  TextXAlignment = Enum.TextXAlignment.Center,
})

InfoTab:Button({
  Title = "重新进入",
  Callback = function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
  end,
})

local heroButton = InfoTab:Button({
  Title = "通用",
  Desc = "选择",
  Callback = function()
    HeroDialog:Open()
  end,
})

InfoTab:Button({
  Title = "RTX自定义",
  Callback = function()
    loadstring(game:HttpGet([[https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua]]))()
  end,
})

MainTab:Section({
  Title = "自动区",
})

local isAppraisingEnabled = false

local function appraiseRoutine()
  local appraiserNPC = workspace:WaitForChild("world"):WaitForChild("npcs"):FindFirstChild("Appraiser")
  if appraiserNPC and appraiserNPC:FindFirstChild("appraiser") and appraiserNPC.appraiser:FindFirstChild("appraise") then
    appraiserNPC.appraiser.appraise:InvokeServer()
  end
end

MainTab:Toggle({
  Title = "远程鉴定(用鱼复制鱼)",
  Callback = function(enabled)
    isAppraisingEnabled = enabled
    if isAppraisingEnabled then
      table.insert(dataTable, game:GetService("RunService").Stepped:Connect(appraiseRoutine))
    else
      for _, connection in ipairs(dataTable) do
        connection:Disconnect()
      end
      dataTable = {}
    end
  end,
})
local isAutoAppraisingEnabled = false
local autoAppraiseConnection = nil

MainTab:Toggle({
  Title = "远程自动鉴定",
  Callback = function(enabled)
    isAutoAppraisingEnabled = enabled
    if isAutoAppraisingEnabled then
      autoAppraiseConnection = game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
          workspace.world.npcs.Appraiser.appraiser.appraise:InvokeServer()
        end)
        task.wait(5)
      end)
    elseif autoAppraiseConnection then
      autoAppraiseConnection:Disconnect()
      autoAppraiseConnection = nil
    end
  end,
})

local isFastFishingEnabled = false
local fastFishingCoroutine = nil

MainTab:Toggle({
  Title = "快速钓鱼（防完美钓鱼）",
  Callback = function(enabled)
    isFastFishingEnabled = enabled
    if isFastFishingEnabled then
      fastFishingCoroutine = coroutine.create(function()
        while isFastFishingEnabled do
          local reelParams = {
            [1] = 1000,
            [2] = false,
          }
          game:GetService("ReplicatedStorage").events.reelfinished:FireServer(unpack(reelParams))
          task.wait(0.1)
        end
      end)
      coroutine.resume(fastFishingCoroutine)
    elseif fastFishingCoroutine then
      coroutine.close(fastFishingCoroutine)
      fastFishingCoroutine = nil
    end
  end,
})
local isPerfectFishingEnabled = false
local perfectFishingTask = nil

MainTab:Toggle({
  Title = "快速钓鱼（完美钓鱼）",
  Callback = function(enabled)
    isPerfectFishingEnabled = enabled
    if isPerfectFishingEnabled then
      print("快速钓鱼已启用")
      perfectFishingTask = task.spawn(function()
        while isPerfectFishingEnabled do
          local reelParams = {
            [1] = 1000000000000000000000000,
            [2] = true,
          }
          game:GetService("ReplicatedStorage").events.reelfinished:FireServer(unpack(reelParams))
          task.wait(0.1)
        end
      end)
    else
      print("快速钓鱼已禁用")
      if perfectFishingTask then
        task.cancel(perfectFishingTask)
        perfectFishingTask = nil
      end
    end
  end,
})

local isTrackingWhiteBlockEnabled = false

local function trackWhiteBlock()
  local reelGui = LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("reel")
  if reelGui and reelGui:FindFirstChild("bar") then
    local playerBar = reelGui.bar:FindFirstChild("playerbar")
    local fishBar = reelGui.bar:FindFirstChild("fish")
    if playerBar and fishBar then
      playerBar.Position = fishBar.Position
    end
  end
end

MainTab:Toggle({
  Title = "追踪白块",
  Callback = function(enabled)
    isTrackingWhiteBlockEnabled = enabled
    if isTrackingWhiteBlockEnabled then
      table.insert(dataTable, game:GetService("RunService").RenderStepped:Connect(trackWhiteBlock))
    else
      for _, connection in ipairs(dataTable) do
        connection:Disconnect()
      end
      dataTable = {}
    end
  end,
})

local function getRodTool()
  local character = LocalPlayer.Character
  if not character then
    return nil
  end
  for _, child in ipairs(character:GetChildren()) do
    if child:IsA("Tool") and (child.Name:find("rod") or child.Name:find("Rod")) then
      return child
    end
  end
  return nil
end

local isAutoShakeEnabled = false
local autoShakeConnections = {}

local function clickButton(button)
  GuiService.SelectedObject = button
  VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
  VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
end

local function setupAutoShake()
  local playerGui = LocalPlayer:WaitForChild("PlayerGui")
  table.insert(autoShakeConnections, playerGui.DescendantAdded:Connect(function(descendant)
    if isAutoShakeEnabled and descendant.Name == "button" and descendant.Parent and descendant.Parent.Name == "safezone" and descendant.Parent.Parent and descendant.Parent.Parent.Name == "shakeui" then
      table.insert(autoShakeConnections, task.spawn(function()
        while isAutoShakeEnabled do
          local buttonParent = descendant.Parent
          if buttonParent then
            clickButton(descendant)
            task.wait()
          else
            break
          end
        end
      end))
    end
  end))
end

local function cleanupAutoShake()
  for _, connection in ipairs(autoShakeConnections) do
    if typeof(connection) == "RBXScriptConnection" then
      connection:Disconnect()
    elseif typeof(connection) == "thread" then
      task.cancel(connection)
    end
  end
  autoShakeConnections = {}
end

MainTab:Toggle({
  Title = "快速摇晃",
  Callback = function(enabled)
    isAutoShakeEnabled = enabled
    if isAutoShakeEnabled then
      setupAutoShake()
    else
      cleanupAutoShake()
    end
  end,
})
local isAutoCastEnabled = false

MainTab:Toggle({
  Title = "自动抛竿",
  Callback = function(enabled)
    isAutoCastEnabled = enabled
    print("自动抛竿开启状态: ", enabled)
    if isAutoCastEnabled then
      task.spawn(function()
        while isAutoCastEnabled do
          local function findRod()
            local character = LocalPlayer.Character
            if not character then
              return nil
            end
            for _, child in ipairs(character:GetChildren()) do
              if child:IsA("Tool") and (child.Name:find("rod") or child.Name:find("Rod")) then
                return child
              end
            end
            return nil
          end
          
          (function()
            local rod = findRod()
            if not rod then
              warn("没有找到钓鱼竿！")
              return
            end
            local castParams = {
              [1] = 100,
              [2] = 1,
            }
            if rod:FindFirstChild("events") and rod.events:FindFirstChild("cast") then
              rod.events.cast:FireServer(unpack(castParams))
              print("成功抛竿！")
            else
              warn("钓鱼竿没有正确的抛竿事件！")
            end
          end)()
          task.wait(0.1)
        end
      end)
    else
      print("自动抛竿已禁用")
    end
  end,
})
local isAFKFishingEnabled = false

MainTab:Toggle({
  Title = "挂机钓鱼",
  Callback = function(enabled)
    isAFKFishingEnabled = enabled
    print("挂机钓鱼状态:", enabled)
    local config = {
      fpsCap = 9999,
      disableChat = true,
      enableBigButton = true,
      bigButtonScaleFactor = 2,
      shakeSpeed = 0.5,
      FreezeWhileFishing = true,
    }
    setfpscap(config.fpsCap)
    local PlayerGui = LocalPlayer.PlayerGui
    local utils = {
      blacklisted_attachments = {
        "bob",
        "bodyweld"
      },
      simulate_click = function(x, y, button)
        VirtualInputManager:SendMouseButtonEvent(x, y, button - 1, true, game, 1)
        VirtualInputManager:SendMouseButtonEvent(x, y, button - 1, false, game, 1)
      end,
      move_fix = function(instance)
        for _, descendant in instance:GetDescendants() do
          if descendant.ClassName == "Attachment" and table.find(utils.blacklisted_attachments, descendant.Name) then
            descendant:Destroy()
          end
        end
      end,
    }
    local fishingSystem = {
      reel_tick = nil,
      cast_tick = nil,
      find_rod = function()
        local character = LocalPlayer.Character
        if not character then
          return nil
        end
        for _, child in ipairs(character:GetChildren()) do
          if child:IsA("Tool") and (child.Name:find("rod") or child.Name:find("Rod")) then
            return child
          end
        end
        return nil
      end,
      freeze_character = function(freeze)
        local character = LocalPlayer.Character
        if character then
          local humanoid = character:FindFirstChildOfClass("Humanoid")
          if humanoid then
            if freeze then
              humanoid.WalkSpeed = 0
              humanoid.JumpPower = 0
              character:SetPrimaryPartCFrame(character.PrimaryPart.CFrame)
            else
              humanoid.WalkSpeed = 16
              humanoid.JumpPower = 50
            end
          end
        end
      end,
      cast = function()
        local rod = fishingSystem.find_rod()
        if not rod then
          return
        end
        local castParams = {
          [1] = 100,
          [2] = 1,
        }
        if rod:FindFirstChild("events") and rod.events:FindFirstChild("cast") then
          rod.events.cast:FireServer(unpack(castParams))
          print("成功抛竿！")
        else
          warn("钓鱼竿事件不存在！")
        end
        fishingSystem.cast_tick = 0
      end,
      shake = function()
        local shakeUI = PlayerGui:FindFirstChild("shakeui")
        if shakeUI then
          local safeZone = shakeUI:FindFirstChild("safezone")
          local button = safeZone and safeZone:FindFirstChild("button")
          if button and button.Visible then
            if config.enableBigButton then
              button.Size = UDim2.new(config.bigButtonScaleFactor, 0, config.bigButtonScaleFactor, 0)
            else
              button.Size = UDim2.new(1, 0, 1, 0)
            end
            utils.simulate_click(button.AbsolutePosition.X + button.AbsoluteSize.X / 2, button.AbsolutePosition.Y + button.AbsoluteSize.Y / 2, 1)
          end
        end
      end,
      reel = function()
        local reelParams = {
          [1] = 1000,
          [2] = false,
        }
        if ReplicatedStorage:FindFirstChild("events") and ReplicatedStorage.events:FindFirstChild("reelfinished") then
          ReplicatedStorage.events.reelfinished:FireServer(unpack(reelParams))
          print("成功完成收竿！")
        else
          warn("未找到收竿事件！")
        end
      end,
    }
    task.spawn(function()
      while isAFKFishingEnabled do
        task.wait(config.shakeSpeed)
        local rod = fishingSystem.find_rod()
        if rod then
          if config.FreezeWhileFishing then
            fishingSystem.freeze_character(true)
          end
          fishingSystem.cast()
          fishingSystem.shake()
          fishingSystem.reel()
        else
          fishingSystem.freeze_character(false)
        end
      end
      if not isAFKFishingEnabled then
        fishingSystem.freeze_character(false)
      end
    end)
  end,
})
local isAFKFishingV2Enabled = false
local afkFishingV2Connections = {}

local function clickButton(button)
  GuiService.SelectedObject = button
  VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
  VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
end

local function setupAFKFishingV2()
  local playerGui = LocalPlayer:WaitForChild("PlayerGui")
  table.insert(afkFishingV2Connections, playerGui.DescendantAdded:Connect(function(descendant)
    if isAFKFishingV2Enabled and descendant.Name == "button" and descendant.Parent and descendant.Parent.Name == "safezone" and descendant.Parent.Parent and descendant.Parent.Parent.Name == "shakeui" then
      table.insert(afkFishingV2Connections, task.spawn(function()
        while isAFKFishingV2Enabled do
          local buttonParent = descendant.Parent
          if buttonParent then
            clickButton(descendant)
            task.wait()
          else
            break
          end
        end
      end))
    end
  end))
  for _, existingDescendant in ipairs(playerGui:GetDescendants()) do
    if isAFKFishingV2Enabled and existingDescendant.Name == "button" and existingDescendant.Parent and existingDescendant.Parent.Name == "safezone" and existingDescendant.Parent.Parent and existingDescendant.Parent.Parent.Name == "shakeui" then
      table.insert(afkFishingV2Connections, task.spawn(function()
        while isAFKFishingV2Enabled do
          local buttonParent = existingDescendant.Parent
          if buttonParent then
            clickButton(existingDescendant)
            task.wait()
          else
            break
          end
        end
      end))
    end
  end
end

local function cleanupAFKFishingV2(connections)
  for _, connection in ipairs(connections) do
    if typeof(connection) == "RBXScriptConnection" then
      connection:Disconnect()
    elseif typeof(connection) == "thread" then
      task.cancel(connection)
    end
  end
  afkFishingV2Connections = {}
end
MainTab:Toggle({
  Title = "挂机钓鱼v2",
  Callback = function(enabled)
    isAFKFishingV2Enabled = enabled
    if not enabled then
      cleanupAFKFishingV2(afkFishingV2Connections)
      return
    end
    local config = {
      fpsCap = 144,
      FreezeWhileFishing = true,
      FishingInterval = 1,
    }
    setfpscap(config.fpsCap)
    local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
    local utils = {
      simulate_click = function(x, y, button)
        VirtualInputManager:SendMouseButtonEvent(x, y, button - 1, true, game, 1)
        VirtualInputManager:SendMouseButtonEvent(x, y, button - 1, false, game, 1)
      end,
    }
    local fishingSystem = {
      find_rod = function()
        local character = LocalPlayer.Character
        if not character then
          return nil
        end
        for _, child in ipairs(character:GetChildren()) do
          if child:IsA("Tool") and (child.Name:find("rod") or child.Name:find("Rod")) then
            return child
          end
        end
        return nil
      end,
      freeze_character = function(freeze)
        local character = LocalPlayer.Character
        if character then
          local humanoid = character:FindFirstChildOfClass("Humanoid")
          if humanoid then
            if freeze then
              humanoid.WalkSpeed = 0
              humanoid.JumpPower = 0
            else
              humanoid.WalkSpeed = 16
              humanoid.JumpPower = 50
            end
          end
        end
      end,
      cast = function()
        local rod = fishingSystem.find_rod()
        if not rod then
          return
        end
        rod.events.cast:FireServer(unpack({
          [1] = 100,
          [2] = 1,
        }))
      end,
      reel = function()
        ReplicatedStorage.events.reelfinished:FireServer(unpack({
          [1] = 1000,
          [2] = false,
        }))
      end,
    }
    setupAFKFishingV2()
    while isAFKFishingV2Enabled do
      local rod = fishingSystem.find_rod()
      if rod then
        if config.FreezeWhileFishing then
          fishingSystem.freeze_character(true)
        end
        fishingSystem.cast()
        fishingSystem.reel()
      else
        fishingSystem.freeze_character(false)
      end
      task.wait(config.FishingInterval)
    end
    fishingSystem.freeze_character(false)
    cleanupAFKFishingV2(afkFishingV2Connections)
  end,
})
local currentFishingMode = nil
local fishingModeConnection = nil
local fishingMode = "普通钓鱼"
local isFishingModeEnabled = false
local fishingModeConnections = {}

local fishingModes = {
  ["普通钓鱼"] = function()
    game:GetService("ReplicatedStorage").events.reelfinished:FireServer(unpack({
      [1] = 1000,
      [2] = false,
    }))
  end,
  ["完美钓鱼"] = function()
    game:GetService("ReplicatedStorage").events.reelfinished:FireServer(unpack({
      [1] = 1000000000000000000000000,
      [2] = true,
    }))
  end,
}
local function clickButton(button)
  GuiService.SelectedObject = button
  VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
  VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
end
local function setupFishingV3()
  local playerGui = LocalPlayer:WaitForChild("PlayerGui")
  table.insert(fishingModeConnections, playerGui.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "button" and descendant.Parent and descendant.Parent.Name == "safezone" and descendant.Parent.Parent and descendant.Parent.Parent.Name == "shakeui" then
      table.insert(fishingModeConnections, task.spawn(function()
        while isFishingModeEnabled do
          local buttonParent = descendant.Parent
          if buttonParent then
            clickButton(descendant)
            task.wait()
          else
            break
          end
        end
      end))
    end
  end))
  for _, existingDescendant in ipairs(playerGui:GetDescendants()) do
    if existingDescendant.Name == "button" and existingDescendant.Parent and existingDescendant.Parent.Name == "safezone" and existingDescendant.Parent.Parent and existingDescendant.Parent.Parent.Name == "shakeui" then
      table.insert(fishingModeConnections, task.spawn(function()
        while isFishingModeEnabled do
          local buttonParent = existingDescendant.Parent
          if buttonParent then
            clickButton(existingDescendant)
            task.wait()
          else
            break
          end
        end
      end))
    end
  end
end

local function cleanupFishingV3()
  for _, connection in ipairs(fishingModeConnections) do
    if typeof(connection) == "RBXScriptConnection" then
      connection:Disconnect()
    elseif typeof(connection) == "thread" then
      task.cancel(connection)
    end
  end
  fishingModeConnections = {}
end

MainTab:Dropdown({
  Title = "选择钓鱼v3模式",
  Values = {
    "普通钓鱼",
    "完美钓鱼"
  },
  Callback = function(selected)
    fishingMode = selected
  end,
})

MainTab:Toggle({
  Title = "挂机钓鱼v3",
  Callback = function(enabled)
    isFishingModeEnabled = enabled
    if not enabled then
      if currentFishingMode then
        currentFishingMode:Disconnect()
        currentFishingMode = nil
      end
      cleanupFishingV3()
      fishingModeConnection = nil
      return
    end
    local config = {
      fpsCap = 999999,
      FreezeWhileFishing = true,
      FishingInterval = 0,
    }
    setfpscap(config.fpsCap)
    local function findRod()
      local character = LocalPlayer.Character
      if not character then
        return nil
      end
      for _, tool in ipairs(character:GetChildren()) do
        if tool:FindFirstChild("events") and tool.events:FindFirstChild("cast") then
          return tool
        end
      end
      return nil
    end
    local function castAndReel()
      local rod = findRod()
      if rod then
        rod.events.cast:FireServer(unpack({
          [1] = 1000000000000000000000000,
        }))
        if fishingModes[fishingMode] then
          fishingModes[fishingMode]()
        else
          print("无效钓鱼模式！")
        end
      else
        print("未找到钓鱼竿")
      end
    end
    local function freezeCharacter()
      local character = LocalPlayer.Character
      if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart and not currentFishingMode then
          fishingModeConnection = humanoidRootPart.CFrame
          currentFishingMode = RunService.RenderStepped:Connect(function()
            if humanoidRootPart and fishingModeConnection then
              humanoidRootPart.CFrame = fishingModeConnection
            end
          end)
        elseif humanoidRootPart and currentFishingMode then
          fishingModeConnection = humanoidRootPart.CFrame
        end
      end
    end
    local function unfreezeCharacter()
      if currentFishingMode then
        currentFishingMode:Disconnect()
        currentFishingMode = nil
      end
      fishingModeConnection = nil
    end
    setupFishingV3()
    task.spawn(function()
      while isFishingModeEnabled do
        local rod = findRod()
        if rod then
          if config.FreezeWhileFishing then
            freezeCharacter()
          end
          castAndReel()
        else
          unfreezeCharacter()
        end
        task.wait(config.FishingInterval)
      end
      unfreezeCharacter()
    end)
  end,
})
local freezeConnection = nil
local freezeCFrame = nil
MainTab:Toggle({
  Title = "冻结玩家位置",
  Callback = function(enabled)
    local humanoidRootPart = (LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
    if freezeConnection then
      freezeConnection:Disconnect()
      freezeConnection = nil
    end
    if enabled then
      freezeCFrame = humanoidRootPart.CFrame
      freezeConnection = game:GetService("RunService").RenderStepped:Connect(function()
        if humanoidRootPart and freezeCFrame then
          humanoidRootPart.CFrame = freezeCFrame
        end
      end)
    else
      freezeCFrame = nil
    end
  end,
})
MainTab:Button({
  Title = "47钓鱼",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/474375w/nocdyv/refs/heads/main/fish"))()
  end,
})
local purchaseDialog = Window:Dialog({
  Title = "警告！",
  Content = "使用后退出来将会回档，是否确认使用？",
  Buttons = {
    {
      Title = "确认",
      Callback = function()
        local function purchaseAllRods()
          local rodsFolder = game:GetService("ReplicatedStorage").resources.items.rods
          if not rodsFolder then
            warn("Folder Rods not found")
            return 
          end
          local purchaseEvent = game:GetService("ReplicatedStorage").events.purchase
          local price = math.huge
          for _, rodFolder in ipairs(rodsFolder:GetChildren()) do
            if rodFolder:IsA("Folder") then
              purchaseEvent:FireServer(rodFolder.Name, "Rod", nil, price)
            end
          end
        end
        purchaseAllRods()
        task.spawn(function()
          task.wait(1)
          purchaseAllRods()
        end)
      end,
    },
    {
      Title = "取消",
      Callback = function()
        print("cancel")
      end,
    }
  },
})
local purchaseButton = MainTab:Button({
  Title = "无限金钱和一键获取杆子",
  Desc = "建议用小号",
  Locked = true,
  Callback = function()
    purchaseDialog:Open()
  end,
})
MainTab:Section({
  Title = "随机钓鱼设置功能",
})
local normalFishingProbability = 50
local perfectFishingProbability = 50
local isRandomFishingEnabled = false
MainTab:Toggle({
  Title = "随机钓鱼",
  Callback = function(enabled)
    isRandomFishingEnabled = enabled
    if isRandomFishingEnabled then
      task.spawn(function()
        while isRandomFishingEnabled do
          local randomValue = math.random(1, 100)
          if randomValue <= perfectFishingProbability then
            game:GetService("ReplicatedStorage").events.reelfinished:FireServer(unpack({
              [1] = 1000000000000000000000000,
              [2] = true,
            }))
            print("执行完美钓鱼")
          else
            game:GetService("ReplicatedStorage").events.reelfinished:FireServer(unpack({
              [1] = 1000,
              [2] = false,
            }))
            print("执行普通钓鱼")
          end
          task.wait(0.1)
        end
      end)
    end
  end,
})
MainTab:Input({
  Title = "自定义普通钓鱼概率",
  Desc = "请输入普通钓鱼的概率 (0-100)",
  Callback = function(input)
    local probability = tonumber(input)
    if probability and probability >= 0 and probability <= 100 then
      normalFishingProbability = probability
      perfectFishingProbability = 100 - probability
      WindUI:Notify({
        Title = "设置成功",
        Content = "普通钓鱼概率设置为 " .. normalFishingProbability .. "%，完美钓鱼概率设置为 " .. perfectFishingProbability .. "%",
        Icon = "gear",
        Duration = 5,
      })
    else
      WindUI:Notify({
        Title = "错误",
        Content = "输入的概率值无效，请输入 0 到 100 之间的数字",
        Icon = "alert",
        Duration = 5,
      })
    end
  end,
})
MainTab:Input({
  Title = "自定义完美钓鱼概率",
  Desc = "请输入完美钓鱼的概率 (0-100)",
  Callback = function(input)
    local probability = tonumber(input)
    if probability and probability >= 0 and probability <= 100 then
      perfectFishingProbability = probability
      normalFishingProbability = 100 - probability
      WindUI:Notify({
        Title = "设置成功",
        Content = "完美钓鱼概率设置为 " .. perfectFishingProbability .. "%，普通钓鱼概率设置为 " .. normalFishingProbability .. "%",
        Icon = "gear",
        Duration = 5,
      })
    else
      WindUI:Notify({
        Title = "错误",
        Content = "输入的概率值无效，请输入 0 到 100 之间的数字",
        Icon = "alert",
        Duration = 5,
      })
    end
  end,
})
MainTab:Section({
  Title = "玩家",
})
local fovSlider = MainTab:Slider({
  Title = "fov",
  Step = 1,
  Value = {
    Min = 20,
    Max = 120,
    Default = 70,
  },
  Callback = function(value)
    game.Workspace.Camera.FieldOfView = value
  end,
})
local speedSlider = MainTab:Slider({
  Title = "速度",
  Desc = "",
  Step = 1,
  Value = {
    Min = 16,
    Max = 500,
    Default = 16,
  },
  Callback = function(value)
    local character = LocalPlayer.Character
    if character then
      local humanoid = character:FindFirstChildOfClass("Humanoid")
      if humanoid then
        humanoid.WalkSpeed = value
      end
    end
  end,
})
local isInfiniteJumpEnabled = false
game:GetService("UserInputService").JumpRequest:Connect(function()
  if isInfiniteJumpEnabled then
    local character = LocalPlayer.Character
    if character then
      local humanoid = character:FindFirstChildOfClass("Humanoid")
      if humanoid then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
      end
    end
  end
end)
MainTab:Toggle({
  Title = "无限跳跃",
  Callback = function(enabled)
    isInfiniteJumpEnabled = enabled
  end,
})
MainTab:Section({
  Title = "坐标传送",
})
local teleportX = 0
local teleportY = 0
local teleportZ = 0
local xInput = MainTab:Input({
  Title = "X坐标",
  Desc = "请输入X坐标",
  Callback = function(input)
    teleportX = tonumber(input) or 0
    warn("X坐标: " .. teleportX)
  end,
})
local yInput = MainTab:Input({
  Title = "Y坐标",
  Desc = "请输入Y坐标",
  Callback = function(input)
    teleportY = tonumber(input) or 0
    warn("Y坐标: " .. teleportY)
  end,
})
local zInput = MainTab:Input({
  Title = "Z坐标",
  Desc = "请输入Z坐标",
  Callback = function(input)
    teleportZ = tonumber(input) or 0
    warn("Z坐标: " .. teleportZ)
  end,
})
MainTab:Button({
  Title = "传送",
  Callback = function()
    if teleportX and teleportY and teleportZ then
      local character = LocalPlayer.Character
      if character and character.PrimaryPart then
        character:SetPrimaryPartCFrame(CFrame.new(teleportX, teleportY, teleportZ))
        warn("玩家已传送到坐标: (" .. teleportX .. ", " .. teleportY .. ", " .. teleportZ .. ")")
      end
    end
  end,
})
local antiAFKConnection = nil
local idleConnection = nil
SubTab:Toggle({
  Title = "AFK",
  Callback = function(enabled)
    if enabled then
      local VirtualUser = game:GetService("VirtualUser")
      local RunService = game:GetService("RunService")
      local lastClickTime = tick()
      
      idleConnection = LocalPlayer.Idled:Connect(function()
        pcall(function()
          VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
          task.wait(1)
          VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end)
      end)
      
      antiAFKConnection = RunService.PreRender:Connect(function()
        if tick() - lastClickTime >= 900 then
          pcall(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
          end)
          lastClickTime = tick()
        end
      end)
    else
      if antiAFKConnection then
        antiAFKConnection:Disconnect()
        antiAFKConnection = nil
      end
      if idleConnection then
        idleConnection:Disconnect()
        idleConnection = nil
      end
    end
  end,
})
local autoInteractDescendantConnection = nil
local autoInteractPromptConnection = nil
SubTab:Toggle({
  Title = "自动互动",
  Callback = function(enabled)
    local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
    
    local function clickButton(button)
      if button then
        GuiService.SelectedObject = button
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
      end
    end
    
    local function pressE()
      VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
      VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
    end
    
    local function setupDescendantListener()
      autoInteractDescendantConnection = PlayerGui.DescendantAdded:Connect(function(descendant)
        if enabled and descendant.Name == "ButtonImage" then
          task.spawn(function()
            while enabled do
              if descendant and descendant.Parent then
                clickButton(descendant)
                pressE()
                task.wait(0.2)
              else
                break
              end
            end
          end)
        end
      end)
    end
    
    if enabled then
      autoInteractPromptConnection = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
        if enabled then
          prompt.HoldDuration = 0
        end
      end)
      setupDescendantListener()
    else
      if autoInteractPromptConnection then
        autoInteractPromptConnection:Disconnect()
        autoInteractPromptConnection = nil
      end
      if autoInteractDescendantConnection then
        autoInteractDescendantConnection:Disconnect()
        autoInteractDescendantConnection = nil
      end
    end
    
    Players.PlayerRemoving:Connect(function(player)
      if player == LocalPlayer then
        if autoInteractPromptConnection then
          autoInteractPromptConnection:Disconnect()
        end
        if autoInteractDescendantConnection then
          autoInteractDescendantConnection:Disconnect()
        end
      end
    end)
  end,
})
local isRemoveFogEnabled = false
SubTab:Toggle({
  Title = "删除雾",
  Value = isRemoveFogEnabled,
  Callback = function(enabled)
    isRemoveFogEnabled = enabled
    local sky = Lighting:FindFirstChild("Sky")
    local bloom = Lighting:FindFirstChild("bloom")
    if isRemoveFogEnabled and sky and bloom then
      sky.Parent = bloom
    elseif bloom and bloom:FindFirstChild("Sky") then
      bloom.Sky.Parent = Lighting
    end
  end,
})
local isKeepDaytimeEnabled = false
local keepDaytimeConnection = nil
SubTab:Toggle({
  Title = "保持白天",
  Value = isKeepDaytimeEnabled,
  Callback = function(enabled)
    isKeepDaytimeEnabled = enabled
    if keepDaytimeConnection then
      keepDaytimeConnection:Disconnect()
      keepDaytimeConnection = nil
    end
    if isKeepDaytimeEnabled then
      Lighting.ClockTime = 12
      keepDaytimeConnection = Lighting:GetPropertyChangedSignal("ClockTime"):Connect(function()
        if isKeepDaytimeEnabled then
          Lighting.ClockTime = 12
        end
      end)
    end
  end,
})
local isAutoSkinCrateEnabled = false
SubTab:Toggle({
  Title = "自动开皮肤开箱",
  Value = isAutoSkinCrateEnabled,
  Callback = function(enabled)
    isAutoSkinCrateEnabled = enabled
    if isAutoSkinCrateEnabled then
      task.spawn(function()
        while isAutoSkinCrateEnabled do
          task.wait(0.1)
          pcall(function()
            local requestSpin = game:GetService("ReplicatedStorage").packages.Net:FindFirstChild("RF/SkinCrates/RequestSpin")
            if requestSpin then
              requestSpin:InvokeServer({
                skipAnimation = true,
              })
            end
          end)
        end
      end)
    end
  end,
})
local isDisableOxygenEnabled = false
local disableOxygenConnection = nil
local function updateOxygenForAllPlayers()
  for _, player in pairs(Players:GetPlayers()) do
    local character = workspace:FindFirstChild(player.Name)
    if character and character:FindFirstChild("oxygen") then
      character.oxygen.Disabled = isDisableOxygenEnabled
    end
  end
end
SubTab:Toggle({
  Title = "禁用氧气",
  Value = isDisableOxygenEnabled,
  Callback = function(enabled)
    isDisableOxygenEnabled = enabled
    if disableOxygenConnection then
      disableOxygenConnection:Disconnect()
      disableOxygenConnection = nil
    end
    updateOxygenForAllPlayers()
    if isDisableOxygenEnabled then
      disableOxygenConnection = Players.PlayerAdded:Connect(function()
        task.wait(0.5)
        updateOxygenForAllPlayers()
      end)
    end
  end,
})
local isDisablePeakOxygenEnabled = false
SubTab:Toggle({
  Title = "禁用雪山氧气",
  Value = isDisablePeakOxygenEnabled,
  Callback = function(enabled)
    isDisablePeakOxygenEnabled = enabled
    for _, child in ipairs(workspace:GetChildren()) do
      if child:FindFirstChild("client") and child.client:FindFirstChild("oxygen(peaks)") then
        local oxygenPeaks = child.client["oxygen(peaks)"]
        if oxygenPeaks then
          oxygenPeaks.Disabled = isDisablePeakOxygenEnabled
          print("氧气状态已更新:", isDisablePeakOxygenEnabled)
          break
        end
      end
    end
  end,
})
local isShakeEnlargeEnabled = false
SubTab:Toggle({
  Title = "摇晃放大",
  Callback = function(enabled)
    isShakeEnlargeEnabled = enabled
    if isShakeEnlargeEnabled then
      task.spawn(function()
        while isShakeEnlargeEnabled do
          task.wait(0.5)
          local shakeUI = LocalPlayer.PlayerGui:FindFirstChild("shakeui")
          if shakeUI then
            local safezone = shakeUI:FindFirstChild("safezone")
            if safezone then
              local button = safezone:FindFirstChild("button")
              if button then
                button.Size = UDim2.new(2, 0, 2, 0)
              end
            end
          end
        end
      end)
    end
  end,
})
local nukeButton = SubTab:Button({
  Title = "一秒放核",
  Desc = "需要有核",
  Callback = function()
    local nukeRemote = game:GetService("ReplicatedStorage").packages.Net:FindFirstChild("RE/Nuke")
    if nukeRemote then
      nukeRemote:FireServer()
    end
  end,
})
local walkOnWaterToggle = SubTab:Toggle({
  Title = "海上行走",
  Callback = function(enabled)
    local fishingZones = workspace:FindFirstChild("zones")
    if fishingZones then
      local fishingZone = fishingZones:FindFirstChild("fishing")
      if fishingZone then
        for _, zone in pairs(fishingZone:GetChildren()) do
          if zone.Name == "Ocean" or zone.Name == "Deep Ocean" then
            zone.CanCollide = enabled
          end
        end
        warn("Walk On Water state:", enabled)
      end
    end
  end,
})
local showCoordinatesConnection = nil
local coordinatesLabel = nil
SubTab:Toggle({
  Title = "显示坐标",
  Callback = function(enabled)
    if enabled then
      local gpsMain = ReplicatedStorage:FindFirstChild("resources")
      if gpsMain then
        gpsMain = gpsMain:FindFirstChild("items")
        if gpsMain then
          gpsMain = gpsMain:FindFirstChild("items")
          if gpsMain then
            gpsMain = gpsMain:FindFirstChild("GPS")
            if gpsMain then
              gpsMain = gpsMain:FindFirstChild("GPS")
              if gpsMain then
                gpsMain = gpsMain:FindFirstChild("gpsMain")
                if gpsMain then
                  local xyzTemplate = gpsMain:FindFirstChild("xyz")
                  if xyzTemplate then
                    coordinatesLabel = xyzTemplate:Clone()
                    local playerGui = LocalPlayer.PlayerGui
                    local hud = playerGui:WaitForChild("hud")
                    local safezone = hud:WaitForChild("safezone")
                    local backpack = safezone:WaitForChild("backpack")
                    coordinatesLabel.Parent = backpack
                    
                    local position = GetPosition()
                    local positionText = string.format("%s, %s, %s", ExportValue(position[1]), ExportValue(position[2]), ExportValue(position[3]))
                    coordinatesLabel.Text = [[<font color='#ff4949'>X</font><font color='#a3ff81'>Y</font><font color='#626aff'>Z</font>: ]] .. positionText
                    
                    showCoordinatesConnection = game:GetService("RunService").Heartbeat:Connect(function()
                      if coordinatesLabel and coordinatesLabel.Parent then
                        local currentPosition = GetPosition()
                        positionText = string.format("%s, %s, %s", ExportValue(currentPosition[1]), ExportValue(currentPosition[2]), ExportValue(currentPosition[3]))
                        coordinatesLabel.Text = [[<font color='#ff4949'>X</font><font color='#a3ff81'>Y</font><font color='#626aff'>Z</font>: ]] .. positionText
                      end
                    end)
                  end
                end
              end
            end
          end
        end
      end
    else
      if coordinatesLabel then
        coordinatesLabel:Destroy()
        coordinatesLabel = nil
      end
      if showCoordinatesConnection then
        showCoordinatesConnection:Disconnect()
        showCoordinatesConnection = nil
      end
    end
  end,
})
function GetPosition()
  local humanoidRootPart = (LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
  if humanoidRootPart then
    return {
      humanoidRootPart.Position.X,
      humanoidRootPart.Position.Y,
      humanoidRootPart.Position.Z
    }
  end
  return {0, 0, 0}
end
function ExportValue(value)
  return string.format("%.2f", value)
end
local fishRadarToggle = SubTab:Toggle({
  Title = "鱼区域显示",
  Callback = function(enabled)
    local CollectionService = game:GetService("CollectionService")
    for _, taggedObject in pairs(CollectionService:GetTagged("radarTag")) do
      if taggedObject:IsA("BillboardGui") or taggedObject:IsA("SurfaceGui") then
        taggedObject.Enabled = enabled
      end
    end
    warn("Bypass Fish Radar state:", enabled)
  end,
})
local isAirWallEnabled = false
local airWallConnection = nil
local lastAirWallPosition = nil
SubTab:Toggle({
  Title = "生成空气墙",
  Callback = function(enabled)
    isAirWallEnabled = enabled
    if airWallConnection then
      airWallConnection:Disconnect()
      airWallConnection = nil
    end
    
    if isAirWallEnabled then
      local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
      local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
      
      local function createAirWall(position)
        local part = Instance.new("Part")
        part.Size = Vector3.new(5, 1, 5)
        part.Position = Vector3.new(position.X, position.Y - 3, position.Z)
        part.Anchored = true
        part.Transparency = 0.5
        part.CanCollide = true
        part.Material = Enum.Material.ForceField
        part.Parent = workspace
      end
      
      lastAirWallPosition = humanoidRootPart.Position
      
      airWallConnection = RunService.Heartbeat:Connect(function()
        if not isAirWallEnabled then
          if airWallConnection then
            airWallConnection:Disconnect()
            airWallConnection = nil
          end
          return
        end
        
        if humanoidRootPart and humanoidRootPart.Parent then
          local currentPosition = humanoidRootPart.Position
          if lastAirWallPosition and (currentPosition - lastAirWallPosition).Magnitude > 3 then
            lastAirWallPosition = currentPosition
            createAirWall(Vector3.new(math.floor(currentPosition.X), math.floor(currentPosition.Y), math.floor(currentPosition.Z)))
          end
        end
      end)
    end
  end,
})
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local isAutoPurchaseEnabled = false
local confirmButtonTask = nil
local buttonImageTask = nil
local confirmDescendantConnection = nil
local buttonImageDescendantConnection = nil

local function clickButton(button)
  if button then
    GuiService.SelectedObject = button
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
  end
end

local function pressE()
  VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
  VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end

local function setupConfirmButtonListener()
  if confirmDescendantConnection then
    confirmDescendantConnection:Disconnect()
    confirmDescendantConnection = nil
  end
  
  if confirmButtonTask then
    task.cancel(confirmButtonTask)
    confirmButtonTask = nil
  end
  
  local overUI = PlayerGui:FindFirstChild("over", true)
  if overUI then
    local prompt = overUI:FindFirstChild("prompt")
    if prompt then
      local confirmButton = prompt:FindFirstChild("confirm")
      if confirmButton and isAutoPurchaseEnabled then
        confirmButtonTask = task.spawn(function()
          while isAutoPurchaseEnabled do
            if confirmButton and confirmButton.Parent then
              clickButton(confirmButton)
              task.wait(0.2)
            else
              break
            end
          end
        end)
      end
    end
  end
  
  confirmDescendantConnection = PlayerGui.DescendantAdded:Connect(function(descendant)
    if isAutoPurchaseEnabled and descendant.Name == "confirm" and descendant.Parent and descendant.Parent.Name == "prompt" and descendant.Parent.Parent and descendant.Parent.Parent.Name == "over" then
      task.spawn(function()
        while isAutoPurchaseEnabled do
          if descendant and descendant.Parent then
            clickButton(descendant)
            task.wait(0.2)
          else
            break
          end
        end
      end)
    end
  end)
end

local function setupButtonImageListener()
  if buttonImageDescendantConnection then
    buttonImageDescendantConnection:Disconnect()
    buttonImageDescendantConnection = nil
  end
  
  if buttonImageTask then
    task.cancel(buttonImageTask)
    buttonImageTask = nil
  end
  
  local proximityPrompts = PlayerGui:FindFirstChild("ProximityPrompts", true)
  if proximityPrompts then
    local promptTemplate = proximityPrompts:FindFirstChild("PromptTemplate")
    if promptTemplate then
      local frame = promptTemplate:FindFirstChild("Frame")
      if frame then
        local inputFrame = frame:FindFirstChild("InputFrame")
        if inputFrame then
          local innerFrame = inputFrame:FindFirstChild("Frame")
          if innerFrame then
            local buttonImage = innerFrame:FindFirstChild("ButtonImage")
            if buttonImage and isAutoPurchaseEnabled then
              buttonImageTask = task.spawn(function()
                while isAutoPurchaseEnabled do
                  if buttonImage and buttonImage.Parent then
                    clickButton(buttonImage)
                    pressE()
                    task.wait(0.2)
                  else
                    break
                  end
                end
              end)
            end
          end
        end
      end
    end
  end
  
  buttonImageDescendantConnection = PlayerGui.DescendantAdded:Connect(function(descendant)
    if isAutoPurchaseEnabled and descendant.Name == "ButtonImage" then
      local parent = descendant.Parent
      if parent and parent.Name == "Frame" then
        parent = parent.Parent
        if parent and parent.Name == "InputFrame" then
          parent = parent.Parent
          if parent and parent.Name == "Frame" then
            parent = parent.Parent
            if parent and parent.Name == "PromptTemplate" then
              parent = parent.Parent
              if parent and parent.Name == "ProximityPrompts" then
                task.spawn(function()
                  while isAutoPurchaseEnabled do
                    if descendant and descendant.Parent then
                      clickButton(descendant)
                      pressE()
                      task.wait(0.2)
                    else
                      break
                    end
                  end
                end)
              end
            end
          end
        end
      end
    end
  end)
end

SubTab:Toggle({
  Title = "自动购买",
  Callback = function(enabled)
    isAutoPurchaseEnabled = enabled
    if isAutoPurchaseEnabled then
      setupConfirmButtonListener()
      setupButtonImageListener()
    else
      if confirmButtonTask then
        task.cancel(confirmButtonTask)
        confirmButtonTask = nil
      end
      if buttonImageTask then
        task.cancel(buttonImageTask)
        buttonImageTask = nil
      end
      if confirmDescendantConnection then
        confirmDescendantConnection:Disconnect()
        confirmDescendantConnection = nil
      end
      if buttonImageDescendantConnection then
        buttonImageDescendantConnection:Disconnect()
        buttonImageDescendantConnection = nil
      end
    end
  end,
})
local changePlayerNameInput = SubTab:Input({
  Title = "修改玩家名字",
  Desc = "修改名字",
  Value = "输入",
  PlaceholderText = "你在看什么嘛",
  ClearTextOnFocus = true,
  Callback = function(input)
    local character = workspace:FindFirstChild(LocalPlayer.Name)
    if character then
      local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
      if humanoidRootPart then
        local user = humanoidRootPart:FindFirstChild("user")
        if user then
          local userName = user:FindFirstChild("user")
          if userName then
            userName.Text = input
          end
        end
      end
    end
  end,
})
local changeLeaderboardCashInput = SubTab:Input({
  Title = "修改玩家排行榜C$",
  Desc = "请输入新的C$值",
  Value = "输入",
  PlaceholderText = "你在看什么嘛",
  ClearTextOnFocus = true,
  Callback = function(input)
    local cashValue = tonumber(input)
    if cashValue then
      if LocalPlayer:FindFirstChild("leaderstats") and LocalPlayer.leaderstats:FindFirstChild("C$") then
        LocalPlayer.leaderstats["C$"].Value = cashValue
      end
    end
  end,
})
local autoCrateScreenGui = nil
local autoCrateButton = nil
local isAutoCrateEnabled = false
local autoCrateConnection = nil

SubTab:Button({
  Title = "自动开箱",
  Callback = function()
    if autoCrateScreenGui and autoCrateScreenGui.Parent then
      return
    end
    
    
    autoCrateScreenGui = Instance.new("ScreenGui")
    autoCrateScreenGui.Name = "AutoCrateGui"
    autoCrateScreenGui.Parent = game.CoreGui
    autoCrateScreenGui.ResetOnSpawn = false
    
    autoCrateButton = Instance.new("ImageButton")
    autoCrateButton.Size = UDim2.new(0, 60, 0, 60)
    autoCrateButton.Position = UDim2.new(0.05, 0, 0.05, 0)
    autoCrateButton.Image = "rbxassetid://72347864782725"
    autoCrateButton.BackgroundTransparency = 1
    autoCrateButton.Parent = autoCrateScreenGui
    
    local function startAutoCrate()
      if not autoCrateConnection then
        autoCrateConnection = RunService.RenderStepped:Connect(function()
          local camera = workspace.CurrentCamera
          if camera then
            VirtualInputManager:SendMouseButtonEvent(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2, 0, true, game, 0)
            task.wait(0.1)
            VirtualInputManager:SendMouseButtonEvent(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2, 0, false, game, 0)
          end
        end)
      end
    end
    
    local function stopAutoCrate()
      if autoCrateConnection then
        autoCrateConnection:Disconnect()
        autoCrateConnection = nil
      end
    end
    
    autoCrateButton.MouseButton1Click:Connect(function()
      isAutoCrateEnabled = not isAutoCrateEnabled
      if isAutoCrateEnabled then
        autoCrateButton.Image = "rbxassetid://112352263547758"
        startAutoCrate()
      else
        autoCrateButton.Image = "rbxassetid://72347864782725"
        stopAutoCrate()
      end
    end)
  end,
})
SubTab:Button({
  Title = "自动寻找宝箱",
  Description = "不需要时可以重进",
  Tab = Main,
  Callback = function()
    local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
    
    local function repairTreasureMaps()
      local treasureMaps = {}
      for _, item in pairs(LocalPlayer.Backpack:GetChildren()) do
        if item.Name == "Treasure Map" then
          table.insert(treasureMaps, item)
        end
      end
      
      for _, treasureMap in ipairs(treasureMaps) do
        local hud = PlayerGui:FindFirstChild("hud")
        if hud then
          local safezone = hud:FindFirstChild("safezone")
          if safezone then
            local backpack = safezone:FindFirstChild("backpack")
            if backpack then
              local events = backpack:FindFirstChild("events")
              if events then
                local equip = events:FindFirstChild("equip")
                if equip then
                  equip:FireServer(unpack({[1] = treasureMap}))
                end
              end
            end
          end
        end
        
        local jackMarrow = workspace:FindFirstChild("world")
        if jackMarrow then
          jackMarrow = jackMarrow:FindFirstChild("npcs")
          if jackMarrow then
            jackMarrow = jackMarrow:FindFirstChild("Jack Marrow")
            if jackMarrow then
              local treasure = jackMarrow:FindFirstChild("treasure")
              if treasure then
                local repairmap = treasure:FindFirstChild("repairmap")
                if repairmap then
                  repairmap:InvokeServer()
                  task.wait(0.5)
                  repairmap:InvokeServer()
                end
              end
            end
          end
        end
        task.wait(0.5)
      end
    end
    
    local function teleportToPosition(x, y, z)
      if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)
      end
    end
    
    local function findAndTeleportToChest()
      local world = workspace:FindFirstChild("world")
      if world then
        local chests = world:FindFirstChild("chests")
        if chests then
          for _, chest in pairs(chests:GetChildren()) do
            if chest.Name:match("TreasureChest_") then
              if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame = chest.CFrame
              end
              break
            end
          end
        end
      end
    end
    
    local function clickButton(button)
      if button then
        GuiService.SelectedObject = button
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
      end
    end
    
    local function pressE()
      VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
      VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
    end
    
    local promptConnection = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
      prompt.HoldDuration = 0
    end)
    
    local proximityPrompts = PlayerGui:FindFirstChild("ProximityPrompts", true)
    if proximityPrompts then
      local promptTemplate = proximityPrompts:FindFirstChild("PromptTemplate")
      if promptTemplate then
        local frame = promptTemplate:FindFirstChild("Frame")
        if frame then
          local inputFrame = frame:FindFirstChild("InputFrame")
          if inputFrame then
            local innerFrame = inputFrame:FindFirstChild("Frame")
            if innerFrame then
              local buttonImage = innerFrame:FindFirstChild("ButtonImage")
              if buttonImage then
                task.spawn(function()
                  while buttonImage and buttonImage.Parent do
                    clickButton(buttonImage)
                    pressE()
                    task.wait(0.2)
                  end
                end)
              end
            end
          end
        end
      end
    end
    
    local descendantConnection = PlayerGui.DescendantAdded:Connect(function(descendant)
      if descendant.Name == "ButtonImage" then
        local parent = descendant.Parent
        if parent and parent.Name == "Frame" then
          parent = parent.Parent
          if parent and parent.Name == "InputFrame" then
            parent = parent.Parent
            if parent and parent.Name == "Frame" then
              parent = parent.Parent
              if parent and parent.Name == "PromptTemplate" then
                parent = parent.Parent
                if parent and parent.Name == "ProximityPrompts" then
                  task.spawn(function()
                    while descendant and descendant.Parent do
                      clickButton(descendant)
                      pressE()
                      task.wait(0.2)
                    end
                  end)
                end
              end
            end
          end
        end
      end
    end)
    
    task.spawn(function()
      teleportToPosition(-2826, 214, 1520)
      repairTreasureMaps()
      while true do
        findAndTeleportToChest()
        task.wait(0.1)
      end
    end)
  end,
})
SubTab:Button({
  Title = "降低画质",
  Callback = function()
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ago106/ScriptsRoblox/refs/heads/main/FpS"))()
  end,
})
local getAllRodsButton = SubTab:Button({
  Title = "获取所有竿子",
  Desc = "需要你足够的钱",
  Callback = function()
    local purchaseEvent = ReplicatedStorage:FindFirstChild("events")
    if purchaseEvent then
      purchaseEvent = purchaseEvent:FindFirstChild("purchase")
      if purchaseEvent then
        local resources = ReplicatedStorage:FindFirstChild("resources")
        if resources then
          local items = resources:FindFirstChild("items")
          if items then
            local rods = items:FindFirstChild("rods")
            if rods then
              for _, rodFolder in pairs(rods:GetChildren()) do
                if rodFolder:IsA("Folder") then
                  purchaseEvent:FireServer(rodFolder.Name, "Rod", nil, 1)
                end
              end
            end
          end
        end
      end
    end
  end,
})
local instantInteractConnection = nil
SubTab:Button({
  Title = "即时互动",
  Callback = function()
    if instantInteractConnection then
      instantInteractConnection:Disconnect()
      instantInteractConnection = nil
    else
      instantInteractConnection = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
        prompt.HoldDuration = 0
      end)
    end
  end,
})
SubTab:Button({
  Title = "飞行",
  Callback = function()
    
    loadstring(game:HttpGet("https://pastebin.com/raw/J9PbZFVP", true))()
  end,
})
SubTab:Button({
  Title = "全图变亮",
  Callback = function()
    local Lighting = game:GetService("Lighting")
    Lighting.Brightness = 5
    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    Lighting.GlobalShadows = false
    Lighting.FogEnd = 100000
    Lighting.ClockTime = 12
    Lighting.Technology = Enum.Technology.Future
    print("全图亮度已调整完成！")
  end,
})
SubTab:Button({
  Title = "寻找商人",
  Callback = function()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    local function showNotification(title, message)
      local screenGui = Instance.new("ScreenGui")
      screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
      
      local frame = Instance.new("Frame")
      frame.Size = UDim2.new(0.3, 0, 0.1, 0)
      frame.Position = UDim2.new(0.35, 0, 0.05, 0)
      frame.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
      frame.Parent = screenGui
      
      local titleLabel = Instance.new("TextLabel")
      titleLabel.Size = UDim2.new(1, 0, 0.5, 0)
      titleLabel.Text = title
      titleLabel.Font = Enum.Font.SourceSansBold
      titleLabel.TextSize = 24
      titleLabel.TextColor3 = Color3.new(1, 1, 1)
      titleLabel.BackgroundTransparency = 1
      titleLabel.Parent = frame
      
      local messageLabel = Instance.new("TextLabel")
      messageLabel.Size = UDim2.new(1, 0, 0.5, 0)
      messageLabel.Position = UDim2.new(0, 0, 0.5, 0)
      messageLabel.Text = message
      messageLabel.Font = Enum.Font.SourceSans
      messageLabel.TextSize = 18
      messageLabel.TextColor3 = Color3.new(1, 1, 1)
      messageLabel.BackgroundTransparency = 1
      messageLabel.Parent = frame
      
      task.wait(2)
      TweenService:Create(frame, TweenInfo.new(1), {
        BackgroundTransparency = 1,
      }):Play()
      TweenService:Create(titleLabel, TweenInfo.new(1), {
        TextTransparency = 1,
      }):Play()
      TweenService:Create(messageLabel, TweenInfo.new(1), {
        TextTransparency = 1,
      }):Play()
      task.wait(1)
      screenGui:Destroy()
    end
    
    local hasTeleported = false
    
    local function checkForMerchant()
      local active = Workspace:FindFirstChild("active")
      if active then
        local merchantBoat = active:FindFirstChild("Merchant Boat")
        if merchantBoat then
          local boat = merchantBoat:FindFirstChild("Boat")
          if boat then
            local merchantBoatInner = boat:FindFirstChild("Merchant Boat")
            if merchantBoatInner then
              local core = merchantBoatInner:FindFirstChild("core")
              if core and not hasTeleported then
                if humanoidRootPart then
                  humanoidRootPart.CFrame = core.CFrame + Vector3.new(0, 5, 0)
                end
                hasTeleported = true
                showNotification("通知", "检测到商人船，已自动传送到附近！")
              elseif not core then
                hasTeleported = false
              end
            else
              hasTeleported = false
            end
          else
            hasTeleported = false
          end
        else
          hasTeleported = false
        end
      else
        hasTeleported = false
      end
    end
    
    task.spawn(function()
      while true do
        checkForMerchant()
        task.wait(1)
      end
    end)
  end,
})
SubTab:Button({
  Title = "一键获取核弹",
  Callback = function()
    
    loadstring(game:HttpGet("https://pastefy.app/YF21aXwe/raw"))()
  end,
})
SubTab:Section({
  Title = "删除",
})
SubTab:Button({
  Title = "聊天",
  Callback = function()
    
    game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
  end,
})
SubTab:Section({
  Title = "宝箱",
})
SubTab:Button({
  Title = "收集宝箱",
  Callback = function()
    for _, descendant in ipairs(Workspace:GetDescendants()) do
      if descendant:IsA("ProximityPrompt") then
        descendant.HoldDuration = 0
      end
    end
    
    local world = Workspace:FindFirstChild("world")
    if world then
      local chests = world:FindFirstChild("chests")
      if chests then
        for _, descendant in pairs(chests:GetDescendants()) do
          if descendant:IsA("Part") and descendant:FindFirstChild("ChestSetup") then
            local character = LocalPlayer.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
              character.HumanoidRootPart.CFrame = descendant.CFrame
              
              for _, promptDescendant in pairs(chests:GetDescendants()) do
                if promptDescendant:IsA("ProximityPrompt") then
                  promptDescendant.HoldDuration = 0
                  promptDescendant:InputHoldBegin()
                  task.wait(0.1)
                  promptDescendant:InputHoldEnd()
                end
              end
              task.wait(1)
            end
          end
        end
      end
    end
  end,
})
SubTab:Button({
  Title = "修复地图",
  Callback = function()
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if backpack then
      for _, item in pairs(backpack:GetChildren()) do
        if item.Name == "Treasure Map" then
          local character = LocalPlayer.Character
          if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
              humanoid:EquipTool(item)
              
              local world = workspace:FindFirstChild("world")
              if world then
                local npcs = world:FindFirstChild("npcs")
                if npcs then
                  local jackMarrow = npcs:FindFirstChild("Jack Marrow")
                  if jackMarrow then
                    local treasure = jackMarrow:FindFirstChild("treasure")
                    if treasure then
                      local repairmap = treasure:FindFirstChild("repairmap")
                      if repairmap then
                        repairmap:InvokeServer()
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end,
})
SubTab:Button({
  Title = "传送修地图的npc",
  Callback = function()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(257.22, 135.88, 62.53)
  end,
})
SubTab:Section({
  Title = "交易",
})
local tradeTargetName = ""
local tradeAmount = 0
local tradeTargetInput = SubTab:Input({
  Title = "输入玩家名字",
  Desc = "输入后点交易",
  Value = "",
  PlaceholderText = "请输入玩家名字",
  ClearTextOnFocus = true,
  Callback = function(input)
    tradeTargetName = input
    print("交易目标更新为：" .. (tradeTargetName or "未指定"))
  end,
})
local tradeAmountInput = SubTab:Input({
  Title = "输入交易的数量",
  Desc = "交易数量",
  Value = "",
  PlaceholderText = "请输入交易数量",
  ClearTextOnFocus = true,
  Callback = function(input)
    tradeAmount = tonumber(input) or 0
    if tradeAmount <= 0 then
      print("请输入有效的交易数量")
    else
      print("交易数量已设置为：" .. tradeAmount)
    end
  end,
})
local startTradeButton = SubTab:Button({
  Title = "开始交易",
  Callback = function()
    if not tradeTargetName or tradeTargetName == "" then
      print("请输入有效的玩家名字")
      return 
    end
    local Players = game:GetService("Players")
    local targetPlayer = Players:FindFirstChild(tradeTargetName)
    if not targetPlayer then
      print("玩家 " .. tradeTargetName .. " 不存在，请检查输入的名字")
      return 
    end
    local character = LocalPlayer.Character
    if not character then
      print("角色不存在，请等待角色加载")
      return
    end
    local tool = character:FindFirstChildOfClass("Tool")
    if not tool then
      print("未找到可用物品，请手持物品后重试")
      return 
    end
    local offer = tool:FindFirstChild("offer")
    if offer then
      offer:FireServer(unpack({
        targetPlayer,
        tradeAmount
      }))
      print("交易完成，目标：" .. tradeTargetName .. "，交易数量：" .. tradeAmount)
    else
      print("当前物品不支持交易功能")
    end
  end,
})
local isRemoteSellEnabled = false
SellTab:Toggle({
  Title = "远程出售",
  Callback = function(enabled)
    isRemoteSellEnabled = enabled
    if isRemoteSellEnabled then
      task.spawn(function()
        while isRemoteSellEnabled do
          task.wait(0)
          pcall(function()
    local events = ReplicatedStorage:FindFirstChild("events")
            if events then
              local sellEvent = events:FindFirstChild("Sell")
              if sellEvent then
                sellEvent:InvokeServer()
              end
            end
          end)
        end
      end)
    end
  end,
})
SellTab:Button({
  Title = "一键出售",
  Callback = function()
    local events = ReplicatedStorage:FindFirstChild("events")
    if events then
      local sellAllEvent = events:FindFirstChild("SellAll")
      if sellAllEvent then
        sellAllEvent:InvokeServer()
      end
    end
  end,
})
SellTab:Section({
  Title = "设置出售",
})
local autoSellSettings = {
  legendary = false,
  mythical = false,
  relic = false,
  exotic = false,
  event = false,
  gemstone = false,
}
local function updateAutoSellSetting(settingName, enabled)
  autoSellSettings[settingName] = enabled
  local packages = ReplicatedStorage:FindFirstChild("packages")
  if packages then
    local net = packages:FindFirstChild("Net")
    if net then
      local updateRemote = net:FindFirstChild("RE/Settings/Update")
      if updateRemote then
        updateRemote:FireServer(unpack({
          [1] = "willautosell_" .. settingName,
          [2] = enabled,
        }))
      end
    end
  end
end
SellTab:Toggle({
  Title = "传奇",
  Callback = function(enabled)
    updateAutoSellSetting("legendary", enabled)
  end,
})
SellTab:Toggle({
  Title = "神话",
  Callback = function(enabled)
    updateAutoSellSetting("mythical", enabled)
  end,
})
SellTab:Toggle({
  Title = "魔法遗迹",
  Callback = function(enabled)
    updateAutoSellSetting("relic", enabled)
  end,
})
SellTab:Toggle({
  Title = "异国鱼",
  Callback = function(enabled)
    updateAutoSellSetting("exotic", enabled)
  end,
})
SellTab:Toggle({
  Title = "限量鱼",
  Callback = function(enabled)
    updateAutoSellSetting("event", enabled)
  end,
})
SellTab:Toggle({
  Title = "宝石",
  Callback = function(enabled)
    updateAutoSellSetting("gemstone", enabled)
  end,
})
local purchaseTeleportLocations = {
  ["竿"] = Vector3.new(20211, 739, 5709),
  ["流星图腾"] = Vector3.new(-1948, 275.36, 230),
  ["雪崩图腾"] = Vector3.new(19708.7, 467.6, 6060.1),
  ["暴风雪图腾"] = Vector3.new(20145.4, 743, 5805.1),
  ["风暴图腾"] = Vector3.new(33.7, 132.5, 1942.7),
  ["日蚀图腾"] = Vector3.new(5937.6, 281.6, 880.3),
  ["陨石图腾"] = Vector3.new(-1950, 275.4, 230.4),
  ["钟表图腾"] = Vector3.new(-1147.4, 134.5, -1073.2),
  ["顺风图腾"] = Vector3.new(2848.1, 178.4, 2701.3),
  ["极光图腾"] = Vector3.new(-1810.2, -136.9, -3283.1),
  ["三叉戟"] = Vector3.new(-1485, -226, -2210),
  ["诱饵_箱"] = Vector3.new(384.57513427734375, 135.3519287109375, 337.5340270996094),
  Carbon_Rod = Vector3.new(454.083618, 150.590073, 225.328827),
  Crab_Cage = Vector3.new(474.803589, 149.664566, 229.49469),
  Fast_Rod = Vector3.new(447.183563, 148.225739, 220.187454),
  Flimsy_Rod = Vector3.new(471.107697, 148.36171, 229.642441),
  GPS = Vector3.new(517.896729, 149.217636, 284.856842),
  Long_Rod = Vector3.new(485.695038, 171.656326, 145.746109),
  Lucky_Rod = Vector3.new(446.085999, 148.253006, 222.160004),
  Plastic_Rod = Vector3.new(454.425385, 148.169739, 229.172424),
}
local purchaseTeleportDropdown = TeleportTab:Dropdown({
  Title = "购买传送",
  Desc = "选择要传送的购买地点",
  Multi = false,
  Value = "选择一个地点",
  AllowNone = true,
  Values = {
    "竿",
    "流星图腾",
    "雪崩图腾",
    "暴风雪图腾",
    "风暴图腾",
    "日蚀图腾",
    "陨石图腾",
    "钟表图腾",
    "顺风图腾",
    "极光图腾",
    "三叉戟",
    "诱饵_箱",
    "Carbon_Rod",
    "Crab_Cage",
    "Fast_Rod",
    "Flimsy_Rod",
    "GPS",
    "Long_Rod",
    "Lucky_Rod",
    "Plastic_Rod"
  },
  Callback = function(selectedLocation)
    local position = purchaseTeleportLocations[selectedLocation]
    if position then
      local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
      if character and character.PrimaryPart then
        character:SetPrimaryPartCFrame(CFrame.new(position))
        warn("玩家已传送至:", selectedLocation)
      else
        warn("角色或主部件未找到！")
      end
    else
      warn("无效的地点选择")
    end
  end,
})
local regionTeleportLocations = {
  ["亚特兰蒂斯"] = Vector3.new(-4259.6, -603.4, 1812.8),
  ["克拉肯"] = Vector3.new(-4250.17, -993.59, 2156.79),
  ["新岛"] = Vector3.new(-3548.9, 130, 568.3),
  ["传送门竿子"] = Vector3.new(19987.6, 918.8, 5434.5),
  ["雪山钓鱼位置3"] = Vector3.new(20048.3, 511.6, 5420.1),
  ["雪山钓鱼位置2"] = Vector3.new(20038.2, 883.2, 5636.3),
  ["雪山钓鱼位置1"] = Vector3.new(19893.1, 581.9, 5636.2),
  ["雪山钓鱼位置"] = Vector3.new(20266.7, 273.2, 5546.1),
  ["雪山"] = Vector3.new(19949, 1142, 5549),
  ["陨石坑"] = Vector3.new(5690, 166, 600),
  ["原古岛"] = Vector3.new(4073, 131.5, 78.1),
  ["古岛1"] = Vector3.new(6035.32, 197.26, 309.9),
  ["制作新的鱼竿"] = Vector3.new(-3161.83, -745.51, 1683.37),
  ["古岛"] = Vector3.new(5948.8, 154.9, 482.2),
  ["深渊"] = Vector3.new(950.9, -711.7, 1246.3),
  ["福尔萨亨海岸"] = Vector3.new(-2512.9, 137.2, 1557.5),
  ["女巫小屋"] = Vector3.new(-949.6, 222.3, -988),
  ["硫酸池"] = Vector3.new(-1793.3, -142.7, -3414),
  ["铜鱼竿"] = Vector3.new(-977.4, -244.9, -2700.7),
  ["水下洞穴"] = Vector3.new(-1654.9, -213.7, -2846.4),
  ["三叉戟洞穴"] = Vector3.new(-1474, -226, -2302),
  ["祭坛"] = Vector3.new(1296.32, -808.55, -298.94),
  ["拱门"] = Vector3.new(998.97, 126.68, -1237.14),
  ["桦木"] = Vector3.new(1742.32, 138.26, -2502.24),
  ["使着迷"] = Vector3.new(1296.32, -808.55, -298.94),
  ["执行的"] = Vector3.new(-29.84, -250.48, 199.12),
  ["executive"] = Vector3.new(-29.84, -250.48, 199.12),
  ["保管员"] = Vector3.new(1296.32, -808.55, -298.94),
  mod_house = Vector3.new(-30.21, -249.41, 204.05),
  ["出生点"] = Vector3.new(383, 139.49, 266.9),
  ["菇类"] = Vector3.new(2501.49, 127.76, -720.7),
  roslit = Vector3.new(-1476.51, 130.17, 671.69),
  ["雪"] = Vector3.new(2648.68, 139.07, 2521.3),
  ["雪帽岛"] = Vector3.new(2648.68, 139.07, 2521.3),
  ["斯派克"] = Vector3.new(-1254.8, 133.89, 1554.2),
  ["雕像"] = Vector3.new(72.88, 138.7, -1028.42),
  ["太阳石"] = Vector3.new(-933.26, 128.14, -1119.52),
  ["沼泽"] = Vector3.new(2501.49, 127.76, -720.7),
  ["水龟"] = Vector3.new(-143.88, 141.17, 1909.61),
  ["深渊钥匙钓点"] = Vector3.new(-112.01, -492.9, 1040.33),
  ["火山"] = Vector3.new(-1888.52, 163.85, 329.24),
}
local regionTeleportDropdown = TeleportTab:Dropdown({
  Title = "选择传送地区",
  Desc = "选择要传送的地区",
  Multi = false,
  Value = "选择一个地区",
  AllowNone = true,
  Values = {
    "亚特兰蒂斯",
    "克拉肯",
    "新岛",
    "传送门竿子",
    "雪山钓鱼位置3",
    "雪山钓鱼位置2",
    "雪山钓鱼位置1",
    "雪山钓鱼位置",
    "雪山",
    "陨石坑",
    "原古岛",
    "古岛1",
    "制作新的鱼竿",
    "古岛",
    "深渊",
    "福尔萨亨海岸",
    "女巫小屋",
    "硫酸池",
    "铜鱼竿",
    "水下洞穴",
    "三叉戟洞穴",
    "祭坛",
    "拱门",
    "桦木",
    "使着迷",
    "executive",
    "保管员",
    "mod_house",
    "出生点",
    "菇类",
    "roslit",
    "雪",
    "雪帽岛",
    "斯派克",
    "雕像",
    "太阳石",
    "沼泽",
    "水龟",
    "深渊钥匙钓点",
    "火山"
  },
  Callback = function(selectedRegion)
    local position = regionTeleportLocations[selectedRegion]
    if position then
      local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
      if character and character.PrimaryPart then
        character:SetPrimaryPartCFrame(CFrame.new(position))
        warn("已传送到位置:", selectedRegion)
      else
        warn("角色或主部件未找到！")
      end
    else
      warn("无效的地点选择")
    end
  end,
})
local npcTeleportLocations = {
  ["修地图的npc"] = Vector3.new(257.22, 135.88, 62.53),
  wilson = Vector3.new(2938.80591, 277.474762, 2567.13379),
  wilsons_rod = Vector3.new(2879.2085, 135.07663, 2723.64233),
  Witch = Vector3.new(409.368713, 135.712708, 312.134338),
  Merchant = Vector3.new(416.690521, 130.302628, 342.765289),
  Synph = Vector3.new(566.36499, 151.671799, 353.993896),
  Pierre = Vector3.new(391.38855, 136.82576, 196.710144),
  Phineas = Vector3.new(469.901093, 152.136032, 277.97641),
  ["船匠"] = Vector3.new(357.972595, 135.112106, 258.154541),
  ["垂钓者"] = Vector3.new(480.102478, 151.963333, 302.226898),
  mod_Keeper = Vector3.new(-39.0905838, -245.141144, 195.837891),
  Marc = Vector3.new(466.060913, 152.480682, 224.723465),
  Lucas = Vector3.new(449.09433, 181.516205, 180.772995),
  Roslit_Keeper = Vector3.new(-1512.37891, 134.500031, 631.24353),
  Inn_Keeper = Vector3.new(487.458466, 152.300034, 231.498932),
  FishingNpc_1 = Vector3.new(-1429.04138, 134.371552, 686.034424),
  FishingNpc_2 = Vector3.new(-1778.55408, 149.791779, 648.097107),
  FishingNpc_3 = Vector3.new(-1778.26807, 147.83165, 653.258606),
  Ashe = Vector3.new(-1709.94055, 149.862411, 729.399536),
  Alfredrickus = Vector3.new(-1520.60632, 142.923264, 764.522034),
  Daisy = Vector3.new(581.550049, 166.974594, 213.499969),
  Appraiser = Vector3.new(453.003967, 151.970993, 206.907928),
}
local npcTeleportDropdown = TeleportTab:Dropdown({
  Title = "选择NPC",
  Desc = "选择要传送到的NPC位置",
  Multi = false,
  Value = "选择一个NPC",
  AllowNone = true,
  Values = {
    "修地图的npc",
    "wilson",
    "wilsons_rod",
    "Witch",
    "Merchant",
    "Synph",
    "Pierre",
    "Phineas",
    "船匠",
    "垂钓者",
    "mod_Keeper",
    "Marc",
    "Lucas",
    "Roslit_Keeper",
    "Inn_Keeper",
    "FishingNpc_1",
    "FishingNpc_2",
    "FishingNpc_3",
    "Ashe",
    "Alfredrickus",
    "Daisy",
    "Appraiser"
  },
  Callback = function(selectedNpc)
    local position = npcTeleportLocations[selectedNpc]
    if position then
      local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
      if character and character.PrimaryPart then
        character:SetPrimaryPartCFrame(CFrame.new(position))
        warn("已传送到NPC位置:", selectedNpc)
      else
        warn("角色或主部件未找到！")
      end
    else
      warn("无效的NPC选择")
    end
  end,
})
TeleportTab:Section({
  Title = "事件检测功能",
})
local savedPosition = nil
TeleportTab:Button({
  Title = "保存当前位置",
  Callback = function()
    local character = LocalPlayer.Character
    if character then
      local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
      if humanoidRootPart then
        savedPosition = humanoidRootPart.CFrame
        WindUI:Notify({
          Title = "提示",
          Content = "当前位置已保存！",
          Icon = "save",
          Duration = 5,
        })
      else
        WindUI:Notify({
          Title = "错误",
          Content = "无法找到 HumanoidRootPart，保存位置失败！",
          Icon = "error",
          Duration = 10,
        })
      end
    else
      WindUI:Notify({
        Title = "错误",
        Content = "角色不存在，请等待角色加载！",
        Icon = "error",
        Duration = 10,
      })
    end
  end,
})
local isSnowcapAlgaePoolDetectionEnabled = false
local savedDetectionPosition = nil
local function smoothTeleport(humanoidRootPart, targetCFrame)
  local distance = (humanoidRootPart.Position - targetCFrame.Position).Magnitude
  local travelTime = distance / 250
  local startTime = tick()
  local startCFrame = humanoidRootPart.CFrame
  
  while tick() - startTime < travelTime do
    local progress = math.min((tick() - startTime) / travelTime, 1)
    humanoidRootPart.CFrame = startCFrame:Lerp(targetCFrame, progress)
    task.wait()
  end
  humanoidRootPart.CFrame = targetCFrame
end
TeleportTab:Toggle({
  Title = "持续检测雪冠藻池",
  Callback = function(enabled)
    if enabled then
      if isSnowcapAlgaePoolDetectionEnabled then
        WindUI:Notify({
          Title = "提示",
          Content = "检测已在进行中！",
          Icon = "eye",
          Duration = 5,
        })
        return 
      end
      isSnowcapAlgaePoolDetectionEnabled = true
      local character = LocalPlayer.Character
      if not character then
        WindUI:Notify({
          Title = "错误",
          Content = "角色不存在，请等待角色加载！",
          Icon = "error",
          Duration = 10,
        })
        isSnowcapAlgaePoolDetectionEnabled = false
        return
      end
      local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
      if not humanoidRootPart then
        WindUI:Notify({
          Title = "错误",
          Content = "未找到 HumanoidRootPart，检测无法开始！",
          Icon = "error",
          Duration = 10,
        })
        isSnowcapAlgaePoolDetectionEnabled = false
        return 
      end
      savedDetectionPosition = humanoidRootPart.CFrame
      
      task.spawn(function()
        local hasFoundPool = false
        while isSnowcapAlgaePoolDetectionEnabled do
          task.wait(1)
          
          local zones = workspace:FindFirstChild("zones")
          if zones then
            local fishing = zones:FindFirstChild("fishing")
            if fishing then
              local snowcapAlgaePool = fishing:FindFirstChild("Snowcap Algae Pool")
              if snowcapAlgaePool and not hasFoundPool then
                if humanoidRootPart and humanoidRootPart.Parent then
                  humanoidRootPart.CFrame = CFrame.new(snowcapAlgaePool.Position)
                  WindUI:Notify({
                    Title = "成功",
                    Content = "已传送至雪冠藻池区域中心！",
                    Icon = "eye",
                    Duration = 5,
                  })
                  hasFoundPool = true
                end
              elseif not snowcapAlgaePool and hasFoundPool then
                if humanoidRootPart and humanoidRootPart.Parent and savedDetectionPosition then
                  WindUI:Notify({
                    Title = "提示",
                    Content = "雪冠藻池点消失，正在飞回保存的位置！",
                    Icon = "home",
                    Duration = 5,
                  })
                  smoothTeleport(humanoidRootPart, savedDetectionPosition)
                  hasFoundPool = false
                end
              end
            end
          end
        end
        WindUI:Notify({
          Title = "检测停止",
          Content = "玩家已退出检测！",
          Icon = "info",
          Duration = 5,
        })
      end)
    else
      isSnowcapAlgaePoolDetectionEnabled = false
      WindUI:Notify({
        Title = "提示",
        Content = "检测已关闭！",
        Icon = "eye",
        Duration = 5,
      })
    end
  end,
})
local isAncientAlgaeDetectionEnabled = false
local savedAncientAlgaePosition = nil
TeleportTab:Toggle({
  Title = "持续检测古藻",
  Callback = function(enabled)
    if enabled then
      if isAncientAlgaeDetectionEnabled then
        WindUI:Notify({
          Title = "提示",
          Content = "检测已在进行中！",
          Icon = "eye",
          Duration = 5,
        })
        return 
      end
      isAncientAlgaeDetectionEnabled = true
      local character = LocalPlayer.Character
      if not character then
        WindUI:Notify({
          Title = "错误",
          Content = "角色不存在，请等待角色加载！",
          Icon = "error",
          Duration = 10,
        })
        isAncientAlgaeDetectionEnabled = false
        return
      end
      local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
      if not humanoidRootPart then
        WindUI:Notify({
          Title = "错误",
          Content = "未找到 HumanoidRootPart，检测无法开始！",
          Icon = "error",
          Duration = 10,
        })
        isAncientAlgaeDetectionEnabled = false
        return 
      end
      savedAncientAlgaePosition = humanoidRootPart.CFrame
      
      task.spawn(function()
        local hasFoundPool = false
        while isAncientAlgaeDetectionEnabled do
          task.wait(1)
          
          local zones = workspace:FindFirstChild("zones")
          if zones then
            local fishing = zones:FindFirstChild("fishing")
            if fishing then
              local ancientAlgaePool = fishing:FindFirstChild("Ancient Algae Pool")
              if ancientAlgaePool and not hasFoundPool then
                if humanoidRootPart and humanoidRootPart.Parent then
                  humanoidRootPart.CFrame = CFrame.new(ancientAlgaePool.Position)
                  WindUI:Notify({
                    Title = "成功",
                    Content = "已传送至Ancient Algae区域中心！",
                    Icon = "eye",
                    Duration = 5,
                  })
                  hasFoundPool = true
                end
              elseif not ancientAlgaePool and hasFoundPool then
                if humanoidRootPart and humanoidRootPart.Parent and savedAncientAlgaePosition then
                  WindUI:Notify({
                    Title = "提示",
                    Content = "Ancient Algae点消失，正在飞回保存的位置！",
                    Icon = "home",
                    Duration = 5,
                  })
                  smoothTeleport(humanoidRootPart, savedAncientAlgaePosition)
                  hasFoundPool = false
                end
              end
            end
          end
        end
        WindUI:Notify({
          Title = "检测停止",
          Content = "玩家已退出检测！",
          Icon = "info",
          Duration = 5,
        })
      end)
    else
      isAncientAlgaeDetectionEnabled = false
      WindUI:Notify({
        Title = "提示",
        Content = "检测已关闭！",
        Icon = "eye",
        Duration = 5,
      })
    end
  end,
})
local isGoldenTideDetectionEnabled = false
local savedGoldenTidePosition = nil
TeleportTab:Toggle({
  Title = "持续检测金潮",
  Callback = function(enabled)
    if enabled then
      if isGoldenTideDetectionEnabled then
        WindUI:Notify({
          Title = "提示",
          Content = "检测已在进行中！",
          Icon = "eye",
          Duration = 5,
        })
        return 
      end
      isGoldenTideDetectionEnabled = true
      local character = LocalPlayer.Character
      if not character then
        WindUI:Notify({
          Title = "错误",
          Content = "角色不存在，请等待角色加载！",
          Icon = "error",
          Duration = 10,
        })
        isGoldenTideDetectionEnabled = false
        return
      end
      local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
      if not humanoidRootPart then
        WindUI:Notify({
          Title = "错误",
          Content = "未找到 HumanoidRootPart，检测无法开始！",
          Icon = "error",
          Duration = 10,
        })
        isGoldenTideDetectionEnabled = false
        return 
      end
      savedGoldenTidePosition = humanoidRootPart.CFrame
      
      task.spawn(function()
        local hasFoundTide = false
        while isGoldenTideDetectionEnabled do
          task.wait(1)
          
          local zones = workspace:FindFirstChild("zones")
          if zones then
            local fishing = zones:FindFirstChild("fishing")
            if fishing then
              local goldenTide = fishing:FindFirstChild("Golden Tide")
              if goldenTide and not hasFoundTide then
                if humanoidRootPart and humanoidRootPart.Parent then
                  humanoidRootPart.CFrame = CFrame.new(goldenTide.Position)
                  WindUI:Notify({
                    Title = "成功",
                    Content = "已传送至金潮区域中心！",
                    Icon = "eye",
                    Duration = 5,
                  })
                  hasFoundTide = true
                end
              elseif not goldenTide and hasFoundTide then
                if humanoidRootPart and humanoidRootPart.Parent and savedGoldenTidePosition then
                  WindUI:Notify({
                    Title = "提示",
                    Content = "金潮点消失，正在飞回保存的位置！",
                    Icon = "home",
                    Duration = 5,
                  })
                  smoothTeleport(humanoidRootPart, savedGoldenTidePosition)
                  hasFoundTide = false
                end
              end
            end
          end
        end
        WindUI:Notify({
          Title = "检测停止",
          Content = "玩家已退出检测！",
          Icon = "info",
          Duration = 5,
        })
      end)
    else
      isGoldenTideDetectionEnabled = false
      WindUI:Notify({
        Title = "提示",
        Content = "检测已关闭！",
        Icon = "eye",
        Duration = 5,
      })
    end
  end,
})
local isMushgroveAlgaeDetectionEnabled = false
local savedMushgroveAlgaePosition = nil
TeleportTab:Toggle({
  Title = "持续检测Mushgrove藻池",
  Callback = function(enabled)
    if enabled then
      if isMushgroveAlgaeDetectionEnabled then
        WindUI:Notify({
          Title = "提示",
          Content = "检测已在进行中！",
          Icon = "eye",
          Duration = 5,
        })
        return 
      end
      isMushgroveAlgaeDetectionEnabled = true
      local character = LocalPlayer.Character
      if not character then
        WindUI:Notify({
          Title = "错误",
          Content = "角色不存在，请等待角色加载！",
          Icon = "error",
          Duration = 10,
        })
        isMushgroveAlgaeDetectionEnabled = false
        return
      end
      local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
      if not humanoidRootPart then
        WindUI:Notify({
          Title = "错误",
          Content = "未找到 HumanoidRootPart，检测无法开始！",
          Icon = "error",
          Duration = 10,
        })
        isMushgroveAlgaeDetectionEnabled = false
        return 
      end
      savedMushgroveAlgaePosition = humanoidRootPart.CFrame
      
      task.spawn(function()
        local hasFoundPool = false
        while isMushgroveAlgaeDetectionEnabled do
          task.wait(1)
          
          local zones = workspace:FindFirstChild("zones")
          if zones then
            local fishing = zones:FindFirstChild("fishing")
            if fishing then
              local mushgroveAlgaePool = fishing:FindFirstChild("Mushgrove Algae Pool")
              if mushgroveAlgaePool and not hasFoundPool then
                if humanoidRootPart and humanoidRootPart.Parent then
                  humanoidRootPart.CFrame = CFrame.new(mushgroveAlgaePool.Position)
                  WindUI:Notify({
                    Title = "成功",
                    Content = "已传送至Mushgrove Algae区域中心！",
                    Icon = "eye",
                    Duration = 5,
                  })
                  hasFoundPool = true
                end
              elseif not mushgroveAlgaePool and hasFoundPool then
                if humanoidRootPart and humanoidRootPart.Parent and savedMushgroveAlgaePosition then
                  WindUI:Notify({
                    Title = "提示",
                    Content = "Mushgrove Algae点消失，正在飞回保存的位置！",
                    Icon = "home",
                    Duration = 5,
                  })
                  smoothTeleport(humanoidRootPart, savedMushgroveAlgaePosition)
                  hasFoundPool = false
                end
              end
            end
          end
        end
        WindUI:Notify({
          Title = "检测停止",
          Content = "玩家已退出检测！",
          Icon = "info",
          Duration = 5,
        })
      end)
    else
      isMushgroveAlgaeDetectionEnabled = false
      WindUI:Notify({
        Title = "提示",
        Content = "检测已关闭！",
        Icon = "eye",
        Duration = 5,
      })
    end
  end,
})
local isForsakenAlgaeDetectionEnabled = false
local savedForsakenAlgaePosition = nil
TeleportTab:Toggle({
  Title = "持续检测弃藻池",
  Callback = function(enabled)
    if enabled then
      if isForsakenAlgaeDetectionEnabled then
        WindUI:Notify({
          Title = "提示",
          Content = "检测已在进行中！",
          Icon = "eye",
          Duration = 5,
        })
        return 
      end
      isForsakenAlgaeDetectionEnabled = true
      local character = LocalPlayer.Character
      if not character then
        WindUI:Notify({
          Title = "错误",
          Content = "角色不存在，请等待角色加载！",
          Icon = "error",
          Duration = 10,
        })
        isForsakenAlgaeDetectionEnabled = false
        return
      end
      local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
      if not humanoidRootPart then
        WindUI:Notify({
          Title = "错误",
          Content = "未找到 HumanoidRootPart，检测无法开始！",
          Icon = "error",
          Duration = 10,
        })
        isForsakenAlgaeDetectionEnabled = false
        return 
      end
      savedForsakenAlgaePosition = humanoidRootPart.CFrame
      
      task.spawn(function()
        local hasFoundPool = false
        while isForsakenAlgaeDetectionEnabled do
          task.wait(1)
          
          local zones = workspace:FindFirstChild("zones")
          if zones then
            local fishing = zones:FindFirstChild("fishing")
            if fishing then
              local forsakenAlgaePool = fishing:FindFirstChild("Forsaken Algae Pool")
              if forsakenAlgaePool and not hasFoundPool then
                if humanoidRootPart and humanoidRootPart.Parent then
                  humanoidRootPart.CFrame = CFrame.new(forsakenAlgaePool.Position)
                  WindUI:Notify({
                    Title = "成功",
                    Content = "已传送至弃藻池区域中心！",
                    Icon = "eye",
                    Duration = 5,
                  })
                  hasFoundPool = true
                end
              elseif not forsakenAlgaePool and hasFoundPool then
                if humanoidRootPart and humanoidRootPart.Parent and savedForsakenAlgaePosition then
                  WindUI:Notify({
                    Title = "提示",
                    Content = "弃藻池点消失，正在飞回保存的位置！",
                    Icon = "home",
                    Duration = 5,
                  })
                  smoothTeleport(humanoidRootPart, savedForsakenAlgaePosition)
                  hasFoundPool = false
                end
              end
            end
          end
        end
        WindUI:Notify({
          Title = "检测停止",
          Content = "玩家已退出检测！",
          Icon = "info",
          Duration = 5,
        })
      end)
    else
      isForsakenAlgaeDetectionEnabled = false
      WindUI:Notify({
        Title = "提示",
        Content = "检测已关闭！",
        Icon = "eye",
        Duration = 5,
      })
    end
  end,
})
local isMegalodonV2DetectionEnabled = false
local megalodonV2Offset = Vector3.new(0, 5, 0)
local savedMegalodonV2Position = nil
TeleportTab:Toggle({
  Title = "持续检测巨齿鲨v2",
  Callback = function(enabled)
    if enabled then
      if isMegalodonV2DetectionEnabled then
        WindUI:Notify({
          Title = "提示",
          Content = "检测已在进行中！",
          Icon = "eye",
          Duration = 5,
        })
        return 
      end
      isMegalodonV2DetectionEnabled = true
      local character = LocalPlayer.Character
      if not character then
        WindUI:Notify({
          Title = "错误",
          Content = "角色不存在，请等待角色加载！",
          Icon = "error",
          Duration = 10,
        })
        isMegalodonV2DetectionEnabled = false
        return
      end
      local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
      if not humanoidRootPart then
        WindUI:Notify({
          Title = "错误",
          Content = "未找到 HumanoidRootPart，检测无法开始！",
          Icon = "error",
          Duration = 10,
        })
        isMegalodonV2DetectionEnabled = false
        return 
      end
      savedMegalodonV2Position = humanoidRootPart.CFrame
      
      task.spawn(function()
        local hasFoundMegalodon = false
        while isMegalodonV2DetectionEnabled do
          task.wait(1)
          
          local zones = workspace:FindFirstChild("zones")
          if zones then
            local fishing = zones:FindFirstChild("fishing")
            if fishing then
              local megalodon = fishing:FindFirstChild("Megalodon Default")
              if megalodon and not hasFoundMegalodon then
                if humanoidRootPart and humanoidRootPart.Parent then
                  humanoidRootPart.CFrame = CFrame.new(megalodon.Position + megalodonV2Offset)
                  WindUI:Notify({
                    Title = "成功",
                    Content = "已传送至巨齿鲨区域中心！",
                    Icon = "eye",
                    Duration = 5,
                  })
                  hasFoundMegalodon = true
                end
              elseif not megalodon and hasFoundMegalodon then
                if humanoidRootPart and humanoidRootPart.Parent and savedMegalodonV2Position then
                  WindUI:Notify({
                    Title = "提示",
                    Content = "巨齿鲨点消失，正在飞回保存的位置！",
                    Icon = "home",
                    Duration = 5,
                  })
                  smoothTeleport(humanoidRootPart, savedMegalodonV2Position)
                  hasFoundMegalodon = false
                end
              end
            end
          end
        end
        WindUI:Notify({
          Title = "检测停止",
          Content = "玩家已退出检测！",
          Icon = "info",
          Duration = 5,
        })
      end)
    else
      isMegalodonV2DetectionEnabled = false
      WindUI:Notify({
        Title = "提示",
        Content = "检测已关闭！",
        Icon = "eye",
        Duration = 5,
      })
    end
  end,
})
local isMegalodonV21DetectionEnabled = false
local megalodonV21Offset = Vector3.new(0, 135, 0)
local savedMegalodonV21Position = nil
TeleportTab:Toggle({
  Title = "持续检测巨齿鲨v2.1",
  Callback = function(enabled)
    if enabled then
      if isMegalodonV21DetectionEnabled then
        WindUI:Notify({
          Title = "提示",
          Content = "检测已在进行中！",
          Icon = "eye",
          Duration = 5,
        })
        return 
      end
      isMegalodonV21DetectionEnabled = true
      local character = LocalPlayer.Character
      if not character then
        WindUI:Notify({
          Title = "错误",
          Content = "角色不存在，请等待角色加载！",
          Icon = "error",
          Duration = 10,
        })
        isMegalodonV21DetectionEnabled = false
        return
      end
      local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
      if not humanoidRootPart then
        WindUI:Notify({
          Title = "错误",
          Content = "未找到 HumanoidRootPart，检测无法开始！",
          Icon = "error",
          Duration = 10,
        })
        isMegalodonV21DetectionEnabled = false
        return 
      end
      savedMegalodonV21Position = humanoidRootPart.CFrame
      
      task.spawn(function()
        local hasFoundMegalodon = false
        while isMegalodonV21DetectionEnabled do
          task.wait(1)
          
          local zones = workspace:FindFirstChild("zones")
          if zones then
            local fishing = zones:FindFirstChild("fishing")
            if fishing then
              local megalodon = fishing:FindFirstChild("Megalodon Default")
              if megalodon and not hasFoundMegalodon then
                if humanoidRootPart and humanoidRootPart.Parent then
                  local targetCFrame = CFrame.new(megalodon.Position + megalodonV21Offset)
                  WindUI:Notify({
                    Title = "成功",
                    Content = "正在飞往巨齿鲨区域！",
                    Icon = "eye",
                    Duration = 5,
                  })
                  hasFoundMegalodon = true
                  smoothTeleport(humanoidRootPart, targetCFrame)
                end
              elseif not megalodon and hasFoundMegalodon then
                if humanoidRootPart and humanoidRootPart.Parent and savedMegalodonV21Position then
                  WindUI:Notify({
                    Title = "提示",
                    Content = "巨齿鲨点消失，正在飞回保存的位置！",
                    Icon = "home",
                    Duration = 5,
                  })
                  smoothTeleport(humanoidRootPart, savedMegalodonV21Position)
                  hasFoundMegalodon = false
                end
              end
            end
          end
        end
        WindUI:Notify({
          Title = "检测停止",
          Content = "玩家已退出检测！",
          Icon = "info",
          Duration = 5,
        })
      end)
    else
      isMegalodonV21DetectionEnabled = false
      WindUI:Notify({
        Title = "提示",
        Content = "检测已关闭！",
        Icon = "eye",
        Duration = 5,
      })
    end
  end,
})
TeleportTab:Section({
  Title = "事件传送",
})
local isDepthsSerpentDetectionEnabled = false
TeleportTab:Button({
  Title = "检测深度-蛇",
  Callback = function()
    if isDepthsSerpentDetectionEnabled or isMegalodonV2DetectionEnabled or isMegalodonV21DetectionEnabled then
      WindUI:Notify({
        Title = "提示",
        Content = "检测已在进行中",
        Icon = "eye",
        Duration = 5,
      })
      return 
    end
    isDepthsSerpentDetectionEnabled = true
    local offset = Vector3.new(0, 135, 0)
    task.spawn(function()
      local character = LocalPlayer.Character
      if not character then
        WindUI:Notify({
          Title = "错误",
          Content = "角色不存在，请等待角色加载！",
          Icon = "error",
          Duration = 10,
        })
        isDepthsSerpentDetectionEnabled = false
        return
      end
      
      while isDepthsSerpentDetectionEnabled do
        task.wait(1)
        
        local zones = workspace:FindFirstChild("zones")
        if zones then
          local fishing = zones:FindFirstChild("fishing")
          if fishing then
            local depthsSerpent = fishing:FindFirstChild("The Depths - Serpent")
            if depthsSerpent then
              local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
              if humanoidRootPart then
                humanoidRootPart.CFrame = CFrame.new(depthsSerpent.Position + offset)
                WindUI:Notify({
                  Title = "成功",
                  Content = "玩家已传送至 深度蛇",
                  Icon = "eye",
                  Duration = 10,
                })
              else
                WindUI:Notify({
                  Title = "错误",
                  Content = "未找到玩家的 HumanoidRootPart",
                  Icon = "error",
                  Duration = 10,
                })
              end
              isDepthsSerpentDetectionEnabled = false
              break
            end
          end
        end
      end
      
      if isDepthsSerpentDetectionEnabled then
        WindUI:Notify({
          Title = "检测停止",
          Content = "深度蛇已找到或检测已终止",
          Icon = "info",
          Duration = 5,
        })
        isDepthsSerpentDetectionEnabled = false
      end
    end)
  end,
})
local isMegalodonDetectionEnabled = false
TeleportTab:Button({
  Title = "检测巨齿鲨",
  Callback = function()
    if isMegalodonDetectionEnabled or isMegalodonV2DetectionEnabled or isMegalodonV21DetectionEnabled then
      WindUI:Notify({
        Title = "提示",
        Content = "检测已在进行中",
        Icon = "eye",
        Duration = 5,
      })
      return 
    end
    isMegalodonDetectionEnabled = true
    local offset = Vector3.new(0, 135, 0)
    task.spawn(function()
      local character = LocalPlayer.Character
      if not character then
        WindUI:Notify({
          Title = "错误",
          Content = "角色不存在，请等待角色加载！",
          Icon = "error",
          Duration = 10,
        })
        isMegalodonDetectionEnabled = false
        return
      end
      
      while isMegalodonDetectionEnabled do
        task.wait(1)
        
        local zones = workspace:FindFirstChild("zones")
        if zones then
          local fishing = zones:FindFirstChild("fishing")
          if fishing then
            local megalodon = fishing:FindFirstChild("Megalodon Default")
            if megalodon then
              local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
              if humanoidRootPart then
                humanoidRootPart.CFrame = CFrame.new(megalodon.Position + offset)
                WindUI:Notify({
                  Title = "成功",
                  Content = "玩家已传送至 巨齿鲨",
                  Icon = "eye",
                  Duration = 10,
                })
              else
                WindUI:Notify({
                  Title = "错误",
                  Content = "未找到玩家的 HumanoidRootPart",
                  Icon = "error",
                  Duration = 10,
                })
              end
              isMegalodonDetectionEnabled = false
              break
            end
          end
        end
      end
      
      if isMegalodonDetectionEnabled then
        WindUI:Notify({
          Title = "检测停止",
          Content = "巨齿鲨已找到或检测已终止",
          Icon = "info",
          Duration = 5,
        })
        isMegalodonDetectionEnabled = false
      end
    end)
  end,
})
TeleportTab:Button({
  Title = "Sunken Chests",
  Callback = function()
    local offset = Vector3.new(0, 135, 0)
    local zones = workspace:FindFirstChild("zones")
    if not zones then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 zones",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local fishing = zones:FindFirstChild("fishing")
    if not fishing then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 fishing 区域",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local sunkenChests = fishing:FindFirstChild("Sunken Chests")
    if not sunkenChests then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 Sunken Chests",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local character = LocalPlayer.Character
    if not character then
      WindUI:Notify({
        Title = "错误",
        Content = "角色不存在，请等待角色加载！",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
      humanoidRootPart.CFrame = CFrame.new(sunkenChests.Position + offset)
      WindUI:Notify({
        Title = "成功",
        Content = "玩家已传送至 Sunken Chests",
        Icon = "eye",
        Duration = 10,
      })
    else
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 HumanoidRootPart",
        Icon = "error",
        Duration = 10,
      })
    end
  end,
})
TeleportTab:Button({
  Title = "弃藻池",
  Callback = function()
    local offset = Vector3.new(0, 135, 0)
    local zones = workspace:FindFirstChild("zones")
    if not zones then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 zones",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local fishing = zones:FindFirstChild("fishing")
    if not fishing then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 fishing 区域",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local forsakenAlgaePool = fishing:FindFirstChild("Forsaken Algae Pool")
    if not forsakenAlgaePool then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 弃藻池",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local character = LocalPlayer.Character
    if not character then
      WindUI:Notify({
        Title = "错误",
        Content = "角色不存在，请等待角色加载！",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
      humanoidRootPart.CFrame = CFrame.new(forsakenAlgaePool.Position + offset)
      WindUI:Notify({
        Title = "成功",
        Content = "玩家已传送至 弃藻池",
        Icon = "eye",
        Duration = 10,
      })
    else
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 HumanoidRootPart",
        Icon = "error",
        Duration = 10,
      })
    end
  end,
})
TeleportTab:Button({
  Title = "奇怪的漩涡",
  Callback = function()
    local offset = Vector3.new(25, 135, 25)
    local zones = workspace:FindFirstChild("zones")
    if not zones then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 zones",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local fishing = zones:FindFirstChild("fishing")
    if not fishing then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 fishing 区域",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local isonade = fishing:FindFirstChild("Isonade")
    if not isonade then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 奇怪的漩涡",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local character = LocalPlayer.Character
    if not character then
      WindUI:Notify({
        Title = "错误",
        Content = "角色不存在，请等待角色加载！",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
      humanoidRootPart.CFrame = CFrame.new(isonade.Position + offset)
      WindUI:Notify({
        Title = "成功",
        Content = "玩家已传送至 奇怪的漩涡",
        Icon = "eye",
        Duration = 10,
      })
    else
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 HumanoidRootPart",
        Icon = "error",
        Duration = 10,
      })
    end
  end,
})
TeleportTab:Button({
  Title = "大锤头鲨",
  Callback = function()
    local offset = Vector3.new(0, 135, 0)
    local zones = workspace:FindFirstChild("zones")
    if not zones then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 zones",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local fishing = zones:FindFirstChild("fishing")
    if not fishing then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 fishing 区域",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local greatHammerheadShark = fishing:FindFirstChild("Great Hammerhead Shark")
    if not greatHammerheadShark then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 大锤头鲨",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local character = LocalPlayer.Character
    if not character then
      WindUI:Notify({
        Title = "错误",
        Content = "角色不存在，请等待角色加载！",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
      humanoidRootPart.CFrame = CFrame.new(greatHammerheadShark.Position + offset)
      WindUI:Notify({
        Title = "成功",
        Content = "玩家已传送至 大锤头鲨",
        Icon = "eye",
        Duration = 10,
      })
    else
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 HumanoidRootPart",
        Icon = "error",
        Duration = 10,
      })
    end
  end,
})
TeleportTab:Button({
  Title = "大白鲨",
  Callback = function()
    local offset = Vector3.new(0, 135, 0)
    local zones = workspace:FindFirstChild("zones")
    if not zones then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 zones",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local fishing = zones:FindFirstChild("fishing")
    if not fishing then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 fishing 区域",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local greatWhiteShark = fishing:FindFirstChild("Great White Shark")
    if not greatWhiteShark then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 大白鲨",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local character = LocalPlayer.Character
    if not character then
      WindUI:Notify({
        Title = "错误",
        Content = "角色不存在，请等待角色加载！",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
      humanoidRootPart.CFrame = CFrame.new(greatWhiteShark.Position + offset)
      WindUI:Notify({
        Title = "成功",
        Content = "玩家已传送至 大白鲨",
        Icon = "eye",
        Duration = 10,
      })
    else
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 HumanoidRootPart",
        Icon = "error",
        Duration = 10,
      })
    end
  end,
})
TeleportTab:Button({
  Title = "巨齿鲨",
  Callback = function()
    local offset = Vector3.new(0, 135, 0)
    local zones = workspace:FindFirstChild("zones")
    if not zones then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 zones",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local fishing = zones:FindFirstChild("fishing")
    if not fishing then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 fishing 区域",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local megalodon = fishing:FindFirstChild("Megalodon Default")
    if not megalodon then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 巨齿鲨",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local character = LocalPlayer.Character
    if not character then
      WindUI:Notify({
        Title = "错误",
        Content = "角色不存在，请等待角色加载！",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
      humanoidRootPart.CFrame = CFrame.new(megalodon.Position + offset)
      WindUI:Notify({
        Title = "成功",
        Content = "玩家已传送至 巨齿鲨",
        Icon = "eye",
        Duration = 10,
      })
    else
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 HumanoidRootPart",
        Icon = "error",
        Duration = 10,
      })
    end
  end,
})
TeleportTab:Button({
  Title = "鲸鲨",
  Callback = function()
    local offset = Vector3.new(0, 135, 0)
    local zones = workspace:FindFirstChild("zones")
    if not zones then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 zones",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local fishing = zones:FindFirstChild("fishing")
    if not fishing then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 fishing 区域",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local whaleShark = fishing:FindFirstChild("Whale Shark")
    if not whaleShark then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 鲸鲨",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local character = LocalPlayer.Character
    if not character then
      WindUI:Notify({
        Title = "错误",
        Content = "角色不存在，请等待角色加载！",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
      humanoidRootPart.CFrame = CFrame.new(whaleShark.Position + offset)
      WindUI:Notify({
        Title = "成功",
        Content = "玩家已传送至 鲸鲨",
        Icon = "eye",
        Duration = 10,
      })
    else
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 HumanoidRootPart",
        Icon = "error",
        Duration = 10,
      })
    end
  end,
})
TeleportTab:Button({
  Title = "深度-蛇",
  Callback = function()
    local offset = Vector3.new(0, 50, 0)
    local zones = workspace:FindFirstChild("zones")
    if not zones then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 zones",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local fishing = zones:FindFirstChild("fishing")
    if not fishing then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 fishing 区域",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local depthsSerpent = fishing:FindFirstChild("The Depths - Serpent")
    if not depthsSerpent then
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 深度-蛇",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local character = LocalPlayer.Character
    if not character then
      WindUI:Notify({
        Title = "错误",
        Content = "角色不存在，请等待角色加载！",
        Icon = "error",
        Duration = 10,
      })
      return
    end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
      humanoidRootPart.CFrame = CFrame.new(depthsSerpent.Position + offset)
      WindUI:Notify({
        Title = "成功",
        Content = "玩家已传送至 深度-蛇",
        Icon = "eye",
        Duration = 10,
      })
    else
      WindUI:Notify({
        Title = "错误",
        Content = "未找到 HumanoidRootPart",
        Icon = "error",
        Duration = 10,
      })
    end
  end,
})
local function createPlayerTeleportButton(playerName, player)
  playerTeleportButtons[player.Name] = TPTab:Button({
    Title = playerName,
    Callback = function()
      local targetCharacter = player.Character
      if targetCharacter and targetCharacter:FindFirstChild("HumanoidRootPart") then
        local localCharacter = LocalPlayer.Character
        if localCharacter and localCharacter.PrimaryPart then
          localCharacter:SetPrimaryPartCFrame(CFrame.new(targetCharacter.HumanoidRootPart.Position))
        else
          WindUI:Notify({
            Title = "错误",
            Content = "本地角色或 PrimaryPart 不存在",
            Icon = "error",
            Duration = 10,
          })
        end
      else
        WindUI:Notify({
          Title = "错误",
          Content = "目标玩家角色不存在",
          Icon = "error",
          Duration = 10,
        })
      end
    end,
  })
  print("Created button for: " .. playerName)
end
local function removePlayerTeleportButton(playerName)
  local button = playerTeleportButtons[playerName]
  if button then
    if typeof(button) == "Instance" then
      button:Destroy()
    elseif button.Destroy then
      button:Destroy()
    elseif button.Remove then
      button:Remove()
    elseif button.Parent then
      button.Parent = nil
    end
    playerTeleportButtons[playerName] = nil
    print("Removed button for: " .. playerName)
  end
end
local function refreshPlayerTeleportButtons()
  for playerName, button in pairs(playerTeleportButtons) do
    removePlayerTeleportButton(playerName)
  end
  for _, player in pairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
      createPlayerTeleportButton(player.Name, player)
    end
  end
end
Players.PlayerAdded:Connect(function(player)
  print("Player joined: " .. player.Name)
  player.CharacterAdded:Connect(function()
    refreshPlayerTeleportButtons()
  end)
end)
Players.PlayerRemoving:Connect(function(player)
  print("Player left: " .. player.Name)
  removePlayerTeleportButton(player.Name)
end)
refreshPlayerTeleportButtons()
local feedbackInput = FeedbackTab:Input({
  Title = "输入",
  Desc = "输入你想反馈的",
  Value = "输入",
  PlaceholderText = "你在看什么嘛",
  ClearTextOnFocus = true,
  Callback = function(feedbackContent)
    if feedbackContent == "" then
      warn("反馈内容不能为空！")
      return 
    end
    local embedData = {
      username = "Feedback Bot",
      embeds = {
        {
          color = 3329330,
          title = "新反馈提交",
          description = feedbackContent,
          thumbnail = {
            url = feedbackAvatarImageUrl,
          },
          fields = {
            {
              name = "名称(Name)",
              value = LocalPlayer.Name,
              inline = true,
            },
            {
              name = "昵称(DisplayName)",
              value = LocalPlayer.DisplayName,
              inline = true,
            },
            {
              name = "UserId",
              value = string.format("[%d](https://qun.qq.com/universal-share/share?ac=1&authKey=iQx14Dw1z3ejxBpT1lH0q8qkExrBO1CvMEVq%2F0mFytOC4IkNWSHvtjrIMPnwIAVY&busi_data=eyJncm91cENvZGUiOiI5NDc2Mzg5NDUiLCJ0b2tlbiI6IkU3dEo2YUw5NEJ3M2JReXFlWEp2LytucndCV2QzTGt6cGttNXVscEoxQTFNTytzM0dMenQ0VVFOcFdWNC9kMDciLCJ1aW4iOiIzMTI2Mjk1MjA1In0%3D&data=r5nlbSx8OY0T0HyvCsd_kO0S5eACeMU-AUwG_5zP_3ojOXmziavbY8ZWivu2p91o5OaiKyMzWNlknABkM_UBmg&svctype=4&tempid=h5_group_info)", LocalPlayer.UserId, LocalPlayer.UserId),
              inline = true,
            },
            {
              name = "设备",
              value = feedbackDeviceType,
              inline = true,
            },
            {
              name = "HWID",
              value = feedbackHwid,
              inline = true,
            },
            {
              name = "加入日期",
              value = feedbackJoinDateString,
              inline = true,
            }
          },
          footer = {
            text = "反馈时间: " .. os.date("%Y-%m-%d %H:%M:%S"),
          },
        }
      },
    }
    local httpRequest = http_request or request
    if not httpRequest and syn then
      httpRequest = syn.request
    end
    if httpRequest then
      local success, errorMessage = pcall(function()
        httpRequest({
          Url = webhookUrl,
          Method = "POST",
          Headers = {
            ["Content-Type"] = "application/json",
          },
          Body = HttpService:JSONEncode(embedData),
        })
      end)
      if success then
        print("反馈提交成功！")
      else
        warn("反馈提交失败：", errorMessage)
      end
    else
      warn("未找到可用的HTTP请求函数")
    end
  end,
})
FeedbackTab:Button({
  Title = "发送",
  Callback = function()
    print("发送反馈请求")
  end,
})

themeNameInput = ThemeTab:Input({
  Title = "主题",
  Value = currentThemeName,
  Callback = function(input)
    currentThemeName = input
  end,
})
ThemeTab:Colorpicker({
  Title = "背景",
  Default = (function()
    local success, result = pcall(function() return Color3.fromHex(accentColor) end)
    return success and result or Color3.fromHex("#1e88e5")
  end)(),
  Callback = function(color)
    accentColor = color:ToHex()
  end,
})
ThemeTab:Colorpicker({
  Title = "框",
  Default = (function()
    local success, result = pcall(function() return Color3.fromHex(outlineColor) end)
    return success and result or Color3.fromHex("#ffffff")
  end)(),
  Callback = function(color)
    outlineColor = color:ToHex()
  end,
})
ThemeTab:Colorpicker({
  Title = "文本",
  Default = (function()
    local success, result = pcall(function() return Color3.fromHex(textColor) end)
    return success and result or Color3.fromHex("#ffffff")
  end)(),
  Callback = function(color)
    textColor = color:ToHex()
  end,
})
ThemeTab:Colorpicker({
  Title = "输入框文本",
  Default = (function()
    local success, result = pcall(function() return Color3.fromHex(placeholderTextColor) end)
    return success and result or Color3.fromHex("#808080")
  end)(),
  Callback = function(color)
    placeholderTextColor = color:ToHex()
  end,
})
ThemeTab:Button({
  Title = "更新主题",
  Callback = function()
    
    updateTheme()
  end,
})
SettingsTab:Section({
  Title = "主题",
})
SettingsTab:Dropdown({
  Title = "选择主题",
  Multi = false,
  AllowNone = false,
  Value = nil,
  Values = themeList,
  Callback = function(selectedTheme)
    WindUI:SetTheme(selectedTheme)
  end,
}):Select(WindUI:GetCurrentTheme())
transparencyToggle = SettingsTab:Toggle({
  Title = "切换窗口透明度",
  Callback = function(enabled)
    Window:ToggleTransparency(enabled)
  end,
  Value = WindUI:GetTransparency(),
})
SettingsTab:Section({
  Title = "文件",
})
settingsFileName = ""
SettingsTab:Input({
  Title = "写入文件名",
  PlaceholderText = "输入文件名",
  Callback = function(input)
    settingsFileName = input
  end,
})
SettingsTab:Button({
  Title = "保存文件",
  Callback = function()
    if settingsFileName ~= "" then
      saveSettings(settingsFileName, {
        Transparent = WindUI:GetTransparency(),
        Theme = WindUI:GetCurrentTheme(),
      })
    end
  end,
})
SettingsTab:Section({
  Title = "文件",
})
fileDropdown = SettingsTab:Dropdown({
  Title = "选择文件",
  Multi = false,
  AllowNone = true,
  Values = listSettingsFiles(),
  Callback = function(selectedFile)
    settingsFileName = selectedFile
  end,
})
SettingsTab:Button({
  Title = "载入文件",
  Callback = function()
    if settingsFileName ~= "" then
      local loadedData = loadSettings(settingsFileName)
      if loadedData then
        WindUI:Notify({
          Title = "文件已加载",
          Content = "加载的数据: " .. HttpService:JSONEncode(loadedData),
          Duration = 5,
        })
        if loadedData.Transparent ~= nil then
          Window:ToggleTransparency(loadedData.Transparent)
          transparencyToggle:SetValue(loadedData.Transparent)
        end
        if loadedData.Theme then
          WindUI:SetTheme(loadedData.Theme)
        end
      else
        WindUI:Notify({
          Title = "错误",
          Content = "无法加载文件",
          Icon = "error",
          Duration = 5,
        })
      end
    end
  end,
})
SettingsTab:Button({
  Title = "覆盖文件",
  Callback = function()
    if settingsFileName ~= "" then
      saveSettings(settingsFileName, {
        Transparent = WindUI:GetTransparency(),
        Theme = WindUI:GetCurrentTheme(),
      })
    end
  end,
})
SettingsTab:Button({
  Title = "刷新列表",
  Callback = function()
    if fileDropdown then
      fileDropdown:Refresh(listSettingsFiles())
    end
  end,
})
GuideTab:Code({
  Title = "新版本",
  Code = [[
虚空树枝(主权祭坛钓)
地狱树枝(火山钓)
古老树枝(太阳岛钓)
月亮树枝(雪帽晚上或日食钓)
月亮线(开宝藏) ↓
魔法线(开宝藏)(概率钓出)
古代线(开宝藏) ↑
太阳碎片(日食古代岛最高处拿)
(需在日食天气↑)
深海碎片(瀑布最下面水里获得)
地球碎片(古代岛高处山洞获得)
古代碎片(古代岛瀑布钓)
月长石↓
天青石↓
红宝石(五颗全在陨石获得)
紫宝石↑
蛋白石↑
金色海洋珍珠(海湾钓clam获得)
漂浮木(海湾下笼子大概率获得)
神话漂浮木↓(使用垃圾饵)
(使用神话竿钓↑)
亚特兰蒂斯漂浮木↓(用垃圾饵)
(使用三叉戟竿钓↑)
月光漂浮木(通过鉴定或钓获得)
冰冻漂浮木↑
尖牙↓
(远古岛瀑布钓)
脊柱↑
---------------
圣诞节任务↓
先找圣诞老人接任务↓
钓20条圣诞鱼(地图限定)↓
(新增任务)
需在糖果工厂购买糖果竿↓
奖励↓
称号:圣诞老人的帮手
新船:雪橇
鱼飘:雪花玻璃球
初始代币Token
---------------
跟着糖果找到精灵
需要初始代币
任务二段↓
任务一↓
启动礼物机器
任务二↓
把礼物送给九位精灵
位置↓
moose
(圣诞签到活动旁)
Ancient
(正对瀑布左边)
Terrapin
(岛右方)
Snowcap
(商人npc附近)
Roslit
(跟糖果爬火山)
Forsaken
(码头甲板上)
Sunstone
(商人npc附近)
Statue
(入口梯子位置)
Mushgrove
(建船npc附近)
任务三↓
钓圣诞鱼45件(地图限定)
回去找精灵完成任务
奖励↓
称号:精灵帮手
新船:驯鹿巡航舰
鱼飘:圣诞精华
精英代币:Token
---------------
雪山版本1.11更新
天堂竿位置↓
(需前往四色宝石位置)
(四色宝石位置下去用滑翔机)
(需放置四色宝石打开大门)
保暖服位置↓
(三号补给点五号npc处)
(20176 783 5725)↑
稿子位置↓
(二号补给点内)
(19783 412 5391)↑
宝石获得位置
(所有宝石位置固定)
蓝色宝石
(20130 208 5447)↑
(需购买稿子挖出来) 
绿色宝石
(19877 448 5558)↑
(在二号补给点洞中npc获得)
黄色宝石
(19499 335 5556)↑
(在雪崩期间在地上捡起)
红色宝石
(19925 1137  5353)↑
(需做任务获得)↑
(红色宝石任务)↓
(需接任务后按按钮)
(按钮不可以先按)
(在山顶和12号npc说话)
任务1↓
(需获得其他三颗宝石)
任务2↓
(按下五处按钮)
位置↓
罗利斯特
(买降落伞那个木头上)
(-1717 148 733)↑
雪帽↓
(丢竿人左边的灯) 
(2926 281 2591)↑
海盗↓
(右岛其中一个瞭望塔上)
(-2556 181 1350)↑
初始岛↓
(牌子后方)
(402 136 267)↑
古岛↓
(石竿购买处)
(5504 143 -316)↑
(按下后返回雪山和12号沟通)
(聊天结束花25w购买)
雪山开关位置↓
开关1↓
(19880 424 5377)
开关2↓
(19593 543 5615)
开关3↓
(19436 690 5859)
开关4↓
(19848 476 4967)
开关5↓
(20199 854 5646)
开关6↓
(19963 586 5570)
雪山图腾位置↓
暴风雪图腾↓
(三号补给点保暖衣左边)
(20142 743 5805)
雪崩图腾↓
(合作竿继续爬到桥附近)
(19710 467 6053)
珊瑚礁版本更新1.13
位于正对海盗右边
周围会出现闪电特效
四个小岛可钓任意鱼
位置↓
-3575 151 524
(岛内大概率上雷暴词条)
水下封闭的大门
(里面空的)
位置↓
-3829 -102 524
(钓鱼可使用垃圾饵)
(大概率上传说以下鱼)]],
})
GuideTab:Code({
  Title = "红宝石",
  Code = [[
红宝石隐藏任务5个按钮的位置
接任务的npc(前提获得其他3个宝石)(对话完不用管)
19925,1127,5360
按钮1
402,137,267
按钮2
-1717,148,732
按钮3
2930,281,2592
按钮5
5505,143,-316
按钮4
-2565,181,1350]],
})
GuideTab:Code({
  Title = "攻略",
  Code = [[
蓝色宝石
(需购买稿子挖出来)
绿色宝石
(在二号补给点洞中npc获得)
黄色宝石
(在雪崩期间在地上捡起)
红色宝石
(需获得其他三颗宝石)
(然后按按钮)
罗利斯特
(买降落伞那个木头上)
雪山
(丢竿人左边的灯)
海盗
(右岛其中一个瞭望塔上)
初始岛
(牌子后方)
古岛
(石竿购买处)
(按下后反回花25w购买)]],
})
GuideTab:Code({
  Title = "雪山攻略",
  Code = [[
绿色氧气瓶
19523,132,5325
黄色氧气瓶和镐子
19781,415,5387
红色氧气瓶和Summit Rob
20210,739,5713
橙色氧气瓶和滑翔翼
19947,1142,5543
Winter Cloak(冬季斗篷/保温服)(位置不一样，东西一样)
199955,1142,5579或
20175,780,5724
拉杆1(用镐子砸开进去拉)
19841,424,5358
拉杆2
20193,854,5646
拉杆3
19599,543,5621
拉杆4
19433,690,5854
拉杆5
19857,476,4968
拉杆6(全部拉完Ice Warpers Rod会出现)
19968,586,5572
一个不知道有啥用的祭坛还有一根杆
19245,396,6045
一个水池(目前不知道有啥用)
19840,438,5612
蓝宝石(买镐子挖)
20130,208,5446]],
})
GuideTab:Code({
  Title = "攻略",
  Code = [[
虚空树枝(主权祭坛钓)
地狱树枝(火山钓)
古老树枝(太阳岛钓)
月亮树枝(雪帽晚上或日食钓)
月亮线(开宝藏) ↓
魔法线(开宝藏)(概率钓出)
古代线(开宝藏) ↑
太阳碎片(日食古代岛最高处拿)
(需在日食天气↑)
深海碎片(瀑布最下面水里获得)
地球碎片(古代岛高处山洞获得)
古代碎片(古代岛瀑布钓)
月长石↓
天青石↓
红宝石(五颗全在陨石获得)
紫宝石↑
蛋白石↑
金色海洋珍珠(海湾钓clam获得)
漂浮木(海湾下笼子大概率获得)
神话漂浮木↓(使用垃圾饵)
(使用神话竿钓↑)
亚特兰蒂斯漂浮木↓(用垃圾饵)
(使用三叉戟竿钓↑)
月光漂浮木(通过鉴定或钓获得)
冰冻漂浮木↑
尖牙↓
(远古岛瀑布钓)
脊柱↑
---------------
圣诞节任务↓
先找圣诞老人接任务↓
钓20条圣诞鱼(地图限定)↓
奖励↓
称号:圣诞老人的帮手
新船:雪橇
鱼飘:雪花玻璃球
初始代币Token
---------------
跟着糖果找到精灵
需要初始代币
任务二段↓
任务一↓
启动礼物机器
任务二↓
把礼物送给九位精灵
位置↓
moose
(圣诞签到活动旁)
Ancient
(正对瀑布左边)
Terrapin
(岛右方)
Snowcap
(商人npc附近)
Roslit
(跟糖果爬火山)
Forsaken
(码头甲板上)
Sunstone
(商人npc附近)
Statue
(入口梯子位置)
Mushgrove
(建船npc附近)
任务三↓
钓圣诞鱼45条(地图限定)
回去找精灵完成任务
奖励↓
称号:精灵帮手
新船:驯鹿巡航舰
鱼飘:圣诞精华
精英代币:Token
竿↓
Event Horizon rod
视界杆(黑洞竿))]],
})
GuideTab:Code({
  Title = "宝箱里的各个物品",
  Code = [[
金币 100-2000
稀有海藻x6
松露虫x6
优质鱼饵箱x3
鱼飘 金币 指南针 鲸鱼 红玛瑙魔方
Sunken 突变
刮刮乐
天气图腾 太阳 雨 风 北极光
沉没竿]],
})
GuideTab:Code({
  Title = "合成材料",
  Code = [[
精确杆(precison rod)
饵速20%
运气150%
控制0%
恢复力5%
最大公斤12000kg
技能介绍
与快速杆相对应但具有更好的弹性(counterpart to rapid rod with much better resiliench)
材料
紫宝石(Amethyst)*1
神话漂浮木(Mythical Driftwood)*2
魔法线(Magic Thread)*1
---------------
智慧棒(Wisdom  Rod)
饵速0%
运气20%
控制0.05%
恢复力0%
最大公斤800kg
技能介绍
一根神秘的棍子 奖励连续5次钓鱼成功接住后给予70-100%的经验值奖励(A mystical rod that rewards consecutive catches granting a 70-100% XP bonus after 5 successful catches in a row)
材料
紫宝石(Amethyst)*1
神话漂浮木(Mythical Driftwood)*2
魔法线(Magic Thread)*1
---------------
资源丰富棒(Resourceful Rod)
两种名字不清楚(足智多谋棒)
饵速15%
运气20%
控制-0.01%
恢复力0%
最大公斤1000kg%
技能介绍
加倍所有诱饵的效果 增强你的钓鱼经验 提高每次捕鱼的效率(Doubles the effects of all bait enhancing your fishing experience and increasing the effciency of every catch)
材料
紫宝石(Amethyst)*1
月光漂浮木(Lunar Driftwood)*2
魔法线(Magic Thread)*1
]],
})
GuideTab:Code({
  Title = "鱼竿介绍",
  Code = [[
天界杆 价格100000 远古岛锻造台 被动:捕获85条鱼后召唤"神力"提升50%运气和30%引诱速度并带有天界突变鱼（x2倍值）

永恒之王杆 价格250000 同上 被动:每隔30秒有10%概率召唤"皇家护卫"在30秒内提升150%运气且当错失1条鱼时15%概率立即捕获高一等阶的鱼 20%概率捕捉贪婪突变鱼（x4倍值）

被遗忘的尖牙之杆 价格300000 同上 被动:三次完美捕鱼后召唤一只巨齿鲨带有一只随机复制本次钓的鱼从背包内并提供15%-20%尺寸

鹿角杆 价格0 圣诞签到获得 被动:25%概率捕获快乐突变鱼（x1.2倍值）（绝版）

北极星杆 价格0 同上 （绝版）

拐杖糖杆 价格1500 圣诞冰雪镇购买 被动:10%概率捕获节庆突变鱼（x1.4倍值）（绝版）

冰霜杆 价格0 799robux圣诞礼包（绝版）

遗迹杆 价格8000 收集十种化石获取图纸去远古岛解密获得（绝版）

石杆 价格3000 在远古岛旁边小岛

凤凰杆 价格40000 在远古岛洞穴里 被动:40%概率捕获烧焦突变鱼（x1.3倍值）

精密杆 价格7500 远古岛锻造台 被动:更高的控制力

智慧杆 价格50000 同上 被动:五次成功捕捉后的下一条鱼增加70%-100%经验值

机智杆 价格15000 同上 被动:所有诱饵效果加倍（负面效果不变）

季节竿 价格35000 同上 被动:捕获当前季节鱼运气增加20% 还可能捕获春季突变鱼（x3倍值）夏季突变鱼+25%体型 冬季突变鱼（x2.5倍值）

激流杆 价格40000 同上 被动:完美捕鱼计入20%潮汐进度条 达到最大值时接下来三次捕鱼增加30%稀有概率和25%引诱速度

航海竿 价格40000 同上 被动:召唤一个激光使捕获鱼速度加快并25%概率捕获石化突变鱼（x2.5倍值）

迷失杆 价格30000 同上  被动:六次完美捕鱼后的三次捕鱼增加150%运气（换其他鱼竿效果失效）

极光杆 价格90000 极光天气下的漩涡处购买 被动:15%概率捕获奥罗拉突变鱼（x6.5倍值）极光期间25%

神话杆 价格110000 流浪商人处购买 被动:30%概率捕获神话突变鱼（x4.5倍值）

海王杆 价格120000 主权雕像下面出电梯后左处河边购买 被动:捕获的鱼大15%

命运杆 价格190000 图鉴70%时去拱门岛上的npc对话购买 被动:5%概率捕获闪亮的/闪闪发光的鱼

三叉戟 价格150000 深渊图鉴100%时在荒凉深渊隐藏入口里用5个附魔石开门购买 被动:有概率在捕获鱼过程中打晕鱼并增加进度条 被动2:30%概率捕获亚特兰蒂斯突变鱼（x3倍值）

沉沦杆 价格0 钓鱼中1/160获得藏宝图在遗忘海岸找海盗修复藏宝图在宝箱内概率获得 被动:每捕获10个鱼有25%概率获得藏宝图

深度杆 价格750000 深度中用Hexed和Abyssal附魔石开门后过迷宫购买 被动:召唤一个幻影每当玩家捕获3条鱼获得当前海域的1条鱼

无生命杆 价格0 500级获得 被动:有概率在捕获鱼过程中打晕鱼并增加进度条 被动2:增加捕获魔法突变鱼（x1.5倍）

---各个杆附魔推荐---
季节杆
1.hasty（增加55%上钩速度）
2.Abyssal（10%概率深海附魔 20%概率鱼变小80%概率鱼变大）


永恒之王杆
1..Quality（增加15%运气 5%控制力 15%引诱速度）
1.Hasty（增加55%引诱速度）


被遗忘的尖牙之杆
1.Abyssal（10%概率深海附魔 20%概率鱼变小80%概率鱼变大）
2.Clever （x2倍经验值）

无生命杆
1.Abyssal（10%概率深海附魔 20%概率鱼变小80%概率鱼变大）
2.Quality（增加15%运气 5%控制力 15%引诱速度）

深渊杆
1.Abyssal（10%概率深海附魔 20%概率鱼变小80%概率鱼变大）
2.Hasty（增加55%引诱速度）

三叉戟
1.Hasty（增加55%引诱速度）
2.Steady（减少25%进度丢失）

极光杆
1.Hasty（增加55%引诱速度）
2.Resilient（增加35%控制力）

神话杆
1.Resilient（增加35%控制力）
2.Hasty（增加55%引诱速度）

命运杆
1.Resilient（增加35%控制力）
2.Steady（减少25%进度丢失）

海王杆
1.Hasty（增加55%引诱速度）
2.Sea king（增加10%鱼体型）

智慧杆
1.Hasty（增加55%引诱速度）
2.Clever（x2倍经验值）]],
})
GuideTab:Code({
  Title = "各个附魔效果",
  Code = [[
Sea King +10%鱼体型
Swift +30%上钩速度
Hasty +55%上钩速度
Long +50鱼竿长度
Ghastly 20%概率钓上半透明突变鱼
Lucky +20%运气
Divine +45%运气
Mutated +7%捕获突变鱼概率
Unbreakable +10000鱼竿承重
Steady -25%失去进度速度
Blessed +2%闪亮的/闪闪发光的鱼概率
Wormhole 45%概率钓上随机海域的鱼
Resilient +35%恢复力
Controlled +0.05控制
Storming +95%雨天运气
Breezed +65%风天运气
Insight 捕获的鱼经验x1.5倍
Clever 捕获的鱼经验x2.25倍
Scrapper 60%概率不消耗诱饵
Noir 10%概率捕获白化或黑暗突变鱼
Quality +15%上钩速度 +15%运气 +5%恢复力
Abyssal 10%概率捕获深海突变鱼（x3.5倍值）80%概率增加30%鱼体型 20%概率减少40%鱼体型]],
})
local chatMessageInput = ChatTab:Input({
  Title = "输入你的文字",
  Desc = "请输入你想要说的话",
  Value = "输入",
  PlaceholderText = "你在看什么嘛",
  Callback = function(input)
    chatMessage = input
  end,
})
local sendCountInput = ChatTab:Input({
  Title = "输入次数",
  Desc = "次数",
  Value = "输入",
  PlaceholderText = "输入发送次数",
  Callback = function(input)
    local count = tonumber(input)
    if count and count > 0 then
      sendCount = count
    else
      warn("请输入有效的数字")
    end
  end,
})
ChatTab:Button({
  Title = "发送",
  Callback = function()
    sendChatMessage(chatMessage)
  end,
})
ChatTab:Button({
  Title = "停止自动发送",
  Callback = function()
    isAutoSendingEnabled = false
    print("已停止自动发送")
  end,
})
ChatTab:Toggle({
  Title = "自动发送",
  Callback = function(enabled)
    isAutoSendingEnabled = enabled
    if enabled then
      print("自动发送已启用")
      task.spawn(function()
        for i = 1, sendCount do
          if isAutoSendingEnabled then
            sendChatMessage(chatMessage)
            task.wait(sendInterval)
          else
            break
          end
        end
        isAutoSendingEnabled = false
      end)
    else
      print("自动发送已禁用")
    end
  end,
})
BuyTab:Button({Title = "力量", Callback = function() buyFromMerlin("power") end})
BuyTab:Button({Title = "幸运", Callback = function() buyFromMerlin("luck") end})
BuyTab:Dropdown({
  Title = "选择物品",
  Multi = false,
  AllowNone = false,
  Value = buySelectedItem,
  Values = buyItemList,
  Callback = function(s) buySelectedItem = s end,
})
BuyTab:Input({
  Title = "输入购买数量",
  Desc = "输入数量",
  Value = "1",
  PlaceholderText = "输入购买数量",
  Callback = function(input)
    local q = tonumber(input)
    if q and q > 0 then buyItemQuantity = q else
      WindUI:Notify({Title = "错误", Content = "请输入有效的正整数！", Icon = "error", Duration = 3})
    end
  end,
})
BuyTab:Button({
  Title = "购买物品",
  Callback = function()
    if buySelectedItem == "None" then
      WindUI:Notify({Title = "错误", Content = "请先选择物品！", Icon = "error", Duration = 3})
      return 
    end
    if buyPurchaseEvent then
      for i = 1, buyItemQuantity do buyPurchaseEvent:FireServer(buySelectedItem, "Item", nil, 1) end
      WindUI:Notify({Title = "成功", Content = "已购买 " .. buyItemQuantity .. " 个 " .. buySelectedItem .. "！", Icon = "check", Duration = 3})
    else
      WindUI:Notify({Title = "错误", Content = "未找到购买事件！", Icon = "error", Duration = 3})
    end
  end,
})
BuyTab:Section({Title = "杆子", TextXAlignment = "Left"})
BuyTab:Dropdown({
  Title = "选择杆子",
  Multi = false,
  AllowNone = false,
  Value = buySelectedRod,
  Values = buyRodList,
  Callback = function(s) buySelectedRod = s end,
})
BuyTab:Button({
  Title = "购买杆子",
  Callback = function()
    if buySelectedRod == "None" then
      WindUI:Notify({Title = "错误", Content = "请先选择杆子！", Icon = "error", Duration = 3})
      return 
    end
    if buyPurchaseEvent then
      buyPurchaseEvent:FireServer(buySelectedRod, "Rod", nil, 1)
      WindUI:Notify({Title = "成功", Content = "已购买 1 根 " .. buySelectedRod .. "！", Icon = "check", Duration = 3})
    else
      WindUI:Notify({Title = "错误", Content = "未找到购买事件！", Icon = "error", Duration = 3})
    end
  end,
})
local function cleanupConnections()
  if dataTable then
    for _, connection in ipairs(dataTable) do
      if connection and typeof(connection) == "RBXScriptConnection" then
        connection:Disconnect()
      end
    end
    dataTable = {}
  end
end
Players.PlayerRemoving:Connect(function(player)
  if player == LocalPlayer then
    cleanupConnections()
  end
end)

