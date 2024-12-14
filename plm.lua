FLYING = false
local Mouse = game:GetService'Players'.LocalPlayer:GetMouse()
local Players = game:GetService'Players'
local vfly = false
_G.fs = 1
Mouse.KeyDown:Connect(function(k)
    if k == "l" or k == "p" then
        if not FLYING then
            if k == "l" then _G.fs = 6.4; vfly = false end
            if k == "p" then _G.fs = 6.4; vfly = true end
            repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            repeat wait() until Mouse
 
            local T = Players.LocalPlayer.Character.HumanoidRootPart
            local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            local SPEED = 0
 
            local function FLY()
                FLYING = true
                local BG = Instance.new('BodyGyro')
                local BV = Instance.new('BodyVelocity')
                BG.P = 9e4
                BG.Parent = T
                BV.Parent = T
                BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                BG.cframe = T.CFrame
                BV.velocity = Vector3.new(0, 0, 0)
                BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
                spawn(function()
                    repeat wait()
                        if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                            Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
                        end
                        if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                            SPEED = 50
                        elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                            SPEED = 0
                        end
                        if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                            BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                            lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                        elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
                            BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                        else
                            BV.velocity = Vector3.new(0, 0, 0)
                        end
                        BG.cframe = workspace.CurrentCamera.CoordinateFrame
                    until not FLYING
                    CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                    lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                    SPEED = 0
                    BG:Destroy()
                    BV:Destroy()
                    if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                        Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
                    end
                end)
            end
            Mouse.KeyDown:Connect(function(KEY)
                if KEY:lower() == 'w' then
                    CONTROL.F = _G.fs
                elseif KEY:lower() == 's' then
                    CONTROL.B = -_G.fs
                elseif KEY:lower() == 'a' then
                    CONTROL.L = -_G.fs
                elseif KEY:lower() == 'd' then 
                    CONTROL.R = _G.fs
                end
            end)
            Mouse.KeyUp:Connect(function(KEY)
                if KEY:lower() == 'w' then
                    CONTROL.F = 0
                elseif KEY:lower() == 's' then
                    CONTROL.B = 0
                elseif KEY:lower() == 'a' then
                    CONTROL.L = 0
                elseif KEY:lower() == 'd' then
                    CONTROL.R = 0
                end
            end)
            FLY()
        else
            FLYING = false
            if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
            end
        end
    end
end)