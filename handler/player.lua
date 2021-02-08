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
    local dspd = self.system:PlayerDevelopmentData()
    local unlocked = dspd:IsPerkAreaUnlocked(area)
    return unlocked
end

function PlayerHandler:UnlockPerkArea(area)
    -- Forced unlock of perk areas does not appear to work.
    -- Inbult script modifies the development data attribute directly which seems to not do anything.
    local dspd = self.system:PlayerDevelopmentData()
    dspd:UnlockPerkArea(area)
    return
end

function PlayerHandler:LockPerkArea(area)
    -- Forced lock of perk areas does not appear to work.
    -- Inbult script modifies the development data attribute directly which seems to not do anything.
    local dspd = self.system:IsPerkAreaUnlocked(area)
    dspd:LockPerkArea(area)
    return
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
        self.logger:Error("BuyPerk: Failed! | " .. perk)
    else
        self.logger:Info("BuyPerk: Success! | " .. perk)
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
        self:UnlockPerkArea(area)
    end
    -- Give a perk point.
    self:GivePoints(Glossary.DevelopmentTypes.Primary, 1)
    -- Purchase the perk correctly.
    self:BuyPerk(perk)
    -- Reset lock status if needed.
    if not unlocked then
        self:LockPerkArea(area)
    end
    return
end

function PlayerHandler:IsTraitUnlocked(trait)
    local dspd = self.system:PlayerDevelopmentData()
    return dspd:IsTraitUnlocked(trait)
end

function PlayerHandler:UnlockTrait(trait)
    -- This is currently not functional!
    -- Unfortunately, there is no native scripting function to do this.
    -- Unlocking traits would therefore require setting the property manually but CET does not support this.
    local dspd = self.system:PlayerDevelopmentData()
    -- This returns the index for a "proper" language that starts at zero.
    local traitidx = dspd:GetTraitIndex(trait)
    dspd.traits[traitidx + 1].unlocked = true
end

function PlayerHandler:LockTrait(trait)
    -- As with unlocking, this is also not functional.
    local dspd = self.system:PlayerDevelopmentData()
    local traitidx = dspd:GetTraitIndex(trait)
    dspd.traits[traitidx + 1].unlocked = false
end

function PlayerHandler:IncreaseTrait(trait)
    -- Add level to a trait (the ultimate "infinite" perk in each attribute).
    -- There is unfortunately no way to force this.
    -- Unlike perks, the data system has no inbuilt functions to unlock traits.
    local dspd = self.system:PlayerDevelopmentData()
    local increased = dspd:IncreaseTraitLevel(trait)
    if not increased then
        self.logger:Error("IncreaseTrait: Failed! | " .. trait)
    else
        self.logger:Info("IncreaseTrait: Success! | " .. trait)
    end
    return increased
end

function PlayerHandler:GiveTrait(trait)
    -- Custom method to force "purchase" of a trait. 
    -- Non-functional (see comments in lock/unlock methods).
    local unlocked = self:IsTraitUnlocked(trait)
    if not unlocked then
        self:UnlockTrait(trait)
    end
    -- Give a perk point.
    self:GivePoints(Glossary.DevelopmentTypes.Primary, 1)
    -- Purchase the perk correctly.
    self:IncreaseTrait(trait)
    -- Reset lock status if needed.
    if not unlocked then
        self:LockTrait(trait)
    end
    return
end

function PlayerHandler:GiveXP(attribute, amount)
    Game.AddExp(attribute, amount)
    self.logger:Info("GiveXP: " .. attribute .. " | " .. amount)
end

function PlayerHandler:GivePoints(ptype, amount)
    Game.GiveDevPoints(ptype, 1)
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