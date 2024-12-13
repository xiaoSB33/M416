local JailbreakGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local WalkSpeed = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local NoClip = Instance.new("TextButton")
local GravityON = Instance.new("TextButton")
local GravityOFF = Instance.new("TextButton")
local InfiniteJump = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local Main2 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local Pistol = Instance.new("TextButton")
local Shotgun = Instance.new("TextButton")
local Main3 = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local CarFly = Instance.new("TextButton")
local InfiniteNitro = Instance.new("TextButton")
local TextLabel_5 = Instance.new("TextLabel")
local Main4 = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local BTools = Instance.new("TextButton")
local NoBuildings = Instance.new("TextButton")
local RemoveAll = Instance.new("TextButton")
local TextLabel_7 = Instance.new("TextLabel")
local Main5 = Instance.new("Frame")
local TextLabel_8 = Instance.new("TextLabel")
local JewelryIn = Instance.new("TextButton")
local JewelryTop = Instance.new("TextButton")
local MuseumIn = Instance.new("TextButton")
local MuseumOut = Instance.new("TextButton")
local BankFront = Instance.new("TextButton")
local BankVault = Instance.new("TextButton")
local MuseumTop = Instance.new("TextButton")
local CrimBase1 = Instance.new("TextButton")
local CrimBase2 = Instance.new("TextButton")
local DonutStore = Instance.new("TextButton")
local GasStation = Instance.new("TextButton")
local TrainSpawn = Instance.new("TextButton")
local PrisonYard = Instance.new("TextButton")
local PoliceBase = Instance.new("TextButton")
local Dealership = Instance.new("TextButton")
local HeliPad1 = Instance.new("TextButton")
local HeliPad2 = Instance.new("TextButton")
local Lamborghini = Instance.new("TextButton")
local Tesla = Instance.new("TextButton")
local Ferrari = Instance.new("TextButton")
--Properties:
JailbreakGui.Name = "Jailbreak Gui"
JailbreakGui.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = JailbreakGui
Main.BackgroundColor3 = Color3.new(0, 0.333333, 1)
Main.BorderSizePixel = 4
Main.Position = UDim2.new(-0.0044676098, 0, 0, 0)
Main.Size = UDim2.new(0, 142, 0, 189)
Main.Active = true
Main.Draggable = true

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = Main
WalkSpeed.BackgroundColor3 = Color3.new(1, 0.666667, 0)
WalkSpeed.Position = UDim2.new(0, 0, 0.130278975, 0)
WalkSpeed.Size = UDim2.new(0, 142, 0, 26)
WalkSpeed.Font = Enum.Font.Fantasy
WalkSpeed.Text = "步行速度(x)"
WalkSpeed.TextColor3 = Color3.new(0, 0, 0)
WalkSpeed.TextSize = 14
WalkSpeed.MouseButton1Down:connect(function()
	local walkspeedplayer = game:GetService("Players").LocalPlayer
	local walkspeedmouse = walkspeedplayer:GetMouse()
	
	local walkspeedenabled = false
	
	function x_walkspeed(key)
		if (key == "x") then
			if walkspeedenabled == false then
				_G.WS = 100;
				local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
				Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
				Humanoid.WalkSpeed = _G.WS;
				end)
				Humanoid.WalkSpeed = _G.WS;
				
				walkspeedenabled = true
			elseif walkspeedenabled == true then
				_G.WS = 20;
				local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
				Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
				Humanoid.WalkSpeed = _G.WS;
				end)
				Humanoid.WalkSpeed = _G.WS;
				
				walkspeedenabled = false
			end
		end
	end
	
	walkspeedmouse.KeyDown:connect(x_walkspeed)
	
end)

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 0, 0.0107526882, 0)
TextLabel.Size = UDim2.new(0, 142, 0, 20)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "角色秘籍"
TextLabel.TextColor3 = Color3.new(0.333333, 1, 1)
TextLabel.TextSize = 14

