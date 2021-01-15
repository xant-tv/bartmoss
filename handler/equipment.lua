-- Cheats interacting more-or-less directly with the equipment system.
local EquipmentHandler = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local System = require(EquipmentHandler.rootPath .. "game.system")
local Glossary = require(EquipmentHandler.rootPath .. "data.glossary")
local ItemHandler = require(EquipmentHandler.rootPath .. "handler.item")

function EquipmentHandler.GetItemDataInSlot(name, id)
    local player = System.Player()
    local ts = System.Transaction()
    local espd = System.PlayerData()
    local itemid = espd:GetItemInEquipSlot(name, id)
    -- Skip empty slots.
    if itemid.tdbid.hash ~= 0 then
        local itemdata = ts:GetItemData(player, itemid)
        return itemdata
    end
    return
end

function EquipmentHandler.MakeEquippedItemsLegendary()
    local player = System.Player()
    local ts = System.Transaction()
    local espd = System.PlayerData()

    for k, v in pairs(Glossary.EquipSlots) do
        for i = 1, v do
            local itemid = espd:GetItemInEquipSlot(k, i - 1)
            -- Skip empty slots.
            if itemid.tdbid.hash ~= 0 then
                print("UPGRADING=" .. k .. "|" .. (i - 1))
                local itemdata = ts:GetItemData(player, itemid)
                ItemHandler.SetLevel(itemdata)
                ItemHandler.SetQuality(itemdata, Glossary.Quality.Legendary)
            end
        end
    end

end

return EquipmentHandler