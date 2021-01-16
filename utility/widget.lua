local Widget = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Types = require(Widget.rootPath .. "utility.types")

function Widget.GetInputFlags()
    if (not IsTrapInputInImGui()) then
        return ImGuiInputTextFlags.ReadOnly
    else
        return ImGuiInputTextFlags.None
    end
end

function Widget.CheckValue(element, ltype)
    -- If value has not been changed, then no need to add.
    if element.Value == element.Read then
        return false
    end
    -- Basic sanity checking (cannot set values to negative).
    if string.lower(ltype) ~= "boolean" then
        if element.Value < 0 then
            return false
        end
    end
    return true
end

function Widget.ParseRawIntoView(raw, viewtype)
    if not viewtype then
        return raw
    end
    if string.lower(viewtype) == "boolean" then
        return Types.NumToBool(raw)
    end
    return raw
end

function Widget.ParseViewIntoRaw(view, viewtype)
    if not viewtype then
        return view
    end
    if string.lower(viewtype) == "boolean" then
        return Types.BoolToNum(view)
    end
    return view
end

return Widget