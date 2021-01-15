-- Pre-built inventory quickhacks for easy use.
local Inventory = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local ItemHandler = require(Inventory.rootPath .. "handler.item")
local EquipmentHandler = require(Inventory.rootPath .. "handler.equipment")
local Glossary = require(Inventory.rootPath .. "data.glossary")

function Inventory.GiveEndgameMods()
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
    ItemHandler.GiveMultiple(itemspecs)
end

function Inventory.MakeMeLegendary()
    EquipmentHandler.MakeEquippedItemsLegendary()
end

return Inventory