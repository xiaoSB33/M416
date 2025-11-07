--[[
白教了，江已经被我打压了，已经不是我徒弟了，我不认识
]]

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/UI/refs/heads/main/%E5%BD%A9%E8%99%B9.lua"))()

local Window = library:new("空云HUB")

local JSCQt = Window:Tab("极速传奇",'94003822271551')
local JSCQ = JSCQt:section("自动&玩家",true)
local JSQC = JSCQt:section("传送位置",true)

JSCQ:Toggle("自动重生", "ARS", false, function(ARS)
    if ARS then _G.loop = true while _G.loop == true do wait() game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest") end else _G.loop = false end
end)
JSCQ:Button("自动重生和自动刷等级", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/T9wTL150"))()
end)
JSCQ:Button("反踢出", function()
    local vu = game:GetService("VirtualUser") game:GetService("Players").LocalPlayer.Idled:connect(function() vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) wait(1) vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame) end)
end)

JSQC:Button("城市", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-559.2, -7.45058e-08, 417.4))
end)
JSQC:Button("雪城", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-858.358, 0.5, 2170.35))
end)
JSQC:Button("岩浆城", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1707.25, 0.550008, 4331.05))
end)
JSQC:Button("公路传奇", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(3594.68, 214.804, 7274.56))
end)