-- Resources (money, crafting, stackables) dictionary.
local Resources = {}

Resources = {
    Money = "Items.money",
    Ammo = {
        Handgun = "Ammo.HandgunAmmo",
        Rifle = "Ammo.RifleAmmo",
        Shotgun = "Ammo.ShotgunAmmo",
        SniperRifle = "Ammo.SniperRifleAmmo",
        Special = "Ammo.Special"
    },
    Components = {
        Crafting = {
            Common = "Items.CommonMaterial1",
            Uncommon = "Items.UncommonMaterial1",
            Rare = "Items.RareMaterial1",
            Epic = "Items.EpicMaterial1",
            Legendary = "Items.LegendaryMaterial1",
            Chimera = "Items.Q302_Chimera_Core"
        },
        Quickhack = {
            Uncommon = "Items.QuickHackUncommonMaterial1",
            Rare = "Items.QuickHackRareMaterial1",
            Epic = "Items.QuickHackEpicMaterial1",
            Legendary = "Items.QuickHackLegendaryMaterial1"
        }
    },
    Consumables = {
        Booster = {
            Capacity = {
                Standard = "Items.CarryCapacityBooster",
                BlackMarket = "Items.Blackmarket_CarryCapacityBooster",
            },
            Health = {
                Standard = "Items.HealthBooster",
                BlackMarket = "Items.Blackmarket_HealthBooster"
            },
            Oxygen = "Items.OxyBooster",
            Stamina = {
                Standard = "Items.StaminaBooster",
                BlackMarket = "Items.Blackmarket_StaminaBooster"
            },
            Armor = {
                Standard = "Items.BlackLaceV0",
                BlackMarket = "Items.BlackLaceV1"
            }
        },
        Shards = {
            Skills = {
                Solo = {
                    Epic = "Items.BodySkill_Skillbook",
                    Legendary = "Items.BodySkill_Skillbook_Legendary"
                },
                Headhunter = {
                    Epic = "Items.CoolSkill_Skillbook",
                    Legendary = "Items.CoolSkill_Skillbook_Legendary"
                },
                Netrunner = {
                    Epic = "Items.IntelligenceSkill_Skillbook",
                    Legendary = "Items.IntelligenceSkill_Skillbook_Legendary"
                },
                Shinobi = {
                    Epic = "Items.ReflexesSkill_Skillbook",
                    Legendary = "Items.ReflexesSkill_Skillbook_Legendary"
                },
                Engineer = {
                    Epic = "Items.TechnicalAbilitySkill_Skillbook",
                    Legendary = "Items.TechnicalAbilitySkill_Skillbook_Legendary"
                }
            },
            Perk = "Items.PerkPointSkillbook",
            Attribute = "Items.AttributePointSkillbook",
            Relic = "Items.Espionage_Skillbook",
            CyberwareCapacity = {
                Uncommon = "CWCapacityPermaReward_Uncommon",
                Rare = "CWCapacityPermaReward_Rare",
                Epic = "Items.CWCapacityPermaReward_Epic",
                Legendary = "Items.CWCapacityPermaReward_Legendary"
            }
        }
    },
    Medicine = {
        BounceBack = {
            Common = "Items.BonesMcCoy70V0",
            CommonPlus = "Items.BonesMcCoy70VCommonPlus",
            Uncommon = "Items.BonesMcCoy70VUncommon",
            UncommonPlus = "Items.BonesMcCoy70VUncommonPlus",
            Rare = "Items.BonesMcCoy70V1",
            RarePlus = "Items.BonesMcCoy70VRarePlus",
            Epic = "Items.BonesMcCoy70VEpic",
            EpicPlus = "Items.BonesMcCoy70VEpicPlus",
            Legendary = "Items.BonesMcCoy70V2",
            LegendaryPlus = "Items.BonesMcCoy70VLegendaryPlus"
        },
        MaxDoc = {
            Common = "Items.FirstAidWhiffV0",
            CommonPlus = "Items.FirstAidWhiffVCommonPlus",
            Unommon = "Items.FirstAidWhiffVUnommon",
            UnommonPlus = "Items.FirstAidWhiffVUnommonPlus",
            Rare = "Items.FirstAidWhiffV1",
            RarePlus = "Items.FirstAidWhiffVRarePlus",
            Epic = "Items.FirstAidWhiffVEpic",
            EpicPlus = "Items.FirstAidWhiffVEpicPlus",
            Legendary = "Items.FirstAidWhiffV2",
            LegendaryPlus = "Items.FirstAidWhiffVLegendaryPlus",
        }
    }
}

return Resources