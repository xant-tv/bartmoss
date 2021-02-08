-- Generic language utilities for string operations.
local String = {}

function String.Contains(subject, pattern, is_regex)
    local is_plain = not is_regex
    return string.find(subject, pattern, 1, is_plain)
end

function String.Trim(subject)
    return string.gsub(subject, "^%s*(.-)%s*$", "%1")
end

function String.Split(subject, sep, n, is_regex)
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

function String.RemoveBuffer(subject)
    local first, last = string.find(subject, "\0", 1, true)
    if first then
        return string.sub(subject, 1, first - 1)
    end
    return subject
end

function String.WildcardSearch(subject)
    local splits = String.Split(subject, "*")
    for i, s in ipairs(splits) do
        splits[i] = string.gsub(s, "%.", "%%.")
    end
    local result = table.concat(splits, ".*")
    return result
end

return String