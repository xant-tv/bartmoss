-- Pre-built outfit quickhacks for easy use. Mostly just things I like personally.
local OutfitHack = {}

local Logger = require("utility/logger")
local Glossary = require("data/glossary")
local ItemHandler = require("handler/item")

function OutfitHack:GiveFemaleNomadCustomOutfit()
    local itemspecs = {
        {
            item = Glossary.Clothing.OuterTorso.Jacket.BoleroBomber.Rubber,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.InnerTorso.Undershirt.Bra.Spotted,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Face.Glasses.Aviators.Stylish,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Shorts.CutOff.Denim,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Shorts.CutOff.Magenta,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Platform.UniWare,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Shorties.Rocker,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.ExoJacks.Biker,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.FormalPants.Pleated.Sturdy,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Pants.SlimFit.Azure,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Pants.SlimFit.Basilisk,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Pants.Jeans.Sturdy,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Pants.Jeans.Canine,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Pants.Jeans.Psycho,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Pants.Racers.YoruNoSamurai,
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

function OutfitHack:GiveFemaleCorpoCustomOutfit()
    local itemspecs = {
        {
            item = Glossary.Clothing.Face.Special.Fixer,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.InnerTorso.Jumpsuit.Netrunner.Military,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.InnerTorso.Jumpsuit.Netrunner.Arasaka,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.OuterTorso.Jacket.Foldtop.Basic,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.OuterTorso.Jacket.Pozer.Torera,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.OuterTorso.Vest.Yukata.Murasaki,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.OuterTorso.Vest.Yukata.Elegant,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Shorts.CutOff.Denim,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.FormalPants.Office.Marble,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.OuterTorso.Dress.Formal.SynWeave,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.FormalSkirt.Straight.Classy,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.FormalSkirt.Straight.Mosaic,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.FormalSkirt.Angled.TearResist,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.FormalSkirt.Angled.Saeko,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.FormalSkirt.Angled.Heise,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.FormalSkirt.Angled.Brass,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.ExoJacks.Punk,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.ExoJacks.Biker,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.ExoJacks.Rouge,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Formal.Pumps.Office.Silbermond,
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