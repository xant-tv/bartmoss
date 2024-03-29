-- Cheats interacting more-or-less directly with the equipment system.
local EquipmentHandler = {}

local Logger = require("utility/logger")
local System = require("game/system")
local Glossary = require("data/glossary")
local ItemHandler = require("handler/item")

function EquipmentHandler:GetItemDataInSlot(name, id)
    local player = self.system:Player()
    local ts = self.system:Transaction()
    local espd = self.system:PlayerEquipmentData()
    local itemid = espd:GetItemInEquipSlot(name, id)
    -- Skip empty slots.
    if itemid.tdbid.hash ~= 0 then
        local itemdata = ts:GetItemData(player, itemid)
        return itemdata
    end
    return
end

function EquipmentHandler:FindInventoryItems(matchid)
    local matches = {}
    local im = self.system:InventoryManager()
    local itemlist = im:GetPlayerInventoryItemsExcludingLoadout()
    for _, itemdata in ipairs(itemlist) do
        local itemid = itemdata:GetID()
        if itemid.tdbid.hash == matchid.tdbid.hash then
            table.insert(matches, itemdata)
        end
    end
    return matches
end

function EquipmentHandler:FindInventoryItemsByString(match)
    -- Find all items in inventory of the same base type as the supplied item.
    -- Do this by obtaining the hash of such an item and then comparing with player inventory.
    -- This is not foolproof for items that can have multiple hashes. Known bugs with certain mods.
    local matches = {}
    local tweakid = TweakDBID.new(match)
    local matchid = ItemID.new(tweakid)
    if matchid.tdbid.hash ~= 0 then
        matches = self:FindInventoryItems(matchid)
    end
    return matches
end

function EquipmentHandler:Upgrade(itemdata, quality, plus, base)
    local default = nil
    if base then
        -- Force default quality and upgrade for certain items if base is known.
        default = self.handler.item:GetDefaultQuality(base)
        if default then
            quality = default
        end
        if self.handler.item:CannotBeLevelled(base) then
            plus = 0
        end
    end
    self.handler.item:ClearSlots(itemdata, true) -- Return any removed mods.
    self.handler.item:SetPlus(itemdata, plus)
    self.handler.item:SetQuality(itemdata, quality)
end

function EquipmentHandler:UpgradeEquipped()
    local player = self.system:Player()
    local ts = self.system:Transaction()
    local espd = self.system:PlayerEquipmentData()
    for k, v in pairs(Glossary.EquipSlots) do
        for i = 1, v do
            local itemid = espd:GetItemInEquipSlot(k, i - 1)
            -- Skip empty slots.
            if itemid.tdbid.hash ~= 0 then
                self.logger:Info("UpgradeEquipped: " .. k .. " | " .. (i - 1))
                local itemdata = ts:GetItemData(player, itemid)
                -- Sets quality and upgrade.
                self:Upgrade(itemdata, Glossary.Quality.Legendary, 2)
            end
        end
    end
end

function EquipmentHandler:UpgradeInventory()
    local tabs = {
        Glossary.Mods.Ranged,
        Glossary.Mods.Melee,
        Glossary.Attachments.Scope.Short,
        Glossary.Attachments.Scope.Long,
        Glossary.Attachments.Scope.Sniper
    }
    for _, tab in ipairs(tabs) do
        for key, item in pairs(tab) do
            local matches = self:FindInventoryItemsMatchingString(item)
            if #matches ~= 0 then
                self.logger:Info("UpgradeInventory: " .. key .. " | " .. #matches)
            end
            for _, itemdata in ipairs(matches) do
                -- Sets quality and upgrade.
                self:Upgrade(itemdata, Glossary.Quality.Legendary, 2, item)
            end
        end
    end
end

function EquipmentHandler:New()

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "EquipmentHandler"
    I.logger = Logger:New(I.module)
    I.system = System:New()
    I.handler = {
        item = ItemHandler:New()
    }

    return I

end

return EquipmentHandler