NoClip.Name = "NoClip"
NoClip.Parent = Main
NoClip.BackgroundColor3 = Color3.new(1, 0.666667, 0)
NoClip.Position = UDim2.new(0, 0, 0.293898374, 0)
NoClip.Size = UDim2.new(0, 142, 0, 26)
NoClip.Font = Enum.Font.Fantasy
NoClip.Text = "墙黑客(B)"
NoClip.TextColor3 = Color3.new(0, 0, 0)
NoClip.TextSize = 14
NoClip.MouseButton1Down:connect(function()
	local noclipplayer = game:GetService("Players").LocalPlayer
	local noclipmouse = noclipplayer:GetMouse()
	
	local donoclip = false
	local noclip = false
	
	function b_noclip(key)
		if (key == "b") then
			if noclip == false then
				donoclip = true
				
				noclip = true
			elseif noclip == true then
				donoclip = false
				
				noclip = false
			end
		end
	end
	
	noclipmouse.KeyDown:connect(b_noclip)
	
	game:GetService("Players").LocalPlayer.Character.Head.Touched:connect(function(obj)
		if obj ~= workspace.Terrain then
			if donoclip == true then
				obj.CanCollide = false
			else
				obj.CanCollide = true
			end
		end
	end)
end)

GravityON.Name = "GravityON"
GravityON.Parent = Main
GravityON.BackgroundColor3 = Color3.new(1, 0.666667, 0)
GravityON.Position = UDim2.new(0, 0, 0.637140512, 0)
GravityON.Size = UDim2.new(0, 142, 0, 23)
GravityON.Font = Enum.Font.Fantasy
GravityON.Text = "坟墓"
GravityON.TextColor3 = Color3.new(0, 0, 0)
GravityON.TextSize = 14
GravityON.TextWrapped = true
GravityON.MouseButton1Down:connect(function()
    game.Workspace.Gravity = 196.2
    GravityOFF.Visible = true
    GravityON.Visible = true
end)

GravityOFF.Name = "GravityOFF"
GravityOFF.Parent = Main
GravityOFF.BackgroundColor3 = Color3.new(1, 0.666667, 0)
GravityOFF.Position = UDim2.new(0, 0, 0.466942251, 0)
GravityOFF.Size = UDim2.new(0, 142, 0, 26)
GravityOFF.Font = Enum.Font.Fantasy
GravityOFF.Text = "坟墓上"
GravityOFF.TextColor3 = Color3.new(0, 0, 0)
GravityOFF.TextSize = 14
GravityOFF.MouseButton1Down:connect(function()
    game.Workspace.Gravity = 35
    GravityOFF.Visible = true
    GravityON.Visible = true
end)

InfiniteJump.Name = "InfiniteJump"
InfiniteJump.Parent = Main
InfiniteJump.BackgroundColor3 = Color3.new(1, 0.666667, 0)
InfiniteJump.Position = UDim2.new(0, 0, 0.79070586, 0)
InfiniteJump.Size = UDim2.new(0, 142, 0, 23)
InfiniteJump.Font = Enum.Font.Fantasy
InfiniteJump.Text = "无限跳跃"
InfiniteJump.TextColor3 = Color3.new(0, 0, 0)
InfiniteJump.TextSize = 14
InfiniteJump.MouseButton1Down:connect(function()
	game:GetService("UserInputService").JumpRequest:connect(function()
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")		
	end)
	end)

TextLabel_2.Parent = JailbreakGui
TextLabel_2.BackgroundColor3 = Color3.new(0, 0.666667, 1)
TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_2.BorderSizePixel = 5
TextLabel_2.Position = UDim2.new(0.425595224, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 23)
TextLabel_2.Font = Enum.Font.Highway
TextLabel_2.Text = "ato汉化的GUI"
TextLabel_2.TextColor3 = Color3.new(0, 0, 0)
TextLabel_2.TextSize = 14

Main2.Name = "Main2"
Main2.Parent = JailbreakGui
Main2.BackgroundColor3 = Color3.new(0, 0.333333, 1)
Main2.BorderSizePixel = 4
Main2.Position = UDim2.new(0.125837684, 0, 0, 0)
Main2.Size = UDim2.new(0, 156, 0, 157)
Main2.Active = true
Main2.Draggable = true

