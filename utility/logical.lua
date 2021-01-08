-- Generic language utilities for logical operations.
local Logical = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function Logical.TableSortedIndex(tab)
    local skeys = {}
    for key in pairs(tab) do
        table.insert(skeys, key)
    end
    table.sort(skeys)
    return skeys
end

function Logical.TableHasValue(tab, tgt)
    for _, value in ipairs(tab) do
        if value == tgt then
            return true
        end
    end
    return false
end

function Logical.TableDeepSearch(elem, strpath, word)
    local result = {}
    local skeys = Logical.TableSortedIndex(elem)
    for _, key in ipairs(skeys) do
        local child = elem[key]
        local cstrpath = strpath .. "." .. key
        if Logical.StringContains(string.lower(key), string.lower(word)) then
            table.insert(result, cstrpath)
        end
        if type(child) == "table" then
            local coutput = Logical.TableDeepSearch(child, cstrpath, word)
            for _, ckey in ipairs(coutput) do
                table.insert(result, ckey)
            end
        end
    end
    return result
end

function Logical.StringContains(subject, pattern)
    return string.find(subject, pattern)
end

function Logical.StringSplit(subject, sep, n, is_regex)
    -- Check if subject string is non-null.
    if string.len(subject) <= 0 then
        return
    end
    -- Separator must be non-null and non-empty string.
    if string.len(sep) <= 0 then
        return
    end
    -- Provided number must be positive integer.
    -- Else no limit on number of splits.
    n = n or -1
    if not (n >= 1) then
        n = -1
    end

    local splits = {}
    local is_plain = not is_regex
    local field, start = 1, 1
    local first, last = string.find(subject, sep, start, is_plain)
    while (first) and (n ~= 0) do
        splits[field] = string.sub(subject, start, first - 1)
        field = field + 1
        start = last + 1
        first, last = string.find(subject, sep, start, is_plain)
        n = n - 1
    end
    splits[field] = string.sub(subject, start)

    return splits
end

return Logical