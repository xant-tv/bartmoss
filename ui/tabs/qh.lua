local QuickhacksTab = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Style = require(QuickhacksTab.rootPath .. "ui.style")
local State = require(QuickhacksTab.rootPath .. "ui.state")
local String = require(QuickhacksTab.rootPath .. "utility.string")
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
    ImGui.Spacing()
    ImGui.Text("Shortcuts for quick user action:")
    -- Manual text bulleting like this looks better than using ImGui.BulletText(text) in my opinion.
    ImGui.Text(" - Select and give yourself custom mod-creator item presets.")
    ImGui.Text(" - One-click buttons for other generic functionality.")
    ImGui.Spacing()
end

function QuickhacksTab.BuildButtons()
    ImGui.Separator()
    ImGui.Spacing()
    ImGui.Text("2. Generic Actions")
    ImGui.Text(" - Helpful stuff that basically every mod does.")
    if (ImGui.Button("Make Legendary", Style.Size.QuickhacksTab.Button.Width, Style.Size.QuickhacksTab.Button.Height)) then
        QuickhacksTab.DoUpgrade()
    end
    ImGui.SameLine(Style.Size.QuickhacksTab.Button.Width + Style.Size.ColSpacer)
    if (ImGui.Button("Give Endgame Mods", Style.Size.QuickhacksTab.Button.Width, Style.Size.QuickhacksTab.Button.Height)) then
        QuickhacksTab.DoGiveMods()
    end
    ImGui.Spacing()
end

function QuickhacksTab.BuildPresets()
    ImGui.Separator()
    ImGui.Spacing()
    ImGui.Text("1. Bartmoss Presets")
    ImGui.Text(" - Select desired item preset.")
    ImGui.PushItemWidth(Style.Size.QuickhacksTab.Text.Width)
    -- Return value is the index of the chosen element.
    State.QuickhackTab.PresetSelect = ImGui.Combo("##Preset", State.QuickhackTab.PresetSelect, State.QuickhackTab.PresetOptions, #State.QuickhackTab.PresetOptions)
    ImGui.SameLine(Style.Size.QuickhacksTab.Text.Width + Style.Size.SmallColSpacer)
    if (ImGui.Button("Give Item", Style.Size.QuickhacksTab.SmallButton.Width, Style.Size.QuickhacksTab.SmallButton.Height)) then
        QuickhacksTab.DoPreset()
    end
    ImGui.Spacing()
end

function QuickhacksTab.Build()
    if (ImGui.BeginTabItem("Quickhacks")) then
        QuickhacksTab.BuildDisplay()
        QuickhacksTab.BuildPresets()
        QuickhacksTab.BuildButtons()
        ImGui.Separator()
        ImGui.EndTabItem()
    end
end

return QuickhacksTab