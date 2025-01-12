local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local OpenUI = Instance.new("ScreenGui") 
local ImageButton = Instance.new("ImageButton") 
local UICorner = Instance.new("UICorner") 
OpenUI.Name = "OpenUI" 
OpenUI.Parent = game.CoreGui 
OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
ImageButton.Parent = OpenUI 
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 67, 175) 
ImageButton.BackgroundTransparency = 0.500 
ImageButton.Position = UDim2.new(0.0235790554, 0, 0.466334164, 0) 
ImageButton.Size = UDim2.new(0, 50, 0, 50) 
ImageButton.Image = "rbxassetid://16060333448" 
ImageButton.Draggable = true 
UICorner.CornerRadius = UDim.new(0, 200) 
UICorner.Parent = ImageButton 
ImageButton.MouseButton1Click:Connect(function() 
  if uihide == false then
        uihide = true
        game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
else
        uihide = false
        game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 560, 0, 319),"Out","Quad",0.4,true)
                end 

end)

uihide = false

 local win = lib:Window("ESP辅助 Doors",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl) 

 local obby = win:Tab("加入 doors")

 obby:Button("[点击]加入 doors 大厅",function()
local game_id = 8908228901 
         local game_url = "https://www.roblox.com/games/"..game_id 
         game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)  
end)

 local ESP = win:Tab("ESP")

 ESP:Toggle("门 ESP", false, function(state)
         flags.espdoors = val

if val then
                        local function setup(room)
                                task.wait(.1)
                                local door = room:WaitForChild("Door"):WaitForChild("Door")

                                if table.find(esptableinstances, door) then
                                        return
                                end

                                task.wait(0.1)
                                local h = esp(door,Color3.fromRGB(255,240,0),door,"Door")
                                table.insert(esptable.doors,h)
                                table.insert(esptableinstances, door)

                                door:WaitForChild("Open").Played:Connect(function()
                                        h.delete()
                                end)

                                door.AncestryChanged:Connect(function()
                                        h.delete()
                                end)
                        end

                        local addconnect
                        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
                                setup(room)
                        end)

                        for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
                                if room:FindFirstChild("Assets") then
                                        setup(room) 
                                end
                                task.wait()
                        end

                        if workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:FindFirstChild("Assets") then
                                setup(workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)])
                        end

                        repeat task.wait() until POOPDOORSLOADED == false or not flags.espdoors
                        addconnect:Disconnect()

                        for i,v in pairs(esptable.doors) do
                                v.delete()
                        end 
                end
end)

ESP:Toggle("钥匙 拉杆 ESP", false, function(state)
flags.espkeys = val

if val then
                        local function check(v, room)
                                task.wait()
                                if table.find(esptableinstances, v) then
                                        return
                                end

                                if v:IsA("Model") then
                                        if v.Name == "ElectricalKeyObtain" then
                                                local hitbox = v:FindFirstChild("Hitbox")
                                                local parts = hitbox:GetChildren()
                                                table.remove(parts,table.find(parts,v:WaitForChild("PromptHitbox")))

                                                local h = esp(parts,Color3.fromRGB(90,255,40),hitbox,"Electrical Key")
                                                table.insert(esptable.keys,h)
                                                table.insert(esptableinstances, v)
                                        end
                                        if v.Name == "KeyObtain" then
                                                local hitbox = v:FindFirstChild("Hitbox")
                                                local parts = hitbox:GetChildren()
                                                table.remove(parts,table.find(parts,hitbox:WaitForChild("PromptHitbox")))

                                                local h = esp(parts,Color3.fromRGB(90,255,40),hitbox,"Key")
                                                table.insert(esptable.keys,h)
                                                table.insert(esptableinstances, v)
                                        end;if v.Name == "LeverForGate" then
                                                local h = esp(v,Color3.fromRGB(90,255,40),v.PrimaryPart,"Lever")
                                                table.insert(esptable.keys,h)
                                                table.insert(esptableinstances, v)
                                                v.PrimaryPart:WaitForChild("SoundToPlay").Played:Connect(function()
                                                        h.delete()
                                                end) 
                                        end
                                end
                        end

                        local function setup(room)
                                local assets = room:FindFirstChild("Assets")

                                if room then
                                        if assets then
                                                assets.DescendantAdded:Connect(function(v)
                                                        check(v, room) 
                                                end)
                                        else
                                                room.DescendantAdded:Connect(function(v)
                                                        check(v, room) 
                                                end)
                                        end
                                end

                                if assets then
                                        for i,v in pairs(assets:GetChildren()) do --:GetDescendants()) do
                                                check(v, room)
                                        end 
                                else
                                        for i,v in pairs(room:GetDescendants()) do
                                                check(v, room)
                                        end 
                                end
                        end

                        local addconnect
                        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
                                setup(room)
                        end)

                        for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
                                setup(room)
                        end

                        setup(workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)])

                        repeat task.wait() until POOPDOORSLOADED == false or not flags.espkeys
                        addconnect:Disconnect()

                        for i,v in pairs(esptable.keys) do
                                v.delete()
                        end 
                end
