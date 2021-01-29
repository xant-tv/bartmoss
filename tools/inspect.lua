local InspectTool = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logger = require(InspectTool.rootPath .. "utility.logger")
local System = require(InspectTool.rootPath .. "game.system")
local Glossary = require(InspectTool.rootPath .. "data.glossary")
local GameHandler = require(InspectTool.rootPath .. "handler.game")
local PlayerHandler = require(InspectTool.rootPath .. "handler.player")

function InspectTool:ExaminePerks()
    local dspd = self.system:PlayerDevelopmentData()
    for skill, perks in pairs(Glossary.Perks) do
        for key, perk in pairs(perks) do
            self.logger:Debug("ExaminePerk: " .. skill .. " > " .. key .. " | " .. perk)
            local perkrec = dspd:GetPerkRecord(perk)
            local name = self.handler.game:GetDisplayText(perkrec:Loc_name_key())
            local desc = self.handler.game:GetDisplayText(perkrec:Loc_desc_key())
            self.logger:Debug("PerkName: " .. name)
            self.logger:Debug("PerkDescription: " .. desc)
        end
    end
end

function InspectTool:New(parent)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "InspectTool"
    I.logger = Logger:New(parent.writer, I.module)
    I.system = System:New(I.logger)
    I.handler = {
        game = GameHandler:New(parent.writer, I.module),
        player = PlayerHandler:New(parent.writer, I.module)
    }

    return I

end

return InspectTool