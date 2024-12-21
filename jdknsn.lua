local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/LOL/main/Orion.lua", true))()
 local Window =   OrionLib:MakeWindow({Name = "脚本中心2.0", HidePremium = false, SaveConfig = false, ConfigFolder = "rbxassetid://6026568198"}) 

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
LOL:AddLabel("作者：保温杯里泡枸杞")
LOL:AddLabel("QQ：3126295205")
LOL:AddLabel("脚本中心群号：640304618")
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
loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/plm.lua", true))()
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