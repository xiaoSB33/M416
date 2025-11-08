--[[
白教了，江已经被我打压了，已经不是我徒弟了，我不认识
]]

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/UI/refs/heads/main/%E5%BD%A9%E8%99%B9.lua"))()

local Window = library:new("空云HUB")

local ZRZHt = Window:Tab("自然灾害",'94003822271551')
local ZRZH = ZRZHt:section("自然&灾害",true)
local RHE = ZRZHt:section("玩家",true)
local RHF = ZRZHt:section("吸方块",true)

ZRZH:Toggle("在水上行走", "AHJ", false, function(AHJ)
  if AHJ == false then game.Workspace.WaterLevel.CanCollide = false game.Workspace.WaterLevel.Size = Vector3.new(10, 1, 10) end if AHJ == true then game.Workspace.WaterLevel.CanCollide = true game.Workspace.WaterLevel.Size = Vector3.new(5000, 1, 5000) end
end)
ZRZH:Toggle("自动禁用掉落伤害", "AJH", false, function(AJH)
  _G.NoFallDamage = AJH; while wait(0.5) do if _G.NoFallDamage == true then local FallDamageScript = (game.Players.LocalPlayer.Character ~= nil) and game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil if FallDamageScript then FallDamageScript:Destroy() end end end
end)

