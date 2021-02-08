-- Cheats interacting with the game object directly.
local GameHandler = {}

local Logger = require("utility/logger")

function GameHandler:GetDisplayText(lockey)
    return Game.GetLocalizedText(lockey)
end

function GameHandler:GetItemRecord(itemid)
    return Game.GetItemRecord(itemid)
end

function GameHandler:GetModSlotIDs(itemtype)
    -- Returns the appropriate generic modifier slots depending on the item type.
    -- These slots can also be found in the glossary.
    return Game.GetModSlotIDs(itemtype)
end

function GameHandler:GetAttachmentSlotIDs()
    -- Returns the scope, rail and muzzle slots.
    -- Also possible to obtain these from the glossary.
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