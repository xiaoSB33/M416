local h4x_thing = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local discord = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local bypassed_fly = Instance.new("TextButton")
local btools = Instance.new("TextButton")
local credits = Instance.new("TextLabel")
local set_speed_button = Instance.new("TextButton")
local set_speed_textbox = Instance.new("TextBox")
local auto_farm = Instance.new("TextButton")
local Spawn = Instance.new("TextButton")
local map_teleport = Instance.new("TextButton")
local remove_fall_damage = Instance.new("TextButton")
local set_jump_power = Instance.new("TextButton")
local jump_power_textbox = Instance.new("TextBox")
local set_gravity = Instance.new("TextButton")
local gravity_textbox = Instance.new("TextBox")
local remove_map = Instance.new("TextButton")
local aesthetic = Instance.new("TextButton")
local open_close = Instance.new("Frame")
local open_close_button = Instance.new("TextButton")

--Properties:

h4x_thing.Name = "h4x_thing"
h4x_thing.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
h4x_thing.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = h4x_thing
main.BackgroundColor3 = Color3.fromRGB(41, 18, 40)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.705716968, 0, 0.0278330017, 0)
main.Size = UDim2.new(0, 283, 0, 474)

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(209, 61, 56)
title.BorderColor3 = Color3.fromRGB(71, 9, 44)
title.BorderSizePixel = 3
title.Size = UDim2.new(0, 283, 0, 50)
title.Font = Enum.Font.SourceSans
title.Text = "空云脚本/自然灾害"
title.TextColor3 = Color3.fromRGB(254, 254, 0)
title.TextScaled = true
title.TextSize = 60.000
title.TextWrapped = true

discord.Name = "discord"
discord.Parent = main
discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
discord.BackgroundTransparency = 1.000
discord.Position = UDim2.new(0, 0, 0.848101318, 0)
discord.Size = UDim2.new(0, 283, 0, 24)
discord.Font = Enum.Font.SourceSans
discord.Text = "https://discord.gg/4jFcGAaq2T"
discord.TextColor3 = Color3.fromRGB(255, 255, 255)
discord.TextScaled = true
discord.TextSize = 50.000
discord.TextWrapped = true

ImageLabel.Parent = main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(-0.533568919, 0, 0.635021091, 0)
ImageLabel.Size = UDim2.new(0, 151, 0, 173)
ImageLabel.Image = "rbxassetid://2869424344"
ImageLabel.ImageTransparency = 0.200

bypassed_fly.Name = "bypassed_fly"
bypassed_fly.Parent = main
bypassed_fly.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
bypassed_fly.BorderColor3 = Color3.fromRGB(107, 16, 45)
bypassed_fly.BorderSizePixel = 2
bypassed_fly.Position = UDim2.new(0.519434631, 0, 0.122362882, 0)
bypassed_fly.Size = UDim2.new(0, 130, 0, 31)
bypassed_fly.Font = Enum.Font.SourceSans
bypassed_fly.Text = "超级飞行"
bypassed_fly.TextColor3 = Color3.fromRGB(243, 255, 0)
bypassed_fly.TextScaled = true
bypassed_fly.TextSize = 14.000
bypassed_fly.TextWrapped = true

btools.Name = "btools"
btools.Parent = main
btools.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
btools.BorderColor3 = Color3.fromRGB(107, 16, 45)
btools.BorderSizePixel = 2
btools.Position = UDim2.new(0.0212014131, 0, 0.122362882, 0)
btools.Size = UDim2.new(0, 130, 0, 31)
btools.Font = Enum.Font.SourceSans
btools.Text = "工具"
btools.TextColor3 = Color3.fromRGB(243, 255, 0)
btools.TextScaled = true
btools.TextSize = 14.000
btools.TextWrapped = true

credits.Name = "credits"
credits.Parent = main
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.BackgroundTransparency = 1.000
credits.Position = UDim2.new(0.519434631, 0, 0.926160336, 0)
credits.Size = UDim2.new(0, 136, 0, 35)
credits.Font = Enum.Font.SourceSans
credits.Text = "JUKjacker"
credits.TextColor3 = Color3.fromRGB(255, 255, 255)
credits.TextScaled = true
credits.TextSize = 50.000
credits.TextWrapped = true

set_speed_button.Name = "set_speed_button"
set_speed_button.Parent = main
set_speed_button.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
set_speed_button.BorderColor3 = Color3.fromRGB(107, 16, 45)
set_speed_button.BorderSizePixel = 2
set_speed_button.Position = UDim2.new(0.0212014019, 0, 0.202531651, 0)
set_speed_button.Size = UDim2.new(0, 88, 0, 31)
set_speed_button.Font = Enum.Font.SourceSans
set_speed_button.Text = "设置速度"
set_speed_button.TextColor3 = Color3.fromRGB(243, 255, 0)
set_speed_button.TextScaled = true
set_speed_button.TextSize = 14.000
set_speed_button.TextWrapped = true

