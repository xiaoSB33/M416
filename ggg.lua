local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "彩云脚本",
	Content = "正在加载 彩云脚本-力量传奇",
	Image = "rbxthumb://type=Asset&id=5107182114&w=150&h=150",
	Time = 5
})

local Window = OrionLib:MakeWindow({Name = "彩云脚本-力量传奇", HidePremium = false, SaveConfig = true, IntroText = "彩云脚本-力量传奇", ConfigFolder = "BeiFengMuscleLegends"})

local Back = Window:MakeTab({
	Name = "彩云脚本",
	Icon = "rbxassetid://14380684950",
	PremiumOnly = false
})

Back:AddButton({
	Name = "返回彩云脚本",
	Callback = function()
		loadstring(game:HttpGet("https://github.com/xiaoSB33/M416/raw/main/jdknsn.lua", true))()
	end
})

local Home = Window:MakeTab({
	Name = "主要功能",
	Icon = "rbxassetid://14361559991",
	PremiumOnly = false
})

function c()
	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if
			v.ClassName == "Tool" and v.Name == "Handstands" or v.Name == "Situps" or v.Name == "Pushups" or
			v.Name == "Weight"
		then
			v:FindFirstChildOfClass("NumberValue").Value = 0
			repeat
				wait()
			until game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
			game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
		end
	end
end

farming = false

Home:AddToggle({
	Name = "自动锻炼",
	Default = false,
	Callback = function(Value)
		farming = Value
		game:GetService("RunService").Stepped:connect(
		function()
			pcall(
				function()
					if farming then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
					end
				end
			)
		end
		)
		spawn(function()
			while farming do
				wait()
				pcall(
					function()
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
						c()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9e9,9e9,9e9)
						if not farming then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 0, 0)
						end
					end
				)
			end
		end)
	end
})

rebirth = false

Home:AddToggle({
	Name = "自动重生",
	Default = false,
	Callback = function(Value)
		rebirth = Value
		spawn(function()
			while rebirth do
				wait(0.1)
				game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
			end
		end)
	end
})

jk = {}

for _, v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do
	if v.Name ~= "Light Karma Chest" or v.Name ~= "Evil Karma Chest" then
		table.insert(jk, v.Name)
	end
end

local function getAllChests()
	for i, chestName in ipairs(jk) do
		game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(chestName)
		wait(2)
	end
end

Home:AddButton({
	Name = "获取全部宝箱",
	Callback = function()
		getAllChests()
	end
})

br = false

Home:AddToggle({
	Name = "刷业报（配合挥拳）",
	Default = false,
	Callback = function(Value)
		br = Value
		while br do
			local randomPlayer = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
			wait(0.2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
				CFrame.new(
					Vector3.new(
						randomPlayer.Character.Head.Position.X,
						randomPlayer.Character.Head.Position.Y,
						randomPlayer.Character.Head.Position.Z
					)
				)
		end
	end    
})

autopunch = false

Home:AddToggle({
	Name = "自动挥拳",
	Default = false,
	Callback = function(Value)
		autopunch = Value
		game:GetService("RunService").Stepped:connect(
		function()
			pcall(
				function()
					if autopunch then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
						if autopunch then
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(
								game:GetService("Players").LocalPlayer.Backpack.Punch
							)
						end
					end

				end
			)
		end
		)
	end    
})

noCD = false
punchCooldown = 0.35

Home:AddToggle({
	Name = "挥拳无间隔",
	Default = false,
	Callback = function(Value)
		noCD = Value
		if noCD then
			game:GetService("Players").LocalPlayer.Backpack.Punch:FindFirstChildOfClass("NumberValue").Value = 0
		else
			game:GetService("Players").LocalPlayer.Backpack.Punch:FindFirstChildOfClass("NumberValue").Value = punchCooldown
		end
	end    
})

local PTeleport = Window:MakeTab({
	Name = "传送功能",
	Icon = "rbxassetid://14369026854",
	PremiumOnly = false
})

PTeleport:AddButton({
	Name = "沙滩",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-42.7, 3.7, 404.2)
	end
})

