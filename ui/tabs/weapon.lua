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

function WeaponCheatsTab.AddModifier(element, modtype, ltype)
    if not Widget.CheckValue(element, ltype) then
        return
    end
    local itemdata = State.WeaponsTab.ItemData
    local calctype = Glossary.Calculation.Additive
    local delta = element.Value - element.Read
    local value = Widget.ParseViewIntoRaw(delta, ltype)
    ItemHandler.AddModifier(itemdata, modtype, calctype, value)
    -- Set "last read" value to match newly-updated value.
    element.Read = element.Value
end

function WeaponCheatsTab.DoModifier(layout)
    local Callable = WeaponCheatsTab.SetModifier
    if layout.Method == "Add" then
        Callable = WeaponCheatsTab.AddModifier
    end
    Callable(State.WeaponsTab[layout.Name], Glossary.Stats[layout.Name], layout.Type)
    if layout.Copy then
        State.WeaponsTab[layout.Copy].Value = State.WeaponsTab[layout.Name].Value
        Callable(State.WeaponsTab[layout.Copy], Glossary.Stats[layout.Copy], layout.Type)
    end
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
                if layout.Type ~= "Skip" then
                    WeaponCheatsTab.SetState(State.WeaponsTab[layout.Name], stats[Glossary.Stats[layout.Name]], layout.Type)
                    if layout.Copy then
                        WeaponCheatsTab.SetState(State.WeaponsTab[layout.Copy], stats[Glossary.Stats[layout.Copy]], layout.Type)
                    end
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
                if layout.Type ~= "Skip" then
                    WeaponCheatsTab.DoModifier(layout)
                end
            end
        end
    end
end

function WeaponCheatsTab.BuildDisplay()
    Widget.Spacing()
    Widget.Text("Modify weapons in your equip slots:")
    Widget.Text(" - Pick and edit properties from power, tech or smart weapons.")
    Widget.Spacing()
end

function WeaponCheatsTab.BuildSelect()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("1. Select Slot")
    Widget.Text(" - Choose slot then load item values.")
    State.WeaponsTab.SlotSelect = Widget.Combo("##WeaponSlot", State.WeaponsTab.SlotSelect, State.WeaponsTab.SlotOptions, nil, Style.Size.WeaponsTab.Text.Width)
    Widget.SameLine(Style.Size.WeaponsTab.Text.Width + Style.Size.SmallColSpacer)
    if (Widget.Button("Load")) then
        WeaponCheatsTab.Inspect()
    end
    Widget.Spacing()
end

function WeaponCheatsTab.BuildModifierFromLayout(elem, maxcol)
    if not elem.Type then
        return
    end
    if elem.Type == "Float" then
        State.WeaponsTab[elem.Name].Value = Widget.InputFloat(
            elem.Display, State.WeaponsTab[elem.Name].Value, 1, 100, "%.4f",
            Style.Size.WeaponsTab.Float[maxcol].Width,
            State.WeaponsTab[elem.Name].Value ~= State.WeaponsTab[elem.Name].Read
        )
    elseif elem.Type == "Boolean" then
        State.WeaponsTab[elem.Name].Value = Widget.Checkbox(
            elem.Display, State.WeaponsTab[elem.Name].Value,
            State.WeaponsTab[elem.Name].Value ~= State.WeaponsTab[elem.Name].Read
        )
    else
        Widget.Dummy(1, 19)
    end
end

function WeaponCheatsTab.BuildBasicModifiers()
    local ncols = 2
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("2. Basic Modifiers")
    Widget.Text(" - Set weapon flags.")
    Widget.Text(" - Edit generic weapon attributes or values.")
    Widget.Columns(ncols)
    for col = 1, ncols do
        Widget.BeginGroup()
        for _, element in ipairs(Layout.WeaponsTab.Basic[col]) do
            WeaponCheatsTab.BuildModifierFromLayout(element, ncols)
        end
        Widget.EndGroup()
        Widget.NextColumn()
    end
    Widget.Columns(1)
    Widget.Spacing()
end

function WeaponCheatsTab.BuildComplexModifiers()
    local ncols = 3
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("3. Advanced Modifiers")
    Widget.Text(" - Mix and match archetypical mods.")
    Widget.Columns(ncols)
    for col = 1, ncols do
        Widget.BeginGroup()
        for _, element in ipairs(Layout.WeaponsTab.Advanced[col]) do
            WeaponCheatsTab.BuildModifierFromLayout(element, ncols)
        end
        Widget.EndGroup()
        Widget.NextColumn()
    end
    Widget.Columns(1)
    Widget.Spacing()
end

function WeaponCheatsTab.BuildDoModifiers()
    Widget.Separator()
    Widget.Spacing()
    if (Widget.Button("Save Modifiers", Style.Size.WeaponsTab.Button.Width, Style.Size.WeaponsTab.Button.Height)) then
        WeaponCheatsTab.DoModifiers()
    end
    Widget.Spacing()
end

function WeaponCheatsTab.Build()
    if (Widget.BeginTabItem("Weapon")) then
        WeaponCheatsTab.BuildDisplay()
        WeaponCheatsTab.BuildSelect()
        WeaponCheatsTab.BuildBasicModifiers()
        WeaponCheatsTab.BuildComplexModifiers()
        WeaponCheatsTab.BuildDoModifiers()
        Widget.Separator()
        Widget.EndTabItem()
    end
end

return WeaponCheatsTab