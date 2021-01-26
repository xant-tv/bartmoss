-- Cheats interacting with items and transactional systems.
local ItemHandler = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logger = require(ItemHandler.rootPath .. "utility.logger")
local Table = require(ItemHandler.rootPath .. "utility.table")
local Math = require(ItemHandler.rootPath .. "utility.math")
local System = require(ItemHandler.rootPath .. "game.system")
local GameHandler = require(ItemHandler.rootPath .. "handler.game")
local PlayerHandler = require(ItemHandler.rootPath .. "handler.player")
local Glossary = require(ItemHandler.rootPath .. "data.glossary")

function ItemHandler:IsStackable(item)
    return Table.HasValue(Glossary.IsStackable, item)
end

function ItemHandler:CannotBeLevelled(item)
    return Table.HasValue(Glossary.CannotBeLevelled, item)
end

function ItemHandler:GetDefaultQuality(item)
    for key, value in pairs(Glossary.Quality) do
        if Table.HasValue(Glossary.ForcedQuality[key], item) then
            return value
        end
    end
    return nil
end

function ItemHandler:GetModifier(itemdata, modifier)
    local ss = self.system:Stats()
    local statsobjid = itemdata:GetStatsObjectID()
    local result = ss:GetStatValue(statsobjid, modifier) -- Default return is zero.
    return result
end

function ItemHandler:SetModifier(itemdata, modtype, calctype, val)
    local ss = self.system:Stats()
    local statsobjid = itemdata:GetStatsObjectID()
    ss:RemoveAllModifiers(statsobjid, modtype, true)
    local mod = self.handler.game:CreateStatModifier(modtype, calctype, val)
    ss:AddSavedModifier(statsobjid, mod)
    self.logger:Debug("SetModifier: " .. modtype .. " | " .. calctype .. " | " .. val .. " --> " .. tostring(itemdata:GetID()))
end

function ItemHandler:AddModifier(itemdata, modtype, calctype, val)
    local ss = self.system:Stats()
    local statsobjid = itemdata:GetStatsObjectID()
    local mod = self.handler.game:CreateStatModifier(modtype, calctype, val)
    ss:AddSavedModifier(statsobjid, mod)
    self.logger:Debug("AddModifier: " .. modtype .. " | " .. calctype .. " | " .. val .. " --> " .. tostring(itemdata:GetID()))
end

function ItemHandler:GetTags(itemid)
    local tags = {}
    local tagobjs = self.handler.game:GetItemRecord(itemid):Tags()
    for _, tagobj in ipairs(tagobjs) do
        if tagobj.value == Glossary.Tags.DummyPart then
            self.logger:Debug("GetTags: Dummy <-- " .. tostring(itemid))
        end
        table.insert(tags, tagobj.value)
    end
    return tags
end

