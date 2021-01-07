-- Pre-built quickhacks for easy use.
local Quickhacks = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local ItemHandler = require(Quickhacks.rootPath .. "cheats.itemhandler")
local EquipmentHandler = require(Quickhacks.rootPath .. "cheats.equipmenthandler")
local Glossary = require(Quickhacks.rootPath .. "data.glossary")

function Quickhacks.GiveFemaleNomadCustomOutfit()
    local itemspecs = {
        {
            item = "Items.Jacket_14_basic_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Undershirt_02_basic_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Glasses_01_basic_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Shorts_01_basic_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Shorts_01_rich_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Boots_01_basic_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Boots_02_basic_02", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Boots_09_basic_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Pants_01_basic_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Pants_01_basic_02", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Pants_01_rich_02", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Pants_03_basic_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Pants_03_basic_02", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Pants_03_rich_03", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Pants_05_rich_02", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Q001_Pants", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Q001_Shoes", 
            quality = Glossary.Quality.Legendary
        }
    }
    ItemHandler.GiveMultiple(itemspecs)
end

function Quickhacks.GiveFemaleCorpoCustomOutfit()
    local itemspecs = {
        {
            item = "Items.Fixer_01_Set_Glasses", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.TightJumpsuit_01_basic_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.TightJumpsuit_01_rich_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Jacket_11_basic_02", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Vest_19_rich_02", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Vest_19_basic_02", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Shorts_01_basic_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Pants_03_rich_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Dress_02_basic_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.FormalSkirt_01_basic_02", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.FormalSkirt_01_rich_02", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.FormalSkirt_02_basic_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.FormalSkirt_02_basic_03", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.FormalSkirt_02_rich_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.FormalSkirt_02_rich_02", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Boots_09_basic_01", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.Boots_09_rich_03", 
            quality = Glossary.Quality.Legendary
        },
        {
            item = "Items.FormalShoes_01_rich_01", 
            quality = Glossary.Quality.Legendary
        }
    }
    ItemHandler.GiveMultiple(itemspecs)
end

function Quickhacks.GiveEndgameMods()
    local itemspecs = {
        {
            item = Glossary.ClothingMods.AntiVenom,
            quantity = 2
        },
        {
            item = Glossary.ClothingMods.Armadillo,
            quality = Glossary.Quality.Legendary,
            quantity = 60,
        },
        {
            item = Glossary.ClothingMods.BoomBreaker,
            quality = Glossary.Quality.Legendary,
            quantity = 10
        },
        {
            item = Glossary.ClothingMods.Bully,
            quantity = 10
        },
        {
            item = Glossary.ClothingMods.CoolIt,
            quantity = 10
        },
        {
            item = Glossary.ClothingMods.CutItOut,
            quantity = 10
        },
        {
            item = Glossary.ClothingMods.DeadEye,
            quantity = 10
        },
        {
            item = Glossary.ClothingMods.Fortuna,
            quantity = 10
        },
        {
            item = Glossary.ClothingMods.Panacea,
            quantity = 10
        },
        {
            item = Glossary.ClothingMods.SoftSole,
            quantity = 5
        },
        {
            item = Glossary.ClothingMods.SuperInsulator,
            quantity = 2
        },
        {
            item = Glossary.ClothingMods.ZeroDrag,
            quality = Glossary.Quality.Legendary,
            quantity = 10
        },
        {
            item = Glossary.RangedMods.Bouncy,
            quantity = 2
        },
        {
            item = Glossary.RangedMods.Crunch,
            quality = Glossary.Quality.Legendary,
            quantity = 30
        },
        {
            item = Glossary.RangedMods.CombatAmplifier,
            quantity = 6
        },
        {
            item = Glossary.RangedMods.CounterMass,
            quantity = 6
        },
        {
            item = Glossary.RangedMods.Pacifier,
            quality = Glossary.Quality.Legendary,
            quantity = 30
        },
        {
            item = Glossary.RangedMods.Penetrator,
            quality = Glossary.Quality.Legendary,
            quantity = 10
        },
        {
            item = Glossary.RangedMods.Phantom,
            quantity = 10
        },
        {
            item = Glossary.RangedMods.NeonArrow,
            quantity = 2
        },
        {
            item = Glossary.RangedMods.Vendetta,
            quantity = 10
        },
        {
            item = Glossary.MeleeMods.ColdShoulder,
            quantity = 7
        },
        {
            item = Glossary.MeleeMods.Kunai,
            quantity = 7
        },
        {
            item = Glossary.MeleeMods.Scourge,
            quantity = 7
        },
        {
            item = Glossary.MeleeMods.WhiteKnuckled,
            quantity = 7
        }
    }
    ItemHandler.GiveMultiple(itemspecs)
end

function Quickhacks.MakeMeLegendary()
    EquipmentHandler.MakeEquippedItemsLegendary()
end

return Quickhacks