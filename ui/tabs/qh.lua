local QuickhacksTab = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Style = require(QuickhacksTab.rootPath .. "ui.style")
local State = require(QuickhacksTab.rootPath .. "ui.state")
local String = require(QuickhacksTab.rootPath .. "utility.string")
local Widget = require(QuickhacksTab.rootPath .. "utility.widget")
local Preset = require(QuickhacksTab.rootPath .. "data.preset")
local Quickhacks = {
    Outfits = require(QuickhacksTab.rootPath .. "quickhacks.outfits"),
    Inventory = require(QuickhacksTab.rootPath .. "quickhacks.inventory"),
    Custom = require(QuickhacksTab.rootPath .. "quickhacks.custom")
}

function QuickhacksTab.DoUpgrade()
    Quickhacks.Inventory.MakeMeLegendary()
end

function QuickhacksTab.DoGiveMods()
    Quickhacks.Inventory.GiveEndgameMods()
end

function QuickhacksTab.DoGiveAmmo()
    Quickhacks.Inventory.GiveAmmo()
end

function QuickhacksTab.DoPreset()
    local path = State.QuickhackTab.PresetOptions[State.QuickhackTab.PresetSelect + 1]
    local splits = String.Split(path, ".")
    local preset = Preset.Presets
    for _, split in ipairs(splits) do
        preset = preset[split]
    end
    Quickhacks.Custom.GiveCustomGear(preset)
end

function QuickhacksTab.BuildDisplay()
    Widget.Spacing()
    Widget.Text("Shortcuts for quick user action:")
    -- Manual text bulleting like this looks better than using ImGui.BulletText(text) in my opinion.
    Widget.Text(" - Select and give yourself custom item presets.")
    Widget.Text(" - One-click buttons for other generic functionality.")
    Widget.Spacing()
end

function QuickhacksTab.BuildButtons()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("2. Generic Actions")
    Widget.Text(" - Helpful stuff that basically every mod does.")
    if (Widget.Button("Refill Ammo", Style.Size.QuickhacksTab.Button.Width, Style.Size.QuickhacksTab.Button.Height)) then
        QuickhacksTab.DoGiveAmmo()
    end
    Widget.SameLine(Style.Size.QuickhacksTab.Button.Width + Style.Size.ColSpacer)
    if (Widget.Button("Give Endgame Mods", Style.Size.QuickhacksTab.Button.Width, Style.Size.QuickhacksTab.Button.Height)) then
        QuickhacksTab.DoGiveMods()
    end
    Widget.SameLine(2 * (Style.Size.QuickhacksTab.Button.Width) + 1.5 * (Style.Size.ColSpacer))
    if (Widget.Button("Make Legendary", Style.Size.QuickhacksTab.Button.Width, Style.Size.QuickhacksTab.Button.Height)) then
        QuickhacksTab.DoUpgrade()
    end
    Widget.Spacing()
end

function QuickhacksTab.BuildPresets()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("1. Bartmoss Presets")
    Widget.Text(" - Select desired item preset.")
    -- Return value is the index of the chosen element.
    State.QuickhackTab.PresetSelect = Widget.Combo("##Preset", State.QuickhackTab.PresetSelect, State.QuickhackTab.PresetOptions, nil, Style.Size.QuickhacksTab.Text.Width)
    Widget.SameLine(Style.Size.QuickhacksTab.Text.Width + Style.Size.SmallColSpacer)
    if (Widget.Button("Give Item", Style.Size.QuickhacksTab.SmallButton.Width, Style.Size.QuickhacksTab.SmallButton.Height)) then
        QuickhacksTab.DoPreset()
    end
    Widget.Spacing()
end

function QuickhacksTab.Build()
    if (Widget.BeginTabItem("Quickhacks")) then
        QuickhacksTab.BuildDisplay()
        QuickhacksTab.BuildPresets()
        QuickhacksTab.BuildButtons()
        Widget.Separator()
        Widget.EndTabItem()
    end
end

return QuickhacksTab