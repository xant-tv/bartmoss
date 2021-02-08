-- Pre-built inventory quickhacks for easy use.
local InventoryHack = {}

local Logger = require("utility/logger")
local Glossary = require("data/glossary")
local ItemHandler = require("handler/item")
local EquipmentHandler = require("handler/equipment")

function InventoryHack:GiveEndgameMods()
    local itemspecs = {
        {
            item = Glossary.Mods.Clothing.AntiVenom,
            quantity = 2
        },
        {
            item = Glossary.Mods.Clothing.Armadillo,
            quality = Glossary.Quality.Legendary,
            quantity = 60,
        },
        {
            item = Glossary.Mods.Clothing.BoomBreaker,
            quality = Glossary.Quality.Legendary,
            quantity = 10
        },
        {
            item = Glossary.Mods.Clothing.Bully,
            quantity = 10
        },
        {
            item = Glossary.Mods.Clothing.CoolIt,
            quantity = 10
        },
        {
            item = Glossary.Mods.Clothing.CutItOut,
            quantity = 10
        },
        {
            item = Glossary.Mods.Clothing.DeadEye,
            quantity = 10
        },
        {
            item = Glossary.Mods.Clothing.Fortuna,
            quantity = 10
        },
        {
            item = Glossary.Mods.Clothing.Panacea,
            quantity = 10
        },
        {
            item = Glossary.Mods.Clothing.SoftSole,
            quantity = 5
        },
        {
            item = Glossary.Mods.Clothing.SuperInsulator,
            quantity = 2
        },
        {
            item = Glossary.Mods.Clothing.ZeroDrag,
            quality = Glossary.Quality.Legendary,
            quantity = 10
        },
        {
            item = Glossary.Mods.Ranged.Bouncy,
            quantity = 2
        },
        {
            item = Glossary.Mods.Ranged.Crunch,
            quality = Glossary.Quality.Legendary,
            quantity = 30
        },
        {
            item = Glossary.Mods.Ranged.CombatAmplifier,
            quantity = 6
        },
        {
            item = Glossary.Mods.Ranged.CounterMass,
            quantity = 6
        },
        {
            item = Glossary.Mods.Ranged.Pacifier,
            quality = Glossary.Quality.Legendary,
            quantity = 30
        },
        {
            item = Glossary.Mods.Ranged.Penetrator,
            quality = Glossary.Quality.Legendary,
            quantity = 10
        },
        {
            item = Glossary.Mods.Ranged.Phantom,
            quantity = 10
        },
        {
            item = Glossary.Mods.Ranged.NeonArrow,
            quantity = 2
        },
        {
            item = Glossary.Mods.Ranged.Vendetta,
            quantity = 10
        },
        {
            item = Glossary.Mods.Melee.ColdShoulder,
            quantity = 7
        },
        {
            item = Glossary.Mods.Melee.Kunai,
            quantity = 7
        },
        {
            item = Glossary.Mods.Melee.Scourge,
            quantity = 7
        },
        {
            item = Glossary.Mods.Melee.WhiteKnuckled,
            quantity = 7
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