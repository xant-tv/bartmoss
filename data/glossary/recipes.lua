-- Recipes for clothing, weapons, mods all contained here.
local Recipes = {}

-- TODO: Lots of work required to fill this out.

Recipes = {
    Weapons = {
        Ranged = {
        },
        Melee = {
        },
    },
    Clothing = {
        Head = {
        },
        Face = {
            Glasses = {
                Sport = "Items.RareGlassesRecipe",
                Johnny = {
                    Epic = "Items.Recipe_Q005_Johnny_Glasses_Epic",
                    Legendary = "Items.Recipe_Q005_Johnny_Glasses_Legendary"
                }
            },
            Goggles = {
                Arasaka = "Items.UncommonVisorRecipe"
            },
            Mask = {
                Titanium = "Items.RareMaskRecipe",
                Mox = "Items.UncommonMaskRecipe"
            },
            Visor = {
                Ocuset = "Items.RareTechRecipe"
            },
            Wreath = {
                Tungsten = "Items.UncommonTechRecipe"
            }
        },
        InnerTorso = {
            Shirt = {
                Universe = "Items.EpicLooseShirtRecipe",
                DenkiHachi = "Items.EpicUndershirtRecipe",
                Psycho = "Items.RareShirtRecipe",
                Biker = "Items.UncommonShirtRecipe",
                Geisha = "Items.LegendaryShirtRecipe",
                NUSA = "Items.RareTShirtRecipe",
                Wolf = {
                    Epic = "Items.Recipe_GOG_DLC_TShirt_Epic",
                    Legendary = "Items.Recipe_GOG_DLC_TShirt_Legendary"
                },
                Galaxy = {
                    Epic = "Items.Recipe_GOG_Galaxy_TShirt_Epic",
                    Legendary = "Items.Recipe_GOG_Galaxy_TShirt_Legendary"
                }
            },
            Tank = {
                Ultralight = "Items.EpicTShirtRecipe",
                Daemon = "Items.LegendaryTShirtRecipe",
                Johnny = {
                    Epic = "Items.Recipe_Q005_Johnny_Shirt_Epic",
                    Legendary = "Items.Recipe_Q005_Johnny_Shirt_Legendary"
                }
            },
            Bra = {
                Atomic = "Items.RareUndershirtRecipe",
                Spotted = "Items.UncommonUndershirtRecipe"
            },
            Suit = {
                Racing = "Items.LegendaryJumpsuitRecipe",
                Netrunning = "Items.LegendaryTightJumpsuitRecipe"
            }
        },
        OuterTorso = {
        },
        Legs = {
        },
        Feet = {
        }
    },
    Quickhacks = {
    },
    Mods = {
    }
}

return Recipes