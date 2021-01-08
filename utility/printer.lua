-- Printing utilities for command line output.
local Printer = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logical = require(Printer.rootPath .. "utility.logical")

Printer.Trunk = "    "
Printer.Branch = "+-- "

function Printer.Tree(elem, pfix)
    local skeys = Logical.TableSortedIndex(elem)
    for _, key in ipairs(skeys) do
        local child = elem[key]
        print(pfix .. key)
        if type(child) == "table" then
            local ppfix = Printer.Trunk .. pfix
            Printer.Tree(child, ppfix)
        end
    end
end

function Printer.Search(elem, path, word)
    local matches = Logical.TableDeepSearch(elem, path, word)
    for _, key in ipairs(matches) do
        print(key)
    end
    return matches
end

return Printer