function ItemHandler:GetParts(itemdata)
    -- Getting parts is really quite weird.
    -- First we can inspect the item data to get an array of inner item data objects.
    -- However, these are purely static with only static methods.
    -- As such, we can (but don't need to) use the singleton to call these functions.
    local parts = {}
    local gi = GetSingleton("gameInnerItemData")
    local inners = itemdata:GetItemParts()
    for _, inner in ipairs(inners) do
        local slotid = gi:GetSlotID(inner)
        local innerid = gi:GetItemID(inner)
        -- We want to retain this as a map of slot hashes to the inner identifier.
        parts[slotid.hash] = innerid
    end
    return parts
end

function ItemHandler:Inspect(itemdata)
    local result = {}
    for _, mod in ipairs(Glossary.Inspect) do
        result[mod] = self:GetModifier(itemdata, mod)
    end
    return result
end

function ItemHandler:SetLevel(itemdata, level)

    -- If no level, read from player current.
    level = level or self.handler.player:GetPower()
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

    -- Set pure, item and power level modifiers.
    self:SetModifier(itemdata, Glossary.Stats.Level, Glossary.Calculation.Additive, level)
    self:SetModifier(itemdata, Glossary.Stats.PowerLevel, Glossary.Calculation.Additive, plevel)
    self:SetModifier(itemdata, Glossary.Stats.ItemLevel, Glossary.Calculation.Additive, ilevel)

end

function ItemHandler:SetQuality(itemdata, quality)

    -- If no quality, just exit.
    if not quality then
        local cquality = Math.SafeFloor(self:GetModifier(itemdata, Glossary.Stats.Quality))
        self.logger:Debug("SetQuality: Default | " .. Glossary.QualityRank[cquality + 1])
        return
    end

    local nquality = Glossary.QualityNum[quality]
    if not nquality then
        self.logger:Error("SetQuality: Failed! | " .. quality)
        return
    end

    -- Set quality modifiers.
    self:SetModifier(itemdata, Glossary.Stats.Quality, Glossary.Calculation.Additive, nquality)

end

function ItemHandler:MarkCrafted(itemdata)
    -- Not much use for this, really.
    local cs = self.system:Crafting()
    cs:MarkItemAsCrafted(itemdata)
end

function ItemHandler:MarkQuest(itemdata)
    itemdata:SetDynamicTag(Glossary.Tags.Quest)
end

function ItemHandler:MarkIconic(itemdata)
    self:SetModifier(itemdata, Glossary.Stats.IsItemIconic, Glossary.Calculation.Additive, 1)
end

function ItemHandler:UnmarkIconic(itemdata)
    -- Will not override actual iconic weapons.
    self:SetModifier(itemdata, Glossary.Stats.IsItemIconic, Glossary.Calculation.Additive, 0)
end

function ItemHandler:UnmarkQuest(itemdata)
    if itemdata:HasTag(Glossary.Tags.Quest) then
        itemdata:RemoveDynamicTag(Glossary.Tags.Quest)
    end
end

function ItemHandler:AllowUnequip(itemdata)
    if itemdata:HasTag(Glossary.Tags.UnequipBlocked) then
        itemdata:RemoveDynamicTag(Glossary.Tags.UnequipBlocked)
    end
end

function ItemHandler:RemovePart(itemdata, slot, keep)
    local player = self.system:Player()
    local ts = self.system:Transaction()
    local parts = self:GetParts(itemdata)
    if itemdata:HasPartInSlot(slot) then
        -- We can't trust the removed part output!
        -- Seems to return the same part multiple times.
        -- Not sure what mess CDPR have cooked up here.
        ts:RemovePart(player, itemdata:GetID(), slot, true)
        -- Instead we try to find the part separately.
        local removed = parts[slot.hash]
        if removed then
            self.logger:Debug("ClearPart: " .. tostring(removed))
            local taglist = self:GetTags(removed)
            if Table.HasValue(taglist, Glossary.Tags.DummyPart) or (not keep) then
                -- Kind of hacky, as there doesn't seem to be a way to prevent return to player.
                -- Instead, just remove any dummy items. Can also force part removal (e.g. for new items).
                ts:RemoveItem(player, removed, 1)
                self.logger:Debug("RemoveItem: " .. tostring(removed))
            end
        end
    end
end

function ItemHandler:ClearSlots(itemdata, keep)
    -- Rewrite the crafting system function to actually ignore dummy attachment mods.
    -- This refunds all (valid) mods slotted into an item.
    local modslots = self.handler.game:GetModSlotIDs(itemdata:GetItemType())
    local attslots = self.handler.game:GetAttachmentSlotIDs()
    for _, modslot in ipairs(modslots) do
        self:RemovePart(itemdata, modslot, keep)
    end
    for _, attslot in ipairs(attslots) do
        self:RemovePart(itemdata, attslot, keep)
    end
end

function ItemHandler:UpgradeItem(itemid)
    local player = self.system:Player()
    local ts = self.system:Transaction()
    local itemdata = ts:GetItemData(player, itemid)
    self:SetLevel(itemdata)
end

function ItemHandler:GiveItems(item, n, quality, level)
    -- Items which share the same seed will have the same unique internal value!
    -- This causes all items such as clothing and mods to stack (even when they shouldn't).
    -- Solution is to randomly generate a seed each time this transaction is called.
    local player = self.system:Player()
    local ts = self.system:Transaction()
    local tweakid = TweakDBID.new(item)

    -- Force default quality for certain items!
    local default = self:GetDefaultQuality(item)
    if default then
        quality = default
    end

    -- Force level for certain items!
    if self:CannotBeLevelled(item) then
        level = 0
    end

    local items = {}
    for i = 1, n do
        local seed = math.random(0, math.tointeger(2^32) - 1)
        local itemid = ItemID.new(tweakid, seed)
        local result = ts:GiveItem(player, itemid, 1)

        if result then
            -- Best way to do this for now until another method to get item data is found.
            -- This requires giving the "base" item to the player, then retrieving the item data from their inventory.
            self.logger:Debug("GiveItems: Success! | " .. tostring(itemid))
            local itemdata = ts:GetItemData(player, itemid)
            self:UnmarkQuest(itemdata)
            self:AllowUnequip(itemdata)
            self:ClearSlots(itemdata)
            self:SetLevel(itemdata, level)
            self:SetQuality(itemdata, quality)
            table.insert(items, itemdata)
        else
            self.logger:Error("GiveItems: Failed")
        end
    end
    return items
end

function ItemHandler:GiveResources(item, n)
    local r = self.handler.game:AddToInventory(item, n)
    self.logger:Debug("GiveResources: Success!")
    return r
end

function ItemHandler:GiveN(item, n, quality, level)
    if not item then
        return
    end
    -- If item is a stackable (resource) we can use in-built developer function.
    if self:IsStackable(item) then
        return self:GiveResources(item, n)
    else
        return self:GiveItems(item, n, quality, level)
    end
end

function ItemHandler:Give(item, quality, level)
    self:GiveN(item, 1, quality, level)
end

function ItemHandler:GiveMultiple(itemspecs)
    local items = {}
    for i = 1, #itemspecs do
        local itemspec = itemspecs[i]
        local item = itemspec["item"]
        local quality = itemspec["quality"]
        local quantity = itemspec["quantity"]
        local level = itemspec["level"]
        if not quantity then
            quantity = 1
        end
        table.insert(items, self:GiveN(item, quantity, quality, level))
    end
    return items
end

function ItemHandler:New(parent)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "ItemHandler"
    I.logger = Logger:New(parent.writer, I.module)
    I.system = System:New(I.logger)
    I.handler = {
        game = GameHandler:New(I.logger),
        player = PlayerHandler:New(I.logger)
    }

    return I

end

return ItemHandler