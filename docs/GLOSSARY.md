# Glossary
Contains a variety of dictionaries and property lookups to make your life easier.

All glossary items can be used internally and when calling other functions.
```lua
-- I want some Armadillo mods!
Bartmoss.Cheats.Items.GiveItem(Bartmoss.Glossary.Mods.Clothing.Armadillo, 20, "Legendary")
```
Glossaries are currently still a work in progress.

## Weapons
Available in three broad categories - melee, ranged and grenade.
```lua
-- Weapon presets glossary.
Bartmoss.Glossary.Weapons.Ranged.Quasar.Pimp
Bartmoss.Glossary.Weapons.Melee.Katana.Iconic.Satori.Legendary
Bartmoss.Glossary.Weapons.Grenade.Incendiary.Homing
```

## Cyberware
Categorised by cyberware slot, item and quality.
```lua
-- Cyberware glossary.
Bartmoss.Glossary.Cyberware.Circulatory.SecondHeart.Legendary
```

## Quickhacks
Actual in-game quickhacks - not those facilitated by Bartmoss interface.
```lua
-- Quickhacks glossary.
Bartmoss.Glossary.Quickhacks.RebootOptics.Legendary
```

## Mods
Split by mod type and (for cyberware) slot.
```lua
-- Mods lookup by clothing, ranged, melee or cyberware types.
Bartmoss.Glossary.Mods.Clothing.Fortuna
Bartmoss.Glossary.Mods.Ranged.Crunch
Bartmoss.Glossary.Mods.Melee.Scourge
Bartmoss.Glossary.Mods.Cyberware.Arms.MantisBlades.Edge.Physical
```

## Attachments
Split by attachment type and item.
``` lua
-- Attachments glossary.
Bartmoss.Glossary.Attachments.Silencer.Alecto
```

## Resources
Split by resource, type and rarity.
```lua
-- Resource glossary.
Bartmoss.Glossary.Resources.Components.Crafting.Legendary
Bartmoss.Glossary.Resources.Components.Upgrade.Epic
Bartmoss.Glossary.Resources.Components.Quickhack.Rare
```