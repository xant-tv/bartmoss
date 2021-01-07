-- Pre-built outfit quickhacks for easy use. Mostly just things I like personally.
local Outfits = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local ItemHandler = require(Outfits.rootPath .. "cheats.itemhandler")
local Glossary = require(Outfits.rootPath .. "data.glossary")

function Outfits.GiveFemaleNomadCustomOutfit()
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

function Outfits.GiveFemaleCorpoCustomOutfit()
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

return Outfits