-- Interface to access the entire Bartmoss suite.
Bartmoss = {
    name = "Bartmoss",
    version = "0.5.2",
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Global = require(Bartmoss.rootPath .. "game.global")

local function AppConfig()
    local app = {
        name = Bartmoss.name,
        version = Bartmoss.version
    }
    return app
end

local function OverloadInit()
    local app = AppConfig()
    Interface.UI.Init(app)
end

local function OverloadDraw()
    local app = AppConfig()
    Interface.UI.Draw(app)
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
    registerForEvent("onInit", OverloadInit)
    registerForEvent("onUpdate", Interface.UI.Update)
    registerForEvent("onConsoleOpen", Interface.UI.ConsoleOpen)
    registerForEvent("onConsoleClose", Interface.UI.ConsoleClose)
    registerForEvent("onDraw", OverloadDraw)

    return Interface
end

return Bartmoss:new()