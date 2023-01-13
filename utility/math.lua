-- Generic language utilities for mathematical operations.
local Math = {}

function Math.SafeFloor(x)
    -- Lots of game stats are stored/returned as floats (e.g. player level, item quality).
    -- These all need to be converted to integers, which we do by flooring while allowing a small epsilon.
    return math.floor(x + 0.01)
end

function Math.RoundToInteger(x)
    if x >= 0 then
        return math.floor(x + 0.5)
    end
    return math.ceil(x - 0.5)
end

return Math