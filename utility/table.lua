-- Generic language utilities for table operations.
local Table = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local String = require(Table.rootPath .. "utility.string")

function Table.SortedIndex(tab)
    local skeys = {}
    for key in pairs(tab) do
        table.insert(skeys, key)
    end
    table.sort(skeys)
    return skeys
end

function Table.HasValue(tab, tgt)
    for _, value in ipairs(tab) do
        if value == tgt then
            return true
        end
    end
    return false
end

function Table.DeepSearch(elem, strpath, word)
    local result = {}
    local skeys = Table.SortedIndex(elem)
    for _, key in ipairs(skeys) do
        local child = elem[key]
        local cstrpath = strpath .. "." .. key
        if String.Contains(string.lower(key), string.lower(word)) then
            table.insert(result, cstrpath)
        end
        if type(child) == "table" then
            local coutput = Table.DeepSearch(child, cstrpath, word)
            for _, ckey in ipairs(coutput) do
                table.insert(result, ckey)
            end
        end
    end
    return result
end

return Table