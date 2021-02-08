-- Draw tool object to hold tabs.
local Draw = {}

local Logger = require("utility/logger")
local Widget = require("utility/widget")
local Style = require("ui/style")
local QuickhacksTab = require("ui/tabs/qh")
local PlayerCheatsTab = require("ui/tabs/player")
local ItemCheatsTab = require("ui/tabs/item")
local WeaponCheatsTab = require("ui/tabs/weapon")
local ArmorCheatsTab = require("ui/tabs/armor")

function Draw:SetWindowSize()
    Widget.SetNextWindowPos(Style.Position.App.X, Style.Position.App.Y)
    Widget.SetNextWindowSize(Style.Size.App.Width, Style.Size.App.Height)
end

function Draw:BuildTabs()
    if (Widget.BeginTabBar("Tabs")) then
        self.tab.quickhacks:Build()
        self.tab.player:Build()
        self.tab.item:Build()
        self.tab.weapon:Build()
        self.tab.armor:Build()
        Widget.EndTabBar()
    end
end

function Draw:Build(app)
    -- Avoid changing application name because this is used as the key to store layout.
    if (Widget.Begin(app.name)) then
        self:BuildTabs()
        Widget.End()
    end
end

function Draw:New()

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "DrawTool"
    I.logger = Logger:New(I.module)
    I.tab = {
        quickhacks = QuickhacksTab:New(),
        player = PlayerCheatsTab:New(),
        item = ItemCheatsTab:New(),
        weapon = WeaponCheatsTab:New(),
        armor = ArmorCheatsTab:New()
    }

    return I

end

return Draw