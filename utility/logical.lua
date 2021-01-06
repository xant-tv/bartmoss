-- Generic language utilities for logical operations.
local Logical = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function Logical.TableHasValue(table, target)
    for index, value in ipairs(table) do
        if value == target then
            return true
        end
    end
    return false
end

return Logical