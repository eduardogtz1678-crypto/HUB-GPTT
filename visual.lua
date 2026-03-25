spawn(function()
    while task.wait(2) do
        if _G.Settings.ESP then
            for _,v in pairs(workspace:GetChildren()) do
                if v:FindFirstChild("Humanoid") then
                    if not v:FindFirstChild("HL") then
                        local h = Instance.new("Highlight",v)
                        h.Name="HL"
                    end
                end
            end
        end
    end
end)
