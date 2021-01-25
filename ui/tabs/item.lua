local ItemCheatsTab = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logger = require(ItemCheatsTab.rootPath .. "utility.logger")
local String = require(ItemCheatsTab.rootPath .. "utility.string")
local Table = require(ItemCheatsTab.rootPath .. "utility.table")
local Widget = require(ItemCheatsTab.rootPath .. "utility.widget")
local Utility = require(ItemCheatsTab.rootPath .. "utility.utility")
local Style = require(ItemCheatsTab.rootPath .. "ui.style")
local State = require(ItemCheatsTab.rootPath .. "ui.state")
local Glossary = require(ItemCheatsTab.rootPath .. "data.glossary")
local ItemHandler = require(ItemCheatsTab.rootPath .. "handler.item")

function ItemCheatsTab:DoGlossary()
    -- Strings are automatically null-padded to buffer length for the input. Need to trim down.
    local input = String.RemoveBuffer(self.state.GlossaryInput)
    local is_regex = self.state.GlossarySearchRegex
    local search = input
    if (not is_regex) and String.Contains(input, "*") then
        is_regex = true
        search = String.WildcardSearch(input)
    end
    self.logger:Debug("GlossarySearch: " .. input)
    self.state.GlossaryOptions = Table.Filter(self.state.GlossaryPaths, search, is_regex)
    -- Reset any current selections.
    self.state.ItemSelect = 0
    self.state.ItemQuantity = 1
end

function ItemCheatsTab:DoGiveItem()
    local itempath = self.state.GlossaryOptions[self.state.ItemSelect + 1]
    local quantity = self.state.ItemQuantity
    local quality = Glossary.QualityRank[self.state.QualitySelect + 1]
    local level = self.state.ItemLevel
    -- Sanitise inputs.
    -- Return on no item provided.
    local item = Utility.GetElementFromString("Glossary." .. itempath)
    if not item then
        return
    end
    -- Check quantity is greater than zero.
    if quantity <= 0 then
        quantity = 1
    end
    -- Check level is valid otherwise remove (will use player level).
    if level > 50 then
        level = 50
    end
    if level <= 0 then
        -- This will scale item to player level.
        level = nil
    end
    self.logger:Debug("GiveItems: " .. itempath .. " | Amount = " .. quantity .. " | Quality = " .. quality .. " | Level = " .. (level or "Auto"))
    self.handler.item:GiveN(item, quantity, quality, level)
end

function ItemCheatsTab:BuildDisplay()
    Widget.Spacing()
    Widget.Text("Give yourself items with options for:")
    Widget.Text(" - Item level, quality and quantity.")
    Widget.Text(" - Weapon modifiers are in another tab.")
    Widget.Spacing()
end

function ItemCheatsTab:BuildGlossary()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("1. Glossary")
    Widget.Text(" - Search for items by name to populate the dropdown list.")
    Widget.Text(" - Wildcards (*) are supported!")
    self.state.GlossaryInput = Widget.InputTextWithHint("##Glossary", "Phrase (e.g. Weapons.*.Iconic)", self.state.GlossaryInput, 300, Style.Size.ItemsTab.Text.Width)
    Widget.SameLine(Style.Size.ItemsTab.Text.Width + Style.Size.SmallColSpacer)
    if (Widget.Button("Search")) then
        self:DoGlossary()
    end
    -- No immediate callback needed on this checkbox.
    -- self.state.GlossarySearchRegex, _ = ImGui.Checkbox("Is Pattern?", self.state.GlossarySearchRegex)
    Widget.Spacing()
end

function ItemCheatsTab:BuildItemSelect()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("2. Item Select")
    Widget.Text(" - Select item base and quantity.")
    -- Return value is the index of the chosen element.
    self.state.ItemSelect = Widget.Combo("##Item", self.state.ItemSelect, self.state.GlossaryOptions, nil, Style.Size.ItemsTab.Text.Width)
    Widget.SameLine(Style.Size.ItemsTab.Text.Width + Style.Size.SmallColSpacer)
    self.state.ItemQuantity = Widget.InputInt("##Quantity", self.state.ItemQuantity, 1, 100, Style.Size.ItemsTab.Integer.Width)
    Widget.Spacing()
end

function ItemCheatsTab:BuildItemProperties()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("3. Properties")
    Widget.Text(" - Please read item statistics glossary documentation.")
    self.state.QualitySelect = Widget.Combo("Quality", self.state.QualitySelect, self.state.QualityOptions, 8)
    self.state.ItemLevel = Widget.InputInt("Level (Auto=0)", self.state.ItemLevel, 1, 1)
    Widget.Spacing()
end

function ItemCheatsTab:BuildGiveItem()
    Widget.Separator()
    Widget.Spacing()
    if (Widget.Button("Give Item(s)", Style.Size.ItemsTab.Button.Width, Style.Size.ItemsTab.Button.Height)) then
        self:DoGiveItem()
    end
    Widget.Spacing()
end

function ItemCheatsTab:BuildItemGiver()
    self:BuildItemSelect()
    self:BuildItemProperties()
    self:BuildGiveItem()
end

function ItemCheatsTab:Build()
    if (Widget.BeginTabItem("Item")) then
        self:BuildDisplay()
        self:BuildGlossary()
        self:BuildItemGiver()
        Widget.Separator()
        Widget.EndTabItem()
    end
end

function ItemCheatsTab:New(parent)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "ItemCheats"
    I.logger = Logger:New(parent.writer, I.module)
    I.state = State.ItemsTab
    I.handler = {
        item = ItemHandler:New(I.logger)
    }

    return I

end

return ItemCheatsTab