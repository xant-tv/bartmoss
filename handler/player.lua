-- Cheats interacting with the player themselves.
local PlayerHandler = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logger = require(PlayerHandler.rootPath .. "utility.logger")
local Math = require(PlayerHandler.rootPath .. "utility.math")
local System = require(PlayerHandler.rootPath .. "game.system")
local Glossary = require(PlayerHandler.rootPath .. "data.glossary")

function PlayerHandler:GetStat(stat)
    local player = self.system:Player()
    local ss = self.system:Stats()
    local entity = player:GetEntityID()
    local value = ss:GetStatValue(entity, stat)
    self.logger:Debug("GetStat: " .. stat .. " = " .. value)
    return value
end

function PlayerHandler:GetPower()
    -- This is basically player level but stored as a statistic.
    return Math.SafeFloor(self:GetStat(Glossary.Stats.PowerLevel))
end

function PlayerHandler:GiveXP(attribute, amount)
    Game.AddExp(attribute, amount)
    self.logger:Debug("GiveXP: " .. attribute .. " | " .. amount)
end

function PlayerHandler:New(parent)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "PlayerHandler"
    I.logger = Logger:New(parent.writer, I.module)
    I.system = System:New(I.logger)

    return I

end

return PlayerHandler