PTeleport:AddButton({
	Name = "小岛（0-1000力量）",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-37.636775970458984, 3.86960768699646, 1879.180908203125)
	end
})

PTeleport:AddButton({
	Name = "冰霜健身房（1重生）",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2623.022216796875, 3.716249465942383, -409.0733337402344)
	end
})

PTeleport:AddButton({
	Name = "神话健身房（5重生）",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2250.778076171875, 3.716248035430908, 1073.2266845703125)
	end
})

PTeleport:AddButton({
	Name = "永恒健身房（15重生）",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6758.9638671875, 3.71626353263855, -1284.918701171875)
	end
})

PTeleport:AddButton({
	Name = "传奇健身房（30重生）",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4603.28173828125, 987.869140625, -3897.86572265625)
	end
})

PTeleport:AddButton({
	Name = "“力量之王”健身房（5重生）",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8625.9296875, 13.566278457641602, -5730.4736328125)
	end
})

local Rocks = Window:MakeTab({
	Name = "刷卡宠（打石头）",
	Icon = "rbxassetid://14362115268",
	PremiumOnly = false
})

local autorocks0 = false

Rocks:AddToggle({
	Name = "0耐力石头",
	Default = false,
	Callback = function(Value)
		autorocks0 = Value
		game:GetService("RunService").Stepped:connect(
		function()
			pcall(
				function()
					if autorocks0 then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17.6, 3.8, 2119.2)
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(
							game:GetService("Players").LocalPlayer.Backpack.Punch
						)
					end
				end
			)
		end
		)
	end    
})

local autorocks10 = false

Rocks:AddToggle({
	Name = "10耐力石头",
	Default = false,
	Callback = function(Value)
		autorocks10 = Value
		game:GetService("RunService").Stepped:connect(
		function()
			pcall(
				function()
					if autorocks10 then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-151.0, 3.7, 438.5)
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(
							game:GetService("Players").LocalPlayer.Backpack.Punch
						)
					end
				end
			)
		end
		)
	end    
})

local autorocks100 = false

Rocks:AddToggle({
	Name = "100耐力石头",
	Default = false,
	Callback = function(Value)
		autorocks100 = Value
		game:GetService("RunService").Stepped:connect(
		function()
			pcall(
				function()
					if autorocks100 then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(166.8, 3.7, -137.2)
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(
							game:GetService("Players").LocalPlayer.Backpack.Punch
						)
					end
				end
			)
		end
		)
	end    
})

autorocks5k = false

Rocks:AddToggle({
	Name = "5k耐力石头",
	Default = false,
	Callback = function(Value)
		autorocks5k = Value
		game:GetService("RunService").Stepped:connect(
		function()
			pcall(
				function()
					if autorocks5k then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(299.9, 3.7, -563.6)
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(
							game:GetService("Players").LocalPlayer.Backpack.Punch
						)
					end
				end
			)
		end
		)
	end    
})

autorocks150k = false

Rocks:AddToggle({
	Name = "150k耐力石头",
	Default = false,
	Callback = function(Value)
		autorocks150k = Value
		game:GetService("RunService").Stepped:connect(
		function()
			pcall(
				function()
					if autorocks150k then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2557.7, 3.7, -202.3)
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(
							game:GetService("Players").LocalPlayer.Backpack.Punch
						)
					end
				end
			)
		end
		)
	end    
})

autorocks400k = false

Rocks:AddToggle({
	Name = "400k耐力石头",
	Default = false,
	Callback = function(Value)
		autorocks400k = Value
		game:GetService("RunService").Stepped:connect(
		function()
			pcall(
				function()
					if autorocks400k then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2182.3, 3.7, 1292.7)
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(
							game:GetService("Players").LocalPlayer.Backpack.Punch
						)
					end
				end
			)
		end
		)
	end    
})

autorocks750k = false

