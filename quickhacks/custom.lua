-- Pre-built custom gear quickhacks for easy use.
local CustomHack = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logger = require(CustomHack.rootPath .. "utility.logger")
local ItemHandler = require(CustomHack.rootPath .. "handler.item")

function CustomHack:ApplyStat(itemdata, statset)
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

function CustomHack:ApplyPart(itemdata, partset)
    local partslot = TweakDBID.new(partset.Slot)
    local parts = self.handler.item:GiveN(partset.Part, 1, partset.Quality, 0)
    for _, part in ipairs(parts) do
        self.handler.item:AddPart(itemdata, part, partslot)
    end
end

function CustomHack:GiveCustomGear(preset)
    local itemname = preset.Base
    local quality = preset.Quality
    local stats = preset.Stats
    local parts = preset.Parts
    local items = self.handler.item:GiveN(itemname, 1, quality, 0) -- List of item data for all items generated.
    for _, item in ipairs(items) do
        -- Apply parts first then overwrite modifiers.
        for _, part in ipairs(parts) do
            self:ApplyPart(item, part)
        end
        for _, stat in ipairs(stats) do
            self:ApplyStat(item, stat)
        end
    end
end

function CustomHack:New(parent)

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

return CustomHack