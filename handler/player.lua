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

function PlayerHandler:GetPerks()
    -- Each perk object has a "type" and "current level" property.
    -- Type matches the string of the perk as recorded in the glossary.
    -- Current level should be self-explanatory.
    local player = self.system:Player()
    local ds = self.system:Development()
    local perks = ds:GetPerks(player)
    return perks
end

function PlayerHandler:GetPerkMaxLevel(perk)
    -- Probably a good idea to use this for sanity-checking.
    local player = self.system:Player()
    local ds = self.system:Development()
    local max = ds:GetPerkMaxLevel(player, perk)
    return max
end

function PlayerHandler:GetPerkAreaOfPerk(perk)
    local dspd = self.system:PlayerDevelopmentData()
    -- Returns the enumeration of the area not just the string value.
    local area = dspd:GetPerkAreaFromPerk(perk)
    return area.value
end

function PlayerHandler:IsPerkAreaUnlocked(area)
    local dspd = self.system:IsPerkAreaUnlocked(area)
    local unlocked = dspd:IsPerkAreaUnlocked(area)
    return unlocked
end

function PlayerHandler:UnlockPerkArea(area)
    -- Need to test if this obeys unlock requirements.
    local dspd = self.system:IsPerkAreaUnlocked(area)
    local result = dspd:UnlockPerkArea(area)
    if not result then
        self.logger:Debug("UnlockPerkArea: Failed!")
    else
        self.logger:Debug("UnlockPerkArea: Success!")
    end
    return result
end

function PlayerHandler:LockPerkArea(area)
    local dspd = self.system:IsPerkAreaUnlocked(area)
    local result = dspd:LockPerkArea(area)
    if not result then
        self.logger:Debug("LockPerkArea: Failed!")
    else
        self.logger:Debug("LockPerkArea: Success!")
    end
    return result
end

function PlayerHandler:HasPerk(perk)
    -- The development system has an inbuilt to do this.
    local player = self.system:Player()
    local ds = self.system:Development()
    return ds:HasPerk(player, perk)
end

function PlayerHandler:BuyPerk(perk)
    -- This is the "proper" way to buy a perk.
    -- Will check if the perk is actually obtainable and deduct perk points appropriately.
    local dspd = self.system:PlayerDevelopmentData()
    local bought = dspd:BuyPerk(perk)
    if not bought then
        self.logger:Debug("BuyPerk: Failed! | " .. perk)
    else
        self.logger:Debug("BuyPerk: Success! | " .. perk)
    end
    return bought
end

function PlayerHandler:RemovePerk(perk)
    -- This is the "proper" way to remove a perk.
    -- Will actually refund the perk points to the player.
    local dspd = self.system:Player()
    local removed = dspd:RemovePerk(perk)
    return removed
end

function PlayerHandler:GivePerk(perk)
    -- Custom method to force "purchase" of a perk.
    -- Best way to do this is probably to add a perk point and force unlock/lock of the perk area.
    -- Get perk area and check current lock status.
    local area = self:GetPerkAreaOfPerk(perk)
    local unlocked = self:IsPerkAreaUnlocked(area)
    if not unlocked then
        local result = self:UnlockPerkArea(area)
        if not result then
            -- Exit if this fails for some reason.
            return
        end
    end
    -- Give a perk point.
    self:GivePoints(Glossary.DevelopmentTypes.Primary, 1)
    -- Purchase the perk correctly.
    self:BuyPerk(perk)
    -- Result lock status of area.
    if not unlocked then
        local result = self:LockPerkArea(area)
        if not result then
            -- Kind of too late to do anything about it, really.
            -- Need to test to make sure this doesn't break any saves.
            return
        end
    end
    return
end

function PlayerHandler:GiveXP(attribute, amount)
    Game.AddExp(attribute, amount)
    self.logger:Debug("GiveXP: " .. attribute .. " | " .. amount)
end

function PlayerHandler:GivePoints(ptype, amount)
    Game.GiveDevPoints(ptype, 1)
    self.logger:Debug("GivePerkPoints: " .. ptype .. " | " .. amount)
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