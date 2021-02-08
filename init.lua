-- Interface to access the entire Bartmoss suite.
local Bartmoss = {
    app = {
        name = "Bartmoss Suite",
        version = "0.8.4"
    }
}

local Logger = require("utility/logger")
local Global = require("game/global")
local System = require("game/system")
local GameHandler = require("handler/game")
local PlayerHandler = require("handler/player")
local ItemHandler = require("handler/item")
local EquipmentHandler = require("handler/equipment")
local OutfitHack = require("quickhacks/outfits")
local InventoryHack = require("quickhacks/inventory")
local CustomHack = require("quickhacks/custom")
local InspectTool = require("tools/inspect")
local UI = require("ui/ui")

function Bartmoss:New()

    -- Do inheritance things.
    local I = {}
    setmetatable(I, self)
    self.__index = self

    -- Load modules into memory.
    I.Logger = Logger:New(spdlog)
    I.System = System:New(I.Logger)
    I.Utility = require("utility/utility")
    I.Glossary = require("data/glossary")
    I.Handler = {
        Game = GameHandler:New(I.Logger),
        Player = PlayerHandler:New(I.Logger),
        Items = ItemHandler:New(I.Logger),
        Equipment = EquipmentHandler:New(I.Logger)
    }
    I.Quickhacks = {
        Outfit = OutfitHack:New(I.Logger),
        Inventory = InventoryHack:New(I.Logger),
        Custom = CustomHack:New(I.Logger)
    }
    I.Tools = {
        Inspect = InspectTool:New(I.Logger)
    }
    I.UI = UI:New(self.app, I.Logger)

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