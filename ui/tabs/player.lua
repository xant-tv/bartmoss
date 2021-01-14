local PlayerCheatsTab = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Style = require(PlayerCheatsTab.rootPath .. "ui.style")
local State = require(PlayerCheatsTab.rootPath .. "ui.state")
local Widget = require(PlayerCheatsTab.rootPath .. "utility.widget")
local PlayerHandler = require(PlayerCheatsTab.rootPath .. "cheats.playerhandler")

function PlayerCheatsTab.DoExperience()
    local amount = State.PlayerTab.ExpAmount
    if amount < 0 then
        return
    end
    PlayerHandler.GiveXP(State.PlayerTab.AttrOptions[State.PlayerTab.AttrSelect + 1], amount)
end

function PlayerCheatsTab.BuildExpGiver()
    ImGui.Separator()
    ImGui.Spacing()
    ImGui.Text("Experience")
    ImGui.Text(" - Select attribute and amount.")
    ImGui.PushItemWidth(Style.Size.PlayerTab.Text.Width)
    -- Return value is the index of the chosen element.
    State.PlayerTab.AttrSelect = ImGui.Combo("##Attribute", State.PlayerTab.AttrSelect, State.PlayerTab.AttrOptions, #State.PlayerTab.AttrOptions)
    ImGui.SameLine(Style.Size.PlayerTab.Text.Width + Style.Size.SmallColSpacer)
    ImGui.PushItemWidth(Style.Size.PlayerTab.Integer.Width)
    State.PlayerTab.ExpAmount = ImGui.InputInt("##Amount", State.PlayerTab.ExpAmount, 1000, 1000, Widget.GetInputFlags())
    ImGui.SameLine(Style.Size.PlayerTab.Text.Width + Style.Size.PlayerTab.Integer.Width + Style.Size.PlayerTab.Integer.Offset + Style.Size.SmallColSpacer)
    if (ImGui.Button("Add XP")) then
        PlayerCheatsTab.DoExperience()
    end
    ImGui.Spacing()
end

function PlayerCheatsTab.BuildDisplay()
    ImGui.Spacing()
    ImGui.Text("Lets the player:")
    ImGui.Text(" - Add experience to levels or attributes.")
    ImGui.Text(" - Probably some other stuff later...")
    ImGui.Spacing()
end

function PlayerCheatsTab.Build()
    if (ImGui.BeginTabItem("Player")) then
        PlayerCheatsTab.BuildDisplay()
        PlayerCheatsTab.BuildExpGiver()
        ImGui.Separator()
        ImGui.EndTabItem()
    end
end

return PlayerCheatsTab