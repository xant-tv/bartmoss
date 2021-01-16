local WeaponCheatsTab = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Style = require(WeaponCheatsTab.rootPath .. "ui.style")
local Layout = require(WeaponCheatsTab.rootPath .. "ui.layout")
local State = require(WeaponCheatsTab.rootPath .. "ui.state")
local Widget = require(WeaponCheatsTab.rootPath .. "utility.widget")
local Glossary = require(WeaponCheatsTab.rootPath .. "data.glossary")
local ItemHandler = require(WeaponCheatsTab.rootPath .. "handler.item")
local EquipmentHandler = require(WeaponCheatsTab.rootPath .. "handler.equipment")

function WeaponCheatsTab.SetState(element, value, ltype)
    local set = value
    if not set then
        element.Value = element.Default
    else
        element.Value = Widget.ParseRawIntoView(set, ltype)
    end
    -- Set current value and "last read" property.
    element.Read = element.Value
end

function WeaponCheatsTab.SetModifier(element, modtype, ltype)
    if not Widget.CheckValue(element, ltype) then
        return
    end
    local itemdata = State.WeaponsTab.ItemData
    local calctype = Glossary.Calculation.Additive
    local value = Widget.ParseViewIntoRaw(element.Value, ltype)
    ItemHandler.SetModifier(itemdata, modtype, calctype, value)
    -- Set "last read" value to match newly-updated value.
    element.Read = element.Value
end

function WeaponCheatsTab.Inspect()
    local slot = "Weapon"
    local id = State.WeaponsTab.SlotSelect
    local stats = {}
    print("WEAPON_INSPECT=" .. slot .. id + 1)
    State.WeaponsTab.ItemData = EquipmentHandler.GetItemDataInSlot(slot, id)
    if State.WeaponsTab.ItemData then
        stats = ItemHandler.Inspect(State.WeaponsTab.ItemData)
    end
    for _, section in ipairs(Layout.WeaponsTab.Sections) do
        for _, column in ipairs(section) do
            for _, layout in ipairs(column) do
                -- Disgusting nested for loops.
                WeaponCheatsTab.SetState(State.WeaponsTab[layout.Name], stats[Glossary.Stats[layout.Name]], layout.Type)
                if layout.Copy then
                    WeaponCheatsTab.SetState(State.WeaponsTab[layout.Copy], stats[Glossary.Stats[layout.Copy]], layout.Type)
                end
            end
        end
    end
end

function WeaponCheatsTab.DoModifiers()
    if not State.WeaponsTab.ItemData then
        return
    end
    for _, section in ipairs(Layout.WeaponsTab.Sections) do
        for _, column in ipairs(section) do
            for _, layout in ipairs(column) do
                WeaponCheatsTab.SetModifier(State.WeaponsTab[layout.Name], Glossary.Stats[layout.Name], layout.Type)
                if layout.Copy then
                    State.WeaponsTab[layout.Copy].Value = State.WeaponsTab[layout.Name].Value
                    WeaponCheatsTab.SetModifier(State.WeaponsTab[layout.Copy], Glossary.Stats[layout.Copy], layout.Type)
                end
            end
        end
    end
end

function WeaponCheatsTab.BuildDisplay()
    ImGui.Spacing()
    ImGui.Text("Modify weapons in your equip slots:")
    ImGui.Text(" - Pick and edit properties from power, tech or smart weapons.")
    ImGui.Spacing()
end

function WeaponCheatsTab.BuildSelect()
    ImGui.Separator()
    ImGui.Spacing()
    ImGui.Text("Select Slot")
    ImGui.Text(" - Choose slot then load item values.")
    ImGui.PushItemWidth(Style.Size.WeaponsTab.Text.Width)
    State.WeaponsTab.SlotSelect = ImGui.Combo("##WeaponSlot", State.WeaponsTab.SlotSelect, State.WeaponsTab.SlotOptions, #State.WeaponsTab.SlotOptions)
    ImGui.SameLine(Style.Size.WeaponsTab.Text.Width + Style.Size.SmallColSpacer)
    if (ImGui.Button("Load")) then
        WeaponCheatsTab.Inspect()
    end
    ImGui.Spacing()
end

function WeaponCheatsTab.BuildModifierFromLayout(elem, maxcol)
    if not elem.Type then
        return
    end
    if elem.Type == "Float" then
        ImGui.PushItemWidth(Style.Size.WeaponsTab.Float[maxcol].Width)
        State.WeaponsTab[elem.Name].Value = ImGui.InputFloat(elem.Display, State.WeaponsTab[elem.Name].Value, 1, 100, "%.4f", Widget.GetInputFlags())
    elseif elem.Type == "Boolean" then
        State.WeaponsTab[elem.Name].Value = ImGui.Checkbox(elem.Display, State.WeaponsTab[elem.Name].Value)
    end
end

function WeaponCheatsTab.BuildBasicModifiers()
    local ncols = 2
    ImGui.Separator()
    ImGui.Spacing()
    ImGui.Text("Basic Modifiers")
    ImGui.Text(" - Set weapon flags.")
    ImGui.Text(" - Edit generic weapon attributes or values.")
    ImGui.Columns(ncols)
    for col = 1, ncols do
        ImGui.BeginGroup()
        for _, element in ipairs(Layout.WeaponsTab.Basic[col]) do
            WeaponCheatsTab.BuildModifierFromLayout(element, ncols)
        end
        ImGui.EndGroup()
        ImGui.NextColumn()
    end
    ImGui.Columns(1)
    ImGui.Spacing()
end

function WeaponCheatsTab.BuildComplexModifiers()
    local ncols = 3
    ImGui.Separator()
    ImGui.Spacing()
    ImGui.Text("Advanced Modifiers")
    ImGui.Text(" - Mix and match archetypical mods.")
    ImGui.Columns(ncols)
    for col = 1, ncols do
        ImGui.BeginGroup()
        for _, element in ipairs(Layout.WeaponsTab.Advanced[col]) do
            WeaponCheatsTab.BuildModifierFromLayout(element, ncols)
        end
        ImGui.EndGroup()
        ImGui.NextColumn()
    end
    ImGui.Columns(1)
    ImGui.Spacing()
end

function WeaponCheatsTab.BuildDoModifiers()
    ImGui.Separator()
    ImGui.Spacing()
    if (ImGui.Button("Save Modifiers", Style.Size.WeaponsTab.Button.Width, Style.Size.WeaponsTab.Button.Height)) then
        WeaponCheatsTab.DoModifiers()
    end
    ImGui.Spacing()
end

function WeaponCheatsTab.Build()
    if (ImGui.BeginTabItem("Weapon")) then
        WeaponCheatsTab.BuildDisplay()
        WeaponCheatsTab.BuildSelect()
        WeaponCheatsTab.BuildBasicModifiers()
        WeaponCheatsTab.BuildComplexModifiers()
        WeaponCheatsTab.BuildDoModifiers()
        ImGui.Separator()
        ImGui.EndTabItem()
    end
end

return WeaponCheatsTab