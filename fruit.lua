local lastFruit

workspace.DescendantAdded:Connect(function(v)
    if v:IsA("Tool") and v.Name:lower():find("fruit") then
        lastFruit = v
    end
end)

spawn(function()
    while task.wait() do
        if _G.Settings.FruitTP and lastFruit and lastFruit:FindFirstChild("Handle") then
            local root = game.Players.LocalPlayer.Character.HumanoidRootPart
            root.CFrame = lastFruit.Handle.CFrame
        end
    end
end)
