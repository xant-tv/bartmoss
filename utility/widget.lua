local Widget = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Types = require(Widget.rootPath .. "utility.types")

Widget.Color = {
    White  = {1.00, 1.00, 1.00, 1.00},
    Yellow = {1.00, 1.00, 0.00, 1.00},
    Red    = {1.00, 0.00, 0.00, 1.00}
}

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

function Widget.PushStyleColor(style, clr)
    return ImGui.PushStyleColor(style, clr[1], clr[2], clr[3], clr[4])
end

function Widget.PopStyleColor(n)
    if n then
        return ImGui.PopStyleColor(n)
    end
    return ImGui.PopStyleColor()
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

function Widget.Checkbox(label, var, highlight)
    local clr = Widget.Color.White
    if highlight then
        clr = Widget.Color.Yellow
    end
    Widget.PushStyleColor(ImGuiCol.Text, clr)
    local rvar, active = ImGui.Checkbox(label, var)
    Widget.PopStyleColor()
    return rvar, active
end

function Widget.InputTextWithHint(label, hint, var, buffer, width)
    if width then
        Widget.PushItemWidth(width)
    end
    return ImGui.InputTextWithHint(label, hint, var, buffer)
end

function Widget.InputInt(label, var, step, quickstep, width)
    if width then
        Widget.PushItemWidth(width)
    end
    return ImGui.InputInt(label, var, step, quickstep)
end

function Widget.InputFloat(label, var, step, quickstep, format, width, highlight)
    if width then
        Widget.PushItemWidth(width)
    end
    local clr = Widget.Color.White
    if highlight then
        clr = Widget.Color.Yellow
    end
    Widget.PushStyleColor(ImGuiCol.Text, clr)
    local rvar, active = ImGui.InputFloat(label, var, step, quickstep, format)
    Widget.PopStyleColor()
    return rvar, active
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