-- Global initialisation on mod load.
local Global = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function Global.OnLoad()
    Game["CreateStatModifier"] = Game["gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat"]
end

return Global