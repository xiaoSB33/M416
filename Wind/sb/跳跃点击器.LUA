--[[
白教了，江已经被我打压了，已经不是我徒弟了，我不认识
]]

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/UI/refs/heads/main/%E5%BD%A9%E8%99%B9.lua"))()

local Window = library:new("空云")

local ACC = Window:Tab("跳跃点击器（传送自己写的）",'94003822271551')
local ACA = ACC:section("公告",true)
local ACD = ACC:section("传送",true)

ACA:Label("自己写的")
ACD:Button("传送新手", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10469.2422, 2537.50488, -60.4162979, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
ACD:Button("传送月亮", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5119.94189, 6209.35596, 136.225327, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
ACD:Button("传送岩浆", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.0172539, 8739.35449, 137.182098, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
ACD:Button("传送冰", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5027.89307, 13434.3535, 151.571716, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
ACD:Button("传送花朵", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10099.9033, 19194.3555, 160.422607, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
ACD:Button("传送黑暗", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20507.8105, 45657.7539, 196.650482, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
ACD:Button("传送沙漠", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(30749.3418, 82356.75, 255.45639, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)