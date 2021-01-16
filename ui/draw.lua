local Draw = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Style = require(Draw.rootPath .. "ui.style")
local QuickhacksTab = require(Draw.rootPath .. "ui.tabs.qh")
local PlayerCheatsTab = require(Draw.rootPath .. "ui.tabs.player")
local ItemCheatsTab = require(Draw.rootPath .. "ui.tabs.item")
local WeaponCheatsTab = require(Draw.rootPath .. "ui.tabs.weapon")
local ArmorCheatsTab = require(Draw.rootPath .. "ui.tabs.armor")

function Draw.SetWindowSize()
    ImGui.SetNextWindowPos(Style.Position.App.X, Style.Position.App.Y, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowSize(Style.Size.App.Width, Style.Size.App.Height, ImGuiCond.Appearing)
end

function Draw.ApplyStyle()
    -- Update element styling as below.
    -- + ImGui.PushStyleColor(<ELEM>, <R>, <G>, <B>, <A>)
    -- Useful elements include:
    -- + ImGuiCol.Border
    -- + ImGuiCol.Tab[Hovered,Active]
    -- + ImGuiCol.TitleBg[Active,Collapsed]
    -- + ImGuiCol.Button[Hovered,Active]
end

function Draw.BuildTabs()
    if (ImGui.BeginTabBar("Tabs")) then
        QuickhacksTab.Build()
        PlayerCheatsTab.Build()
        ItemCheatsTab.Build()
        WeaponCheatsTab.Build()
        ArmorCheatsTab.Build()
        ImGui.EndTabBar()
    end
end

function Draw.Build(app)
    if (ImGui.Begin(app.name .. " (" .. app.version .. ") UI")) then
        Draw.BuildTabs()
        ImGui.End()
    end
end

return Draw