local Draw = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logger = require(Draw.rootPath .. "utility.logger")
local Widget = require(Draw.rootPath .. "utility.widget")
local Style = require(Draw.rootPath .. "ui.style")
local QuickhacksTab = require(Draw.rootPath .. "ui.tabs.qh")
local PlayerCheatsTab = require(Draw.rootPath .. "ui.tabs.player")
local ItemCheatsTab = require(Draw.rootPath .. "ui.tabs.item")
local WeaponCheatsTab = require(Draw.rootPath .. "ui.tabs.weapon")
local ArmorCheatsTab = require(Draw.rootPath .. "ui.tabs.armor")

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

function Draw:New(parent)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "DrawTool"
    I.logger = Logger:New(parent.writer, I.module)
    I.tab = {
        quickhacks = QuickhacksTab:New(I.logger),
        player = PlayerCheatsTab:New(I.logger),
        item = ItemCheatsTab:New(I.logger),
        weapon = WeaponCheatsTab:New(I.logger),
        armor = ArmorCheatsTab:New(I.logger)
    }

    return I

end

return Draw