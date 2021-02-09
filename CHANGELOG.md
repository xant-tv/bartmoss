# Release Notes
Patch notes will go here until I track releases properly through Git - hopefully some time this year.

## 0.8.0 - 23/01/2021
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

## 0.8.1 - 26/01/2021
Minor code changes and preparation for proper releases:
 - Run `package.sh` to create mod archive.

## 0.8.2 - 29/01/2021
Focus of this release:
 - Further glossary expansions.
 - Early exploratory work into perks and vehicles.

Change notes:
 - Discovered all iconic weapon mod identifiers and added to glossary. These mods aren't intended for manual use. Proper support will come soon.
 - Began building perk and vehicle glossary sections.
 - Support for `Development` and `DevelopmentData` systems. These are used for perk interaction among other things.
 - New `PlayerHandler` functions for adding or removing perks. Proper interface planned for next major version.

## 0.8.3 - 30/01/2021
Focus of this release:
 - Additional part-related functionality.
 - Complete perk (and traits) glossary and research.

Change notes:
 - Discovered and recorded all mod and attachment (part) slot identifiers in glossary.
 - Created an `AddPart` function within `ItemHandler` which enables parts to be inserted into weapons.
 - Presets generated via `CustomHack` now support part specifications.
 - Finished documenting all perks. Create a handy `InspectTool` to help with this task. May expand later as needed. 
 - Discovered traits (the "ultimate" perk) which have to be handled separately. 
 - Polished perk-related functions in `PlayerHandler` and created equivalents for traits. Note that these are not entirely functional!
 - Fixed an issue that allowed repeated "snowballing" of armor values.

Personal comments:
 - Note that locking and unlocking perk areas is only temporary. Reloading the character menu will re-evaluate locks properly.
 - While an area is locked perks will show as unobtained but they are actually still allocated. Test this yourself with craftsman perks.

## 0.8.4 - 08/02/2021
Minor release to support latest CET release. Hopefully this is the last of the breaking changes. :weary:
 - All `require` paths now relative to mod location and use `/` separators.
 - No longer need to manually reset loaded packages cache.
 - Switch log messages to mostly use `info` instead of `warning` unless there is need.

## 0.8.5 - 09/02/2021
Focus of this release:
 - Complete clothing glossary.

Change notes:
 - Completed legs and inner torso glossaries!
 - Fixed a bug with outfit quickhacks trying to call the `ItemHandler` incorrectly.
 - Changed logger construction now that `spdlog` is properly supported in sandbox context (no difference for an end user).