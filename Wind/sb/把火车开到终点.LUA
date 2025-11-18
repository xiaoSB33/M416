local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "把火车开到终点（可崩服）",
    Author = "WindUI",
    Icon = "train",
    Folder = "TrainGenerator",
    Size = UDim2.new(0, 500, 0, 400),
    ToggleKey = Enum.KeyCode.G
})

local Tab = Window:Tab({
    Title = "火车生成",
    Icon = "train"
})

Tab:Button({
    Title = "生成Expreso火车",
    Callback = function()
        game:GetService("ReplicatedStorage").SpawnTrenExpreso:FireServer()
        WindUI:Notify({
            Title = "成功",
            Content = "Expreso火车已生成",
            Icon = "check"
        })
    end
})

Tab:Button({
    Title = "生成矿车",
    Callback = function()
        game:GetService("ReplicatedStorage").SpawnTrenPalanca:FireServer()
        WindUI:Notify({
            Title = "成功",
            Content = "火车已生成",
            Icon = "check"
        })
    end
})

Tab:Button({
    Title = "生成四节火车",
    Callback = function()
        game:GetService("ReplicatedStorage").SpawnTrenUnderground:FireServer()
        WindUI:Notify({
            Title = "成功",
            Content = "火车已生成",
            Icon = "check"
        })
    end
})

Tab:Button({
    Title = "生成货车",
    Callback = function()
        game:GetService("ReplicatedStorage").SpawnTrenContainer:FireServer()
        WindUI:Notify({
            Title = "成功", 
            Content = "货车已生成",
            Icon = "check"
        })
    end
})

Tab:Paragraph({
    Title = "火车生成说明",
    Desc = "点击上方按钮生成不同类型的火车。每个按钮对应一种特定的火车类型。"
})
