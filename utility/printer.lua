-- Printing utilities for command line output.
local Printer = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Table = require(Printer.rootPath .. "utility.table")

Printer.Trunk = "    "
Printer.Branch = "+-- "

function Printer.Tree(elem, pfix)
    local skeys = Table.SortedIndex(elem)
    for _, key in ipairs(skeys) do
        local child = elem[key]
        print(pfix .. key)
        if type(child) == "table" then
            local ppfix = Printer.Trunk .. pfix
            Printer.Tree(child, ppfix)
        end
    end
end

function Printer.List(list)
    for _, key in ipairs(list) do
        print(key)
    end
end

return Printer