Rocks:AddToggle({
	Name = "750k耐力石头",
	Default = false,
	Callback = function(Value)
		autorocks750k = Value
		game:GetService("RunService").Stepped:connect(
		function()
			pcall(
				function()
					if autorocks750k then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7263.5, 3.7, -1217.2)
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(
							game:GetService("Players").LocalPlayer.Backpack.Punch
						)
					end
				end
			)
		end
		)
	end    
})

autorocks1M = false

Rocks:AddToggle({
	Name = "100万耐力石头",
	Default = false,
	Callback = function(Value)
		autorocks1M = Value
		game:GetService("RunService").Stepped:connect(
		function()
			pcall(
				function()
					if autorocks1M then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4144.3, 987.9, -4032.2)
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(
							game:GetService("Players").LocalPlayer.Backpack.Punch
						)
					end
				end
			)
		end
		)
	end    
})

autorocks5M = false

Rocks:AddToggle({
	Name = "500万耐力石头",
	Default = false,
	Callback = function(Value)
		autorocks5M = Value
		game:GetService("RunService").Stepped:connect(
		function()
			pcall(
				function()
					if autorocks5M then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8966.7, 13.6, -5988.1)
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(
							game:GetService("Players").LocalPlayer.Backpack.Punch
						)
					end
				end
			)
		end
		)
	end    
})

local Gym = Window:MakeTab({
	Name = "健身功能",
	Icon = "rbxassetid://14369062746",
	PremiumOnly = false
})

local Section = Gym:AddSection({
	Name = "↓巨石抛掷↓"
})

Boulder = false

Gym:AddToggle({
	Name = "沙滩",
	Default = false,
	Callback = function(Value)
		Boulder = Value
		if Boulder then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-75.1, 3.7, -408.0)

			while Boulder  do
				wait(0.25)
				game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Boulder Throw"].interactSeat)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder["Boulder Throw"].interactSeat)		
				wait(0.25)	
			end
		end
	end    
})

Mythical = false

Gym:AddToggle({
	Name = "神话健身房",
	Default = false,
	Callback = function(Value)
		Mythical = Value
		if Mythical then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2489.8, 3.7, 1236.9)

			while Mythical  do
				wait(0.25)
				game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Mythical Throw"].interactSeat)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder["Mythical Throw"].interactSeat)
				wait(0.25)	
			end
		end
	end    
})

Legends = false

Gym:AddToggle({
	Name = "传奇健身房",
	Default = false,
	Callback = function(Value)
		Legends = Value
		if Legends then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4247.6, 987.9, -3613.6)

			while Legends  do
				wait(0.25)
				game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Legends Throw"].interactSeat)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder["Legends Throw"].interactSeat)
				wait(0.25)	
			end	
		end
	end    
})

King = false

Gym:AddToggle({
	Name = "“力量之王”健身房",
	Default = false,
	Callback = function(Value)
		King = Value
		if King then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8950.3, 62.9, -5701.4)

			while King  do
				wait(0.25)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder["King Boulder"].interactSeat)
				wait(0.25)	
			end
		end
	end    
})

local Section = Gym:AddSection({
	Name = "↓引体向上↓"
})

Pull1 = false

Gym:AddToggle({
	Name = "沙滩",
	Default = false,
	Callback = function(Value)
		Pull1 = Value
		if Pull1  then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-185.0, 3.7, 24.1)

			while Pull1  do
				wait(0.25)
				game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder.Pullups.interactSeat)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder.Pullups.interactSeat)
				wait(0.25)
			end
		end
	end    
})

Pull2 = false

Gym:AddToggle({
	Name = "神话健身房",
	Default = false,
	Callback = function(Value)
		Pull2 = Value
		if Pull2  then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2260.7, 3.7, 843.9)

			while Pull2  do
				wait(0.25)
				game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Mythical Pullup"].interactSeat)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder["Mythical Pullup"].interactSeat)
				wait(0.25)
			end
		end
	end    
})

Pull3 = false

Gym:AddToggle({
	Name = "传奇健身房",
	Default = false,
	Callback = function(Value)
		Pull3 = Value
		if Pull3  then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4511.9, 987.9, -3635.0)

			while Pull3  do
				wait(0.25)
				game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Legends Pullup"].interactSeat)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder["Legends Pullup"].interactSeat)
				wait(0.25)
			end
		end
	end    
})

