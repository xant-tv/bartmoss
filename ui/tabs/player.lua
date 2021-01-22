local PlayerCheatsTab = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Style = require(PlayerCheatsTab.rootPath .. "ui.style")
local State = require(PlayerCheatsTab.rootPath .. "ui.state")
local Widget = require(PlayerCheatsTab.rootPath .. "utility.widget")
local PlayerHandler = require(PlayerCheatsTab.rootPath .. "handler.player")

function PlayerCheatsTab.DoExperience()
    local amount = State.PlayerTab.ExpAmount
    if amount < 0 then
        return
    end
    PlayerHandler.GiveXP(State.PlayerTab.AttrOptions[State.PlayerTab.AttrSelect + 1], amount)
end

function PlayerCheatsTab.BuildExpGiver()
    Widget.Separator()
    Widget.Spacing()
    Widget.Text("Experience")
    Widget.Text(" - Select attribute and amount.")
    -- Return value is the index of the chosen element.
    State.PlayerTab.AttrSelect = Widget.Combo("##Attribute", State.PlayerTab.AttrSelect, State.PlayerTab.AttrOptions, nil, Style.Size.PlayerTab.Text.Width)
    Widget.SameLine(Style.Size.PlayerTab.Text.Width + Style.Size.SmallColSpacer)
    State.PlayerTab.ExpAmount = Widget.InputInt("##Amount", State.PlayerTab.ExpAmount, 1000, 1000, Style.Size.PlayerTab.Integer.Width)
    Widget.SameLine(Style.Size.PlayerTab.Text.Width + Style.Size.PlayerTab.Integer.Width + Style.Size.PlayerTab.Integer.Offset + Style.Size.SmallColSpacer)
    if (Widget.Button("Add XP")) then
        PlayerCheatsTab.DoExperience()
    end
    Widget.Spacing()
end

function PlayerCheatsTab.BuildDisplay()
    Widget.Spacing()
    Widget.Text("Lets the player:")
    Widget.Text(" - Add experience to levels or attributes.")
    Widget.Text(" - Probably some other stuff later...")
    Widget.Spacing()
end

function PlayerCheatsTab.Build()
    if (Widget.BeginTabItem("Player")) then
        PlayerCheatsTab.BuildDisplay()
        PlayerCheatsTab.BuildExpGiver()
        Widget.Separator()
        Widget.EndTabItem()
    end
end

return PlayerCheatsTab