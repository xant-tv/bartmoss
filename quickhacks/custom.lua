-- Pre-built custom gear quickhacks for easy use.
local Custom = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local ItemHandler = require(Custom.rootPath .. "handler.item")
local Preset = require(Custom.rootPath .. "data.preset")

function Custom.ApplyStat(itemdata, statset)
    local modtype = statset.Stat
    local value = statset.Value
    local calctype = statset.Calculation
    local method = statset.Method
    local Callable = ItemHandler.SetModifier
    if method == "Add" then
        Callable = ItemHandler.AddModifier
    end
    Callable(itemdata, modtype, calctype, value)
end

function Custom.GiveCustomGear(preset)
    local itemname = preset.Base
    local quality = preset.Quality
    local stats = preset.Stats
    local items = ItemHandler.GiveN(itemname, 1, quality, 0) -- List of item data for all items generated.
    for _, item in ipairs(items) do
        for _, stat in ipairs(stats) do
            Custom.ApplyStat(item, stat)
        end
    end
end

return Custom