end)

ESP:Toggle("物品 ESP", false, function(state)
flags.espitems = val

                if val then
                        local function check(v)
                                if table.find(esptableinstances, v) then
                                        return
                                end

                                if v:IsA("Model") and (v:GetAttribute("Pickup") or v:GetAttribute("PropType")) then
                                        task.wait(0.1)

                                        local part = (v:FindFirstChild("Handle") or v:FindFirstChild("Prop"))
                                        local h = esp(part,Color3.fromRGB(160,190,255),part,v.Name)
                                        table.insert(esptable.items,h)
                                        table.insert(esptableinstances, v)                                
                                end
                        end

                        local function setup(room)
                                task.wait(.1)
                                local assets = room:WaitForChild("Assets")

                                if assets then  
                                        local subaddcon
                                        subaddcon = assets.DescendantAdded:Connect(function(v)
                                                check(v) 
                                        end)

                                        for i,v in pairs(assets:GetDescendants()) do
                                                check(v)
                                        end

                                        task.spawn(function()
                                                repeat task.wait() until POOPDOORSLOADED == false or not flags.espitems
                                                subaddcon:Disconnect()  
                                        end) 
                                end 
                        end

                        local addconnect
                        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
                                setup(room)
                        end)

                        for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
                                if room:FindFirstChild("Assets") then
                                        setup(room) 
                                end
                                task.wait()
                        end

                        if workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:FindFirstChild("Assets") then
                                setup(workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)])
                        end

                        repeat task.wait() until POOPDOORSLOADED == false or not flags.espitems
                        addconnect:Disconnect()

                        for i,v in pairs(esptable.items) do
                                v.delete()
                        end 
                end
end)

ESP:Toggle("书本 电匣 ESP", false, function(state)
flags.espbooks = val

                if val then
                        local function check(v,room)
                                if table.find(esptableinstances, v) then
                                        return
                                end

                                if v:IsA("Model") and (v.Name == "LiveHintBook" or v.Name == "LiveBreakerPolePickup") then
                                        task.wait(0.1)
                                        local h
                                        if v.Name == "LiveHintBook" then
                                                h = esp(v,Color3.fromRGB(160,190,255),v.PrimaryPart,"Book")
                                        elseif v.Name == "LiveBreakerPolePickup" then
                                                h = esp(v,Color3.fromRGB(160,190,255),v.PrimaryPart,"Breaker")
                                        end

                                        table.insert(esptable.books,h)
                                        table.insert(esptableinstances, v)

                                        v.AncestryChanged:Connect(function()
                                                if not v:IsDescendantOf(room) then
                                                        h.delete() 
                                                end
                                        end)
                                end
                        end

                        local function setup(room)
                                task.wait(.1)
                                if room.Name == "50" or room.Name == "100" then
                                        room.DescendantAdded:Connect(function(v)
                                                check(v,room) 
                                        end)

                                        for i,v in pairs(room:GetDescendants()) do
                                                check(v,room)
                                        end
                                end
                        end

                        local addconnect
                        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
                                setup(room)
                        end)

                        for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
                                setup(room) 
                                task.wait()
                        end

                        if workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:FindFirstChild("Assets") then
                                setup(workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)])
                        end

                        repeat task.wait() until POOPDOORSLOADED == false or not flags.espbooks
                        addconnect:Disconnect()

                        for i,v in pairs(esptable.books) do
                                v.delete()
                        end 
                end
