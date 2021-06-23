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

-- This function will basically be meaningless for people not running the same set of clothing model replacement mods.
function OutfitHack:GiveFemaleModdedCustomOutfit()
    local itemspecs = {
        {
            item = Glossary.Clothing.InnerTorso.Tank.Standard.Basic,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.InnerTorso.Tank.Standard.Punk.Basic,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.InnerTorso.Tank.Standard.SankakuNichibotsu,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.InnerTorso.Tank.Standard.Daemon,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.InnerTorso.Tank.Standard.SynFabric,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.InnerTorso.Tank.Standard.Sturdy,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.InnerTorso.Tank.Standard.X,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.OuterTorso.Coat.LongVest.Duolayer,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.OuterTorso.Coat.LongVest.Pattern,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.OuterTorso.Coat.LongVest.Dated,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Pants.Harem.Flexi,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Pants.Harem.Sporty,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Pants.Harem.Elastic,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Pants.Harem.PinkLagoon,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Shorts.Hotpants.Hybrid,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Shorts.Hotpants.BlueBrick,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Shorts.Hotpants.Trilayer,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Shorts.Hotpants.HeatResist,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Shorts.Hotpants.Golden,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Shorts.Hotpants.KoJaga,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Shorts.Jean.Composite,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Legs.Shorts.Jean.Frayed,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Biker.Heavy,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Biker.Reinforced,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Biker.Combat,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Biker.Tactical,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Biker.LightSpeed,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Biker.Orchid,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Snow.Pink,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Snow.Yuki,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Snow.Winter,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Snow.Zolotoy,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Snow.PixelNeige,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Boots.Snow.PinkuInku,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Kicks.SpunkyMonkey,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Kicks.Licks,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Kicks.Bermuda,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Kicks.Magenta,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Kicks.America,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Kicks.Murica,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Kicks.Worn,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Kicks.KashuuHanten,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Kicks.Bitch,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Kicks.YoruNoSamurai,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Athletic.Captain,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Athletic.Graffiti,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Athletic.Militech,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Athletic.Pastel,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.Athletic.Yuki,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.HighTops.Practical,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.HighTops.Punk.Black,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.HighTops.Rubber,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.HighTops.Sunny,
            quality = Glossary.Quality.Legendary
        },
        {
            item = Glossary.Clothing.Feet.Casual.HighTops.Tactical,
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