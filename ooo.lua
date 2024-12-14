local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "彩云脚本",
	Content = "正在加载 彩云脚本-忍者传奇",
	Image = "rbxthumb://type=Asset&id=5107182114&w=150&h=150",
	Time = 5
})

local Window = OrionLib:MakeWindow({Name = "彩云脚本-忍者传奇", HidePremium = false, SaveConfig = true, IntroText = "彩云脚本-忍者传奇", ConfigFolder = "BeiFengNinjaLegends"})

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

autoswing = false

function swinging()
	spawn(function()
		while autoswing do
			task.wait()
			game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
			if not autoswing then
				break
			end
		end
	end)
end

autosell = false

function selling()
	spawn(function()
		while autosell do
			task.wait(0.01)
			if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
				game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
				wait(0.1)
				game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Workspace.Part.CFrame
				if not autosell then
					break
				end
			end
		end
	end)
end

autosellmax = false

function maxsell()
	spawn(function()
		while autosellmax do
			task.wait()
			if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
				if game.Players.LocalPlayer.PlayerGui.gameGui.maxNinjitsuMenu.Visible then
					game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
					task.wait()
					game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Workspace.Part.CFrame
				end
			end
			if not autosellmax then
				break
			end
		end
	end)
end

autobuyswords = false

function buyswords()
	spawn(function()
		while autobuyswords do
			task.wait()
			if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
				local oh1 = "buyAllSwords"
				local oh2 = {"Ground", "Astral Island", "Space Island", "Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island"}
				for i = 1, #oh2 do
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
				end
			end
			if not autobuyswords then
				break
			end
		end
	end)
end

autobuybelts = false

function buybelts()
	spawn(function()
		while autobuybelts do
			task.wait()
			if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
				local oh1 = "buyAllBelts"
				local oh2 = {"Ground", "Astral Island", "Space Island", "Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island"}
				for i = 1, #oh2 do
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
				end
			end
			if not autobuybelts then
				break
			end
		end
	end)
end

autobuyranks = false

function buyranks()
	spawn(function()
		while autobuyranks do
			task.wait()
			if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
				local oh1 = "buyRank"
				local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
				for i = 1, #oh2 do
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
				end
			end
			if not autobuyranks then
				break
			end
		end
	end)
end

autobuyskill = false

function buyskill()
	spawn(function()
		while autobuyskill do
			task.wait()
			if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
				local oh1 = "buyAllSkills"
				local oh2 = {"Ground", "Astral Island", "Space Island", "Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island"}
				for i = 1, #oh2 do
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
				end
			end
			if not autobuyskill then
				break
			end
		end
	end)
end

autobuyshurikens = false

function buyshurikens()
	spawn(function()
		while autobuyshurikens do
			task.wait()
			if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
				local oh1 = "buyAllShurikens"
				local oh2 = {"Ground", "Astral Island", "Space Island", "Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island"}
				for i = 1, #oh2 do
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
				end
			end
			if not autobuyshurikens then
				break
			end
		end
	end)
end

Home:AddToggle({
	Name = "自动挥舞",
	Default = false,
	Callback = function(x)
		autoswing = x
		if autoswing then
			swinging()
		end
	end
})

Home:AddToggle({
	Name = "自动售卖",
	Default = false,
	Callback = function(x)
		autosell = x
		if autosell then
			selling()
		end
	end
})

Home:AddToggle({
	Name = "存满自动售卖",
	Default = false,
	Callback = function(x)
		autosellmax = x
		if autosellmax then
			maxsell()
		end
	end
})

Home:AddToggle({
	Name = "自动购买剑",
	Default = false,
	Callback = function(x)
		autobuyswords = x
		if autobuyswords then
			buyswords()
		end
	end
})

Home:AddToggle({
	Name = "自动购买腰带",
	Default = false,
	Callback = function(x)
		autobuybelts = x
		if autobuybelts then
			buybelts()
		end
	end
})

