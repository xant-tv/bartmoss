-- Pre-built custom gear presets.
local Preset = {}

local Glossary = require("data/glossary")

Preset = {}
Preset.Presets = {
    Weapon = {
        Rebound = {
            -- Power weapon.
            -- Fires quite fast. Multiple (four) projectiles per shot.
            -- Bullets coated in rubber, ricochet many many times, much better at searching targets on ricochet.
            -- You can effectively hit your targets by shooting anywhere.
            Base = Glossary.Weapons.Ranged.Saratoga.Pimp,
            Quality = Glossary.Quality.Legendary,
            Stats = {
                {
                    Stat = Glossary.Stats.PhysicalDamage,
                    Value = 28,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.BleedChance,
                    Value = 0,
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
            },
            Parts = {
            }
        },
        Shredder = {
            -- Smart weapon (no inbuilt link).
            -- Fires insanely fast. Multiple (three) projectiles per shot.
            -- Bullets are designed to cause bleeding.
            Base = Glossary.Weapons.Ranged.Dian.Default,
            Quality = Glossary.Quality.Legendary,
            Stats = {
                {
                    Stat = Glossary.Stats.PhysicalDamage,
                    Value = 12,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.BleedChance,
                    Value = 35,
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
                    Value = 3,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.CycleTimeBonus,
                    Value = -0.9,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.SmartGunAdsMaxLockedTargets,
                    Value = 3,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.SmartGunHipMaxLockedTargets,
                    Value = 3,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.SmartGunHitProbability,
                    Value = 1,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.SmartGunMissRadius,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.SmartGunAdsTimeToLock,
                    Value = 0.2,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.SmartGunHipTimeToLock,
                    Value = 0.2,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.SmartGunUseTimeBasedAccuracy,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.SmartGunPlayerProjectileVelocity,
                    Value = 25,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Add"
                },
                {
                    Stat = Glossary.Stats.SmartGunTrackAllBodyparts,
                    Value = 1,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.IsItemIconic,
                    Value = 1,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                }
            },
            Parts = {
                {
                    Slot = Glossary.PartSlots.Weapon.Iconic.Ranged,
                    Part = Glossary.Mods.Ranged.Iconic.BaXingChong,
                    Quality = Glossary.Quality.Epic
                }
            }
        },
        Heatseeker = {
            -- Smart weapon (with inbuilt link).
            -- Bullets can penetrate through walls.
            -- Can continue tracking enemies through walls after they have been marked. Does this via calibrating body heat - such lore!
            -- Sadly no way to allow target locking through walls as well.
            -- Burns enemies on impact.
            Base =  Glossary.Weapons.Ranged.Dian.Pimp,
            Quality = Glossary.Quality.Legendary,
            Stats = {
                {
                    Stat = Glossary.Stats.SmartGunHitProbability,
                    Value = 0.95,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.IsItemIconic,
                    Value = 1,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                }
            },
            Parts = {
                {
                    Slot = Glossary.PartSlots.Weapon.Iconic.Ranged,
                    Part = Glossary.Mods.Ranged.Iconic.YingLong,
                    Quality = Glossary.Quality.Epic
                }
            }
        },
        Mikoto = {
            -- Power weapon.
            -- Multiple (two) projectiles per shot.
            -- Bullets are magnetically accelerated and retain enough charge to shock enemies. Can penetrate walls. Bullets cannot ricochet at all.
            -- Yes, this is an anime reference. I have literally never watched this show at all.
            Base = Glossary.Weapons.Ranged.Sor22.Pimp,
            Quality = Glossary.Quality.Legendary,
            Stats = {
                {
                    Stat = Glossary.Stats.PhysicalDamage,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.BleedChance,
                    Value = 0,
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
                    Value = 400,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.ShockChance,
                    Value = 100,
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
                    Value = 60,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.CritDamage,
                    Value = 100,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.HeadshotDamageMultiplier,
                    Value = 5,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.ProjectilesPerShot,
                    Value = 2,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.RicochetChance,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.RicochetCount,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.BonusRicochetDamage,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.TechPierceEnabled,
                    Value = 1,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.TechPierceChargeLevel,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.IsItemIconic,
                    Value = 1,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                }
            },
            Parts = {
                {
                    Slot = Glossary.PartSlots.Weapon.Iconic.Ranged,
                    Part = Glossary.Mods.Ranged.Iconic.YingLong,
                    Quality = Glossary.Quality.Epic
                }
            }
        },
        TractorCannon = {
            -- Tech weapon.
            -- Fires an absurd amount of projectiles (forty) per shot.
            -- Bullets have insane knockdown and physical impulse (also increased "reaction" factor).
            -- This seems to be an entirely scripted animation and not physics-based at all. So disappointing!
            Base = Glossary.Weapons.Ranged.Satara.Pimp,
            Quality = Glossary.Quality.Legendary,
            Stats = {
                {
                    Stat = Glossary.Stats.PhysicalDamage,
                    Value = 30,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.BleedChance,
                    Value = 0,
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
                    Value = 20,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.CritDamage,
                    Value = 100,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.HeadshotDamageMultiplier,
                    Value = 0,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.ProjectilesPerShot,
                    Value = 40,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.NumShotsToFire,
                    Value = 1,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.MagazineCapacityBonus,
                    Value = 1,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.KnockdownImpulse,
                    Value = 150,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.PhysicalImpulse,
                    Value = 120,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.HitReactionFactor,
                    Value = 100,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.IsItemIconic,
                    Value = 1,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                }
            },
            Parts = {
            }
        },
        KunaiWithChain = {
            -- Melee weapon (sort of).
            -- This is what happens when you increase the range of melee attacks from 2m to 30m. Pretend it's throwable or something.
            -- Famous reference: https://www.youtube.com/watch?v=kU5KxBYYneA
            Base = Glossary.Weapons.Melee.Machete.Default,
            Quality = Glossary.Quality.Legendary,
            Stats = {
                {
                    Stat = Glossary.Stats.BaseDamage,
                    Value = 260,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.PhysicalDamage,
                    Value = 120,
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
                    Value = 240,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.PoisonChance,
                    Value = 100,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.CritChance,
                    Value = 60,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.CritDamage,
                    Value = 100,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.AttackSpeed,
                    Value = 2,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.Range,
                    Value = 30,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                },
                {
                    Stat = Glossary.Stats.IsItemIconic,
                    Value = 1,
                    Calculation = Glossary.Calculation.Additive,
                    Method = "Set"
                }
            },
            Parts = {
            }
        }
    }
}

Preset.List = {
    "Weapon.Heatseeker",
    "Weapon.KunaiWithChain",
    "Weapon.Mikoto",
    "Weapon.Rebound",
    "Weapon.Shredder",
    "Weapon.TractorCannon"
}

return Preset