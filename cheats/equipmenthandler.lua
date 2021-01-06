local EquipmentHandler = {
    description = "Cheats interacting more-or-less directly with the equipment system.",
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local System = require(EquipmentHandler.rootPath .. "game.system")
local Glossary = require(EquipmentHandler.rootPath .. "data.glossary")
local ItemHandler = require(EquipmentHandler.rootPath .. "cheats.itemhandler")

function EquipmentHandler.MakeEquippedItemsLegendary()
    local player = System.Player()
    local ts = System.TransactionSystem()
    local espd = System.PlayerData()

    local slots = {
        Face = 1,
        Feet = 1,
        Heads = 1,
        InnerChest = 1,
        Legs = 1,
        OuterChest = 1,
        Weapon = 3
    }

    for k, v in pairs(slots) do
        for i = 1, v do
            local itemid = espd:GetItemInEquipSlot(k, i - 1)
            if itemid.tdbid.hash ~= 0 then
                print("Upgrading item in " .. k .. " slot " .. (i - 1))
                local itemdata = ts:GetItemData(player, itemid)
                ItemHandler.SetItemLevel(itemdata)
                ItemHandler.SetItemQuality(itemdata, Glossary.ItemQuality.Legendary)
            end
        end
    end

end

return EquipmentHandler