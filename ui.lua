-- UI HUB COMPLETO

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "DuduHub"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 250)
frame.Position = UDim2.new(0.3, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(20,20,20)

-- TITULO
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,30)
title.Text = "Dudu Hub 😈"
title.BackgroundColor3 = Color3.fromRGB(30,30,30)
title.TextColor3 = Color3.new(1,1,1)

-- ABAS
local tabFarm = Instance.new("TextButton", frame)
tabFarm.Position = UDim2.new(0,0,0,30)
tabFarm.Size = UDim2.new(0.33,0,0,30)
tabFarm.Text = "Farm"

local tabFruit = Instance.new("TextButton", frame)
tabFruit.Position = UDim2.new(0.33,0,0,30)
tabFruit.Size = UDim2.new(0.33,0,0,30)
tabFruit.Text = "Fruta"

local tabPlayer = Instance.new("TextButton", frame)
tabPlayer.Position = UDim2.new(0.66,0,0,30)
tabPlayer.Size = UDim2.new(0.34,0,0,30)
tabPlayer.Text = "Player"

-- CONTEÚDO
local content = Instance.new("Frame", frame)
content.Position = UDim2.new(0,0,0,60)
content.Size = UDim2.new(1,0,1,-60)
content.BackgroundColor3 = Color3.fromRGB(40,40,40)

-- FUNÇÃO BOTÃO
local function createToggle(text, posY, callback)
    local btn = Instance.new("TextButton", content)
    btn.Size = UDim2.new(1,0,0,30)
    btn.Position = UDim2.new(0,0,0,posY)
    btn.Text = text.." [OFF]"
    btn.BackgroundColor3 = Color3.fromRGB(60,60,60)
    btn.TextColor3 = Color3.new(1,1,1)

    local state = false

    btn.MouseButton1Click:Connect(function()
        state = not state
        btn.Text = text.." ["..(state and "ON" or "OFF").."]"
        callback(state)
    end)
end

-- ABA FARM
local function openFarm()
    content:ClearAllChildren()

    createToggle("Auto Farm",0,function(v) _G.Settings.AutoFarm = v end)
    createToggle("Auto Quest",35,function(v) _G.Settings.AutoQuest = v end)
end

-- ABA FRUTA
local function openFruit()
    content:ClearAllChildren()

    createToggle("Fruit TP",0,function(v) _G.Settings.FruitTP = v end)
end

-- ABA PLAYER
local function openPlayer()
    content:ClearAllChildren()

    createToggle("Auto Dodge",0,function(v) _G.Settings.AutoDodge = v end)
    createToggle("ESP",35,function(v) _G.Settings.ESP = v end)
end

-- EVENTOS
tabFarm.MouseButton1Click:Connect(openFarm)
tabFruit.MouseButton1Click:Connect(openFruit)
tabPlayer.MouseButton1Click:Connect(openPlayer)

-- INICIAR
openFarm()
