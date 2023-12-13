-- Pre-built inventory quickhacks for easy use.
local InventoryHack = {}

local Logger = require("utility/logger")
local Glossary = require("data/glossary")
local ItemHandler = require("handler/item")
local EquipmentHandler = require("handler/equipment")

function InventoryHack:GiveEndgameMods()
    local itemspecs = {
        {
            item = Glossary.Mods.Ranged.Equalizer.Legendary,
            quantity = 10
        }
    }
    self.handler.item:GiveMultiple(itemspecs)
end

function InventoryHack:GiveAmmo()
    local itemspecs = {
        {
            item = Glossary.Resources.Ammo.Handgun,
            quantity = 1000
        },
        {
            item = Glossary.Resources.Ammo.Rifle,
            quantity = 1000,
        },
        {
            item = Glossary.Resources.Ammo.Shotgun,
            quantity = 1000
        },
        {
            item = Glossary.Resources.Ammo.SniperRifle,
            quantity = 1000,
        },
        {
            item = Glossary.Resources.Ammo.Special,
            quantity = 1000,
        }
    }
    self.handler.item:GiveMultiple(itemspecs)
end

function InventoryHack:UpgradeMe()
    self.handler.equipment:UpgradeEquipped()
    self.handler.equipment:UpgradeInventory()
end

function InventoryHack:New()

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "InventoryHack"
    I.logger = Logger:New(I.module)
    I.handler = {
        item = ItemHandler:New(),
        equipment = EquipmentHandler:New()
    }

    return I

end

return InventoryHack