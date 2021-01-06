# Bartmoss
A suite of Lua scripts to simplify interaction with the Cyberpunk 2077 console while maintaining game integrity and user safety.

## Requirements
 - Cyberpunk 2077 (version 1.0.6)
 - [CyberEngineTweaks](https://github.com/yamashi/CyberEngineTweaks) (version 1.8.2+)

## Installation
```bash
$ git clone https://github.com/xant-tv/bartmoss
```
Place `bartmoss` directory into `\bin\x64\plugins\cyber_engine_tweaks\mods\` within your Cyberpunk 2077 install location.

## In-Game Console
```lua
-- Hook the mod in the console.
Bartmoss = GetMod("bartmoss")
```
All interfaces loaded in `init.lua` will now be available.

## Quickhacks
```lua
-- Gives a mix of desirable endgame mods at your current character level.
Bartmoss.Quickhacks.GiveEndgameMods() 

-- Scales to level and makes all of your equipped items legendary.
Bartmoss.Quickhacks.MakeMeLegendary()
```

## Interfaces
The following lower-level interfaces are available.

### System
Shortcuts to easily gain access to certain game entities or systems.
```lua
-- Returns player entity.
p = Bartmoss.System.Player()
pd = Bartmoss.System.PlayerData()

-- Access various low-level systems.
ts = Bartmoss.System.TransactionSystem()
cs = Bartmoss.System.CraftingSystem()
es = Bartmoss.System.EquipmentSystem()
ssc = Bartmoss.System.ScriptableSystemsContainer()
```

### Glossary
Contains a variety of dictionaries and property lookups to make your life easier.
```lua
-- Easy lookups for mods by clothing, ranged or melee types.
Bartmoss.Glossary.ClothingMods.Fortuna
Bartmoss.Glossary.RangedMods.Crunch
Bartmoss.Glossary.MeleeMods.Scourge
```
These can be used internally and when calling other functions.
```lua
-- I want some Armadillo mods!
Bartmoss.Cheats.Items.GiveItem(Bartmoss.Glossary.ClothingMods.Armadillo, 20, "Legendary")
```
Glossaries are currently still a work in progress.

### Cheats.Items
Lower-level access to item-related cheats.
```lua
-- Give character-scaled items.
-- Item names can be obtained from glossaries.
Bartmoss.Cheats.Items.GiveItem(item)

-- Also supports quantity.
Bartmoss.Cheats.Items.GiveItem(item, quantity)

-- And quality (some endgame items will be forced to specific qualities).
Bartmoss.Cheats.Items.GiveItem(item, quantity, quality)
```

### Cheats.Equipment
Lower-level access to equipment-related cheats. Similar functionality but focused on what you already have.
```lua
-- Self-explanatory, really.
Bartmoss.Cheats.Equipment.MakeEquippedItemsLegendary()
```