TextLabel_3.Parent = Main2
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Size = UDim2.new(0, 177, 0, 23)
TextLabel_3.Font = Enum.Font.SciFi
TextLabel_3.Text = "枪械 "
TextLabel_3.TextColor3 = Color3.new(0, 1, 1)
TextLabel_3.TextSize = 14

Pistol.Name = "Pistol"
Pistol.Parent = Main2
Pistol.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Pistol.Position = UDim2.new(0, 0, 0.159235671, 0)
Pistol.Size = UDim2.new(0, 156, 0, 25)
Pistol.Font = Enum.Font.Fantasy
Pistol.Text = "手枪"
Pistol.TextColor3 = Color3.new(0, 0, 0)
Pistol.TextSize = 14
Pistol.MouseButton1Down:connect(function()
	local hit = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,-3)

    a = Instance.new("Part", workspace)
    a.Anchored = true
    a.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,-3)
    a.CanCollide = false
    
        for i, v in pairs(game:GetService("Workspace").Givers:GetChildren()) do
    if v.Name == "Station" then
    for a, b in pairs(v:GetChildren()) do
    if b:IsA("StringValue") then
    if b.Value == "Pistol" then
    v.CFrame = CFrame.new(hit)
    end
    end
    end
    end
    end
end)

Shotgun.Name = "Shotgun"
Shotgun.Parent = Main2
Shotgun.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Shotgun.Position = UDim2.new(0, 0, 0.350318491, 0)
Shotgun.Size = UDim2.new(0, 156, 0, 26)
Shotgun.Font = Enum.Font.Fantasy
Shotgun.Text = "霰弹枪"
Shotgun.TextColor3 = Color3.new(0, 0, 0)
Shotgun.TextSize = 14
Shotgun.MouseButton1Down:connect(function()
	local hit = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,-3)

    a = Instance.new("Part", workspace)
    a.Anchored = true
    a.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,-3)
    a.CanCollide = false
    
        for i, v in pairs(game:GetService("Workspace").Givers:GetChildren()) do
    if v.Name == "Station" then
    for a, b in pairs(v:GetChildren()) do
    if b:IsA("StringValue") then
    if b.Value == "Shotgun" then
    v.CFrame = CFrame.new(hit)
    end
    end
    end
    end
    end
end)

Main3.Name = "Main3"
Main3.Parent = JailbreakGui
Main3.BackgroundColor3 = Color3.new(0, 0.333333, 1)
Main3.BorderSizePixel = 4
Main3.Position = UDim2.new(0.268056601, 0, 0, 0)
Main3.Size = UDim2.new(0, 168, 0, 157)
Main3.Active = true
Main3.Draggable = true

TextLabel_4.Parent = Main3
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Size = UDim2.new(0, 168, 0, 22)
TextLabel_4.Font = Enum.Font.SciFi
TextLabel_4.Text = "汽车秘籍"
TextLabel_4.TextColor3 = Color3.new(0, 1, 1)
TextLabel_4.TextSize = 14

CarFly.Name = "CarFly"
CarFly.Parent = Main3
CarFly.BackgroundColor3 = Color3.new(1, 0.666667, 0)
CarFly.Position = UDim2.new(0, 0, 0.159235671, 0)
CarFly.Size = UDim2.new(0, 168, 0, 25)
CarFly.Font = Enum.Font.Fantasy
CarFly.Text = "汽车飞行(R)"
CarFly.TextColor3 = Color3.new(0, 0, 0)
CarFly.TextSize = 14
CarFly.MouseButton1Down:connect(function()
	local plr = game:GetService("Players").LocalPlayer
local m = plr:GetMouse()
m.KeyDown:connect(function(k)
if k:byte() == 114 then
plrh = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'
plrh:ChangeState('Jumping')
wait()
plrh:ChangeState('Seated')
end
end)
end)

