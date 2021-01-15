-- Cheats interacting with the game object directly.
local GameHandler = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function GameHandler.CreateStatModifier(modtype, calctype, val) 
    return Game.CreateStatModifier(modtype, calctype, val)
end

return GameHandler