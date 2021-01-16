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
    ImGui.Spacing()
    ImGui.Text("Modify armor in your equip slots:")
    ImGui.Text(" - Pick and edit properties.")
    ImGui.Spacing()
end

function ArmorCheatsTab.BuildSelect()
    ImGui.Separator()
    ImGui.Spacing()
    ImGui.Text("Select Slot")
    ImGui.Text(" - Choose slot then load item values.")
    ImGui.PushItemWidth(Style.Size.ArmorTab.Text.Width)
    State.ArmorTab.SlotSelect = ImGui.Combo("##WeaponSlot", State.ArmorTab.SlotSelect, State.ArmorTab.SlotOptions, #State.ArmorTab.SlotOptions)
    ImGui.SameLine(Style.Size.ArmorTab.Text.Width + Style.Size.SmallColSpacer)
    if (ImGui.Button("Load")) then
        ArmorCheatsTab.Inspect()
    end
    ImGui.Spacing()
end

function ArmorCheatsTab.BuildEditModifiers()
    ImGui.Separator()
    ImGui.Spacing()
    ImGui.PushItemWidth(Style.Size.ArmorTab.Float.Width)
    State.ArmorTab.Armor.Value = ImGui.InputFloat("Armor", State.ArmorTab.Armor.Value, 1, 100, "%.4f", Widget.GetInputFlags())
    State.ArmorTab.IsItemIconic.Value = ImGui.Checkbox("Is Iconic", State.ArmorTab.IsItemIconic.Value)
    State.ArmorTab.IsItemCrafted.Value = ImGui.Checkbox("Is Crafted", State.ArmorTab.IsItemCrafted.Value)
    ImGui.Spacing()
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