InfiniteNitro.Name = "InfiniteNitro"
InfiniteNitro.Parent = Main3
InfiniteNitro.BackgroundColor3 = Color3.new(1, 0.666667, 0)
InfiniteNitro.Position = UDim2.new(0, 0, 0.350318462, 0)
InfiniteNitro.Size = UDim2.new(0, 168, 0, 26)
InfiniteNitro.Font = Enum.Font.Fantasy
InfiniteNitro.Text = "无限燃油"
InfiniteNitro.TextColor3 = Color3.new(0, 0, 0)
InfiniteNitro.TextSize = 14
InfiniteNitro.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.PlayerGui.MainGui.Nitro.Name = "6969696969"
    game:GetService('Players').LocalPlayer.PlayerGui.ProductGui.Nitro:ClearAllChildren()
end)

Main4.Name = "Main4"
Main4.Parent = JailbreakGui
Main4.BackgroundColor3 = Color3.new(0, 0.333333, 1)
Main4.BorderSizePixel = 4
Main4.Position = UDim2.new(0.610244989, 0, 0, 0)
Main4.Size = UDim2.new(0, 165, 0, 189)
Main4.Active = true
Main4.Draggable = true

TextLabel_6.Parent = Main4
TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_6.BackgroundTransparency = 1
TextLabel_6.Size = UDim2.new(0, 165, 0, 25)
TextLabel_6.Font = Enum.Font.SciFi
TextLabel_6.Text = "建造秘籍"
TextLabel_6.TextColor3 = Color3.new(0, 1, 1)
TextLabel_6.TextSize = 14

BTools.Name = "BTools"
BTools.Parent = Main4
BTools.BackgroundColor3 = Color3.new(1, 0.666667, 0)
BTools.Position = UDim2.new(0, 0, 0.127793476, 0)
BTools.Size = UDim2.new(0, 165, 0, 26)
BTools.Font = Enum.Font.Fantasy
BTools.Text = "工具"
BTools.TextColor3 = Color3.new(0, 0, 0)
BTools.TextSize = 14
BTools.MouseButton1Down:connect(function()
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
for index, child in pairs(game:GetService("Workspace"):GetChildren()) do
   if child.ClassName == "Part" then
       child.Locked = false
   end
   if child.ClassName == "MeshPart" then
       child.Locked = false
   end
   if child.ClassName == "UnionOperation" then
       child.Locked = false
   end
   if child.ClassName == "Model" then
       for index, chil in pairs(child:GetChildren()) do
           if chil.ClassName == "Part" then
               chil.Locked = false
           end
           if chil.ClassName == "MeshPart" then
               chil.Locked = false
           end
           if chil.ClassName == "UnionOperation" then
               chil.Locked = false
           end
           if chil.ClassName == "Model" then
               for index, childe in pairs(chil:GetChildren()) do
                   if childe.ClassName == "Part" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "MeshPart" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "UnionOperation" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "Model" then
                       for index, childeo in pairs(childe:GetChildren()) do
                           if childeo.ClassName == "Part" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "MeshPart" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "UnionOperation" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "Model" then
                           end
                       end
                   end
               end
           end
       end
   end
end
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Hammer
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Clone
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Grab
end)

NoBuildings.Name = "NoBuildings"
NoBuildings.Parent = Main4
NoBuildings.BackgroundColor3 = Color3.new(1, 0.666667, 0)
NoBuildings.Position = UDim2.new(0, 0, 0.29264915, 0)
NoBuildings.Size = UDim2.new(0, 165, 0, 26)
NoBuildings.Font = Enum.Font.Fantasy
NoBuildings.Text = "没有建筑物"
NoBuildings.TextColor3 = Color3.new(0, 0, 0)
NoBuildings.TextSize = 14
NoBuildings.MouseButton1Down:connect(function()
	game:GetService("Workspace").Buildings:Destroy()
end)

