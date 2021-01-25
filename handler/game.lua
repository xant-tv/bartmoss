-- Cheats interacting with the game object directly.
local GameHandler = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logger = require(GameHandler.rootPath .. "utility.logger")

function GameHandler:GetItemRecord(itemid)
    return Game.GetItemRecord(itemid)
end

function GameHandler:GetModSlotIDs(itemtype)
    return Game.GetModSlotIDs(itemtype)
end

function GameHandler:GetAttachmentSlotIDs()
    return Game.GetAttachmentSlotIDs()
end

function GameHandler:CreateStatModifier(modtype, calctype, val)
    return Game.CreateStatModifier(modtype, calctype, val)
end

function GameHandler:AddToInventory(item, n)
    return Game.AddToInventory(item, n)
end

function GameHandler:New(parent)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "GameHandler"
    I.logger = Logger:New(parent.writer, I.module)

    return I

end

return GameHandler