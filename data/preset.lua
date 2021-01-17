-- Pre-built custom gear presets.
local Preset = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Glossary = require(Preset.rootPath .. "data.glossary")

Preset = {}
Preset.Presets = {
    Weapon = {
        Shredder = {
            Base = Glossary.Weapons.Ranged.Saratoga.Pimp,
            Quality = Glossary.Quality.Legendary,
            Stats = {
                {
                    Stat = Glossary.Stats.PhysicalDamage,
                    Value = 24,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.BleedChance,
                    Value = 20,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.ThermalDamage,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.BurnChance,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.ElectricalDamage,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.ShockChance,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.ChemicalDamage,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.PoisonChance,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.CritChance,
                    Value = 50,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.CritDamage,
                    Value = 50,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.HeadshotDamageMultiplier,
                    Value = 3,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    -- Straight up multiplier to the size of the magazine.
                    Stat = Glossary.Stats.MagazineCapacityBonus,
                    Value = 1,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Add"
                },
                {
                    Stat = Glossary.Stats.ProjectilesPerShot,
                    Value = 4,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    -- Increases rate of fire by 40% of base value.
                    Stat = Glossary.Stats.CycleTimeBonus,
                    Value = -0.4, 
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.RicochetChance,
                    Value = 100,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.RicochetCount,
                    Value = 8,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.BonusRicochetDamage,
                    Value = 100,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.RicochetMinAngle,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.RicochetMaxAngle,
                    Value = 90,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.RicochetTargetSearchAngle,
                    Value = 60,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.IsItemIconic,
                    Value = 1,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                }
            }
        }
    }
}

Preset.List = {
    "Weapon.Shredder",
}

return Preset