end)

ESP:Toggle("怪物 ESP(rooms有效)", false, function(state)
flags.esprush = val

                if val then
                        local addconnect
                        addconnect = workspace.ChildAdded:Connect(function(v)
                                if table.find(entitynames,v.Name) then
                                        task.wait(.1)
                                        local h = esp(v,Color3.fromRGB(255,25,25),v.PrimaryPart,v.Name:gsub("Moving",""))
                                        table.insert(esptable.entity,h)
                                end
                        end)

                        for _,v in pairs(workspace:GetChildren()) do
                                if table.find(entitynames,v.Name) then
                                        task.wait(.1)
                                        local h = esp(v,Color3.fromRGB(255,25,25),v.PrimaryPart,v.Name:gsub("Moving",""))
                                        table.insert(esptable.entity,h)
                                end
                        end

                        local function setup(room)
                                task.wait()
                                if room.Name == "50" or room.Name == "100" then
                                        local figuresetup = room:WaitForChild("FigureSetup")

                                        if figuresetup then
                                                local fig = figuresetup:WaitForChild("FigureRagdoll")
                                                task.wait(0.1)

                                                local h = esp(fig,Color3.fromRGB(255,25,25),fig.PrimaryPart,"Figure")
                                                table.insert(esptable.entity,h)
                                        end 
                                else
                                        local assets = room:WaitForChild("Assets")

                                        local function check(v)
                                                if v:IsA("Model") and table.find(entitynames,v.Name) then
                                                        task.wait(0.1)

                                                        local h = esp(v:WaitForChild("Base"),Color3.fromRGB(255,25,25),v.Base,"Snare")
                                                        table.insert(esptable.entity,h)
                                                end
                                        end

                                        assets.DescendantAdded:Connect(function(v)
                                                check(v) 
                                        end)

                                        for i,v in pairs(assets:GetDescendants()) do
                                                check(v)
                                        end
                                end 
                        end

                        local roomconnect
                        roomconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
                                setup(room)
                        end)

                        for i,v in pairs(workspace.CurrentRooms:GetChildren()) do
                                setup(v) 
                        end

                        setup(workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)])

                        repeat task.wait() until POOPDOORSLOADED == false or not flags.esprush
                        addconnect:Disconnect()
                        roomconnect:Disconnect()

                        for i,v in pairs(esptable.entity) do
                                v.delete()
                        end 
                end
end)

