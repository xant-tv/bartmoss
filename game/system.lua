-- Direct access to system (game) layer.
local System = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function System.Player()
    return Game.GetPlayer()
end

function System.Transaction()
    return Game.GetTransactionSystem()
end

function System.ScriptableSystemsContainer()
    return Game.GetScriptableSystemsContainer()
end

function System.Crafting()
    local ssc = System.ScriptableSystemsContainer()
    local cs = ssc:Get(CName.new("CraftingSystem"))
    cs["SetItemLevel"] = cs["SetItemLevel;gameItemData"]
    return cs
end

function System.Equipment()
    local ssc = System.ScriptableSystemsContainer()
    local es = ssc:Get(CName.new("EquipmentSystem"))
    return es
end

function System.PlayerData()
    local player = System.Player()
    local es = System.Equipment()
    local espd = es:GetPlayerData(player)
    espd["GetItemInEquipSlot"] = espd["GetItemInEquipSlot;gamedataEquipmentAreaInt32"]
    return espd
end

return System