-- Generic language utilities for mathematical operations.
local Math = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function Math.SafeFloor(x)
    -- Lots of game stats are stored/returned as floats (e.g. player level, item quality).
    -- These all need to be converted to integers, which we do by flooring while allowing a small epsilon.
    return math.floor(x + 0.01)
end

return Math