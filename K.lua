_G.AutoGrabEat = true -- Toggle for Auto Grab & Eat

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

local function ensureMobility()
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")

    if HumanoidRootPart then
        HumanoidRootPart.Anchored = false
    end

    if Humanoid then
        Humanoid.PlatformStand = false
        Humanoid.Sit = false
        Humanoid.Jump = true
    end
end

task.spawn(function()
    while task.wait(0.1) do
        if _G.AutoGrabEat then
            local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local GrabEvent = Character:FindFirstChild("Events") and Character.Events:FindFirstChild("Grab")
            local EatEvent = Character:FindFirstChild("Events") and Character.Events:FindFirstChild("Eat")

            ensureMobility()

            if GrabEvent then
                local args = { [1] = false, [2] = false }
                GrabEvent:FireServer(unpack(args))
            end

            if EatEvent then
                for _ = 1, 3 do
                    EatEvent:FireServer()
                    task.wait(0.05)
                end
            end
        end
    end
end)

RunService.Stepped:Connect(ensureMobility)
