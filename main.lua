_G.Settings = {
    AutoFarm = false,
    AutoQuest = false,
    FruitTP = false,
    AutoDodge = false,
    ESP = false
}

-- modules
loadstring(game:HttpGet("https://raw.githubusercontent.com/eduardogtz1678-crypto/HUB-GPTT/main/combat.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/eduardogtz1678-crypto/HUB-GPTT/main/quest.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/eduardogtz1678-crypto/HUB-GPTT/main/fruit.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/eduardogtz1678-crypto/HUB-GPTT/main/player.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/eduardogtz1678-crypto/HUB-GPTT/main/visual.lua"))()

-- UI (SEMPRE POR ÚLTIMO)
loadstring(game:HttpGet("https://raw.githubusercontent.com/eduardogtz1678-crypto/HUB-GPTT/main/ui.lua"))()
