-- SETTINGS
_G.Settings = {
    AutoFarm = true,
    AutoQuest = true,
    FruitTP = true,
    ESP = true
}

-- COMBAT
spawn(function()
    while task.wait() do
        if _G.Settings.AutoFarm then
            local p = game.Players.LocalPlayer
            local c = p.Character
            local root = c and c:FindFirstChild("HumanoidRootPart")

            if root then
                for _,v in pairs(workspace:GetChildren()) do
                    local hum = v:FindFirstChild("Humanoid")
                    local hrp = v:FindFirstChild("HumanoidRootPart")

                    if hum and hrp and hum.Health > 0 then
                        root.CFrame = hrp.CFrame * CFrame.new(0,3,5)
                    end
                end
            end
        end
    end
end)

-- QUEST
spawn(function()
    while task.wait(2) do
        if _G.Settings.AutoQuest then
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") then
                    fireproximityprompt(v)
                end
            end
        end
    end
end)

-- FRUIT
local lastFruit
workspace.DescendantAdded:Connect(function(v)
    if v:IsA("Tool") and v.Name:lower():find("fruit") then
        lastFruit = v
    end
end)

spawn(function()
    while task.wait() do
        if _G.Settings.FruitTP and lastFruit and lastFruit:FindFirstChild("Handle") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastFruit.Handle.CFrame
        end
    end
end)

-- ESP
spawn(function()
    while task.wait(2) do
        if _G.Settings.ESP then
            for _,v in pairs(workspace:GetChildren()) do
                if v:FindFirstChild("Humanoid") then
                    if not v:FindFirstChild("HL") then
                        Instance.new("Highlight",v)
                    end
                end
            end
        end
    end
end)
