local ArmorCheatsTab = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Style = require(ArmorCheatsTab.rootPath .. "ui.style")
local State = require(ArmorCheatsTab.rootPath .. "ui.state")

function ArmorCheatsTab.DoModifiers()
    print('ARMOR_SET_MOD')
end

function ArmorCheatsTab.BuildDisplay()
    ImGui.Spacing()
    ImGui.Text("Modify armor in your equip slots:")
    ImGui.Text(" - Pick and edit properties.")
    ImGui.Spacing()
end

function ArmorCheatsTab.BuildSelect()
    ImGui.Separator()
    ImGui.Spacing()
    ImGui.Text("1. Select Slot")
end

function ArmorCheatsTab.BuildEditModifiers()
   -- Split this into three columns.
   ImGui.Separator()
   ImGui.Spacing()
   ImGui.Text("Coming soon...")
end

function ArmorCheatsTab.BuildDoModifiers()
    ImGui.Separator()
    ImGui.Spacing()
    if (ImGui.Button("Save Modifiers", Style.Size.ArmorTab.Button.Width, Style.Size.ArmorTab.Button.Height)) then
        ArmorCheatsTab.DoModifiers()
    end
    ImGui.Spacing()
end


function ArmorCheatsTab.Build()
    if (ImGui.BeginTabItem("Clothing")) then
        ArmorCheatsTab.BuildDisplay()
        ArmorCheatsTab.BuildSelect()
        ArmorCheatsTab.BuildEditModifiers()
        ArmorCheatsTab.BuildDoModifiers()
        ImGui.Separator()
        ImGui.EndTabItem()
    end
end

return ArmorCheatsTab