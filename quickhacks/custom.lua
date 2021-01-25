-- Pre-built custom gear quickhacks for easy use.
local Custom = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logger = require(Custom.rootPath .. "utility.logger")
local ItemHandler = require(Custom.rootPath .. "handler.item")

function Custom:ApplyStat(itemdata, statset)
    local modtype = statset.Stat
    local value = statset.Value
    local calctype = statset.Calculation
    local method = statset.Method
    local Callable = self.handler.item.SetModifier
    if method == "Add" then
        Callable = self.handler.item.AddModifier
    end
    Callable(self.handler.item, itemdata, modtype, calctype, value)
end

function Custom:GiveCustomGear(preset)
    local itemname = preset.Base
    local quality = preset.Quality
    local stats = preset.Stats
    local items = self.handler.item:GiveN(itemname, 1, quality, 0) -- List of item data for all items generated.
    for _, item in ipairs(items) do
        for _, stat in ipairs(stats) do
            self:ApplyStat(item, stat)
        end
    end
end

function Custom:New(parent)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "CustomHack"
    I.logger = Logger:New(parent.writer, I.module)
    I.handler = {
        item = ItemHandler:New(I.logger)
    }

    return I

end

return Custom