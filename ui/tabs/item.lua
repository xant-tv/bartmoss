local ItemCheatsTab = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Style = require(ItemCheatsTab.rootPath .. "ui.style")
local State = require(ItemCheatsTab.rootPath .. "ui.state")
local String = require(ItemCheatsTab.rootPath .. "utility.string")
local Table = require(ItemCheatsTab.rootPath .. "utility.table")
local Widget = require(ItemCheatsTab.rootPath .. "utility.widget")
local Utility = require(ItemCheatsTab.rootPath .. "utility.utility")
local Glossary = require(ItemCheatsTab.rootPath .. "data.glossary")
local ItemHandler = require(ItemCheatsTab.rootPath .. "cheats.itemhandler")

function ItemCheatsTab.DoGlossary()
    -- Strings are automatically null-padded to buffer length for the input. Need to trim down.
    local input = String.RemoveBuffer(State.ItemsTab.GlossaryInput)
    local is_regex = State.ItemsTab.GlossarySearchRegex
    local search = input
    if (not is_regex) and String.Contains(input, "*") then
        is_regex = true
        search = String.WildcardSearch(input)
    end
    print("UI_SEARCH=" .. input)
    State.ItemsTab.GlossaryOptions = Table.Filter(State.ItemsTab.GlossaryPaths, search, is_regex)
    -- Reset any current selections.
    State.ItemsTab.ItemSelect = 0
end

function ItemCheatsTab.DoGiveItem()
    local itempath = State.ItemsTab.GlossaryOptions[State.ItemsTab.ItemSelect + 1]
    local quantity = State.ItemsTab.ItemQuantity
    local quality = Glossary.QualityRank[State.ItemsTab.QualitySelect + 1]
    local level = State.ItemsTab.ItemLevel
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
        level = nil
    end
    print("UI_ITEM_GIVE=" .. itempath .. "|Q" .. quantity .. "|" .. quality .. "|L" .. (level or 0))
    ItemHandler.GiveItems(item, quantity, quality, level)
end

function ItemCheatsTab.BuildDisplay()
    ImGui.Spacing()
    ImGui.Text("Give yourself items with options for:")
    ImGui.Text(" - Item level, quality and quantity.")
    ImGui.Text(" - Weapon stats (modifiers) coming soon.")
    ImGui.Spacing()
end

function ItemCheatsTab.BuildGlossary()
    ImGui.Separator()
    ImGui.Spacing()
    ImGui.Text("Glossary")
    ImGui.Text(" - Search for items by name to populate the dropdown list.")
    ImGui.Text(" - Wildcards (*) are supported!")
    ImGui.PushItemWidth(Style.Size.ItemTab.Text.Width)
    State.ItemsTab.GlossaryInput = ImGui.InputTextWithHint("##Glossary", "Phrase (e.g. Weapons.*.Iconic)", State.ItemsTab.GlossaryInput, 300, Widget.GetInputFlags())
    ImGui.SameLine(Style.Size.ItemTab.Text.Width + Style.Size.ColSpacer)
    if (ImGui.Button("Search")) then
        ItemCheatsTab.DoGlossary()
    end
    -- No immediate callback needed on this checkbox.
    -- State.ItemsTab.GlossarySearchRegex, _ = ImGui.Checkbox("Is Pattern?", State.ItemsTab.GlossarySearchRegex)
    ImGui.Spacing()
end

function ItemCheatsTab.BuildItemSelect()
    ImGui.Separator()
    ImGui.Spacing()
    ImGui.Text("Available Items")
    ImGui.Text(" - Select item base and quantity.")
    ImGui.PushItemWidth(Style.Size.ItemTab.Text.Width)
    -- Return value is the index of the chosen element.
    State.ItemsTab.ItemSelect = ImGui.Combo("##Item", State.ItemsTab.ItemSelect, State.ItemsTab.GlossaryOptions, #State.ItemsTab.GlossaryOptions)
    ImGui.SameLine(Style.Size.ItemTab.Text.Width + Style.Size.ColSpacer)
    ImGui.PushItemWidth(Style.Size.ItemTab.Integer.Width)
    State.ItemsTab.ItemQuantity = ImGui.InputInt("##Quantity", State.ItemsTab.ItemQuantity, 1, 100, Widget.GetInputFlags())
    ImGui.Spacing()
end

function ItemCheatsTab.BuildItemProperties()
    ImGui.Separator()
    ImGui.Spacing()
    ImGui.Text("Items Properties")
    ImGui.Text(" - Select item level and quality (may be forced for certain items).")
    State.ItemsTab.QualitySelect = ImGui.Combo("Quality", State.ItemsTab.QualitySelect, State.ItemsTab.QualityOptions, #State.ItemsTab.QualityOptions, 8)
    State.ItemsTab.ItemLevel = ImGui.InputInt("Level", State.ItemsTab.ItemLevel, 1, 1, Widget.GetInputFlags())
    ImGui.Spacing()
end

function ItemCheatsTab.BuildGiveItem()
    ImGui.Separator()
    ImGui.Spacing()
    if (ImGui.Button("Give Item(s)", Style.Size.ItemTab.Button.Width, Style.Size.ItemTab.Button.Height)) then
        ItemCheatsTab.DoGiveItem()
    end
    ImGui.Spacing()
end

function ItemCheatsTab.BuildItemGiver()
    ItemCheatsTab.BuildItemSelect()
    ItemCheatsTab.BuildItemProperties()
    ItemCheatsTab.BuildGiveItem()
end

function ItemCheatsTab.Build()
    if (ImGui.BeginTabItem("Item")) then
        ItemCheatsTab.BuildDisplay()
        ItemCheatsTab.BuildGlossary()
        ItemCheatsTab.BuildItemGiver()
        ImGui.Separator()
        ImGui.EndTabItem()
    end
end

return ItemCheatsTab