RemoveAll.Name = "RemoveAll"
RemoveAll.Parent = Main4
RemoveAll.BackgroundColor3 = Color3.new(1, 0.666667, 0)
RemoveAll.Position = UDim2.new(0, 0, 0.461981505, 0)
RemoveAll.Size = UDim2.new(0, 165, 0, 26)
RemoveAll.Font = Enum.Font.Fantasy
RemoveAll.Text = "清楚全部"
RemoveAll.TextColor3 = Color3.new(0, 0, 0)
RemoveAll.TextSize = 14
RemoveAll.MouseButton1Down:connect(function()
	game.Workspace.Cells:Remove()
	
	game.Workspace.Museum.CaseLasers:Remove()
	
	game.Workspace.Museum.Lights:Remove()
	
	game.Workspace.Museum.Doors:Remove()
	
	game.Workspace.EscapeRoutes:Remove()
	
	for i,v in pairs(workspace.Doors:GetChildren()) do
    v:Destroy()
	
	end
end)

RemoveAll.MouseButton1Down:connect(function()
	local banklasers = game:GetService("Workspace").Banks:GetChildren()
	banklasers[1].Lasers:Destroy()
end)

RemoveAll.MouseButton1Down:connect(function()
local jewelry = game:GetService("Workspace").Jewelrys:GetChildren()
	
	for i = 1,4 do
	local xd = jewelry[1].Model.BarbedWire
	xd:Destroy()
	end
end)

RemoveAll.MouseButton1Down:connect(function()
	local banklasers = game:GetService("Workspace").Banks:GetChildren()
	banklasers[1].Door.Model:Destroy()
end)

TextLabel_7.Parent = Main4
TextLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_7.BackgroundTransparency = 1
TextLabel_7.Position = UDim2.new(0, 0, 0.632894814, 0)
TextLabel_7.Size = UDim2.new(0, 165, 0, 58)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "Remove all removes the lasers from bank , cameras from museum and removes laser from jewelery."
TextLabel_7.TextColor3 = Color3.new(1, 0, 0)
TextLabel_7.TextSize = 14
TextLabel_7.TextWrapped = true

Main5.Name = "Main5"
Main5.Parent = JailbreakGui
Main5.BackgroundColor3 = Color3.new(0, 0.333333, 1)
Main5.BorderSizePixel = 4
Main5.Position = UDim2.new(0.76391989, 0, 0, 0)
Main5.Size = UDim2.new(0, 318, 0, 189)
Main5.Active = true
Main5.Draggable = true

TextLabel_8.Parent = Main5
TextLabel_8.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_8.BackgroundTransparency = 1
TextLabel_8.Size = UDim2.new(0, 318, 0, 22)
TextLabel_8.Font = Enum.Font.SciFi
TextLabel_8.Text = "传送"
TextLabel_8.TextColor3 = Color3.new(0, 1, 1)
TextLabel_8.TextSize = 14

JewelryIn.Name = "JewelryIn"
JewelryIn.Parent = Main5
JewelryIn.BackgroundColor3 = Color3.new(1, 0.666667, 0)
JewelryIn.Position = UDim2.new(0.34591195, 0, 0.169312164, 0)
JewelryIn.Size = UDim2.new(0, 41, 0, 28)
JewelryIn.Font = Enum.Font.Fantasy
JewelryIn.Text = "宝石在"
JewelryIn.TextColor3 = Color3.new(0, 0, 0)
JewelryIn.TextSize = 14
JewelryIn.TextWrapped = true
JewelryIn.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.300705, 17.9375954, 1316.42407) + Vector3.new(1,0,0)
	end
end)

JewelryTop.Name = "JewelryTop"
JewelryTop.Parent = Main5
JewelryTop.BackgroundColor3 = Color3.new(1, 0.666667, 0)
JewelryTop.Position = UDim2.new(0.506289303, 0, 0.169312179, 0)
JewelryTop.Size = UDim2.new(0, 42, 0, 28)
JewelryTop.Font = Enum.Font.Fantasy
JewelryTop.Text = "宝石上衣"
JewelryTop.TextColor3 = Color3.new(0, 0, 0)
JewelryTop.TextSize = 14
JewelryTop.TextWrapped = true
JewelryTop.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(101.211128, 98.6576996, 1310.54175) + Vector3.new(1,0,0)
	end
end)

