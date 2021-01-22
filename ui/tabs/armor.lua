local ArmorCheatsTab = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Style = require(ArmorCheatsTab.rootPath .. "ui.style")
local State = require(ArmorCheatsTab.rootPath .. "ui.state")
local Widget = require(ArmorCheatsTab.rootPath .. "utility.widget")
local Glossary = require(ArmorCheatsTab.rootPath .. "data.glossary")
local ItemHandler = require(ArmorCheatsTab.rootPath .. "handler.item")
local EquipmentHandler = require(ArmorCheatsTab.rootPath .. "handler.equipment")

function ArmorCheatsTab.SetState(element, value, ltype)
    local set = value
    print(set)
    if not set then
        element.Value = element.Default
    else
        element.Value = Widget.ParseRawIntoView(set, ltype)
    end
    -- Set current value and "last read" property.
    element.Read = element.Value
end

function ArmorCheatsTab.SetModifier(element, modtype, ltype)
    if not Widget.CheckValue(element, ltype) then
        return
    end
    local itemdata = State.ArmorTab.ItemData
    local calctype = Glossary.Calculation.Additive
    local value = Widget.ParseViewIntoRaw(element.Value, ltype)
    ItemHandler.SetModifier(itemdata, modtype, calctype, value)
    -- Set "last read" value to match newly-updated value.
    element.Read = element.Value
end

function ArmorCheatsTab.AddModifier(element, modtype, ltype)
    if not Widget.CheckValue(element, ltype) then
        return
    end
    local itemdata = State.ArmorTab.ItemData
    local calctype = Glossary.Calculation.Additive
    local delta = element.Value - element.Read
    local value = Widget.ParseViewIntoRaw(delta, ltype)
    ItemHandler.AddModifier(itemdata, modtype, calctype, value)
    -- Set "last read" value to match newly-updated value.
    element.Read = element.Value
end

function ArmorCheatsTab.Inspect()
    local slotname = Glossary.ClothingSlots[State.ArmorTab.SlotSelect + 1]
    local slot = Glossary.ClothingSlotsInv[slotname]
    local id = 0
    local stats = {}
    print("ARMOR_INSPECT=" .. slot)
    State.ArmorTab.ItemData = EquipmentHandler.GetItemDataInSlot(slot, id)
    if State.ArmorTab.ItemData then
        stats = ItemHandler.Inspect(State.ArmorTab.ItemData)
    end
    ArmorCheatsTab.SetState(State.ArmorTab.PartArmor, stats[Glossary.Stats.PartArmor], "Float")
    ArmorCheatsTab.SetState(State.ArmorTab.ItemArmor, stats[Glossary.Stats.ItemArmor], "Float")
    ArmorCheatsTab.SetState(State.ArmorTab.Armor, stats[Glossary.Stats.Armor], "Float")
    ArmorCheatsTab.SetState(State.ArmorTab.IsItemIconic, stats[Glossary.Stats.IsItemIconic], "Boolean")
    ArmorCheatsTab.SetState(State.ArmorTab.IsItemCrafted, stats[Glossary.Stats.IsItemCrafted], "Boolean")
end

function ArmorCheatsTab.DoModifiers()
    if not State.ArmorTab.ItemData then
        return
    end
    -- Need to apply armor modifiers in a slightly roundabout way.
    -- First retrieve the target armor value to reach.
    -- Then compare with the difference in item armor.
    -- Add this delta to the item armor state value.
    State.ArmorTab.ItemArmor.Value = State.ArmorTab.ItemArmor.Value + (State.ArmorTab.Armor.Value - State.ArmorTab.Armor.Read)
    ArmorCheatsTab.AddModifier(State.ArmorTab.ItemArmor, Glossary.Stats.ItemArmor, "Float")
    ArmorCheatsTab.SetModifier(State.ArmorTab.IsItemIconic, Glossary.Stats.IsItemIconic, "Boolean")
    ArmorCheatsTab.SetModifier(State.ArmorTab.IsItemCrafted, Glossary.Stats.IsItemCrafted, "Boolean")
end

function ArmorCheatsTab.BuildDisplay()
    Widget.Spacing()
    Widget.Text("Modify armor in your equip slots:")
    Widget.Text(" - Pick and edit properties.")
    Widget.Spacing()
end

function ArmorCheatsTab.BuildSelect()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("1. Select Slot")
    Widget.Text(" - Choose slot then load item values.")
    State.ArmorTab.SlotSelect = Widget.Combo("##WeaponSlot", State.ArmorTab.SlotSelect, State.ArmorTab.SlotOptions, nil, Style.Size.ArmorTab.Text.Width)
    Widget.SameLine(Style.Size.ArmorTab.Text.Width + Style.Size.SmallColSpacer)
    if (Widget.Button("Load")) then
        ArmorCheatsTab.Inspect()
    end
    Widget.Spacing()
end

function ArmorCheatsTab.BuildEditModifiers()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("2. Basic Properties")
    Widget.Text(" - Set item flags.")
    Widget.Text(" - Edit clothing attributes.")
    State.ArmorTab.Armor.Value = Widget.InputFloat("Armor", State.ArmorTab.Armor.Value, 1, 100, "%.4f", Style.Size.ArmorTab.Float.Width)
    State.ArmorTab.IsItemIconic.Value = Widget.Checkbox("Is Iconic", State.ArmorTab.IsItemIconic.Value)
    State.ArmorTab.IsItemCrafted.Value = Widget.Checkbox("Is Crafted", State.ArmorTab.IsItemCrafted.Value)
    Widget.Spacing()
end

function ArmorCheatsTab.BuildDoModifiers()
    Widget.Separator()
    Widget.Spacing()
    if (Widget.Button("Save Modifiers", Style.Size.ArmorTab.Button.Width, Style.Size.ArmorTab.Button.Height)) then
        ArmorCheatsTab.DoModifiers()
    end
    Widget.Spacing()
end


function ArmorCheatsTab.Build()
    if (Widget.BeginTabItem("Clothing")) then
        ArmorCheatsTab.BuildDisplay()
        ArmorCheatsTab.BuildSelect()
        ArmorCheatsTab.BuildEditModifiers()
        ArmorCheatsTab.BuildDoModifiers()
        Widget.Separator()
        Widget.EndTabItem()
    end
end

return ArmorCheatsTab