ESP:Toggle("柜子 ESP", false, function(state)
flags.esplocker = val

                if val then
                        local function check(v, room)
                                task.wait()
                                --local okvaluechange = nil
                                if v.Name == "Wardrobe" then
                                        local h = esp(v.PrimaryPart,Color3.fromRGB(145,100,25),v.PrimaryPart,"Closet")
                                        table.insert(esptable.lockers,h) 
                                        table.insert(esptableinstances, v)
                                        --okvaluechange = game:GetService("ReplicatedStorage").GameData.LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
                                        --        if tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value) ~= room.Name then
                                        --                h.delete()
                                        --                okvaluechange:Disconnect()
                                        --        end
                                        --end)
                                elseif v.Name == "Rooms_Locker" or v.Name == "Rooms_Locker_Fridge" then
                                        local h = esp(v.PrimaryPart,Color3.fromRGB(145,100,25),v.PrimaryPart,"Locker")
                                        table.insert(esptable.lockers,h) 
                                        table.insert(esptableinstances, v)
                                        --okvaluechange = game:GetService("ReplicatedStorage").GameData.LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
                                        --        if tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value) ~= room.Name then
                                        --                h.delete()
                                        --                okvaluechange:Disconnect()
                                        --        end
                                        --end)
                                end
                        end

                        local function setup(room)
                                local assets = room:WaitForChild("Assets")

                                if assets then
                                        local subaddcon
                                        subaddcon = assets.DescendantAdded:Connect(function(v)
                                                check(v, room) 
                                        end)

                                        for i,v in pairs(assets:GetDescendants()) do
                                                check(v, room)
                                        end

                                        task.spawn(function()
                                                repeat task.wait() until POOPDOORSLOADED == false or not flags.esplocker
                                                subaddcon:Disconnect()  
                                        end)
                                else
                                        local subaddcon
                                        subaddcon = room.DescendantAdded:Connect(function(v)
                                                check(v, room) 
                                        end)

                                        for i,v in pairs(room:GetDescendants()) do
                                                check(v, room)
                                        end

                                        task.spawn(function()
                                                repeat task.wait() until POOPDOORSLOADED == false or not flags.esplocker
                                                subaddcon:Disconnect()  
                                        end) 
                                end
                        end

                        local addconnect
                        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
                                setup(room)
                        end)

                        if workspace.CurrentRooms:FindFirstChild(tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value-1)) then
                                setup(workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value-1)])
                        end
                        setup(workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)])
                        if workspace.CurrentRooms:FindFirstChild(tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value+1)) then
                                setup(workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value+1)])
                        end

                        repeat task.wait() until POOPDOORSLOADED == false or not flags.esplocker
                        addconnect:Disconnect()

                        for i,v in pairs(esptable.lockers) do
                                v.delete()
                        end 
                end
end)

ESP:Toggle("大金币50-75 ESP", false, function(state)
flags.espchest = val

                if val then
                        local function check(v, room)
                                task.wait()
                                if table.find(esptableinstances, v) then
                                        return
                                end

                                if v:IsA("Model") then
                                        local okvaluechange = nil
                                        if v.Name == "ChestBox" then
                                                warn(v.Name)
                                                local h = esp(v,Color3.fromRGB(205,120,255),v.PrimaryPart,"Chest")
                                                table.insert(esptable.chests,h) 
                                                table.insert(esptableinstances, v)
                                                okvaluechange = game:GetService("ReplicatedStorage").GameData.LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
                                                        if tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value) ~= room.Name then
                                                                h.delete()
                                                                okvaluechange:Disconnect()
                                                        end
                                                end)
                                        elseif v.Name == "ChestBoxLocked" then
                                                local h = esp(v,Color3.fromRGB(255,120,205),v.PrimaryPart,"Locked Chest")
                                                table.insert(esptable.chests,h) 
                                                table.insert(esptableinstances, v)
                                                okvaluechange = game:GetService("ReplicatedStorage").GameData.LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
                                                        if tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value) ~= room.Name then
                                                                h.delete()
                                                                okvaluechange:Disconnect()
                                                        end
                                                end)
                                        end
                                end
                        end

                        local function setup(room)
                                task.wait(.1)
                                local subaddcon
                                subaddcon = room.DescendantAdded:Connect(function(v)
                                        check(v, room) 
                                end)

                                for i,v in pairs(room:GetDescendants()) do
                                        check(v, room)
                                end

                                task.spawn(function()
                                        repeat task.wait() until POOPDOORSLOADED == false or not flags.espchest
                                        subaddcon:Disconnect()  
                                end)  
                        end

                        local addconnect
                        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
                                setup(room)
                        end)

                        for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
                                if room:FindFirstChild("Assets") then
                                        setup(room) 
                                end
                                task.wait()
                        end

                        if workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:FindFirstChild("Assets") then
                                setup(workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)])
                        end

                        repeat task.wait() until POOPDOORSLOADED == false or not flags.espchest
                        addconnect:Disconnect()

                        for i,v in pairs(esptable.chests) do
                                v.delete()
                        end
                end
