-- Debug inspection tool.
local InspectTool = {}

local Logger = require("utility/logger")
local System = require("game/system")
local Glossary = require("data/glossary")
local GameHandler = require("handler/game")
local PlayerHandler = require("handler/player")

function InspectTool:ExaminePerks()
    local dspd = self.system:PlayerDevelopmentData()
    for skill, perks in pairs(Glossary.Perks) do
        for key, perk in pairs(perks) do
            self.logger:Info("ExaminePerk: " .. skill .. " > " .. key .. " | " .. perk)
            local perkrec = dspd:GetPerkRecord(perk)
            local name = self.handler.game:GetDisplayText(perkrec:Loc_name_key())
            local desc = self.handler.game:GetDisplayText(perkrec:Loc_desc_key())
            self.logger:Info("PerkName: " .. name)
            self.logger:Info("PerkDescription: " .. desc)
        end
    end
end

function InspectTool:New()

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "InspectTool"
    I.logger = Logger:New(I.module)
    I.system = System:New()
    I.handler = {
        game = GameHandler:New(),
        player = PlayerHandler:New()
    }

    return I

end

return InspectTool