RHE:Button("传送到地图", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-115.828506, 65.4863434, 18.8461514, 0.00697017973, 0.0789371505, -0.996855199, -3.13589936e-07, 0.996879458, 0.0789390653, 0.999975681, -0.000549906865, 0.00694845384)
end)
RHE:Button("游戏岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.5, 38.5, -27.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)
RHE:Toggle("预测灾害", "YCZN", false, function(YCZN)
    nextdis = YCZN while wait(1) and nextdis do local SurvivalTag = plr.Character:FindFirstChild("SurvivalTag") if SurvivalTag then if SurvivalTag.Value == "Blizzard" and nextdis then Message.Visible = true Message.Text = "下一个灾难是：暴风雪" elseif SurvivalTag.Value == "Sandstorm" and nextdis then Message.Visible = true Message.Text = "下一个灾难是：沙尘暴" elseif SurvivalTag.Value == "Tornado" and nextdis then Message.Visible = true Message.Text = "下一个灾难是：龙卷风" elseif SurvivalTag.Value == "Volcanic Eruption" and nextdis then Message.Visible = true Message.Text = "下一个灾难是：火山" elseif SurvivalTag.Value == "Flash Flood" and nextdis then Message.Visible = true Message.Text = "下一个灾难是：洪水" elseif SurvivalTag.Value == "Deadly Virus" and nextdis then Message.Visible = true Message.Text = "下一个灾难是：病毒" elseif SurvivalTag.Value == "Tsunami" and nextdis then Message.Visible = true Message.Text = "下一个灾难是：海啸" elseif SurvivalTag.Value == "Acid Rain" and nextdis then Message.Visible = true Message.Text = "下一个灾难是：酸雨" elseif SurvivalTag.Value == "Fire" and nextdis then Message.Visible = true Message.Text = "下一个灾难是：火焰" elseif SurvivalTag.Value == "Meteor Shower" and nextdis then Message.Visible = true Message.Text = "下一个灾难是：流星雨" elseif SurvivalTag.Value == "Earthquake" and nextdis then Message.Visible = true Message.Text = "下一个灾难是：地震" elseif SurvivalTag.Value == "Thunder Storm" and nextdis then Message.Visible = true Message.Text = "下一个灾难是：暴风雨" else Message.Visible = false end end end
end)
RHE:Toggle("地图投票用户界面", "Map Voting UI", false, function(MapUI)
    if MapUI == false then game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = false end if MapUI == true then game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = true end
end)
RHE:Button("获取气球", function()
    plyr = game.Players.LocalPlayer char = plyr.Character torso = char.Torso mouse = plyr:GetMouse() Run = game:service'RunService' deb = game:service'Debris' ra = char["Right Arm"] la = char["Left Arm"] rs = char.Torso["Right Shoulder"] ls = char.Torso["Left Shoulder"] local platform = false local idle = true iliketrains = {} part1 = Instance.new("Part", char) part1.FormFactor = "Symmetric" part1.Size = Vector3.new(1, 3, 1) part1.TopSurface = 0 part1.BottomSurface = 0 part1:BreakJoints() special = Instance.new("SpecialMesh", part1) special.MeshId = "http://www.roblox.com/asset/?id=25498565" special.TextureId = "http://www.roblox.com/asset/?id=26725707" special.Scale = Vector3.new(2, 2, 2) w = Instance.new("Weld", char) w.Part0 = part1 w.Part1 = torso w.C0 = CFrame.new(-0.4, -1.4, -0.5) * CFrame.Angles(-0.5, 0, 0.2) part2 = Instance.new("Part", char) part2.FormFactor = "Symmetric" part2.Size = Vector3.new(1, 3, 1) part2.TopSurface = 0 part2.BottomSurface = 0 part2:BreakJoints() special2 = Instance.new("SpecialMesh", part2) special2.MeshId = "http://www.roblox.com/asset/?id=25498565" special2.TextureId = "http://www.roblox.com/asset/?id=26725707" special2.Scale = Vector3.new(2, 2, 2) w2 = Instance.new("Weld", char) w2.Part0 = part2 w2.Part1 = torso w2.C0 = CFrame.new(0.4, -1.4, -0.5) * CFrame.Angles(-0.5, 0, -0.2) tool = Instance.new("HopperBin", plyr.Backpack) tool.Name = " " tool.TextureId = "http://www.roblox.com/asset/?id=27471616" tool.Selected:connect(function(mouse) mouse.Button1Down:connect(function(mouse) if equipped then return end equipped = true coroutine.wrap(function() while equipped do rs.DesiredAngle = 0 rs.CurrentAngle = 0 ls.DesiredAngle = 0 ls.CurrentAngle = 0 Run.Stepped:wait() end end)() coroutine.wrap(function() idle = false coroutine.wrap(function() for i = 0, 3 do w.C0 = w.C0 * CFrame.new(0, 0.05, 0) w2.C0 = w2.C0 * CFrame.new(0, 0.05, 0) Run.Stepped:wait() end wait(0.147) for i = 0, 3 do w.C0 = w.C0 * CFrame.new(0, -0.05, 0) w2.C0 = w2.C0 * CFrame.new(0, -0.05, 0) Run.Stepped:wait() end end)() local p = Instance.new("Part", char) p.FormFactor = "Custom" p.Name = "Platform" p.Transparency = 1 p.Size = Vector3.new(4, 1, 4) p.Anchored = true for i = 2.5, 6, 0.05 do p.CFrame = CFrame.new(torso.CFrame.x, torso.CFrame.y-i, torso.CFrame.z) Run.Stepped:wait() end coroutine.wrap(function() p:Destroy() end)() end)() for i = 0, 4 do ls.C0 = ls.C0 * CFrame.Angles(-0.25, 0, 0) rs.C0 = rs.C0 * CFrame.Angles(-0.25, 0, 0) Run.Stepped:wait() end wait(0.02) for i = 0, 4 do ls.C0 = ls.C0 * CFrame.Angles(0.25, 0, 0) rs.C0 = rs.C0 * CFrame.Angles(0.25, 0, 0) Run.Stepped:wait() end idle = true equipped = false end) end) while idle do for i = 0, 3 do w.C0 = w.C0 * CFrame.Angles(0, 0.002 * i, 0) w2.C0 = w2.C0 * CFrame.Angles(0, -0.002 * i, 0) Run.Stepped:wait() end wait(0.112687) for i = 0, 3 do w.C0 = w.C0 * CFrame.Angles(0, -0.002 * i, 0) w2.C0 = w2.C0 * CFrame.Angles(0, 0.002 * i, 0) Run.Stepped:wait() end wait(0.312687) end
end)
RHF:Button("v6", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/V6.txt))()
end)