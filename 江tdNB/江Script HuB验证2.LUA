local CardSystemScreenGui = Instance.new("ScreenGui")

local CardSystem = Instance.new("Frame")

local Title = Instance.new("TextLabel")

local CardLabel = Instance.new("TextLabel")

local CardEntry = Instance.new("TextBox")

local CardEntryUICorner = Instance.new("UICorner")

local SubmitButton = Instance.new("TextButton")

local CorrectIncorrectImageLabel = Instance.new("ImageLabel")

local ImageLabelUICorner = Instance.new("UICorner")

local SubmitButtonUICorner = Instance.new("UICorner")

local ResultLabel = Instance.new("TextLabel")

local CardSystemUICorner = Instance.new("UICorner")

CardSystemScreenGui.Name = "CardSystemScreenGui"
CardSystemScreenGui.Parent = game.CoreGui

CardSystem.Name = "CardSystem"
CardSystem.Parent = CardSystemScreenGui
CardSystem.BackgroundColor3 = Color3.fromRGB(44, 62, 80)
CardSystem.BorderSizePixel = 0
CardSystem.Position = UDim2.new(0.5, -200, 0.5, -150)
CardSystem.Size = UDim2.new(0, 400, 0, 300)

Title.Name = "Title"
Title.Parent = CardSystem
Title.BackgroundColor3 = Color3.fromRGB(44, 62, 80)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.5, -100, 0, 20)
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Script卡密系统"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 20.000
Title.TextWrapped = true

CardLabel.Name = "CardLabel"
CardLabel.Parent = CardSystem
CardLabel.BackgroundColor3 = Color3.fromRGB(44, 62, 80)
CardLabel.BorderSizePixel = 0
CardLabel.Position = UDim2.new(0.232500002, -75, 0.430000007, 0)
CardLabel.Size = UDim2.new(0, 144, 0, 36)
CardLabel.Font = Enum.Font.SourceSansBold
CardLabel.Text = "请输入卡密："
CardLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CardLabel.TextScaled = true
CardLabel.TextSize = 14.000
CardLabel.TextWrapped = true

CardEntry.Name = "CardEntry"
CardEntry.Parent = CardSystem
CardEntry.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CardEntry.BorderSizePixel = 0
CardEntry.Position = UDim2.new(0.654999971, -100, 0.449999988, 0)
CardEntry.Size = UDim2.new(0, 200, 0, 30)
CardEntry.ClearTextOnFocus = false
CardEntry.Font = Enum.Font.SourceSansBold
CardEntry.PlaceholderText = "请输入卡密"
CardEntry.Text = "请输入卡密"
CardEntry.TextColor3 = Color3.fromRGB(0, 0, 0)
CardEntry.TextScaled = true
CardEntry.TextSize = 14.000
CardEntry.TextWrapped = true
CardEntry.ClearTextOnFocus = true

CardEntryUICorner.Name = "CardEntryUICorner"
CardEntryUICorner.Parent = CardEntry

SubmitButton.Name = "SubmitButton"
SubmitButton.Parent = CardSystem
SubmitButton.BackgroundColor3 = Color3.fromRGB(46, 204, 113)
SubmitButton.BorderSizePixel = 0
SubmitButton.Position = UDim2.new(0.5, -75, 0.700000048, 0)
SubmitButton.Size = UDim2.new(0, 150, 0, 30)
SubmitButton.Font = Enum.Font.SourceSansBold
SubmitButton.Text = "确定"
SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitButton.TextScaled = true
SubmitButton.TextSize = 14.000
SubmitButton.TextWrapped = true

SubmitButtonUICorner.CornerRadius = UDim.new(0, 15)
SubmitButtonUICorner.Name = "SubmitButtonUICorner"
SubmitButtonUICorner.Parent = SubmitButton

CorrectIncorrectImageLabel.Name = "CorrectIncorrectImageLabel"
CorrectIncorrectImageLabel.Parent = CardSystem
CorrectIncorrectImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CorrectIncorrectImageLabel.BackgroundTransparency = 1.000
CorrectIncorrectImageLabel.Position = UDim2.new(0.75, 0,0.8, 0)
CorrectIncorrectImageLabel.Size = UDim2.new(0, 60, 0, 60)

ImageLabelUICorner.CornerRadius = UDim.new(0, 15)
ImageLabelUICorner.Name = "ImageLabelUICorner"
ImageLabelUICorner.Parent = CorrectIncorrectImageLabel

ResultLabel.Name = "ResultLabel"
ResultLabel.Parent = CardSystem
ResultLabel.BackgroundColor3 = Color3.fromRGB(44, 62, 80)
ResultLabel.BorderSizePixel = 0
ResultLabel.Position = UDim2.new(0.345, -100,0.86, 0)
ResultLabel.Size = UDim2.new(0, 210,0, 32)
ResultLabel.Font = Enum.Font.SourceSansBold
ResultLabel.Text = ""
ResultLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ResultLabel.TextSize = 14.000
ResultLabel.TextScaled = true

CardSystemUICorner.CornerRadius = UDim.new(0, 50)
CardSystemUICorner.Name = "CardSystemUICorner"
CardSystemUICorner.Parent = CardSystem

SubmitButton.MouseButton1Click:Connect(function()
local cardCode = CardEntry.Text
if cardCode == "江ScriptNB" then
    ResultLabel.Text = "卡密验证成功！"
    CorrectIncorrectImageLabel.Image = "rbxassetid://12517387637"
    wait(1)
    CardSystem:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
    Title:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
    CardLabel:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
    CardEntry:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
    SubmitButton:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
    ResultLabel:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
    CorrectIncorrectImageLabel:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
    wait(3)
    CardSystemScreenGui:Destroy()
    print("江NB")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaoSB33/M416/refs/heads/main/%E6%B1%9FNB%2F%E6%B1%9FScriptV2.LUA"))()
else
    ResultLabel.Text = "卡密错误,请检查您的卡密是否正确"
    CorrectIncorrectImageLabel.Image = "rbxassetid://12517382532"
    wait(2)
    ResultLabel.Text = ""
    CorrectIncorrectImageLabel.Image = ""
end
end)