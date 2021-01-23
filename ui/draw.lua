local Draw = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Style = require(Draw.rootPath .. "ui.style")
local Widget = require(Draw.rootPath .. "utility.widget")
local QuickhacksTab = require(Draw.rootPath .. "ui.tabs.qh")
local PlayerCheatsTab = require(Draw.rootPath .. "ui.tabs.player")
local ItemCheatsTab = require(Draw.rootPath .. "ui.tabs.item")
local WeaponCheatsTab = require(Draw.rootPath .. "ui.tabs.weapon")
local ArmorCheatsTab = require(Draw.rootPath .. "ui.tabs.armor")

function Draw.SetWindowSize()
    Widget.SetNextWindowPos(Style.Position.App.X, Style.Position.App.Y)
    Widget.SetNextWindowSize(Style.Size.App.Width, Style.Size.App.Height)
end

function Draw.BuildTabs()
    if (Widget.BeginTabBar("Tabs")) then
        QuickhacksTab.Build()
        PlayerCheatsTab.Build()
        ItemCheatsTab.Build()
        WeaponCheatsTab.Build()
        ArmorCheatsTab.Build()
        Widget.EndTabBar()
    end
end

function Draw.Build(app)
    -- Avoid changing application name because this is used as the key to store layout.
    if (Widget.Begin(app.name)) then
        Draw.BuildTabs()
        Widget.End()
    end
end

return Draw