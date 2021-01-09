local Widget = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function Widget.GetInputFlags()
    if (not IsTrapInputInImGui()) then
        return ImGuiInputTextFlags.ReadOnly
    else
        return ImGuiInputTextFlags.None
    end
end

return Widget