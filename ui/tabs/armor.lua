local ArmorCheatsTab = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logger = require(ArmorCheatsTab.rootPath .. "utility.logger")
local Widget = require(ArmorCheatsTab.rootPath .. "utility.widget")
local Style = require(ArmorCheatsTab.rootPath .. "ui.style")
local State = require(ArmorCheatsTab.rootPath .. "ui.state")
local Glossary = require(ArmorCheatsTab.rootPath .. "data.glossary")
local ItemHandler = require(ArmorCheatsTab.rootPath .. "handler.item")
local EquipmentHandler = require(ArmorCheatsTab.rootPath .. "handler.equipment")

function ArmorCheatsTab:SetState(element, value, ltype)
    local set = value
    if not set then
        element.Value = element.Default
    else
        element.Value = Widget.ParseRawIntoView(set, ltype)
    end
    -- Set current value and "last read" property.
    element.Read = element.Value
end

function ArmorCheatsTab:SetModifier(element, modtype, ltype)
    if not Widget.CheckValue(element, ltype) then
        return
    end
    local itemdata = self.state.ItemData
    local calctype = Glossary.Calculation.Additive
    local value = Widget.ParseViewIntoRaw(element.Value, ltype)
    self.handler.item:SetModifier(itemdata, modtype, calctype, value)
    -- Set "last read" value to match newly-updated value.
    element.Read = element.Value
end

function ArmorCheatsTab:AddModifier(element, modtype, ltype)
    if not Widget.CheckValue(element, ltype) then
        return
    end
    local itemdata = self.state.ItemData
    local calctype = Glossary.Calculation.Additive
    local delta = element.Value - element.Read
    local value = Widget.ParseViewIntoRaw(delta, ltype)
    self.handler.item:AddModifier(itemdata, modtype, calctype, value)
    -- Set "last read" value to match newly-updated value.
    element.Read = element.Value
end

function ArmorCheatsTab:Inspect()
    local slotname = Glossary.ClothingSlots[self.state.SlotSelect + 1]
    local slot = Glossary.ClothingSlotsInv[slotname]
    local id = 0
    local stats = {}
    self.logger:Debug("InspectArmor: " .. slot)
    self.state.ItemData = self.handler.equipment:GetItemDataInSlot(slot, id)
    if self.state.ItemData then
        stats = self.handler.item:Inspect(self.state.ItemData)
    end
    self:SetState(self.state.PartArmor, stats[Glossary.Stats.PartArmor], "Float")
    self:SetState(self.state.ItemArmor, stats[Glossary.Stats.ItemArmor], "Float")
    self:SetState(self.state.Armor, stats[Glossary.Stats.Armor], "Float")
    self:SetState(self.state.IsItemIconic, stats[Glossary.Stats.IsItemIconic], "Boolean")
    self:SetState(self.state.IsItemCrafted, stats[Glossary.Stats.IsItemCrafted], "Boolean")
end

function ArmorCheatsTab:DoModifiers()
    if not self.state.ItemData then
        return
    end
    -- Need to apply armor modifiers in a slightly roundabout way.
    -- First retrieve the target armor value to reach.
    -- Then compare with the difference in item armor.
    -- Add this delta to the item armor state value.
    self.state.ItemArmor.Value = self.state.ItemArmor.Value + (self.state.Armor.Value - self.state.Armor.Read)
    self:AddModifier(self.state.ItemArmor, Glossary.Stats.ItemArmor, "Float")
    self:SetModifier(self.state.IsItemIconic, Glossary.Stats.IsItemIconic, "Boolean")
    self:SetModifier(self.state.IsItemCrafted, Glossary.Stats.IsItemCrafted, "Boolean")
end

function ArmorCheatsTab:BuildDisplay()
    Widget.Spacing()
    Widget.Text("Modify armor in your equip slots:")
    Widget.Text(" - Pick and edit properties.")
    Widget.Spacing()
end

function ArmorCheatsTab:BuildSelect()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("1. Select Slot")
    Widget.Text(" - Choose slot then load item values.")
    self.state.SlotSelect = Widget.Combo("##WeaponSlot", self.state.SlotSelect, self.state.SlotOptions, nil, Style.Size.ArmorTab.Text.Width)
    Widget.SameLine(Style.Size.ArmorTab.Text.Width + Style.Size.SmallColSpacer)
    if (Widget.Button("Load")) then
        self:Inspect()
    end
    Widget.Spacing()
end

function ArmorCheatsTab:BuildEditModifiers()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("2. Basic Properties")
    Widget.Text(" - Set item flags.")
    Widget.Text(" - Edit clothing attributes.")
    self.state.Armor.Value = Widget.InputFloat(
        "Armor", self.state.Armor.Value, 1, 100, "%.4f",
        Style.Size.ArmorTab.Float.Width,
        self.state.Armor.Value ~= self.state.Armor.Read
    )
    self.state.IsItemIconic.Value = Widget.Checkbox(
        "Is Iconic", self.state.IsItemIconic.Value,
        self.state.IsItemIconic.Value ~= self.state.IsItemIconic.Read
    )
    self.state.IsItemCrafted.Value = Widget.Checkbox(
        "Is Crafted", self.state.IsItemCrafted.Value,
        self.state.IsItemCrafted.Value ~= self.state.IsItemCrafted.Read
    )
    Widget.Spacing()
end

function ArmorCheatsTab:BuildDoModifiers()
    Widget.Separator()
    Widget.Spacing()
    if (Widget.Button("Save Modifiers", Style.Size.ArmorTab.Button.Width, Style.Size.ArmorTab.Button.Height)) then
        self:DoModifiers()
    end
    Widget.Spacing()
end


function ArmorCheatsTab:Build()
    if (Widget.BeginTabItem("Clothing")) then
        self:BuildDisplay()
        self:BuildSelect()
        self:BuildEditModifiers()
        self:BuildDoModifiers()
        Widget.Separator()
        Widget.EndTabItem()
    end
end

function ArmorCheatsTab:New(parent)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "ArmorCheats"
    I.logger = Logger:New(parent.writer, I.module)
    I.state = State.ArmorTab
    I.handler = {
        item = ItemHandler:New(I.logger),
        equipment = EquipmentHandler:New(I.logger)
    }

    return I

end

return ArmorCheatsTab