-- Quickhack tab interface.
local QuickhacksTab = {}

local Logger = require("utility/logger")
local String = require("utility/string")
local Widget = require("utility/widget")
local Style = require("ui/style")
local State = require("ui/state")
local Preset = require("data/preset")
local OutfitHack = require("quickhacks/outfits")
local InventoryHack = require("quickhacks/inventory")
local CustomHack = require("quickhacks/custom")

function QuickhacksTab:DoUpgrade()
    self.hacks.inventory:UpgradeMe()
end

function QuickhacksTab:DoGiveMods()
    self.hacks.inventory:GiveEndgameMods()
end

function QuickhacksTab:DoGiveAmmo()
    self.hacks.inventory:GiveAmmo()
end

function QuickhacksTab:DoPreset()
    local path = self.state.PresetOptions[self.state.PresetSelect + 1]
    local splits = String.Split(path, ".")
    local preset = Preset.Presets
    for _, split in ipairs(splits) do
        preset = preset[split]
    end
    self.hacks.custom:GiveCustomGear(preset)
end

function QuickhacksTab:BuildDisplay()
    Widget.Spacing()
    Widget.Text("Shortcuts for quick user action:")
    -- Manual text bulleting like this looks better than using ImGui.BulletText(text) in my opinion.
    Widget.Text(" - Select and give yourself custom item presets.")
    Widget.Text(" - One-click buttons for other generic functionality.")
    Widget.Spacing()
end

function QuickhacksTab:BuildButtons()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("2. Generic Actions")
    Widget.Text(" - Helpful stuff that basically every mod does.")
    if (Widget.Button("Refill Ammo", Style.Size.QuickhacksTab.Button.Width, Style.Size.QuickhacksTab.Button.Height)) then
        self:DoGiveAmmo()
    end
    Widget.SameLine(Style.Size.QuickhacksTab.Button.Width + Style.Size.ColSpacer)
    if (Widget.Button("Give Endgame Mods", Style.Size.QuickhacksTab.Button.Width, Style.Size.QuickhacksTab.Button.Height)) then
        self:DoGiveMods()
    end
    Widget.SameLine(2 * (Style.Size.QuickhacksTab.Button.Width) + 1.5 * (Style.Size.ColSpacer))
    if (Widget.Button("Upgrade Items", Style.Size.QuickhacksTab.Button.Width, Style.Size.QuickhacksTab.Button.Height)) then
        self:DoUpgrade()
    end
    Widget.Spacing()
end

function QuickhacksTab:BuildPresets()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("1. Bartmoss Presets")
    Widget.Text(" - Select desired item preset.")
    -- Return value is the index of the chosen element.
    self.state.PresetSelect = Widget.Combo("##Preset", self.state.PresetSelect, self.state.PresetOptions, nil, Style.Size.QuickhacksTab.Text.Width)
    Widget.SameLine(Style.Size.QuickhacksTab.Text.Width + Style.Size.SmallColSpacer)
    if (Widget.Button("Give Item", Style.Size.QuickhacksTab.SmallButton.Width, Style.Size.QuickhacksTab.SmallButton.Height)) then
        self:DoPreset()
    end
    Widget.Spacing()
end

function QuickhacksTab:Build()
    if (Widget.BeginTabItem("Quickhacks")) then
        self:BuildDisplay()
        self:BuildPresets()
        self:BuildButtons()
        Widget.Separator()
        Widget.EndTabItem()
    end
end

function QuickhacksTab:New(parent)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "QuickhackCheats"
    I.logger = Logger:New(parent.writer, I.module)
    I.state = State.QuickhackTab
    I.hacks = {
        outfit = OutfitHack:New(I.logger),
        inventory = InventoryHack:New(I.logger),
        custom = CustomHack:New(I.logger)
    }

    return I

end

return QuickhacksTab