MuseumIn.Name = "MuseumIn"
MuseumIn.Parent = Main5
MuseumIn.BackgroundColor3 = Color3.new(1, 0.666667, 0)
MuseumIn.Position = UDim2.new(0.666666627, 0, 0.169312179, 0)
MuseumIn.Size = UDim2.new(0, 46, 0, 28)
MuseumIn.Font = Enum.Font.Fantasy
MuseumIn.Text = "博物馆里"
MuseumIn.TextColor3 = Color3.new(0, 0, 0)
MuseumIn.TextSize = 14
MuseumIn.TextWrapped = true
MuseumIn.MouseButton1Down:connect(function()
	for i=1,32 do
        wait(.08)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1063.02, 117.562, 1218.757) + Vector3.new(1,0,0)
    end
end)

MuseumOut.Name = "MuseumOut"
MuseumOut.Parent = Main5
MuseumOut.BackgroundColor3 = Color3.new(1, 0.666667, 0)
MuseumOut.Position = UDim2.new(0.836477995, 0, 0.169312179, 0)
MuseumOut.Size = UDim2.new(0, 45, 0, 28)
MuseumOut.Font = Enum.Font.Fantasy
MuseumOut.Text = "博物馆外"
MuseumOut.TextColor3 = Color3.new(0, 0, 0)
MuseumOut.TextSize = 14
MuseumOut.TextWrapped = true
MuseumOut.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1108.02576, 101.16066, 1295.74146) + Vector3.new(1,0,0)
	end
end)

BankFront.Name = "BankFront"
BankFront.Parent = Main5
BankFront.BackgroundColor3 = Color3.new(1, 0.666667, 0)
BankFront.Position = UDim2.new(0.185534596, 0, 0.169312164, 0)
BankFront.Size = UDim2.new(0, 41, 0, 28)
BankFront.Font = Enum.Font.Fantasy
BankFront.Text = "银行出库"
BankFront.TextColor3 = Color3.new(0, 0, 0)
BankFront.TextSize = 14
BankFront.TextWrapped = true
BankFront.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.92591476, 17.8639755, 786.788147) + Vector3.new(1,0,0)
	end
end)

BankVault.Name = "BankVault"
BankVault.Parent = Main5
BankVault.BackgroundColor3 = Color3.new(1, 0.666667, 0)
BankVault.Position = UDim2.new(0.022012582, 0, 0.169312164, 0)
BankVault.Size = UDim2.new(0, 41, 0, 28)
BankVault.Font = Enum.Font.Fantasy
BankVault.Text = "汇入"
BankVault.TextColor3 = Color3.new(0, 0, 0)
BankVault.TextSize = 14
BankVault.TextWrapped = true
BankVault.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18.3854294, 0.765628457, 815.506348) + Vector3.new(1,0,0)
	end
end)

MuseumTop.Name = "MuseumTop"
MuseumTop.Parent = Main5
MuseumTop.BackgroundColor3 = Color3.new(1, 0.666667, 0)
MuseumTop.Position = UDim2.new(0.022012582, 0, 0.391534388, 0)
MuseumTop.Size = UDim2.new(0, 41, 0, 28)
MuseumTop.Font = Enum.Font.Fantasy
MuseumTop.Text = "博物馆顶部"
MuseumTop.TextColor3 = Color3.new(0, 0, 0)
MuseumTop.TextSize = 14
MuseumTop.TextWrapped = true
MuseumTop.MouseButton1Down:connect(function()
	for i=1,32 do
        wait(.08)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1078.45, 153.904, 1176.52) + Vector3.new(1,0,0)
    end
end)

CrimBase1.Name = "CrimBase1"
CrimBase1.Parent = Main5
CrimBase1.BackgroundColor3 = Color3.new(1, 0.666667, 0)
CrimBase1.Position = UDim2.new(0.185534596, 0, 0.386243403, 0)
CrimBase1.Size = UDim2.new(0, 41, 0, 28)
CrimBase1.Font = Enum.Font.Fantasy
CrimBase1.Text = "克里米亚 1"
CrimBase1.TextColor3 = Color3.new(0, 0, 0)
CrimBase1.TextSize = 14
CrimBase1.TextWrapped = true
CrimBase1.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-221.723099, 17.8924026, 1578.80261) + Vector3.new(1,0,0)
	end
