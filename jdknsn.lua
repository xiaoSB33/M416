local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/LOL/main/Orion.lua", true))()
 local Window =   OrionLib:MakeWindow({Name = "心脚本V3.0", HidePremium = false, SaveConfig = false, ConfigFolder = "rbxassetid://6026568198"}) 
  
 OrionLib:MakeNotification({ 
 Name = "心脚本", 
 Content = "欢迎来到心脚本！", 
 Image = "rbxassetid://4483345998", 
 Time = 5 
 })
 
 local LOL = Window:MakeTab({ 
 Name = "关于", 
 Icon = "rbxassetid://6026568198", 
 PremiumOnly = false 
 })
LOL:AddLabel("当前服务器ID:" .. game.GameId .. ".")
LOL:AddLabel("作者：查看qq")
LOL:AddLabel("QQ：3126295205")
LOL:AddLabel("哥，我是从云脚本二改，别喷我啊")
LOL:AddLabel("此脚本永久免费，缝合脚本：如果你是买来的恭喜你被圈了")

local Tab = Window:MakeTab({ 
 Name = "一些散脚本", 
 Icon = "rbxassetid://10888331510", 
 PremiumOnly = false 
 }) 
 
Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)

game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})

Tab:AddTextbox({
	Name = "移动速度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
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
		game.Players.LocalPlayer.Character.Humanoid.Health = Value
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
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = phh  
	end
})

Tab:AddButton({
	Name = "旋转",
 Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
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
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
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
	Name = "范围",
	Callback = function()
     _G.HeadSize = 20
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
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
 loadstring(game:HttpGet("https://raw.githubusercontent.com/wawsdasdacx/ohascriptnrrewading/main/jbsaxcriptidk1"))
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
     mouse = game.Players.LocalPlayer:GetMouse()
                tool = Instance.new("Tool")
                tool.RequiresHandle = false
                tool.Name = "点击即可传送"
                tool.Activated:connect(function()
                local pos = mouse.Hit+Vector3.new(0,2.5,0)
                pos = CFrame.new(pos.X,pos.Y,pos.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                end)
                tool.Parent = game.Players.LocalPlayer.Backpack
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
     game.Players.LocalPlayer.Character.Humanoid.Health = 0
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
