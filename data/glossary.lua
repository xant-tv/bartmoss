-- Internal glossary for enumeration, lookups, constants and so on.
local Glossary = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

-- Currently manually-assembled.

-- Dictionary.
Glossary.Resources = require(Glossary.rootPath .. "data.glossary.resources")
Glossary.Weapons = require(Glossary.rootPath .. "data.glossary.weapons")
Glossary.Mods = require(Glossary.rootPath .. "data.glossary.mods")
Glossary.Recipes = require(Glossary.rootPath .. "data.glossary.recipes")

-- Enumerations.
Glossary.Quality = {
    Common = "Common",
    Uncommon = "Uncommon",
    Rare = "Rare",
    Epic = "Epic",
    Legendary = "Legendary"
}

Glossary.QualityNum = {
    Common = 0,
    Uncommon = 1,
    Rare = 2,
    Epic = 3,
    Legendary = 4
}

Glossary.Stats = {
    -- Not yet complete.
    ItemLevel = "ItemLevel",
    PowerLevel = "PowerLevel",
    Quality = "Quality",
    BaseDamage = "BaseDamage",
    ThermalDamage = "ThermalDamage",
    ChemicalDamage = "ChemicalDamage",
    PhysicalDamage = "PhysicalDamage",
    ElectricalDamage = "ElectricalDamage",
    AttacksPerSecond = "AttacksPerSecond",
    ReloadSpeed = "ReloadSpeed", -- Unsure how this works for now.
    CritChance = "CritChance",
    CritDamage = "CritDamage",
    HeadshotMultiplier = "HeadshotDamageMultiplier",
    RicochetChance = "RicochetChance",
    RicochetCount = "RicochetCount"
}

Glossary.Calculation = {
    Additive = "Additive",
    Multiplicative = "Multiply"
}

Glossary.EquipSlots = {
    Face = 1,
    Feet = 1,
    Heads = 1,
    InnerChest = 1,
    Legs = 1,
    OuterChest = 1,
    Weapon = 3,
    Outfit = 1
}

-- Property Lookups
Glossary.ForcedQuality = {
    -- Keys should match those in item quality.
    Legendary = {
        Glossary.Mods.Clothing.Bully,
        Glossary.Mods.Clothing.CoolIt,
        Glossary.Mods.Clothing.DeadEye,
        Glossary.Mods.Clothing.Fortuna,
        Glossary.Mods.Clothing.Panacea,
        Glossary.Mods.Ranged.BeSmart
    },
    Epic = {
        Glossary.Mods.Clothing.AntiVenom,
        Glossary.Mods.Clothing.CutItOut,
        Glossary.Mods.Clothing.SoftSole,
        Glossary.Mods.Clothing.SuperInsulator,
        -- Glossary.Mods.Ranged.Bouncy, -- Disabled as this mod doesn't appear to actually be usable.
        -- Glossary.Mods.Ranged.ChargeSpike, -- Disabled as this mod doesn't appear to actually be usable.
        Glossary.Mods.Ranged.CounterMass
    },
    Rare = {
        Glossary.Mods.Ranged.CombatAmplifier,
        Glossary.Mods.Ranged.Phantom,
        Glossary.Mods.Ranged.NeonArrow,
        Glossary.Mods.Ranged.Vendetta,
        Glossary.Mods.Melee.ColdShoulder,
        Glossary.Mods.Melee.Kunai,
        Glossary.Mods.Melee.Scourge,
        Glossary.Mods.Melee.WhiteKnuckled
    },
    Uncommon = {
        Glossary.Mods.Ranged.Pulverize
    },
    Common = {
        -- I sure hope not!
    }
}

Glossary.IsStackable = {
    Glossary.Resources.Money,
    Glossary.Resources.Components.Crafting.Legendary,
    Glossary.Resources.Components.Crafting.Epic,
    Glossary.Resources.Components.Crafting.Rare,
    Glossary.Resources.Components.Crafting.Uncommon,
    Glossary.Resources.Components.Crafting.Common,
    Glossary.Resources.Components.Upgrade.Legendary,
    Glossary.Resources.Components.Upgrade.Epic,
    Glossary.Resources.Components.Upgrade.Rare,
    Glossary.Resources.Components.Quickhack.Legendary,
    Glossary.Resources.Components.Quickhack.Epic,
    Glossary.Resources.Components.Quickhack.Rare,
    Glossary.Resources.Components.Quickhack.Uncommon
}

Glossary.Searchable = {
    Resources = Glossary.Resources,
    Weapons = Glossary.Weapons,
    Mods = Glossary.Mods,
    -- Recipes = Glossary.Recipes
}

return Glossary