local Layout = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

Layout = {
    WeaponsTab = {
        Basic = {
            [1] = {
                {
                    Name = "BaseDamage",
                    Display = "Base Damage",
                    Type = "Float"
                },
                {
                    Name = "PhysicalDamage",
                    Display = "Physical Damage",
                    Type = "Float"
                },
                {
                    Name = "ThermalDamage",
                    Display = "Thermal Damage",
                    Type = "Float"
                },
                {
                    Name = "ElectricalDamage",
                    Display = "Electrical Damage",
                    Type = "Float"
                },
                {
                    Name = "ChemicalDamage",
                    Display = "Chemical Damage",
                    Type = "Float"
                },
                {
                    Name = "CritChance",
                    Display = "Critical Chance",
                    Type = "Float"
                },
                {
                    Name = "HeadshotDamageMultiplier",
                    Display = "Headshot Multiplier",
                    Type = "Float"
                },
                {
                    Name = "ProjectilesPerShot",
                    Display = "Projectiles Per Shot",
                    Type = "Float"
                },
                {
                    Name = "MagazineCapacity",
                    Display = "Magazine Capacity",
                    Type = "Float"
                }
                -- Proxy for rate of fire.
                -- Disable until more testing is done.
                -- {
                --     Name = "CycleTime",
                --     Display = "Cycle Time",
                --     Column = 1
                -- }
            },
            [2] = {
                {
                    Type = "Skip"
                },
                {
                    Name = "BleedChance",
                    Display = "Bleed Chance",
                    Type = "Float"
                },
                {
                    Name = "BurnChance",
                    Display = "Burn Chance",
                    Type = "Float"
                },
                {
                    Name = "ShockChance",
                    Display = "Shock Chance",
                    Type = "Float"
                },
                {
                    Name = "PoisonChance",
                    Display = "Poison Chance",
                    Type = "Float"
                },
                {
                    Name = "CritDamage",
                    Display = "Critical Damage",
                    Type = "Float"
                },
                {
                    Name = "IsItemIconic",
                    Display = "Is Iconic",
                    Type = "Boolean"
                },
                {
                    Name = "IsItemCrafted",
                    Display = "Is Crafted",
                    Type = "Boolean"
                }
            }
        },
        Advanced = {
            [1] = {
                {
                    Name = "RicochetChance",
                    Display = "Ricochet Chance",
                    Type = "Float"
                },
                {
                    Name = "RicochetCount",
                    Display = "Ricochet Count",
                    Type = "Float"
                },
                {
                    Name = "BonusRicochetDamage",
                    Display = "Bonus Damage",
                    Type = "Float"
                },
                {
                    Name = "RicochetMinAngle",
                    Display = "Min Angle",
                    Type = "Float"
                },
                {
                    Name = "RicochetMaxAngle",
                    Display = "Max Angle",
                    Type = "Float"
                },
                {
                    Name = "RicochetTargetSearchAngle",
                    Display = "Search Angle",
                    Type = "Float"
                }
            },
            [2] = {
                {
                    Name = "TechPierceEnabled",
                    Display = "Pierce Walls",
                    Type = "Boolean"
                },
                {
                    Name = "TechPierceChargeLevel",
                    Display = "Pierce Charge",
                    Type = "Float"
                },
                {
                    Name = "ChargeMultiplier",
                    Copy = "ChargeFullMultiplier",
                    Display = "Tech Multiplier",
                    Type = "Float"
                },
                {
                    Name = "ChargeTime",
                    Display = "Charge Time",
                    Type = "Float",
                    Method = "Add"
                },
                {
                    Name = "NumShotsInBurstMaxCharge",
                    Display = "Charge Burst",
                    Type = "Float",
                    Method = "Add"
                }
            },
            [3] = {
                {
                    Name = "HasSmartLink",
                    Display = "Has Smart Link",
                    Column = 3,
                    Type = "Boolean"
                },
                {
                    Name = "SmartGunHitProbability",
                    Display = "Hit Chance",
                    Column = 3,
                    Type = "Float"
                },
                {
                    Name = "SmartGunAdsMaxLockedTargets",
                    Copy = "SmartGunHipMaxLockedTargets",
                    Display = "Max Targets",
                    Column = 3,
                    Type = "Float"
                },
                -- Smart guns need more research!
                -- Appears as though a lot of the behaviour is controlled by something other than simple modifiers.
                {
                    Name = "SmartGunTrackAllBodyparts",
                    Display = "Track Limbs",
                    Column = 3,
                    Type = "Boolean"
                }
            }
        }
    }
}
Layout.WeaponsTab.Sections = {
    Layout.WeaponsTab.Basic,
    Layout.WeaponsTab.Advanced
}

return Layout