local Section = Gym:AddSection({
	Name = "↓仰卧推举↓"
})

Press = false

Gym:AddToggle({
	Name = "沙滩",
	Default = false,
	Callback = function(Value)
		Press = Value
		if Press  then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-241.9, 8.0, 346.7)

			while Press  do
				wait(0.25)
				game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Bench Press"].interactSeat)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder["Bench Press"].interactSeat)
				wait(0.25)
			end
		end
	end    
})

Press1 = false

Gym:AddToggle({
	Name = "冰霜健身房",
	Default = false,
	Callback = function(Value)
		Press1 = Value
		if Press1  then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3020.7, 30.0, -194.8)

			while Press1  do
				wait(0.25)
				game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Frost Press"].interactSeat)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder["Frost Press"].interactSeat)
				wait(0.25)
			end
		end
	end    
})

Press2 = false

Gym:AddToggle({
	Name = "神话健身房",
	Default = false,
	Callback = function(Value)
		Press2 = Value
		if Press2  then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2364.0, 39.6, 1243.5)

			while Press2  do
				wait(0.25)
				game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Mythical Press"].interactSeat)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder["Mythical Press"].interactSeat)
				wait(0.25)
			end
		end
	end    
})

Press3 = false

Gym:AddToggle({
	Name = "永恒健身房",
	Default = false,
	Callback = function(Value)
		Press3 = Value
		if Press3  then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7172.8, 45.8, -1105.1)

			while Press3  do
				wait(0.25)
				game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Eternal Press"].interactSeat)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder["Eternal Press"].interactSeat)
				wait(0.25)
			end
		end
	end    
})

Press4 = false

Gym:AddToggle({
	Name = "传奇健身房",
	Default = false,
	Callback = function(Value)
		Press4 = Value
		if Press4  then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4109.8, 1020.9, -3800.8)

			while Press4  do
				wait(0.25)
				game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Legends Press"].interactSeat)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder["Legends Press"].interactSeat)
				wait(0.25)
			end
		end
	end    
})

Press5 = false

Gym:AddToggle({
	Name = "“力量之王”健身房",
	Default = false,
	Callback = function(Value)
		Press5 = Value
		if Press5  then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8593.0, 46.4, -6042.8)

			while Press5 do
				wait(0.25)
				game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Muscle King Bench"].interactSeat)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder["Muscle King Bench"].interactSeat)
				wait(0.25)
			end
		end
	end    
})

local Pets = Window:MakeTab({
	Name = "抽宠功能",
	Icon = "rbxassetid://14361928241",
	PremiumOnly = false
})

Pets:AddButton({
	Name = "蓝色水晶（1000水晶）（0重生）",
	Callback = function()
		game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Blue Crystal")
	end    
})

Pets:AddButton({
	Name = "绿色水晶（3000水晶）（0重生）",
	Callback = function()
		game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Green Crystal")
	end    
})

Pets:AddButton({
	Name = "冰霜水晶（5000水晶）（1重生）",
	Callback = function()
		game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Frost Crystal")
	end    
})

Pets:AddButton({
	Name = "神话水晶（8000水晶）（5重生）",
	Callback = function()
		game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Mythical Crystal")
	end    
})

Pets:AddButton({
	Name = "地狱火水晶（15000水晶）（15重生）",
	Callback = function()
		game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Inferno Crystal")
	end    
})

Pets:AddButton({
	Name = "传奇水晶（30000水晶）（30重生）",
	Callback = function()
		game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Legends Crystal")
	end    
})

Pets:AddButton({
	Name = "力量精英水晶（100万水晶）（30重生）",
	Callback = function()
		game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Muscle Elite Crystal")
	end    
})

Pets:AddButton({
	Name = "力量之王水晶（1.500万水晶）（5重生）",
	Callback = function()
		game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Galaxy Oracle Crystal")
	end    
})

OrionLib:Init()