set_speed_textbox.Name = "set_speed_textbox"
set_speed_textbox.Parent = main
set_speed_textbox.BackgroundColor3 = Color3.fromRGB(168, 76, 105)
set_speed_textbox.BorderSizePixel = 0
set_speed_textbox.Position = UDim2.new(0.367491156, 0, 0.202531651, 0)
set_speed_textbox.Size = UDim2.new(0, 173, 0, 31)
set_speed_textbox.ClearTextOnFocus = false
set_speed_textbox.Font = Enum.Font.SourceSans
set_speed_textbox.Text = "100"
set_speed_textbox.TextColor3 = Color3.fromRGB(234, 255, 0)
set_speed_textbox.TextScaled = true
set_speed_textbox.TextSize = 30.000
set_speed_textbox.TextWrapped = true

auto_farm.Name = "auto_farm"
auto_farm.Parent = main
auto_farm.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
auto_farm.BorderColor3 = Color3.fromRGB(107, 16, 45)
auto_farm.BorderSizePixel = 2
auto_farm.Position = UDim2.new(0.0212014131, 0, 0.52953583, 0)
auto_farm.Size = UDim2.new(0, 271, 0, 25)
auto_farm.Font = Enum.Font.SourceSans
auto_farm.Text = "Toggle auto farm"
auto_farm.TextColor3 = Color3.fromRGB(243, 255, 0)
auto_farm.TextScaled = true
auto_farm.TextSize = 15.000
auto_farm.TextWrapped = true

Spawn.Name = "Spawn"
Spawn.Parent = main
Spawn.BackgroundColor3 = Color3.fromRGB(168, 35, 55)
Spawn.BorderColor3 = Color3.fromRGB(107, 16, 45)
Spawn.BorderSizePixel = 2
Spawn.Position = UDim2.new(0.0212014094, 0, 0.672995746, 0)
Spawn.Size = UDim2.new(0, 88, 0, 31)
Spawn.Font = Enum.Font.SourceSans
Spawn.Text = "Spawn"
Spawn.TextColor3 = Color3.fromRGB(228, 255, 52)
Spawn.TextScaled = true
Spawn.TextSize = 14.000
Spawn.TextWrapped = true

map_teleport.Name = "map_teleport"
map_teleport.Parent = main
map_teleport.BackgroundColor3 = Color3.fromRGB(168, 35, 55)
map_teleport.BorderColor3 = Color3.fromRGB(107, 16, 45)
map_teleport.BorderSizePixel = 2
map_teleport.Position = UDim2.new(0.363957584, 0, 0.672995746, 0)
map_teleport.Size = UDim2.new(0, 121, 0, 31)
map_teleport.Font = Enum.Font.SourceSans
map_teleport.Text = "传送到地图"
map_teleport.TextColor3 = Color3.fromRGB(228, 255, 52)
map_teleport.TextScaled = true
map_teleport.TextSize = 14.000
map_teleport.TextWrapped = true

remove_fall_damage.Name = "remove_fall_damage"
remove_fall_damage.Parent = main
remove_fall_damage.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
remove_fall_damage.BorderColor3 = Color3.fromRGB(107, 16, 45)
remove_fall_damage.BorderSizePixel = 2
remove_fall_damage.Position = UDim2.new(0.0212014131, 0, 0.599156082, 0)
remove_fall_damage.Size = UDim2.new(0, 271, 0, 25)
remove_fall_damage.Font = Enum.Font.SourceSans
remove_fall_damage.Text = "No fall damage"
remove_fall_damage.TextColor3 = Color3.fromRGB(243, 255, 0)
remove_fall_damage.TextScaled = true
remove_fall_damage.TextSize = 15.000
remove_fall_damage.TextWrapped = true

set_jump_power.Name = "set_jump_power"
set_jump_power.Parent = main
set_jump_power.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
set_jump_power.BorderColor3 = Color3.fromRGB(107, 16, 45)
set_jump_power.BorderSizePixel = 2
set_jump_power.Position = UDim2.new(0.0212014131, 0, 0.284810126, 0)
set_jump_power.Size = UDim2.new(0, 148, 0, 31)
set_jump_power.Font = Enum.Font.SourceSans
set_jump_power.Text = "设置跳跃"
set_jump_power.TextColor3 = Color3.fromRGB(243, 255, 0)
set_jump_power.TextScaled = true
set_jump_power.TextSize = 14.000
set_jump_power.TextWrapped = true

