-- Pre-built outfit quickhacks for easy use. Mostly just things I like personally.
local OutfitHack = {}

local Logger = require("utility/logger")
local Glossary = require("data/glossary")
local ItemHandler = require("handler/item")

function OutfitHack:GiveCustomOutfit()
    local itemspecs = {
        {
            item = Glossary.Clothing.Face.Glasses.Aviators.Stylish,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Special.V.Basic,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Special.V.Basic,
            quality = Glossary.Quality.Legendary
        }
    }
    self.handler.item:GiveMultiple(itemspecs)
end

function OutfitHack:New()

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.module = "OutfitHack"
    I.logger = Logger:New(I.module)
    I.handler = {
        item = ItemHandler:New()
    }

    return I

end

return OutfitHack