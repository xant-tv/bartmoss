local QuickhacksTab = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Style = require(QuickhacksTab.rootPath .. "ui.style")
local State = require(QuickhacksTab.rootPath .. "ui.state")
local Quickhacks = {
    Outfits = require(QuickhacksTab.rootPath .. "quickhacks.outfits"),
    Inventory = require(QuickhacksTab.rootPath .. "quickhacks.inventory")
}

function QuickhacksTab.DoUpgrade()
    Quickhacks.Inventory.MakeMeLegendary()
end

function QuickhacksTab.DoGiveMods()
    Quickhacks.Inventory.GiveEndgameMods()
end

function QuickhacksTab.BuildDisplay()
    ImGui.Spacing()
    ImGui.Text("Shortcuts for quick user action:")
    -- Manual text bulleting like this looks better than using ImGui.BulletText(text) in my opinion.
    ImGui.Text(" - One-click level and quality upgrade for equipped items.")
    ImGui.Text(" - More coming soon...")
    ImGui.Spacing()
end

function QuickhacksTab.BuildButtons()
    ImGui.Separator()
    ImGui.Spacing()
    if (ImGui.Button("Make Legendary", Style.Size.QuickhackTab.Button.Width, Style.Size.QuickhackTab.Button.Height)) then
        QuickhacksTab.DoUpgrade()
    end
    ImGui.SameLine(Style.Size.QuickhackTab.Button.Width + Style.Size.ColSpacer)
    if (ImGui.Button("Give Endgame Mods", Style.Size.QuickhackTab.Button.Width, Style.Size.QuickhackTab.Button.Height)) then
        QuickhacksTab.DoGiveMods()
    end
    ImGui.Spacing()
end

function QuickhacksTab.Build()
    if (ImGui.BeginTabItem("Quickhacks")) then
        QuickhacksTab.BuildDisplay()
        QuickhacksTab.BuildButtons()
        ImGui.Separator()
        ImGui.EndTabItem()
    end
end

return QuickhacksTab