jump_power_textbox.Name = "jump_power_textbox"
jump_power_textbox.Parent = main
jump_power_textbox.BackgroundColor3 = Color3.fromRGB(168, 76, 105)
jump_power_textbox.BorderSizePixel = 0
jump_power_textbox.Position = UDim2.new(0.565371037, 0, 0.284810126, 0)
jump_power_textbox.Size = UDim2.new(0, 117, 0, 31)
jump_power_textbox.ClearTextOnFocus = false
jump_power_textbox.Font = Enum.Font.SourceSans
jump_power_textbox.Text = "100"
jump_power_textbox.TextColor3 = Color3.fromRGB(234, 255, 0)
jump_power_textbox.TextScaled = true
jump_power_textbox.TextSize = 30.000
jump_power_textbox.TextWrapped = true

set_gravity.Name = "set_gravity"
set_gravity.Parent = main
set_gravity.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
set_gravity.BorderColor3 = Color3.fromRGB(107, 16, 45)
set_gravity.BorderSizePixel = 2
set_gravity.Position = UDim2.new(0.0212014131, 0, 0.367088616, 0)
set_gravity.Size = UDim2.new(0, 148, 0, 31)
set_gravity.Font = Enum.Font.SourceSans
set_gravity.Text = "设置重力"
set_gravity.TextColor3 = Color3.fromRGB(243, 255, 0)
set_gravity.TextScaled = true
set_gravity.TextSize = 14.000
set_gravity.TextWrapped = true

gravity_textbox.Name = "gravity_textbox"
gravity_textbox.Parent = main
gravity_textbox.BackgroundColor3 = Color3.fromRGB(168, 76, 105)
gravity_textbox.BorderSizePixel = 0
gravity_textbox.Position = UDim2.new(0.565371037, 0, 0.367088616, 0)
gravity_textbox.Size = UDim2.new(0, 117, 0, 31)
gravity_textbox.ClearTextOnFocus = false
gravity_textbox.Font = Enum.Font.SourceSans
gravity_textbox.Text = "196.2"
gravity_textbox.TextColor3 = Color3.fromRGB(234, 255, 0)
gravity_textbox.TextScaled = true
gravity_textbox.TextSize = 30.000
gravity_textbox.TextWrapped = true

remove_map.Name = "remove_map"
remove_map.Parent = main
remove_map.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
remove_map.BorderColor3 = Color3.fromRGB(107, 16, 45)
remove_map.BorderSizePixel = 2
remove_map.Position = UDim2.new(0.0212014131, 0, 0.451476812, 0)
remove_map.Size = UDim2.new(0, 271, 0, 29)
remove_map.Font = Enum.Font.SourceSans
remove_map.Text = "Remove map (helpful in earthquake)"
remove_map.TextColor3 = Color3.fromRGB(243, 255, 0)
remove_map.TextScaled = true
remove_map.TextSize = 14.000
remove_map.TextWrapped = true

aesthetic.Name = "aesthetic"
aesthetic.Parent = main
aesthetic.BackgroundColor3 = Color3.fromRGB(197, 31, 136)
aesthetic.BorderColor3 = Color3.fromRGB(107, 16, 45)
aesthetic.BorderSizePixel = 2
aesthetic.Position = UDim2.new(0.0212014131, 0, 0.751054823, 0)
aesthetic.Size = UDim2.new(0, 271, 0, 25)
aesthetic.Font = Enum.Font.SourceSans
aesthetic.Text = "A e s t h e t i c"
aesthetic.TextColor3 = Color3.fromRGB(7, 255, 226)
aesthetic.TextScaled = true
aesthetic.TextSize = 15.000
aesthetic.TextWrapped = true

open_close.Name = "open_close"
open_close.Parent = h4x_thing
open_close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
open_close.BackgroundTransparency = 1.000
open_close.Size = UDim2.new(0, 100, 0, 100)

open_close_button.Name = "open_close_button"
open_close_button.Parent = open_close
open_close_button.BackgroundColor3 = Color3.fromRGB(168, 35, 55)
open_close_button.BorderColor3 = Color3.fromRGB(107, 16, 45)
open_close_button.BorderSizePixel = 2
open_close_button.Position = UDim2.new(6.39120197, 0, 0.142995775, 0)
open_close_button.Size = UDim2.new(0, 68, 0, 31)
open_close_button.Font = Enum.Font.SourceSans
open_close_button.Text = "Hide"
open_close_button.TextColor3 = Color3.fromRGB(228, 255, 52)
open_close_button.TextScaled = true
open_close_button.TextSize = 14.000
open_close_button.TextWrapped = true

