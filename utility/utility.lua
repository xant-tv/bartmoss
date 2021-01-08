-- Interface utilities for command line operation.
local Utility = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logical = require(Utility.rootPath .. "utility.logical")
local Printer = require(Utility.rootPath .. "utility.printer")
local Glossary = require(Utility.rootPath .. "data.glossary")

function Utility.Describe(input)
    if type(input) ~= "table" then
        local element = Utility.GetElementFromString(input)
        Printer.Tree(element, Printer.Branch)
    else
        Printer.Tree(input, Printer.Branch)
    end
end

function Utility.Search(word)
    if type(word) ~= "string" then
        return
    end
    return Printer.Search(Glossary.Searchable, "Glossary", word)
end

function Utility.GetElementFromString(path)
    if type(path) ~= "string" then
        return
    end

    local splits = Logical.StringSplit(path, ".")
    local skip = 1
    if #splits <= skip then
        -- Assume that the first element in path is the glossary header.
        return
    end

    local element = Glossary
    for i = skip + 1, #splits do
        element = element[splits[i]]
    end
    return element
end

return Utility