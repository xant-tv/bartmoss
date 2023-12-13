-- Cheats interacting with the player themselves.
local PlayerHandler = {}

local Logger = require("utility/logger")
local Math = require("utility/math")
local System = require("game/system")
local Glossary = require("data/glossary")

function PlayerHandler:GetStat(stat)
    local player = self.system:Player()
    local ss = self.system:Stats()
    local entity = player:GetEntityID()
    local value = ss:GetStatValue(entity, stat)
    self.logger:Info("GetStat: " .. stat .. " = " .. value)
    return value
end

function PlayerHandler:GiveXP(attribute, amount)
    local dspd = self.system:PlayerDevelopmentData()
    dspd:AddExperience(amount, attribute, telemetryLevelGainReason.Gameplay)
    self.logger:Info("GiveXP: " .. attribute .. " | " .. amount)
end

function PlayerHandler:GivePoints(ptype, amount)
    local dspd = self.system:PlayerDevelopmentData()
    dspd:AddDevelopmentPoints(amount, ptype)
    self.logger:Info("GivePoints: " .. ptype .. " | " .. amount)
end

function PlayerHandler:New()

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "PlayerHandler"
    I.logger = Logger:New(I.module)
    I.system = System:New()

    return I

end

return PlayerHandler