Home:AddToggle({
	Name = "自动购买称号",
	Default = false,
	Callback = function(x)
		autobuyranks = x
		if autobuyranks then
			buyranks()
		end
	end
})

Home:AddToggle({
	Name = "自动购买忍术",
	Default = false,
	Callback = function(x)
		autobuyskill = x
		if autobuyskill then
			buyskill()
		end
	end
})

Home:AddButton({
	Name = "解锁所有岛",
	Callback = function()
		for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
			if v then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame
				wait(0.5)
			end
		end
	end
})

local PTeleport = Window:MakeTab({
	Name = "传送功能",
	Icon = "rbxassetid://14369026854",
	PremiumOnly = false
})

PTeleport:AddButton({
	Name = "出生点",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.665502548217773, 3.4228405952453613, 29.919952392578125)
	end
})

PTeleport:AddButton({
	Name = "附魔岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.17238235473633, 766.1807861328125, -138.44842529296875)
	end
})

PTeleport:AddButton({
	Name = "星界岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207.2932891845703, 2013.88037109375, 237.36672973632812)
	end
})

PTeleport:AddButton({
	Name = "神秘岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171.97178649902344, 4047.380859375, 42.0699577331543)
	end
})

PTeleport:AddButton({
	Name = "太空岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.83824157714844, 5657.18505859375, 73.5014877319336)
	end
})

PTeleport:AddButton({
	Name = "冻土岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.28330993652344, 9285.18359375, 77.36406707763672)
	end
})

PTeleport:AddButton({
	Name = "永恒岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.34817504882812, 13680.037109375, 73.3861312866211)
	end
})

PTeleport:AddButton({
	Name = "沙暴岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.37144470214844, 17686.328125, 72.00334167480469)
	end
})

PTeleport:AddButton({
	Name = "雷暴岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.19349670410156, 24070.021484375, 78.05432891845703)
	end
})

PTeleport:AddButton({
	Name = "远古炼狱岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.27163696289062, 28256.294921875, 69.3790283203125)
	end
})

PTeleport:AddButton({
	Name = "午夜暗影岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.74267578125, 33206.98046875, 57.495574951171875)
	end
})

PTeleport:AddButton({
	Name = "神秘灵魂岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.76148986816406, 39317.5703125, 61.06639862060547)
	end
})

PTeleport:AddButton({
	Name = "冬季奇迹岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.2720184326172, 46010.5546875, 55.941951751708984)
	end
})

PTeleport:AddButton({
	Name = "黄金大师岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128.32339477539062, 52607.765625, 56.69411849975586)
	end
})

PTeleport:AddButton({
	Name = "龙传奇岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.35226440429688, 59594.6796875, 77.53300476074219)
	end
})

PTeleport:AddButton({
	Name = "赛博传奇岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.3321075439453, 66669.1640625, 72.21722412109375)
	end
})

PTeleport:AddButton({
	Name = "天岚超能岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.48077392578125, 70271.15625, 57.02311325073242)
	end
})

PTeleport:AddButton({
	Name = "混沌传奇岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
	end
})

PTeleport:AddButton({
	Name = "灵魂融合岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.9700927734375, 79746.984375, 58.54051971435547)
	end
})

PTeleport:AddButton({
	Name = "黑暗元素岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.697265625, 83198.984375, 72.73107147216797)
	end
})

PTeleport:AddButton({
	Name = "内心和平岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.3157501220703, 87051.0625, 66.78429412841797)
	end
})

PTeleport:AddButton({
	Name = "炽烈漩涡岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.08216857910156, 91246.0703125, 69.56692504882812)
	end
})

PTeleport:AddButton({
	Name = "35倍金币区域",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.2938232421875, 91245.765625, 120.54232788085938)
	end
})

PTeleport:AddButton({
	Name = "死亡宠物",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4593.21337890625, 130.87181091308594, 1430.2239990234375)
	end
})

OrionLib:Init()