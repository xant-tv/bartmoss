-- State definition. Could switch to database in the future.
local State = {}

local Glossary = require("data/glossary")
local Preset = require("data/preset")
local Table = require("utility/table")

State.QuickhackTab = {}
State.QuickhackTab.PresetOptions = Preset.List
State.QuickhackTab.PresetSelect = 0

State.PlayerTab = {}
State.PlayerTab.AttrOptions = Glossary.AttributesRank
State.PlayerTab.AttrSelect = 0
State.PlayerTab.ExpAmount = 0

State.ItemsTab = {}
State.ItemsTab.GlossaryInput = ""
State.ItemsTab.GlossaryPaths = Table.DeepPath(Glossary.Searchable, "") -- Remove leading "Glossary" from path element.
State.ItemsTab.GlossaryOptions = Table.Filter(State.ItemsTab.GlossaryPaths, State.ItemsTab.GlossaryInput)
State.ItemsTab.GlossarySearchRegex = false
State.ItemsTab.ItemSelect = 0
State.ItemsTab.ItemQuantity = 1
State.ItemsTab.QualityOptions = Glossary.QualityRank
State.ItemsTab.QualitySelect = 4
State.ItemsTab.ItemUpgraded = 0

State.WeaponsTab = {}
State.WeaponsTab.SlotOptions = Glossary.WeaponSlots
State.WeaponsTab.SlotSelect = 0
State.WeaponsTab.SlotActivated = false
State.WeaponsTab.ItemData = nil
State.WeaponsTab.Modifiers = {
    BaseDamage = 0,
    PhysicalDamage = 0,
    BleedChance = 0,
    ThermalDamage = 0,
    BurnChance = 0,
    ElectricalDamage = 0,
    ShockChance = 0,
    ChemicalDamage = 0,
    PoisonChance = 0,
    CritChance = 0,
    CritDamage = 0,
    HeadshotDamageMultiplier = 0,
    ProjectilesPerShot = 0,
    CycleTime = 0,
    MagazineCapacity = 0,
    IsItemIconic = false,
    IsItemCrafted = false,
    IsItemPlus = 0,
    RicochetChance = 0,
    RicochetCount = 0,
    BonusRicochetDamage = 0,
    RicochetMinAngle = 0,
    RicochetMaxAngle = 0,
    RicochetTargetSearchAngle = 0,
    TechPierceEnabled = false,
    TechPierceChargeLevel = 0,
    ChargeMultiplier = 0,
    ChargeFullMultiplier = 0,
    ChargeTime = 0,
    NumShotsInBurstMaxCharge = 0,
    CycleTimeBurstMaxCharge = 0,
    HasSmartLink = false,
    SmartGunHitProbability = 0,
    SmartGunAdsMaxLockedTargets = 0,
    SmartGunHipMaxLockedTargets = 0, -- This item is just a copy.
    SmartGunTrackAllBodyparts = false
}
for key, item in pairs(State.WeaponsTab.Modifiers) do
    State.WeaponsTab[key] = {
        Default = item
    }
    State.WeaponsTab[key].Value = State.WeaponsTab[key].Default
    State.WeaponsTab[key].Read = State.WeaponsTab[key].Value
end

State.ArmorTab = {}
State.ArmorTab.SlotOptions = Glossary.ClothingSlots
State.ArmorTab.SlotSelect = 0
State.ArmorTab.SlotActivated = false
State.ArmorTab.ItemData = nil
State.ArmorTab.Modifiers = {
    Armor = 0,
    ItemArmor = 0,
    PartArmor = 0,
    IsItemIconic = false,
    IsItemCrafted = false
}
for key, item in pairs(State.ArmorTab.Modifiers) do
    State.ArmorTab[key] = {
        Default = item
    }
    State.ArmorTab[key].Value = State.ArmorTab[key].Default
    State.ArmorTab[key].Read = State.ArmorTab[key].Value
end

return State