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

function Widget.SetNextWindowPos(x, y)
    return ImGui.SetNextWindowPos(x, y, ImGuiCond.FirstUseEver)
end

function Widget.SetNextWindowSize(width, height)
    return ImGui.SetNextWindowSize(width, height, ImGuiCond.Appearing)
end

function Widget.Begin(label)
    return ImGui.Begin(label)
end

function Widget.End()
    return ImGui.End()
end

function Widget.BeginTabBar(label)
    return ImGui.BeginTabBar(label)
end

function Widget.EndTabBar()
    return ImGui.EndTabBar()
end

function Widget.BeginTabItem(label)
    return ImGui.BeginTabItem(label)
end

function Widget.EndTabItem()
    return ImGui.EndTabItem()
end

function Widget.Columns(ncols)
    return ImGui.Columns(ncols)
end

function Widget.NextColumn()
    return ImGui.NextColumn()
end

function Widget.BeginGroup()
    return ImGui.BeginGroup()
end

function Widget.EndGroup()
    return ImGui.EndGroup()
end

function Widget.Separator()
    return ImGui.Separator()
end

function Widget.Spacing()
    return ImGui.Spacing()
end

function Widget.SameLine(offset)
    return ImGui.SameLine(offset)
end

function Widget.PushItemWidth(width)
    return ImGui.PushItemWidth(width)
end

function Widget.Dummy(width, height)
    return ImGui.Dummy(width, height)
end

function Widget.Text(text)
    return ImGui.Text(text)
end

function Widget.Button(label, width, height)
    if (not width) or (not height) then
        return ImGui.Button(label)
    end
    return ImGui.Button(label, width, height)
end

function Widget.Checkbox(label, var)
    return ImGui.Checkbox(label, var)
end

function Widget.InputTextWithHint(label, hint, var, buffer, width)
    if width then
        Widget.PushItemWidth(width)
    end
    return ImGui.InputTextWithHint(label, hint, var, buffer, Widget.GetInputFlags())
end

function Widget.InputInt(label, var, step, quickstep, width)
    if width then
        Widget.PushItemWidth(width)
    end
    return ImGui.InputInt(label, var, step, quickstep, Widget.GetInputFlags())
end

function Widget.InputFloat(label, var, step, quickstep, format, width)
    if width then
        Widget.PushItemWidth(width)
    end
    return ImGui.InputFloat(label, var, step, quickstep, format, Widget.GetInputFlags())
end

function Widget.Combo(label, var, options, max, width)
    if width then
        Widget.PushItemWidth(width)
    end
    if max then
        return ImGui.Combo(label, var, options, #options, max)
    end
    return ImGui.Combo(label, var, options, #options)
end

return Widget