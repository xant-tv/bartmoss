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
            Legendary = "Items.LegendaryMaterial1"
        },
        Upgrade = {
            Rare = "Items.RareMaterial2",
            Epic = "Items.EpicMaterial2",
            Legendary = "Items.LegendaryMaterial2"
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
            Capacity = "Items.CarryCapacityBooster",
            Health = "Items.HealthBooster",
            Oxygen = "Items.OxyBooster",
            Stamina = "Items.StaminaBooster",
            Armor = "Items.BlackLaceV0"
        }
    },
    Medicine = {
        BounceBack = {
            Common = "Items.BonesMcCoy70V0",
            Uncommon = "Items.BonesMcCoy70V1",
            Rare = "Items.BonesMcCoy70V2",
        },
        MaxDoc = {
            Uncommon = "Items.FirstAidWhiffV0",
            Rare = "Items.FirstAidWhiffV1",
            Epic = "Items.FirstAidWhiffV2",
        }
    }
}

return Resources