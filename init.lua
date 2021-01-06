-- Interface to access the entire Bartmoss suite.
Bartmoss = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function Bartmoss:new()
    Interface = {}

    setmetatable(Interface, self)
    self.__index = self

    -- Load modules into memory.
    Interface.System = require(Bartmoss.rootPath .. "game.system")
    Interface.Quickhacks = require(Bartmoss.rootPath .. "quickhacks")
    Interface.Glossary = require(Bartmoss.rootPath .. "data.glossary")
    Interface.Utility = {
        Logical = require(Bartmoss.rootPath .. "utility.logical")
    }
    Interface.Cheats = {
        Items = require(Bartmoss.rootPath .. "cheats.itemhandler"),
        Equipment = require(Bartmoss.rootPath .. "cheats.equipmenthandler")
    }

    return Interface
end

return Bartmoss:new()