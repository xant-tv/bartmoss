local System = {
    description = "Direct access to system (game) layer.",
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function System.Player()
    return Game.GetPlayer()
end

function System.TransactionSystem()
    return Game.GetTransactionSystem()
end

function System.ScriptableSystemsContainer()
    return Game.GetScriptableSystemsContainer()
end

function System.CraftingSystem()
    local ssc = System.ScriptableSystemsContainer()
    local cs = ssc:Get(CName.new("CraftingSystem"))
    cs["SetItemLevel"] = cs["SetItemLevel;gameItemData"]
    return cs
end

function System.EquipmentSystem()
    local ssc = System.ScriptableSystemsContainer()
    local es = ssc:Get(CName.new("EquipmentSystem"))
    return es
end

function System.PlayerData()
    local player = System.Player()
    local es = System.EquipmentSystem()
    local espd = es:GetPlayerData(player)
    espd["GetItemInEquipSlot"] = espd["GetItemInEquipSlot;gamedataEquipmentAreaInt32"]
    return espd
end

return System