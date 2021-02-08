-- Cheats interacting with the vehicle system.
local VehicleHandler = {}

local Logger = require("utility/logger")
local System = require("game/system")
local Glossary = require("data/glossary")

function VehicleHandler:EnableVehicle(vehicle)
    local vs = self.system:Vehicle()
    vs:EnablePlayerVehicle(vehicle, true, false)
end

function VehicleHandler:New()

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "VehicleHandler"
    I.logger = Logger:New(I.module)
    I.system = System:New()

    return I

end

return VehicleHandler