-- Scripts:

local function JJXU_fake_script() -- bypassed_fly.LocalScript 
	local script = Instance.new('LocalScript', bypassed_fly)

	function remove_fog()
		local LocalPlayer = game.Players.LocalPlayer
		local torso = LocalPlayer.Character:FindFirstChild("Torso")
		if torso == nil then
			torso = LocalPlayer.Character:FindFirstChild("LowerTorso")
		end
		local emitter = Instance.new("ParticleEmitter")
		emitter.Transparency = NumberSequence.new(0.5)
		emitter.Rate = 20
		emitter.Speed = NumberRange.new(3)
		emitter.Lifetime = NumberRange.new(1)
		emitter.SpreadAngle = Vector2.new(360, 360)
		emitter.Parent = torso
		emitter.Texture = "rbxassetid://6882037552"
		emitter.Size = NumberSequence.new(1.5)
		emitter.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
		-- nagatoro music
		if workspace:FindFirstChild("nagatoro is epic") == nil then
			local sound = Instance.new("Sound")
			sound.Name = "nagatoro is epic"
			sound.SoundId = "rbxassetid://5998819632"
			sound.Playing = true
			sound.Looped = true
			sound.Volume = 5
			sound.Parent = workspace
		end
	
		-- platform under you so you fly
		while(true) do
			local leg = LocalPlayer.Character:FindFirstChild("Right Leg")
			if leg == nil then
				leg = LocalPlayer.Character:FindFirstChild("RightLowerLeg")
			end
			local position = Vector3.new(leg.Position.X, leg.Position.Y-2, leg.Position.Z)
			local part = Instance.new("Part")
			part.Color = Color3.fromRGB(170, 0, 170)
			part.Material = Enum.Material.Plastic
			part.Transparency = 0.5
			part.Position = position
			part.Size = Vector3.new(6, 0.25, 6)
			part.Anchored = true
			part.Parent = workspace
			local decal = Instance.new("Decal")
			decal.Texture = "rbxassetid://3437901383"
			decal.Face = "Top"
			decal.Transparency = 0.5
			decal.Parent = part
			wait(0)
			part:Destroy()
		end
	end
	
	script.Parent.MouseButton1Click:Connect(remove_fog)
end
coroutine.wrap(JJXU_fake_script)()
local function EVUH_fake_script() -- btools.LocalScript 
	local script = Instance.new('LocalScript', btools)

	function btools()
		local tool1 = Instance.new("HopperBin")
		local tool2 = Instance.new("HopperBin")
		local tool3 = Instance.new("HopperBin")
		tool1.BinType = 1
		tool2.BinType = 3
		tool3.BinType = 4
		tool1.Parent = game.Players.LocalPlayer.Backpack
		tool2.Parent = game.Players.LocalPlayer.Backpack
		tool3.Parent = game.Players.LocalPlayer.Backpack	
	end
	
	script.Parent.MouseButton1Click:Connect(btools)
end
coroutine.wrap(EVUH_fake_script)()
local function ZCMXMWU_fake_script() -- set_speed_button.LocalScript 
	local script = Instance.new('LocalScript', set_speed_button)

	function set_speed()
		local new_speed = tonumber(script.Parent.Parent.set_speed_textbox.Text)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = new_speed
	end
	
	script.Parent.MouseButton1Click:Connect(set_speed)
end
coroutine.wrap(ZCMXMWU_fake_script)()
local function XZLDY_fake_script() -- auto_farm.LocalScript 
	local script = Instance.new('LocalScript', auto_farm)

	function auto_farm()
		local auto_farm_enabled = nil
		if workspace:FindFirstChild("auto_farm_enabled") then
			auto_farm_enabled = workspace:FindFirstChild("auto_farm_enabled")
		else
			auto_farm_enabled = Instance.new("BoolValue")
			auto_farm_enabled.Name = "auto_farm_enabled"
			auto_farm_enabled.Parent = workspace
		end
		
		if auto_farm_enabled.Value == true then
			auto_farm_enabled.Value = false
		else
			auto_farm_enabled.Value = true
		end
		
		while auto_farm_enabled.Value do
			game.Players.LocalPlayer.Character:moveTo(Vector3.new(-270.72131347656, 195.98658752441, 360.30114746094))
			wait(0)
		end
	end
	
	script.Parent.MouseButton1Click:Connect(auto_farm)