end)

CrimBase2.Name = "CrimBase2"
CrimBase2.Parent = Main5
CrimBase2.BackgroundColor3 = Color3.new(1, 0.666667, 0)
CrimBase2.Position = UDim2.new(0.34591195, 0, 0.386243373, 0)
CrimBase2.Size = UDim2.new(0, 41, 0, 28)
CrimBase2.Font = Enum.Font.Fantasy
CrimBase2.Text = "克里米亚2"
CrimBase2.TextColor3 = Color3.new(0, 0, 0)
CrimBase2.TextSize = 14
CrimBase2.TextWrapped = true
CrimBase2.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1650.80896, 49.863636, -1770.66626) + Vector3.new(1,0,0)
	end
end)

DonutStore.Name = "DonutStore"
DonutStore.Parent = Main5
DonutStore.BackgroundColor3 = Color3.new(1, 0.666667, 0)
DonutStore.Position = UDim2.new(0.506289303, 0, 0.386243403, 0)
DonutStore.Size = UDim2.new(0, 42, 0, 28)
DonutStore.Font = Enum.Font.Fantasy
DonutStore.Text = "疑问"
DonutStore.TextColor3 = Color3.new(0, 0, 0)
DonutStore.TextSize = 14
DonutStore.TextWrapped = true
DonutStore.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(257.191101, 17.81828869, -1753.11206) + Vector3.new(1,0,0)
	end
end)

GasStation.Name = "GasStation"
GasStation.Parent = Main5
GasStation.BackgroundColor3 = Color3.new(1, 0.666667, 0)
GasStation.Position = UDim2.new(0.666666627, 0, 0.386243403, 0)
GasStation.Size = UDim2.new(0, 46, 0, 28)
GasStation.Font = Enum.Font.Fantasy
GasStation.Text = "加油站"
GasStation.TextColor3 = Color3.new(0, 0, 0)
GasStation.TextSize = 14
GasStation.TextWrapped = true
GasStation.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1586.41101, 17.8481865, 709.37262) + Vector3.new(1,0,0)
	end
end)

TrainSpawn.Name = "TrainSpawn"
TrainSpawn.Parent = Main5
TrainSpawn.BackgroundColor3 = Color3.new(1, 0.666667, 0)
TrainSpawn.Position = UDim2.new(0.836477995, 0, 0.386243403, 0)
TrainSpawn.Size = UDim2.new(0, 45, 0, 28)
TrainSpawn.Font = Enum.Font.Fantasy
TrainSpawn.Text = "火车生成"
TrainSpawn.TextColor3 = Color3.new(0, 0, 0)
TrainSpawn.TextSize = 14
TrainSpawn.TextWrapped = true
TrainSpawn.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1954.95007, 68.0448606, -603.844116) + Vector3.new(1,0,0)
	end
end)

PrisonYard.Name = "PrisonYard"
PrisonYard.Parent = Main5
PrisonYard.BackgroundColor3 = Color3.new(1, 0.666667, 0)
PrisonYard.Position = UDim2.new(0.022012582, 0, 0.603174567, 0)
PrisonYard.Size = UDim2.new(0, 41, 0, 28)
PrisonYard.Font = Enum.Font.Fantasy
PrisonYard.Text = "监狱院子"
PrisonYard.TextColor3 = Color3.new(0, 0, 0)
PrisonYard.TextSize = 14
PrisonYard.TextWrapped = true
PrisonYard.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1319.25806, 17.7999935, -1760.31873) + Vector3.new(1,0,0)
	end
end)

PoliceBase.Name = "PoliceBase"
PoliceBase.Parent = Main5
PoliceBase.BackgroundColor3 = Color3.new(1, 0.666667, 0)
PoliceBase.Position = UDim2.new(0.185534596, 0, 0.597883582, 0)
PoliceBase.Size = UDim2.new(0, 41, 0, 28)
PoliceBase.Font = Enum.Font.Fantasy
PoliceBase.Text = "警察基地"
PoliceBase.TextColor3 = Color3.new(0, 0, 0)
PoliceBase.TextSize = 14
PoliceBase.TextWrapped = true
PoliceBase.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1136.89868, 17.950058, -1585.59912) + Vector3.new(1,0,0)
	end
