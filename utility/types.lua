local Types = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function Types.BoolToNum(value)
    return value == true and 1 or value == false and 0
end

function Types.NumToBool(value)
    value = math.floor(value)
    return value == 1 and true or value == 0 and false
end

return Types