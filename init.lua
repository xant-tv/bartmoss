Bartmoss = {
    description = "Interface to access the entire Bartmoss suite.",
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function Bartmoss:new()
    Interface = {}

    setmetatable(Interface, self)
    self.__index = self

    -- Load modules into memory.
    Interface.System = require(Bartmoss.rootPath .. "game.system")
    Interface.Utility = {
        Logical = require(Bartmoss.rootPath .. "utility.logical")
    }
    Interface.Glossary = require(Bartmoss.rootPath .. "data.glossary")
    Interface.Cheats = {
        Items = require(Bartmoss.rootPath .. "cheats.itemhandler"),
        Equipment = require(Bartmoss.rootPath .. "cheats.equipmenthandler")
    }
    Interface.Quickhacks = require(Bartmoss.rootPath .. "quickhacks")

    return Interface
end

return Bartmoss:new()