end)

ESP:Toggle("玩家 ESP", false, function(state)
flags.esphumans = val

                if val then
                        local function personesp(v)
                                if v:IsA("Player") then
                                        v.CharacterAdded:Connect(function(vc)
                                                local vh = vc:WaitForChild("Humanoid")
                                                local torso = vc:WaitForChild("UpperTorso")
                                                task.wait(0.1)

                                                local h = esp(vc,Color3.fromRGB(255,255,255),torso,v.DisplayName)
                                                table.insert(esptable.people,h) 
                                        end)

                                        if v.Character then
                                                local vc = v.Character
                                                local vh = vc:WaitForChild("Humanoid")
                                                local torso = vc:WaitForChild("UpperTorso")
                                                task.wait(0.1)

                                                local h = esp(vc,Color3.fromRGB(255,255,255),torso,v.DisplayName)
                                                table.insert(esptable.people,h) 
                                        end
                                end
                        end

                        local addconnect
                        addconnect = game.Players.PlayerAdded:Connect(function(v)
                                if v ~= plr then
                                        personesp(v)
                                end
                        end)

                        for i,v in pairs(game.Players:GetPlayers()) do
                                if v ~= plr then
                                        personesp(v) 
                                end
                                task.wait()
                        end

                        if workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:FindFirstChild("Assets") then
                                personesp(workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)])
                        end

                        repeat task.wait() until POOPDOORSLOADED == false or not flags.esphumans
                        addconnect:Disconnect()

                        for i,v in pairs(esptable.people) do
                                v.delete()
                        end 
                end
end)

ESP:Toggle("中金币20-25 ESP", false, function(state)
flags.espgold = val

                if val then
                        local function check(v)
                                if table.find(esptableinstances, v) then
                                        return
                                end

                                if v:IsA("Model") then
                                        task.wait(0.1)
                                        local goldvalue = v:GetAttribute("GoldValue")

                                        if goldvalue and goldvalue >= (flags.goldespvalue or 5) then
                                                local hitbox = v:WaitForChild("Hitbox")
                                                local h = esp(hitbox:GetChildren(),Color3.fromRGB(255,255,0),hitbox,"GoldPile [".. tostring(goldvalue).."]")
                                                table.insert(esptable.gold,h)
                                                table.insert(esptableinstances, v)
                                        end
                                end
                        end

                        local function setup(room)
                                task.wait(.1)
                                local assets = room:WaitForChild("Assets")

                                local subaddcon
                                subaddcon = assets.DescendantAdded:Connect(function(v)
                                        check(v) 
                                end)

                                for i,v in pairs(assets:GetDescendants()) do
                                        check(v)
                                        task.wait()
                                end

                                task.spawn(function()
                                        repeat task.wait() until POOPDOORSLOADED == false or not flags.espchest
                                        subaddcon:Disconnect()  
                                end)  
                        end

                        local addconnect
                        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
                                setup(room)
                        end)

                        for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
                                if room:FindFirstChild("Assets") then
                                        setup(room) 
                                end
                                task.wait()
                        end

                        if workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:FindFirstChild("Assets") then
                                setup(workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)])
                        end

                        repeat task.wait() until POOPDOORSLOADED == false or not flags.espgold
                        addconnect:Disconnect()

                        for i,v in pairs(esptable.gold) do
                                v.delete()
                        end 
                end
end)

local Rooms = win:Tab("ROOMS(doors里的)")

Rooms:Toggle("自动到达 A-1000", false, function(state)
loadstring(game:HttpGet("https://raw.githubusercontent.com/DaRealGeo/roblox/master/rooms-autowalk"))()
end)

Rooms:Label("好啦，这个脚本完成了")
Rooms:Label("谢谢你的使用啊")