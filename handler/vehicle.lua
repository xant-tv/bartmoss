-- Cheats interacting with the vehicle system.
local VehicleHandler = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logger = require(VehicleHandler.rootPath .. "utility.logger")
local System = require(VehicleHandler.rootPath .. "game.system")
local Glossary = require(VehicleHandler.rootPath .. "data.glossary")

function VehicleHandler:EnableVehicle(vehicle)
    local vs = self.system:Vehicle()
    vs:EnablePlayerVehicle(vehicle, true, false)
end

function VehicleHandler:New(parent)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "VehicleHandler"
    I.logger = Logger:New(parent.writer, I.module)
    I.system = System:New(I.logger)

    return I

end

return VehicleHandler