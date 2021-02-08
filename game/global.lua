-- Global initialisation on mod load.
local Global = {}

function Global.OnLoad()
    Game["CreateStatModifier"] = Game["gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat"]
    Game["GetModSlotIDs"] = Game["gameRPGManager::GetModsSlotIDs;gamedataItemType"]
    Game["GetAttachmentSlotIDs"] = Game["gameRPGManager::GetAttachmentSlotIDs;"]
    Game["GetItemRecord"] = Game["gameRPGManager::GetItemRecord;ItemID"]
end

return Global