end)

Dealership.Name = "Dealership"
Dealership.Parent = Main5
Dealership.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Dealership.Position = UDim2.new(0.34591195, 0, 0.603174567, 0)
Dealership.Size = UDim2.new(0, 41, 0, 28)
Dealership.Font = Enum.Font.Fantasy
Dealership.Text = "经销权"
Dealership.TextColor3 = Color3.new(0, 0, 0)
Dealership.TextSize = 14
Dealership.TextWrapped = true
Dealership.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.985474, 17.8676395, -1704.00525) + Vector3.new(1,0,0)
	end
end)

HeliPad1.Name = "HeliPad1"
HeliPad1.Parent = Main5
HeliPad1.BackgroundColor3 = Color3.new(1, 0.666667, 0)
HeliPad1.Position = UDim2.new(0.506289303, 0, 0.597883582, 0)
HeliPad1.Size = UDim2.new(0, 42, 0, 28)
HeliPad1.Font = Enum.Font.Fantasy
HeliPad1.Text = "直升机停机坪 1"
HeliPad1.TextColor3 = Color3.new(0, 0, 0)
HeliPad1.TextSize = 14
HeliPad1.TextWrapped = true
HeliPad1.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1172.6626, 57.6341133, -1590.24841) + Vector3.new(1,0,0)
	end
end)

HeliPad2.Name = "HeliPad2"
HeliPad2.Parent = Main5
HeliPad2.BackgroundColor3 = Color3.new(1, 0.666667, 0)
HeliPad2.Position = UDim2.new(0.666666627, 0, 0.597883582, 0)
HeliPad2.Size = UDim2.new(0, 46, 0, 28)
HeliPad2.Font = Enum.Font.Fantasy
HeliPad2.Text = "直升机停机坪 2"
HeliPad2.TextColor3 = Color3.new(0, 0, 0)
HeliPad2.TextSize = 14
HeliPad2.TextWrapped = true
HeliPad2.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(737.95105, 69.4690094, 1095.53442) + Vector3.new(1,0,0)
	end
end)

Lamborghini.Name = "Lamborghini"
Lamborghini.Parent = Main5
Lamborghini.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Lamborghini.Position = UDim2.new(0.836477995, 0, 0.597883582, 0)
Lamborghini.Size = UDim2.new(0, 45, 0, 28)
Lamborghini.Font = Enum.Font.Fantasy
Lamborghini.Text = "兰博"
Lamborghini.TextColor3 = Color3.new(0, 0, 0)
Lamborghini.TextSize = 14
Lamborghini.TextWrapped = true
Lamborghini.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.568039, 17.6188164, 775.127197) + Vector3.new(1,0,0)
	end
end)

Tesla.Name = "Tesla"
Tesla.Parent = Main5
Tesla.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Tesla.Position = UDim2.new(0.34591195, 0, 0.793650746, 0)
Tesla.Size = UDim2.new(0, 41, 0, 28)
Tesla.Font = Enum.Font.Fantasy
Tesla.Text = "特斯拉"
Tesla.TextColor3 = Color3.new(0, 0, 0)
Tesla.TextSize = 14
Tesla.TextWrapped = true
Tesla.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-132.424164, 17.9162769, 556.760864) + Vector3.new(1,0,0)
	end
end)

Ferrari.Name = "Ferrari"
Ferrari.Parent = Main5
Ferrari.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Ferrari.Position = UDim2.new(0.506289303, 0, 0.788359761, 0)
Ferrari.Size = UDim2.new(0, 42, 0, 28)
Ferrari.Font = Enum.Font.Fantasy
Ferrari.Text = "法拉利"
Ferrari.TextColor3 = Color3.new(0, 0, 0)
Ferrari.TextSize = 14
Ferrari.TextWrapped = true
Ferrari.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.08)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1501.28687, 49.4527283, 1805.06726) + Vector3.new(1,0,0)
	end
end)
