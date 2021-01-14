# Frequently Asked Questions

## What does this mod do?
Bartmoss lets you:
 - Control item stats such as quality (rarity), item level or weapon damage and effects.
 - Give the player new items with these controls.
 - Modify existing items in the player's inventory.
 - Easily find and reference items by name instead of obscure hashes.
 - Do all this through a simple UI in-game!

![bartmoss_items_ui](images/item.png)
![bartmoss_weapons_ui](images/weapon.png)

## Why should I use this mod?
Item generation in Cyberpunk 2077 is a very complicated process that has a lot of unseen steps which other mods or simple commands may not follow. Simple commands for upgrading item level or quality [can have unintended side-effects](https://www.youtube.com/watch?v=l13OkxImayk).

Bartmoss handles all this complexity for you:
 - Check if the item is stackable and use appropriate generation method.
 - Check if the item is of fixed-quality and enforce.
 - Check if the item is of fixed-level and enforce expected level.
 - Generate a new random seed for each item.
 - Remove any unwanted flags (quest, etc.) and application of desired ones.
 - Apply any desired item modifiers or statistics.

## I want an item that isn't in the glossary!
I'm still in the process of manually building and reviewing the glossary.
Until then the item will not be available via the user interface.

You can still use any raw item string with Bartmoss commands.
```lua
Bartmoss = GetMod("bartmoss")
Bartmoss.Cheats.Items.GiveN("Items.item_not_in_glossary", 1, "Legendary", 50)
```

Items added this way will not undergo the typical quality or level force checks.

## This item doesn't let me set its quality or level!
Many items in the game are generated at specific levels or forced to be specific qualities. 
In such cases, each item is represented by multiple item bases rather than a single scalable one.

This is true for:
 - Iconic weapons (fixed quality).
 - All cyberware (fixed level and quality).
 - Almost all mods and attachments (usually have fixed quality).
 - All crafting resources (fixed quality).
 - All stackable items (fixed level and quality).

This mod attempts to be faithful to the way these items are naturally found in-game.
It would serve no purpose and may in fact cause further problems to generate these bases with non-intended statistics.