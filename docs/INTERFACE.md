# Interfaces
The following interfaces are available.

## Quickhacks
```lua
-- Gives a mix of desirable endgame mods at your current character level.
Bartmoss.Quickhacks.Inventory.GiveEndgameMods() 

-- Scales to level and makes all of your equipped items legendary.
Bartmoss.Quickhacks.Inventory.MakeMeLegendary()
```

## System
Shortcuts to easily gain access to certain game entities or systems.
```lua
-- Returns player entity.
p = Bartmoss.System.Player()
pd = Bartmoss.System.PlayerData()

-- Access various low-level systems.
ts = Bartmoss.System.Transaction()
cs = Bartmoss.System.Crafting()
es = Bartmoss.System.Equipment()
ssc = Bartmoss.System.ScriptableSystemsContainer()
```

## Utilities
Helpful functions to find/navigate the glossary from console.
```lua
-- Find an item or glossary element you are looking for.
-- Output can also be captured as an array.
matches = Bartmoss.Utility.Search("Trauma")
>> Glossary.Weapons.Ranged.Dian.Trauma
>> Glossary.Weapons.Ranged.Masamune.Trauma
>> Glossary.Weapons.Ranged.Zhuo.Trauma

-- Describe a glossary item.
Bartmoss.Utility.Describe(Bartmoss.Glossary.Weapons.Ranged.Dian) -- By element.
Bartmoss.Utility.Describe("Glossary.Weapons.Ranged.Dian") -- By pathstring (without mod object prefix).
>> ├── Default
>> ├── Iconic
>> │   └── YingLong
>> │       └── Legendary
>> ├── Military
>> ├── Neon
>> ├── Pimp
>> └── Trauma
```

## Handler.Items
Lower-level access to item-related functionality.
```lua
-- Give the player items.
-- Item names can be obtained from glossaries.
-- If level is not provided, item will scale to character level.
-- Some items will be forced to certain qualities or levels.
Bartmoss.Handler.Items.Give(item, quality, level)
Bartmoss.Handler.Items.GiveN(item, quantity, quality, level)

-- Set level, quality or add any other modifier to underlying item data.
Bartmoss.Handler.Items.SetLevel(itemdata, level)
Bartmoss.Handler.Items.SetQuality(itemdata, quality)
Bartmoss.Handler.Items.AddModifier(itemdata, modtype, calc, val)
```

## Handler.Equipment
Lower-level access to equipment-related functionality. Similar to items but focused on what you already have.
```lua
-- Quickly return item data in a particular equip slot.
itemdata = Bartmoss.Handler.Equipment.GetItemDataInSlot(slot, index)
```