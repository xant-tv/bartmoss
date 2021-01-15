-- Cheats interacting with items and transactional systems.
local ItemHandler = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local System = require(ItemHandler.rootPath .. "game.system")
local Table = require(ItemHandler.rootPath .. "utility.table")
local Math = require(ItemHandler.rootPath .. "utility.math")
local GameHandler = require(ItemHandler.rootPath .. "handler.game")
local PlayerHandler = require(ItemHandler.rootPath .. "handler.player")
local Glossary = require(ItemHandler.rootPath .. "data.glossary")

function ItemHandler.IsStackable(item)
    return Table.HasValue(Glossary.IsStackable, item)
end

function ItemHandler.CannotBeLevelled(item)
    return Table.HasValue(Glossary.CannotBeLevelled, item)
end

function ItemHandler.GetDefaultQuality(item)
    for key, value in pairs(Glossary.Quality) do
        if Table.HasValue(Glossary.ForcedQuality[key], item) then
            return value
        end
    end
    return nil
end

function ItemHandler.GetModifier(itemdata, modifier)
    local ss = System.Stats()
    local statsobjid = itemdata:GetStatsObjectID()
    local result = ss:GetStatValue(statsobjid, modifier) -- Default return is zero.
    return result
end

function ItemHandler.Inspect(itemdata)
    local result = {}
    for _, mod in ipairs(Glossary.Inspect) do
        result[mod] = ItemHandler.GetModifier(itemdata, mod)
    end
    return result
end

function ItemHandler.SetLevel(itemdata, level)
    local ss = System.Stats()
    local statsobjid = itemdata:GetStatsObjectID()

    -- If no level, read from player current.
    level = level or PlayerHandler.GetPower()
    if level <= 0 then
        -- Setting zero level is special case.
        -- Used for items which cannot be levelled.
        return
    end

    -- Expects incoming level to be player level.
    -- Effectively range should be [1, 50] inclusive.
    -- This determines the level requirement to equip the item.
    -- However, "true" item level is stored as (roughly) a factor of 10 over this.
    local plevel = level
    local ilevel = (10 * level)

    -- Set pure level modifiers.
    ss:RemoveAllModifiers(statsobjid, Glossary.Stats.Level, true)
    local mod = GameHandler.CreateStatModifier(Glossary.Stats.Level, Glossary.Calculation.Additive, level)
    ss:AddSavedModifier(statsobjid, mod)

    -- Set item level modifiers.
    ss:RemoveAllModifiers(statsobjid, Glossary.Stats.PowerLevel, true)
    local pmod = GameHandler.CreateStatModifier(Glossary.Stats.PowerLevel, Glossary.Calculation.Additive, plevel)
    ss:AddSavedModifier(statsobjid, pmod)

    -- Set power level modifiers.
    ss:RemoveAllModifiers(statsobjid, Glossary.Stats.ItemLevel, true)
    local imod = GameHandler.CreateStatModifier(Glossary.Stats.ItemLevel, Glossary.Calculation.Additive, ilevel)
    ss:AddSavedModifier(statsobjid, imod)

    print("LEVEL_SET_OK=" .. level .. ": " .. tostring(itemdata:GetID()))

end

function ItemHandler.SetQuality(itemdata, quality)
    local ss = System.Stats()
    local statsobjid = itemdata:GetStatsObjectID()

    -- If no quality, just exit.
    if not quality then
        local cquality = Math.SafeFloor(ss:GetStatValue(statsobjid, Glossary.Stats.Quality))
        print("QUALITY_DEFAULT=" .. Glossary.QualityNum[cquality])
        return
    end

    local nquality = Glossary.QualityNum[quality]
    if not nquality then
        print("QUALITY_SET_FAIL=" .. quality)
        return
    end

    -- Set quality modifiers.
    ss:RemoveAllModifiers(statsobjid, Glossary.Stats.Quality, true)
    local qmod = GameHandler.CreateStatModifier(Glossary.Stats.Quality, Glossary.Calculation.Additive, nquality)
    ss:AddSavedModifier(statsobjid, qmod)

    print("QUALITY_SET_OK=" .. quality .. ": " .. tostring(itemdata:GetID()))

end