end
coroutine.wrap(XZLDY_fake_script)()
local function BFHF_fake_script() -- Spawn.LocalScript 
	local script = Instance.new('LocalScript', Spawn)

	function teleport()
		game.Players.LocalPlayer.Character:moveTo(Vector3.new(-270.72131347656, 195.98658752441, 360.30114746094))
	end
	
	script.Parent.MouseButton1Click:Connect(teleport)
end
coroutine.wrap(BFHF_fake_script)()
local function HWGSB_fake_script() -- map_teleport.LocalScript 
	local script = Instance.new('LocalScript', map_teleport)

	function teleport()
		game.Players.LocalPlayer.Character:moveTo(Vector3.new(-105.42873382568, 48.893535614014, 6.6068959236145))
	end
	
	script.Parent.MouseButton1Click:Connect(teleport)
end
coroutine.wrap(HWGSB_fake_script)()
local function GCCTP_fake_script() -- remove_fall_damage.LocalScript 
	local script = Instance.new('LocalScript', remove_fall_damage)

	function remove_fall_damage()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name == "FallDamageScript" then
				v:Remove()
			end
		end
	end
	
	script.Parent.MouseButton1Click:Connect(remove_fall_damage)
end
coroutine.wrap(GCCTP_fake_script)()
local function UKFS_fake_script() -- set_jump_power.LocalScript 
	local script = Instance.new('LocalScript', set_jump_power)

	function set_speed()
		local new_jump_power = tonumber(script.Parent.Parent.jump_power_textbox.Text)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = new_jump_power
	end
	
	script.Parent.MouseButton1Click:Connect(set_speed)
end
coroutine.wrap(UKFS_fake_script)()
local function VAXYV_fake_script() -- set_gravity.LocalScript 
	local script = Instance.new('LocalScript', set_gravity)

	function set_speed()
		local new_gravity = tonumber(script.Parent.Parent.gravity_textbox.Text)
		workspace.Gravity = new_gravity
	end
	
	script.Parent.MouseButton1Click:Connect(set_speed)
end
coroutine.wrap(VAXYV_fake_script)()
local function GSME_fake_script() -- remove_map.LocalScript 
	local script = Instance.new('LocalScript', remove_map)

	function remove_map()
		local spawn_baseplate = Instance.new("Part")
		local map_baseplate = Instance.new("Part")
		
		local function iterate_in(object)
			for i,v in pairs(object:GetChildren()) do
				if v:IsA("Model") or v:IsA("Folder") then
					iterate_in(v)
				end
				if v:IsA("Part") then
					v:Remove()
				end
				wait(0.001)
			end
		end
		
		iterate_in(workspace)
		
		spawn_baseplate.Size = Vector3.new(1000, 1, 1000)
		spawn_baseplate.Color = Color3.fromRGB(182, 12, 197)
		spawn_baseplate.Transparency = 0.5
		spawn_baseplate.Position = Vector3.new(-270.72131347656, 195.98658752441, 360.30114746094)
		spawn_baseplate.Parent = workspace
		
		map_baseplate.Size = Vector3.new(1000, 1, 1000)
		map_baseplate.Color = Color3.fromRGB(182, 12, 197)
		map_baseplate.Transparency = 0.5
		map_baseplate.Position = Vector3.new(-105.42873382568, 48.893535614014, 6.6068959236145)
		map_baseplate.Parent = workspace
	end
	
	script.Parent.MouseButton1Click:Connect(remove_map)
end
coroutine.wrap(GSME_fake_script)()
local function CIVDV_fake_script() -- aesthetic.LocalScript 
	local script = Instance.new('LocalScript', aesthetic)

	function create_aesthetic()
		local music = Instance.new("Sound")
		music.Name = "Music"
		music.SoundId = "rbxassetid://5957515031"
		music.Looped = true
		music.Parent = workspace
		music.Volume = 10
		music:Play()
		
		local color_correction = Instance.new("ColorCorrectionEffect")
		color_correction.TintColor = Color3.fromRGB(255, 149, 254)
		color_correction.Parent = game.Lighting
	end
	
	script.Parent.MouseButton1Click:Connect(create_aesthetic)
end
coroutine.wrap(CIVDV_fake_script)()
local function VBPKQ_fake_script() -- open_close_button.LocalScript 
	local script = Instance.new('LocalScript', open_close_button)

	function teleport()
		if script.Parent.Parent.Parent.main.Visible == true then
			script.Parent.Parent.Parent.main.Visible = false
			script.Parent.Text = "打开"
		else
			script.Parent.Parent.Parent.main.Visible = true
			script.Parent.Text = "关闭"
		end
	end
	
	script.Parent.MouseButton1Click:Connect(teleport)
end
coroutine.wrap(VBPKQ_fake_script)()