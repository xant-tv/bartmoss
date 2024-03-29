-- Cheats interacting with items and transactional systems.
local ItemHandler = {}

local Logger = require("utility/logger")
local Table = require("utility/table")
local Math = require("utility/math")
local System = require("game/system")
local GameHandler = require("handler/game")
local PlayerHandler = require("handler/player")
local Glossary = require("data/glossary")

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

function ItemHandler:DoNotCheckParts(enum)
    for _, table in ipairs(Glossary.DoNotCheckParts) do
        if Table.HasValue(table, enum) then
            return true
        end
    end
    return false
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
    self.logger:Info("SetModifier: " .. modtype .. " | " .. calctype .. " | " .. val .. " --> " .. tostring(itemdata:GetID()))
end

function ItemHandler:AddModifier(itemdata, modtype, calctype, val)
    local ss = self.system:Stats()
    local statsobjid = itemdata:GetStatsObjectID()
    local mod = self.handler.game:CreateStatModifier(modtype, calctype, val)
    ss:AddSavedModifier(statsobjid, mod)
    self.logger:Info("AddModifier: " .. modtype .. " | " .. calctype .. " | " .. val .. " --> " .. tostring(itemdata:GetID()))
end

function ItemHandler:GetTags(itemid)
    local tags = {}
    local tagobjs = self.handler.game:GetItemRecord(itemid):Tags()
    for _, tagobj in ipairs(tagobjs) do
        if tagobj.value == Glossary.Tags.DummyPart then
            self.logger:Warning("GetTags: Dummy <-- " .. tostring(itemid))
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

function ItemHandler:GetSlots(itemdata)
    -- Similar to parts but keep the slots themselves.
    -- Be aware - this returns more than just user-facing mod slots!
    -- It appears that weapons all have slots for "parts" that determines which physical models are used.
    -- Not recommended to remove these parts (unless you like invisible guns).
    -- Tech and smart weapons also have an archetype slot that does things like set tech damage multiplier.
    local slots = {}
    local gi = GetSingleton("gameInnerItemData")
    local inners = itemdata:GetItemParts()
    for _, inner in ipairs(inners) do
        local slotid = gi:GetSlotID(inner)
        slots[slotid.hash] = slotid
    end
    return slots
end


function ItemHandler:Inspect(itemdata)
    local result = {}
    for _, mod in ipairs(Glossary.Inspect) do
        result[mod] = self:GetModifier(itemdata, mod)
    end
    return result
end

function ItemHandler:SetQuality(itemdata, quality)

    -- If no quality, just exit.
    if not quality then
        local cquality = Math.SafeFloor(self:GetModifier(itemdata, Glossary.Stats.Quality))
        self.logger:Info("SetQuality: Default | " .. Glossary.QualityRank[cquality + 1])
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

function ItemHandler:SetPlus(itemdata, nplus)
    -- This replaces SetLevel functionality.
    self:SetModifier(itemdata, Glossary.Stats.IsItemPlus, Glossary.Calculation.Additive, nplus)
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

function ItemHandler:AddPart(itemdata, partdata, slot)
    local player = self.system:Player()
    local ts = self.system:Transaction()
    local itemid = itemdata:GetID()
    local partid = partdata:GetID()
    local result = ts:ForcePartInSlot(player, itemid, partid, slot)
    self.logger:Info(ts:CanPlaceItemInSlot(player, slot, partid))
    self.logger:Info(partid)
    if result then
        self.logger:Info("AddPart: Success! | " .. tostring(partid) .. " --> " .. tostring(itemid) .. " @ " .. tostring(slot))
    else
        self.logger:Error("AddPart: Failed!")
    end
    return result
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
            self.logger:Info("ClearPart: " .. tostring(removed))
            local taglist = self:GetTags(removed)
            if Table.HasValue(taglist, Glossary.Tags.DummyPart) or (not keep) then
                -- Kind of hacky, as there doesn't seem to be a way to prevent return to player.
                -- Instead, just remove any dummy items. Can also force part removal (e.g. for new items).
                ts:RemoveItem(player, removed, 1)
                self.logger:Info("RemoveItem: " .. tostring(removed))
            end
        end
    end
end

function ItemHandler:ClearSlots(itemdata, keep)
    -- Rewrite the crafting system function to actually ignore dummy attachment mods.
    -- This refunds all (valid) mods slotted into an item.
    local itemtype = itemdata:GetItemType()
    -- We don't clear slots for certain item types.
    if self:DoNotCheckParts(itemtype.value) then
        return
    end
    local modslots = self.handler.game:GetModSlotIDs(itemtype)
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
    self:SetPlus(itemdata, 2)
end

function ItemHandler:GiveItems(item, n, quality, plus)
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
        plus = 0
    end

    local items = {}
    for i = 1, n do
        local seed = math.random(0, (2^32) - 1)
        local itemid = ItemID.new(tweakid, seed)
        local result = ts:GiveItem(player, itemid, 1)

        if result then
            -- Best way to do this for now until another method to get item data is found.
            -- This requires giving the "base" item to the player, then retrieving the item data from their inventory.
            self.logger:Info("GiveItems: Success! | " .. tostring(itemid))
            local itemdata = ts:GetItemData(player, itemid)
            self:UnmarkQuest(itemdata)
            self:AllowUnequip(itemdata)
            self:ClearSlots(itemdata)
            self:SetPlus(itemdata, plus)
            self:SetQuality(itemdata, quality)
            table.insert(items, itemdata)
        else
            self.logger:Error("GiveItems: Failed!")
        end
    end
    return items
end

function ItemHandler:GiveResources(item, n)
    local r = self.handler.game:AddToInventory(item, n)
    self.logger:Info("GiveResources: Success!")
    return r
end

function ItemHandler:GiveN(item, n, quality, plus)
    if not item then
        return
    end
    -- If item is a stackable (resource) we can use in-built developer function.
    if self:IsStackable(item) then
        return self:GiveResources(item, n)
    else
        return self:GiveItems(item, n, quality, plus)
    end
end

function ItemHandler:Give(item, quality, plus)
    self:GiveN(item, 1, quality, plus)
end

function ItemHandler:GiveMultiple(itemspecs)
    local items = {}
    for i = 1, #itemspecs do
        local itemspec = itemspecs[i]
        local item = itemspec["item"]
        local quality = itemspec["quality"]
        local quantity = itemspec["quantity"]
        local plus = itemspec["plus"]
        if not quantity then
            quantity = 1
        end
        if not plus then
            plus = 0
        end
        table.insert(items, self:GiveN(item, quantity, quality, plus))
    end
    return items
end

function ItemHandler:New()

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "ItemHandler"
    I.logger = Logger:New(I.module)
    I.system = System:New()
    I.handler = {
        game = GameHandler:New(),
        player = PlayerHandler:New()
    }

    return I

end

return ItemHandler