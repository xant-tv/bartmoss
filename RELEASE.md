# Release Notes
Patch notes will go here until I track releases properly through Git - hopefully some time this year.

## 0.8.0
Three primary focuses for this release:
 - Shift to a more object-oriented paradigm (internally-facing only). 
 - Glossary and item tagging improvements.
 - Additional fixes and improvement after CB2077 Patch 1.1 release.

Change notes:
 - Refactor of interfaces, handlers into objects. This changes how they are [interfaced](docs/INTERFACE.md) with.
 - Almost complete clothing glossary. Currently missing `InnerTorso` and `Legs` items.
 - Discovered method for inspecting item tags. Can be used to remove `BlockUnequip` flags on items without save editing.
 - Fixed mod/attachment slot issues on upgrading items introduced by recent patch. 
 - Upside, there is now an avenue for removing and (soon) socketing item parts.

Personal comments:
 - I can't emphasize enough how unreliable many of this game's inbuilt scripting functions are.
 - Correctly clearing slots required rewriting the `Crafting:ClearNonIconicSlots` method.
 - This needed a workaround for the `Transaction:RemovePart` method which appears to regularly return the _incorrect_ part.