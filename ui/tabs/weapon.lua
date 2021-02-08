-- Tab for weapons-related interaction.
local WeaponCheatsTab = {}

local Logger = require("utility/logger")
local Widget = require("utility/widget")
local Style = require("ui/style")
local Layout = require("ui/layout")
local State = require("ui/state")
local Glossary = require("data/glossary")
local ItemHandler = require("handler/item")
local EquipmentHandler = require("handler/equipment")

function WeaponCheatsTab:SetState(element, value, ltype)
    local set = value
    if not set then
        element.Value = element.Default
    else
        element.Value = Widget.ParseRawIntoView(set, ltype)
    end
    -- Set current value and "last read" property.
    element.Read = element.Value
end

function WeaponCheatsTab:SetModifier(element, modtype, ltype)
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

function WeaponCheatsTab:AddModifier(element, modtype, ltype)
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

function WeaponCheatsTab:DoModifier(layout)
    local Callable = self.SetModifier
    if layout.Method == "Add" then
        Callable = self.AddModifier
    end
    Callable(self, self.state[layout.Name], Glossary.Stats[layout.Name], layout.Type)
    if layout.Copy then
        self.state[layout.Copy].Value = self.state[layout.Name].Value
        Callable(self, self.state[layout.Copy], Glossary.Stats[layout.Copy], layout.Type)
    end
end

function WeaponCheatsTab:DoModifiers()
    if not self.state.ItemData then
        return
    end
    for _, section in ipairs(Layout.WeaponsTab.Sections) do
        for _, column in ipairs(section) do
            for _, layout in ipairs(column) do
                if layout.Type ~= "Skip" then
                    self:DoModifier(layout)
                end
            end
        end
    end
end


function WeaponCheatsTab:Inspect()
    local slot = "Weapon"
    local id = self.state.SlotSelect
    local stats = {}
    self.logger:Info("InspectWeapon: " .. slot .. id + 1)
    self.state.ItemData = self.handler.equipment:GetItemDataInSlot(slot, id)
    if self.state.ItemData then
        stats = self.handler.item:Inspect(self.state.ItemData)
    end
    for _, section in ipairs(Layout.WeaponsTab.Sections) do
        for _, column in ipairs(section) do
            for _, layout in ipairs(column) do
                -- Disgusting nested for loops.
                if layout.Type ~= "Skip" then
                    self:SetState(self.state[layout.Name], stats[Glossary.Stats[layout.Name]], layout.Type)
                    if layout.Copy then
                        self:SetState(self.state[layout.Copy], stats[Glossary.Stats[layout.Copy]], layout.Type)
                    end
                end
            end
        end
    end
end

function WeaponCheatsTab:BuildDisplay()
    Widget.Spacing()
    Widget.Text("Modify weapons in your equip slots:")
    Widget.Text(" - Pick and edit properties from power, tech or smart weapons.")
    Widget.Spacing()
end

function WeaponCheatsTab:BuildSelect()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("1. Select Slot")
    Widget.Text(" - Choose slot then load item values.")
    self.state.SlotSelect = Widget.Combo("##WeaponSlot", self.state.SlotSelect, self.state.SlotOptions, nil, Style.Size.WeaponsTab.Text.Width)
    Widget.SameLine(Style.Size.WeaponsTab.Text.Width + Style.Size.SmallColSpacer)
    if (Widget.Button("Load")) then
        self:Inspect()
    end
    Widget.Spacing()
end

function WeaponCheatsTab:BuildModifierFromLayout(elem, maxcol)
    if not elem.Type then
        return
    end
    if elem.Type == "Float" then
        self.state[elem.Name].Value = Widget.InputFloat(
            elem.Display, self.state[elem.Name].Value, 1, 100, "%.4f",
            Style.Size.WeaponsTab.Float[maxcol].Width,
            self.state[elem.Name].Value ~= self.state[elem.Name].Read
        )
    elseif elem.Type == "Boolean" then
        self.state[elem.Name].Value = Widget.Checkbox(
            elem.Display, self.state[elem.Name].Value,
            self.state[elem.Name].Value ~= self.state[elem.Name].Read
        )
    else
        Widget.Dummy(1, 19)
    end
end

function WeaponCheatsTab:BuildBasicModifiers()
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
            self:BuildModifierFromLayout(element, ncols)
        end
        Widget.EndGroup()
        Widget.NextColumn()
    end
    Widget.Columns(1)
    Widget.Spacing()
end

function WeaponCheatsTab:BuildComplexModifiers()
    local ncols = 3
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("3. Advanced Modifiers")
    Widget.Text(" - Mix and match archetypical mods.")
    Widget.Columns(ncols)
    for col = 1, ncols do
        Widget.BeginGroup()
        for _, element in ipairs(Layout.WeaponsTab.Advanced[col]) do
            self:BuildModifierFromLayout(element, ncols)
        end
        Widget.EndGroup()
        Widget.NextColumn()
    end
    Widget.Columns(1)
    Widget.Spacing()
end

function WeaponCheatsTab:BuildDoModifiers()
    Widget.Separator()
    Widget.Spacing()
    if (Widget.Button("Save Modifiers", Style.Size.WeaponsTab.Button.Width, Style.Size.WeaponsTab.Button.Height)) then
        self:DoModifiers()
    end
    Widget.Spacing()
end

function WeaponCheatsTab:Build()
    if (Widget.BeginTabItem("Weapon")) then
        self:BuildDisplay()
        self:BuildSelect()
        self:BuildBasicModifiers()
        self:BuildComplexModifiers()
        self:BuildDoModifiers()
        Widget.Separator()
        Widget.EndTabItem()
    end
end

function WeaponCheatsTab:New()

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "WeaponCheats"
    I.logger = Logger:New(I.module)
    I.state = State.WeaponsTab
    I.handler = {
        item = ItemHandler:New(),
        equipment = EquipmentHandler:New()
    }

    return I

end

return WeaponCheatsTab