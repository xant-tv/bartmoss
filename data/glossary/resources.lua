-- Resources (money, crafting, stackables) dictionary.
local Resources = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

Resources = {
    Money = "Items.money",
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
    }
}

return Resources