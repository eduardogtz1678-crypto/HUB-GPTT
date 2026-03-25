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
