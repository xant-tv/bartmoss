-- Interface to access the entire Bartmoss suite.
local Bartmoss = {
    name = "Bartmoss Suite",
    version = "0.8.0",
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

for k, _ in pairs(package.loaded) do
    if string.match(k, Bartmoss.rootPath .. ".*") then
        package.loaded[k] = nil
    end
end

local Logger = require(Bartmoss.rootPath .. "utility.logger")
local Global = require(Bartmoss.rootPath .. "game.global")
local System = require(Bartmoss.rootPath .. "game.system")
local GameHandler = require(Bartmoss.rootPath .. "handler.game")
local PlayerHandler = require(Bartmoss.rootPath .. "handler.player")
local ItemHandler = require(Bartmoss.rootPath .. "handler.item")
local EquipmentHandler = require(Bartmoss.rootPath .. "handler.equipment")
local Outfits = require(Bartmoss.rootPath .. "quickhacks.outfits")
local Inventory = require(Bartmoss.rootPath .. "quickhacks.inventory")
local Custom = require(Bartmoss.rootPath .. "quickhacks.custom")
local UI = require(Bartmoss.rootPath .. "ui.ui")

function Bartmoss:New()

    -- Creating metatable index.
    local I = {}
    setmetatable(I, self)
    self.__index = self

    -- Inherit configuration.
    I.app = {
        name = self.name,
        version = self.version
    }

    -- Load modules into memory.
    I.Logger = Logger:New(spdlog)
    I.System = System:New(I.Logger)
    I.Utility = require(self.rootPath .. "utility.utility")
    I.Glossary = require(self.rootPath .. "data.glossary")
    I.Handler = {
        Game = GameHandler:New(I.Logger),
        Player = PlayerHandler:New(I.Logger),
        Items = ItemHandler:New(I.Logger),
        Equipment = EquipmentHandler:New(I.Logger)
    }
    I.Quickhacks = {
        Outfits = Outfits:New(I.Logger),
        Inventory = Inventory:New(I.Logger),
        Custom = Custom:New(I.Logger)
    }
    I.UI = UI:New(I.app, I.Logger)

    -- Run any initialisation functions.
    Global.OnLoad()

    -- Local overload functions.
    local function OverloadInit()
        I.UI:Init()
    end

    local function OverloadUpdate(delta)
        I.UI:Update(delta)
    end

    local function OverloadOpen()
        I.UI:Open()
    end

    local function OverloadClose()
        I.UI:Close()
    end

    local function OverloadDraw()
        I.UI:Draw()
    end

    local function OverloadShutdown()
        I.UI:Shutdown()
    end

    -- Attach user ifc events.
    registerForEvent("onInit", OverloadInit)
    registerForEvent("onUpdate", OverloadUpdate)
    registerForEvent("onOverlayOpen", OverloadOpen)
    registerForEvent("onOverlayClose", OverloadClose)
    registerForEvent("onDraw", OverloadDraw)
    registerForEvent("onShutdown", OverloadShutdown)

    return I
end

return Bartmoss:New()