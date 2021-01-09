local State = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Glossary = require(State.rootPath .. "data.glossary")
local Table = require(State.rootPath .. "utility.table")

State.QuickhackTab = {}

State.PlayerTab = {}
State.PlayerTab.AttrOptions = Glossary.AttributesRank
State.PlayerTab.AttrSelect = 0
State.PlayerTab.ExpAmount = 0

State.ItemsTab = {}
State.ItemsTab.GlossaryInput = ""
State.ItemsTab.GlossaryPaths = Table.DeepPath(Glossary.Searchable, "") -- Remove leading "Glossary" from path element.
State.ItemsTab.GlossaryOptions = Table.Filter(State.ItemsTab.GlossaryPaths, State.ItemsTab.GlossaryInput)
State.ItemsTab.GlossarySearchRegex = false
State.ItemsTab.ItemSelect = 0
State.ItemsTab.ItemQuantity = 1
State.ItemsTab.QualityOptions = Glossary.QualityRank
State.ItemsTab.QualitySelect = 4
State.ItemsTab.ItemLevel = 50

return State