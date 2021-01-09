-- Interface to access the entire Bartmoss suite.
Bartmoss = {
    name = "Bartmoss",
    version = "0.5.0",
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Global = require(Bartmoss.rootPath .. "game.global")

local function OverloadDraw()
    local Config = {
        name = Bartmoss.name,
        version = Bartmoss.version
    }
    Interface.UI.Draw(Config)
end

function Bartmoss:new()
    Interface = {}

    setmetatable(Interface, self)
    self.__index = self

    -- Load modules into memory.
    Interface.System = require(Bartmoss.rootPath .. "game.system")
    Interface.Utility = require(Bartmoss.rootPath .. "utility.utility")
    Interface.Glossary = require(Bartmoss.rootPath .. "data.glossary")
    Interface.Cheats = {
        Game = require(Bartmoss.rootPath .. "cheats.gamehandler"),
        Player = require(Bartmoss.rootPath .. "cheats.playerhandler"),
        Items = require(Bartmoss.rootPath .. "cheats.itemhandler"),
        Equipment = require(Bartmoss.rootPath .. "cheats.equipmenthandler")
    }
    Interface.Quickhacks = {
        Outfits = require(Bartmoss.rootPath .. "quickhacks.outfits"),
        Inventory = require(Bartmoss.rootPath .. "quickhacks.inventory")
    }
    Interface.UI = require(Bartmoss.rootPath .. "ui.ui")

    -- Run any initialisation functions.
    Global.OnLoad()

    -- Attach user interface events.
    registerForEvent("onInit", Interface.UI.Init)
    registerForEvent("onUpdate", Interface.UI.Update)
    registerForEvent("onConsoleOpen", Interface.UI.ConsoleOpen)
    registerForEvent("onConsoleClose", Interface.UI.ConsoleClose)
    registerForEvent("onDraw", OverloadDraw)

    print(Bartmoss.name .. " (" .. Bartmoss.version .. ") successfully loaded! Press [F2] to access the UI.")

    return Interface
end

return Bartmoss:new()