function ItemHandler.SetModifier(itemdata, modtype, calctype, val)
    local ss = System.Stats()
    local statsobjid = itemdata:GetStatsObjectID()
    ss:RemoveAllModifiers(statsobjid, modtype, true)
    local mod = GameHandler.CreateStatModifier(modtype, calctype, val)
    ss:AddSavedModifier(statsobjid, mod)
    print("MOD_SET_OK=" .. modtype .. "|" .. calctype .. "|" .. val .. ": " .. tostring(itemdata:GetID()))
end

function ItemHandler.AddModifier(itemdata, modtype, calctype, val)
    local ss = System.Stats()
    local statsobjid = itemdata:GetStatsObjectID()
    local mod = GameHandler.CreateStatModifier(modtype, calctype, val)
    ss:AddSavedModifier(statsobjid, mod)
    print("MOD_ADD_OK=" .. modtype .. "|" .. calctype .. "|" .. val .. ": " .. tostring(itemdata:GetID()))
end

function ItemHandler.MarkCrafted(itemdata)
    -- Not much use for this, really.
    local cs = System.Crafting()
    local result = cs:MarkItemAsCrafted(itemdata)
end

function ItemHandler.MarkQuest(itemdata)
    itemdata:SetDynamicTag(Glossary.Tags.Quest)
end

function ItemHandler.MarkIconic(itemdata)
    ItemHandler.SetModifier(itemdata, Glossary.Stats.IsItemIconic, Glossary.Calculation.Additive, 1)
end

function ItemHandler.UnmarkIconic(itemdata)
    -- Will not override actual iconic weapons.
    ItemHandler.SetModifier(itemdata, Glossary.Stats.IsItemIconic, Glossary.Calculation.Additive, 0)
end

function ItemHandler.UnmarkQuest(itemdata)
    if itemdata:HasTag(Glossary.Tags.Quest) then
        itemdata:RemoveDynamicTag(Glossary.Tags.Quest)
    end
end

function ItemHandler.UpgradeItem(itemid)
    local player = System.Player()
    local ts = System.Transaction()
    local itemdata = ts:GetItemData(player, itemid)
    ItemHandler.SetLevel(itemdata)
end

function ItemHandler.GiveItems(item, n, quality, level)
    -- Items which share the same seed will have the same unique internal value!
    -- This causes all items such as clothing and mods to stack (even when they shouldn't).
    -- Solution is to randomly generate a seed each time this transaction is called.
    local player = System.Player()
    local ts = System.Transaction()
    local tweakid = TweakDBID.new(item)

    -- Force default quality for certain items!
    local default = ItemHandler.GetDefaultQuality(item)
    if default then
        quality = nil
    end

    -- Force level for certain items!
    if ItemHandler.CannotBeLevelled(item) then
        level = 0
    end

    for i = 1, n do
        local seed = math.random(0, math.tointeger(2^32) - 1)
        local itemid = ItemID.new(tweakid, seed)
        local result = ts:GiveItem(player, itemid, 1)

        if result then
            -- Best way to do this for now until another method to get item data is found.
            -- This requires giving the "base" item to the player, then retrieving the item data from their inventory.
            print("ADD_OK: " .. tostring(itemid))
            local itemdata = ts:GetItemData(player, itemid)
            ItemHandler.UnmarkQuest(itemdata)
            ItemHandler.SetLevel(itemdata, level)
            ItemHandler.SetQuality(itemdata, quality)
        else
            print("ADD_FAIL")
        end
    end
end

function ItemHandler.GiveResources(item, n)
    Game.AddToInventory(item, n)
end

function ItemHandler.GiveN(item, n, quality, level)
    if not item then
        return
    end
    -- If item is a stackable (resource) we can use in-built developer function.
    if ItemHandler.IsStackable(item) then
        ItemHandler.GiveResources(item, n)
    else
        ItemHandler.GiveItems(item, n, quality, level)
    end
end

function ItemHandler.Give(item, quality, level)
    ItemHandler.GiveN(item, 1, quality, level)
end

function ItemHandler.GiveMultiple(itemspecs)
    for i = 1, #itemspecs do
        local itemspec = itemspecs[i]
        local item = itemspec["item"]
        local quality = itemspec["quality"]
        local quantity = itemspec["quantity"]
        local level = itemspec["level"]
        if not quantity then
            quantity = 1
        end
        ItemHandler.GiveN(item, quantity, quality, level)
    end
end

return ItemHandler