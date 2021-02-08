-- Parent user interface object.
local UI = {}

local Logger = require("utility/logger")
local DrawTool = require("ui/draw")

function UI:Init()
    spdlog.info("Init: " .. self.app.name .. " (" .. self.app.version .. ") successfully loaded!")
end

function UI:Update(delta)
end

function UI:Draw()
    self.drawtool:SetWindowSize()
    if (self.draw) then
        self.drawtool:Build(self.app)
    end
end

function UI:Open()
    self.draw = true
end

function UI:Close()
    self.draw = false
end

function UI:Shutdown()
end

function UI:New(app)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "UI"
    I.app = app
    I.logger = Logger:New(I.module)
    I.drawtool = DrawTool:New()

    return I

end

return UI