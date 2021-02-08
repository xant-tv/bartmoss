-- Interface for direct interaction with player cheats.
local PlayerCheatsTab = {}

local Logger = require("utility/logger")
local Widget = require("utility/widget")
local Style = require("ui/style")
local State = require("ui/state")
local PlayerHandler = require("handler/player")

function PlayerCheatsTab:DoExperience()
    local amount = self.state.ExpAmount
    if amount < 0 then
        return
    end
    self.handler.player:GiveXP(self.state.AttrOptions[self.state.AttrSelect + 1], amount)
end

function PlayerCheatsTab:BuildExpGiver()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("Experience")
    Widget.Text(" - Select attribute and amount.")
    -- Return value is the index of the chosen element.
    self.state.AttrSelect = Widget.Combo("##Attribute", self.state.AttrSelect, self.state.AttrOptions, nil, Style.Size.PlayerTab.Text.Width)
    Widget.SameLine(Style.Size.PlayerTab.Text.Width + Style.Size.SmallColSpacer)
    self.state.ExpAmount = Widget.InputInt("##Amount", self.state.ExpAmount, 1000, 1000, Style.Size.PlayerTab.Integer.Width)
    Widget.SameLine(Style.Size.PlayerTab.Text.Width + Style.Size.PlayerTab.Integer.Width + Style.Size.PlayerTab.Integer.Offset + Style.Size.SmallColSpacer)
    if (Widget.Button("Add XP")) then
        self:DoExperience()
    end
    Widget.Spacing()
end

function PlayerCheatsTab:BuildDisplay()
    Widget.Spacing()
    Widget.Text("Lets the player:")
    Widget.Text(" - Add experience to levels or attributes.")
    Widget.Text(" - Probably some other stuff later...")
    Widget.Spacing()
end

function PlayerCheatsTab:Build()
    if (Widget.BeginTabItem("Player")) then
        self:BuildDisplay()
        self:BuildExpGiver()
        Widget.Separator()
        Widget.EndTabItem()
    end
end

function PlayerCheatsTab:New()

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "PlayerCheats"
    I.logger = Logger:New(I.module)
    I.state = State.PlayerTab
    I.handler = {
        player = PlayerHandler:New()
    }

    return I

end

return PlayerCheatsTab