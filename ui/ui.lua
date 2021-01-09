local UI = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Draw = require(UI.rootPath .. "ui.draw")

function UI.Init()
end

function UI.Update(delta)
    if (ImGui.IsKeyPressed(0x71, false)) then
        UI.DrawWindow = not UI.DrawWindow
    end
end

function UI.Draw(app)
    Draw.SetWindowSize()
    if (UI.DrawWindow) then
        Draw.ApplyStyle()
        Draw.Build(app)
    end
end

function UI.ConsoleOpen()
    UI.DrawWindow = true
end

function UI.ConsoleClose()
    UI.DrawWindow = false
end

return UI