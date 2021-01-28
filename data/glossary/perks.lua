-- Player perk mapping.
local Perks = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

-- Perks are separated by governing skill.
-- They are grouped into areas - which has nothing to do with any practical aspects of the skill.
-- Instead, areas have requirements and this governs at what skill level the perk is unlocked.
Perks = {
    Annihilation = {},
    Athletics = {},
    Assault = {
        "Perks.Assault_Area_01_Perk_1",
        "Perks.Assault_Area_01_Perk_2",
        "Perks.Assault_Area_02_Perk_1",
        "Perks.Assault_Area_02_Perk_2",
        "Perks.Assault_Area_03_Perk_1",
        "Perks.Assault_Area_03_Perk_2",
        "Perks.Assault_Area_04_Perk_1",
        "Perks.Assault_Area_04_Perk_2",
        "Perks.Assault_Area_05_Perk_1",
        "Perks.Assault_Area_05_Perk_2",
        "Perks.Assault_Area_06_Perk_1",
        "Perks.Assault_Area_06_Perk_2",
        "Perks.Assault_Area_07_Perk_1",
        "Perks.Assault_Area_07_Perk_2",
        "Perks.Assault_Area_08_Perk_1",
        "Perks.Assault_Area_08_Perk_2",
        "Perks.Assault_Area_09_Perk_1",
        "Perks.Assault_Area_09_Perk_2",
        "Perks.Assault_Area_10_Perk_1"
    },
    Blades = {},
    BreachProtocol = {},
    ColdBlood = {},
    Crafting = {},
    Engineering = {},
    Handguns = {},
    Quickhacking = {},
    Stealth = {},
    StreetBrawler = {}
}

return Perks