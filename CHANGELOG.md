# Release Notes
Patch notes will go here until I track releases properly through Git - hopefully some time this year.

## 0.8.0
Three primary focuses for this release:
 - Shift to a more object-oriented paradigm (internally-facing only). 
 - Glossary and item tagging improvements.
 - Additional fixes and improvement after CB2077 Patch 1.1 release.

Change notes:
 - Refactor of interfaces, handlers into objects. This changes how many elements are [interfaced](docs/INTERFACE.md) with.
 - Mod now logs into a `bartmoss.log` file within the mod folder instead of console. Will create a method for configuration later.
 - Almost complete clothing glossary. Currently missing `InnerTorso` and `Legs` items.
 - Discovered method for inspecting item tags. Can be used to remove `BlockUnequip` flags on items without save editing.
 - Fixed mod/attachment slot issues on upgrading items introduced by recent patch. 
 - Upside, there is now an avenue for removing and (soon) socketing item parts.

Personal comments:
 - I can't emphasize enough how unreliable many of this game's inbuilt scripting functions are.
 - Correctly clearing slots required rewriting the `Crafting:ClearNonIconicSlots` method.
 - This needed a workaround for the `Transaction:RemovePart` method which appears to regularly return the _incorrect_ part.

## 0.8.1
Minor code changes and preparation for proper releases:
 - Run `package.sh` to create mod archive.

## 0.8.2
Focus of this release:
 - Further glossary expansions.
 - Early exploratory work into perks and vehicles.

Change notes:
 - Discovered all iconic weapon mod identifiers and added to glossary. These mods aren't intended for manual use. Proper support will come soon.
 - Began building perk and vehicle glossary sections.
 - Support for `Development` and `DevelopmentData` systems. These are used for perk interaction among other things.
 - New `PlayerHandler` functions for adding or removing perks. Proper interface planned for next major version.