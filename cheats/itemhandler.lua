local ItemHandler = {
    description = "Cheats interacting with items and transactional systems.",
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local System = require(ItemHandler.rootPath .. "game.system")
local Logical = require(ItemHandler.rootPath .. "utility.logical")
local Glossary = require(ItemHandler.rootPath .. "data.glossary")

function ItemHandler.HasDefaultQuality(item)
    for key, value in pairs(Glossary.ItemQuality) do
        if Logical.TableHasValue(Glossary.ForcedQuality[key], item) then
            return value
        end
    end
    return nil
end

function ItemHandler.SetItemLevel(itemdata)
    local cs = System.CraftingSystem()
    local result = cs:SetItemLevel(itemdata)
    -- Appears as though this doesn't return anything?
    -- Doesn't immediately update item until game manager is forced to (see SetItemQuality).
end

function ItemHandler.SetItemQuality(itemdata, quality)
    local player = System.Player()
    local result = Game["gameRPGManager::ForceItemQuality;GameObjectgameItemDataCName"](player, itemdata, CName.new(quality))
    -- Returns true even if quality does not exist. Likely because "forcing" the item update is successful.
    -- TODO: Ideally, there would be an equivalent function for forcing level?
end

-- Items which share the same seed will have the same unique internal value!
-- This causes all items such as clothing and mods to stack (evne when they shouldn't).
-- Solution is to random generate a seed each time this transaction is called.
function ItemHandler.GiveItem(item, n, quality)
    if not item then
        return
    end
    local player = System.Player()
    local ts = System.TransactionSystem()
    local tweakid = TweakDBID.new(item)
    local default = ItemHandler.HasDefaultQuality(item)
    if default then
        quality = default
    end
    if not quality then
        quality = Glossary.ItemQuality.Common
    end
    for i = 1, n do
        local seed = math.random(0, 4294967295)
        local itemid = ItemID.new(tweakid, seed)
        local result = ts:GiveItem(player, itemid, 1)
        if result then
            -- Best way to do this for now until another method to get item data is found.
            -- This requires giving the "base" item to the player, then retrieving the item data from their inventory.
            print("Added " .. tostring(itemid) .. " to the inventory!")
            local itemdata = ts:GetItemData(player, itemid)
            ItemHandler.SetItemLevel(itemdata)
            ItemHandler.SetItemQuality(itemdata, quality)
        else
            print("Failed to add " .. tostring(itemid))
        end
    end
end

function ItemHandler.GiveSingleItem(item, quality)
    ItemHandler.GiveItem(item, 1, quality)
end

function ItemHandler.GiveMultipleItems(itemspecs)
    for i = 1, #itemspecs do
        local itemspec = itemspecs[i]
        local item = itemspec["item"]
        local quality = itemspec["quality"]
        local quantity = itemspec["quantity"]
        if not quantity then
            quantity = 1
        end
        ItemHandler.GiveItem(item, quantity, quality)
    end
end

return ItemHandler