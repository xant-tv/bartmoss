-- Direct access to system (game) layer.
local System = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logger = require(System.rootPath .. "utility.logger")

function System:Player()
    return Game.GetPlayer()
end

function System:Transaction()
    return Game.GetTransactionSystem()
end

function System:Stats()
    return Game.GetStatsSystem()
end

function System:Targeting()
    return Game.GetTargetingSystem()
end


function System:Vehicle()
    return Game.GetVehicleSystem()
end

function System:ScriptableSystemsContainer()
    return Game.GetScriptableSystemsContainer()
end

function System:Crafting()
    local ssc = self:ScriptableSystemsContainer()
    local cs = ssc:Get(CName.new("CraftingSystem"))
    cs["SetItemLevel"] = cs["SetItemLevel;gameItemData"]
    return cs
end

function System:Equipment()
    local ssc = self:ScriptableSystemsContainer()
    local es = ssc:Get(CName.new("EquipmentSystem"))
    return es
end

function System:PlayerEquipmentData()
    local player = self:Player()
    local es = self:Equipment()
    local espd = es:GetPlayerData(player)
    espd["GetItemInEquipSlot"] = espd["GetItemInEquipSlot;gamedataEquipmentAreaInt32"]
    return espd
end

function System:Development()
    local ssc = self:ScriptableSystemsContainer()
    local ds = ssc:Get(CName.new("PlayerDevelopmentSystem"))
    return ds
end

function System:PlayerDevelopmentData()
    local player = self:Player()
    local ds = self:Development()
    local dspd = ds:GetDevelopmentData(player)
    return dspd
end

function System:InventoryManager()
    local espd = self:PlayerEquipmentData()
    local imgr = espd:GetInventoryManager()
    return imgr
end

function System:New(parent)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "System"
    I.logger = Logger:New(parent.writer, I.module)

    return I

end

return System