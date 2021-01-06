local Glossary = {
    description = "Internal glossary for enumeration, lookups, constants and so on.",
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

-- Currently manually-assembled.
-- TODO: Write a script to source these from hash lists or database dumps!

-- Dictionary.
Glossary.ClothingMods = {
    AntiVenom = "Items.PowerfulFabricEnhancer02",
    Armadillo = "Items.SimpleFabricEnhancer01",
    Backpack = "Items.SimpleFabricEnhancer05",
    BoomBreaker = "Items.SimpleFabricEnhancer14",
    Bully = "Items.SimpleFabricEnhancer04",
    CoolIt = "Items.PowerfulFabricEnhancer02",
    CutItOut = "Items.PowerfulFabricEnhancer06",
    DeadEye = "Items.PowerfulFabricEnhancer08",
    Fortuna = "Items.SimpleFabricEnhancer03",
    Panacea = "Items.PowerfulFabricEnhancer03",
    SoftSole = "Items.PowerfulFabricEnhancer05",
    SuperInsulator = "Items.PowerfulFabricEnhancer04",
    ZeroDrag = "Items.SimpleFabricEnhancer11"
}

Glossary.RangedMods = {
    BeSmart = "Items.SimpleWeaponMod15",
    -- Bouncy = "Items.SimpleWeaponMod08", -- Disabled as this mod doesn't appear to actually be usable.
    -- ChargeSpike = "Items.SimpleWeaponMod09", -- Disabled as this mod doesn't appear to actually be usable.
    CombatAmplifier = "Items.SimpleWeaponMod04",
    CounterMass = "Items.SimpleWeaponMod11",
    Crunch = "Items.SimpleWeaponMod01",
    NeonArrow = "Items.TygerRangedWeaponMod",
    Pacifier = "Items.SimpleWeaponMod03",
    Penetrator = "Items.SimpleWeaponMod02",
    Phantom = "Items.WraithsRangedWeaponMod",
    Pulverize = "Items.SimpleWeaponMod12",
    Vendetta = "Items.ValentinosRangedWeaponMod"
}

Glossary.MeleeMods = {
    ColdShoulder = "Items.ValentinosMeleeWeaponMod",
    Kunai = "Items.ArasakaMeleeWeaponMod",
    Scourge = "Items.WraithsMeleeWeaponMod",
    WhiteKnuckled = "Items.TygerMeleeWeaponMod",
}

Glossary.Resources = {
    Money = "Items.money"
}

-- Enumerations.
Glossary.ItemQuality = {
    Common = "Common",
    Uncommon = "Uncommon",
    Rare = "Rare",
    Epic = "Epic",
    Legendary = "Legendary"
}

-- Property Lookups
Glossary.ForcedLegendary = {
    Glossary.ClothingMods.Bully,
    Glossary.ClothingMods.CoolIt,
    Glossary.ClothingMods.DeadEye,
    Glossary.ClothingMods.Fortuna,
    Glossary.ClothingMods.Panacea,
    Glossary.RangedMods.BeSmart
}

Glossary.ForcedEpic = {
    Glossary.ClothingMods.AntiVenom,
    Glossary.ClothingMods.CutItOut,
    Glossary.ClothingMods.SoftSole,
    Glossary.ClothingMods.SuperInsulator,
    Glossary.RangedMods.Bouncy,
    Glossary.RangedMods.ChargeSpike,
    Glossary.RangedMods.CounterMass
}

Glossary.ForcedRare = {
    Glossary.RangedMods.CombatAmplifier,
    Glossary.RangedMods.Phantom,
    Glossary.RangedMods.NeonArrow,
    Glossary.RangedMods.Vendetta,
    Glossary.MeleeMods.ColdShoulder,
    Glossary.MeleeMods.Kunai,
    Glossary.MeleeMods.Scourge,
    Glossary.MeleeMods.WhiteKnuckled
}

Glossary.ForcedUncommon = {
    Glossary.RangedMods.Pulverize
}

Glossary.ForcedCommon = {
    -- I sure hope not!
}

Glossary.ForcedQuality = {
    -- Keys should match those in item quality.
    Legendary = Glossary.ForcedLegendary,
    Epic = Glossary.ForcedEpic,
    Rare = Glossary.ForcedRare,
    Uncommon = Glossary.ForcedUncommon,
    Common = Glossary.ForcedCommon
}

Glossary.IsStackable = {
    Glossary.Resources.Money
}

return Glossary