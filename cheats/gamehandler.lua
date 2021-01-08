-- Cheats interacting with the game object directly.
local GameHandler = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function GameHandler.CreateStatModifier(modtype, calc, val) 
    return Game.CreateStatModifier(modtype, calc, val)
end

return GameHandler