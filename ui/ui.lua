local UI = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Draw = require(UI.rootPath .. "ui.draw")

function UI.Init(app)
    print(app.name .. " (" .. app.version .. ") successfully loaded!")
end

function UI.Update(delta)
end

function UI.Draw(app)
    Draw.SetWindowSize()
    if (UI.DrawWindow) then
        Draw.Build(app)
    end
end

function UI.ConsoleOpen()
    UI.DrawConsole = true
    UI.DrawWindow = true
end

function UI.ConsoleClose()
    UI.DrawConsole = false
    UI.DrawWindow = false
end

return UI