-- Cheats interacting with the vehicle system.
local VehicleHandler = {}

local Logger = require("utility/logger")
local System = require("game/system")
local Glossary = require("data/glossary")

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