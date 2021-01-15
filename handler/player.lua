-- Cheats interacting with the player themselves.
local PlayerHandler = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local System = require(PlayerHandler.rootPath .. "game.system")
local Math = require(PlayerHandler.rootPath .. "utility.math")
local Glossary = require(PlayerHandler.rootPath .. "data.glossary")

function PlayerHandler.GetStat(stat)
    local player = System.Player()
    local ss = System.Stats()
    local entity = player:GetEntityID()
    local value = ss:GetStatValue(entity, stat)
    return value
end

function PlayerHandler.GetPower()
    -- This is basically player level but stored as a statistic.
    return Math.SafeFloor(PlayerHandler.GetStat(Glossary.Stats.PowerLevel))
end

function PlayerHandler.GiveXP(attribute, amount)
    print("ADD_EXP=" .. attribute .. "|" .. amount)
    Game.AddExp(attribute, amount)
end

return PlayerHandler