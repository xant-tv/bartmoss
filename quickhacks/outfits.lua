-- Pre-built outfit quickhacks for easy use. Mostly just things I like personally.
local OutfitHack = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

local Logger = require(OutfitHack.rootPath .. "utility.logger")
local Glossary = require(OutfitHack.rootPath .. "data.glossary")
local ItemHandler = require(OutfitHack.rootPath .. "handler.item")

function OutfitHack:GiveFemaleNomadCustomOutfit()
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
    self.itemhandler:GiveMultiple(itemspecs)
end

function OutfitHack:GiveFemaleCorpoCustomOutfit()
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
            item = "Items.Jacket_17_rich_02",
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
            item = "Items.Boots_09_old_01",
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
    self.itemhandler:GiveMultiple(itemspecs)
end

function OutfitHack:New(parent)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "OutfitHack"
    I.logger = Logger:New(parent.writer, I.module)
    I.handler = {
        item = ItemHandler:New(I.logger)
    }

    return I

end

return OutfitHack