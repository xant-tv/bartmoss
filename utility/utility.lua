-- Interface utilities for command line operation.
local Utility = {}

local Table = require("utility/table")
local String = require("utility/string")
local Printer = require("utility/printer")
local Glossary = require("data/glossary")

function Utility.Describe(input)
    if type(input) ~= "table" then
        local element = Utility.GetElementFromString(input)
        Printer.Tree(element, Printer.Branch)
    else
        Printer.Tree(input, Printer.Branch)
    end
end

function Utility.Search(word, silent)
    if type(word) ~= "string" then
        return
    end
    local matches = Table.DeepSearch(Glossary.Searchable, "Glossary", word)
    if not silent then
        Printer.List(matches)
    end
    return matches
end

function Utility.GetElementFromString(path)
    if type(path) ~= "string" then
        return
    end

    local splits = String.Split(path, ".")
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