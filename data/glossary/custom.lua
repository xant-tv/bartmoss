-- Recipes for custom clothing contained here.
-- Manually required changes to support mods.
local Custom = {}

Custom = {
    Spawn0 = {
        Head = {
            Subdermal = "Items.sp0subarmor0101"
        },
        Face = {
            Subdermal = "Items.sp0subarmor0102"
        },
        InnerTorso = {
            Bodysuit = {
                Anarchist = "Items.sp0bsuit0104",
                Classy = "Items.sp0bsuit0103",
                Prototype = "Items.sp0bsuit0102",
                Rich = "Items.sp0bsuit0101"
            },
            Corset = {
                Armored = "Items.sp0gorsette0101",
                Black = "Items.sp0gorsette0103",
                Camo = "Items.sp0gorsette0104",
                Pink = "Items.sp0gorsette0102",
                Rich = "Items.sp0gorsette0105",
                Six = "Items.sp0gorsette0106"
            },
            Dress = {
                Holo = "Items.sp0minid0205",
                Leather = "Items.sp0minid0206",
                Red = "Items.sp0minid0204",
                Transparent = "Items.sp0minid0201",
                Yellow = "Items.sp0minid0203"
            },
            Leotard = {
                Bloody = "Items.sp0leotard0103",
                Duolayer = "Items.sp0leotard0105",
                Holo = "Items.sp0leotard0102",
                Rich = "Items.sp0leotard0104",
                Sturdy = "Items.sp0leotard0106",
                Translucent = "Items.sp0leotard0101"
            },
            MicroBikini = {
                Bitch = "Items.sp0micro0112",
                Blue = "Items.sp0micro0103",
                Braindance = "Items.sp0micro0106",
                Burn = "Items.sp0micro0101",
                Composite = "Items.sp0micro0109",
                Panther = "Items.sp0micro0107",
                Pink = "Items.sp0micro0104",
                Punch = "Items.sp0micro0102",
                Samurai = "Items.sp0micro0105",
                Skull = "Items.sp0micro0110",
                Steel = "Items.sp0micro0111",
                Tokyo = "Items.sp0micro0108",
                YoruNoSamurai = "Items.sp0micro0113"
            },
            MiniDress = {
                Denim = "Items.sp0minid0106",
                Elegant = "Items.sp0minid0109",
                Geisha = "Items.sp0minid0107",
                Gold = "Items.sp0minid0108",
                Holo = "Items.sp0minid0104",
                Leopard = "Items.sp0minid0102",
                Old = "Items.sp0minid0101",
                Ultralight = "Items.sp0minid0110",
                Used = "Items.sp0minid0103",
                Yellow = "Items.sp0minid0105"
            },
            SkimpTop = {
                Camo = "Items.sp0top0102",
                Chic = "Items.sp0top0104",
                Kevlar = "Items.sp0top0103",
                Latex = "Items.sp0top0105",
                Rich = "Items.sp0top0106",
                Stylish = "Items.sp0top0101"
            }
        },
        Legs = {
            MiniSkirt = {
                Camo = "Items.sp0skirt0401",
                Composite = "Items.sp0skirt0201",
                Corporate = "Items.sp0skirt0302",
                Duolayer = "Items.sp0skirt0203",
                Elegant = "Items.sp0skirt0402",
                Gold = "Items.sp0skirt0306",
                Latex = "Items.sp0skirt0406",
                Leather = "Items.sp0skirt0202",
                NeoSilk = "Items.sp0skirt0305",
                Pink = "Items.sp0skirt0303",
                Purple = "Items.sp0skirt0307",
                Red = "Items.sp0skirt0304",
                Rich = {
                    Formal = "Items.sp0skirt0404",
                    Stylish = "Items.sp0skirt0405"
                },
                Silver = "Items.sp0skirt0301",
                Stylish = "Items.sp0skirt0403",
                Transparent = "Items.sp0skirt0204",
            },
            PlaidSkirt = {
                Black = "Items.sp0pskirt0101",
                Copper = "Items.sp0pskirt0105",
                Flower = "Items.sp0pskirt0104",
                Gold = "Items.sp0pskirt0108",
                Leather = "Items.sp0pskirt0103",
                Pink = "Items.sp0pskirt0110",
                Red = "Items.sp0pskirt0102",
                Rich = "Items.sp0pskirt0106",
                School = "Items.sp0pskirt0109",
                White = "Items.sp0pskirt0107"
            },
            StrappedShorts = {
                Black = "Items.sp0shortsstrp0101",
                Dance = "Items.sp0shortsstrp0103",
                Disco = "Items.sp0shortsstrp0104",
                Satin = "Items.sp0shortsstrp0102",
                Sexy = "Items.sp0shortsstrp0105"
            },
            Subdermal = "Items.sp0subarmor0105",
            ZipperShorts = {
                Black = "Items.sp0shortszip0101",
                Gold = "Items.sp0shortszip0104",
                Green = "Items.sp0shortszip0105",
                Red = "Items.sp0shortszip0103",
                Satin = "Items.sp0shortszip0102"
            }
        },
        -- Deprecated as we move to better frameworks.
        Feet = {
            ChromeBoots = {
                Black = "Items.sp0bootschr0101",
                Holo = "Items.sp0bootschr0102",
                Pink = "Items.sp0bootschr0103",
                Gold = "Items.sp0bootschr0104",
                Platinum = "Items.sp0bootschr0105"
            },
            EveBoots = {
                Armored = "Items.sp0eveb0107",
                Black = "Items.sp0eveb0102",
                Blue = "Items.sp0eveb0104",
                Chrome = "Items.sp0eveb0105",
                Latex = "Items.sp0eveb0101",
                Pink = "Items.sp0eveb0103",
                Rich = "Items.sp0eveb0106"
            },
            LaceUpBoots = {
                Black = "Items.sp0boots0101",
                Red = "Items.sp0boots0104",
                Leather = "Items.sp0boots0103",
                Rich = "Items.sp0boots0105",
                White = "Items.sp0boots0102"
            },
            OverkneeBoots = {
                Gold = "Items.sp0bootsovr0106",
                Holo = "Items.sp0bootsovr0105",
                Leather = "Items.sp0bootsovr0104",
                Pink = "Items.sp0bootsovr0103",
                Transparent = {
                    Latex = "Items.sp0bootsovr0102",
                    Red = "Items.sp0bootsovr0101"
                }
            },
            OverkneeHeels = {
                Latex = "Items.sp0heelsto0101",
                Leather = "Items.sp0heelsto0102",
                Stockings = {
                    Classy = "Items.sp0heelsto0109",
                    Black = "Items.sp0heelsto0104",
                    Gold = "Items.sp0heelsto0108",
                    Transparent = {
                        Red = "Items.sp0heelsto0105",
                        Blue = "Items.sp0heelsto0106",
                        Green = "Items.sp0heelsto0107"
                    }
                },
                Synfiber = "Items.sp0heelsto0103"
            },
            Sandals = {
                Louboutin = "Items.sp0sandals0106",
                NeverEnding = "Items.sp0sandals0104",
                Padded = "Items.sp0sandals0101",
                Pink = "Items.sp0sandals0107",
                Rubber = "Items.sp0sandals0103",
                Sudo = "Items.sp0sandals0102",
                Titanium = "Items.sp0sandals0108",
                White = "Items.sp0sandals0105"
            },
            Subdermal = "Items.sp0subarmor0106",
            StrappedHeels = {
                Armored = "Items.sp0heelstr0103",
                Elegant = "Items.sp0heelstr0104",
                Gold = "Items.sp0heelstr0106",
                Green = "Items.sp0heelstr0101",
                Holo = "Items.sp0heelstr0107",
                Pink = "Items.sp0heelstr0102",
                Rubber = "Items.sp0heelstr0105"
            },
            UnderkneeBoots = {
                Black = "Items.sp0bootsukn0107",
                Chrome = "Items.sp0bootsukn0106",
                Copper = "Items.sp0bootsukn0104",
                Fashionable = "Items.sp0bootsukn0105",
                Fine = "Items.sp0bootsukn0101",
                Red = "Items.sp0bootsukn0103",
                Stylish = "Items.sp0bootsukn0102"
            }
        },
        Outfit = {
            Lingerie = {
                Black = "Items.sp0lin0104",
                Pink = "Items.sp0lin0103",
                Red = "Items.sp0lin0101",
                White = "Items.sp0lin0102"
            },
            Stockings = {
                Elegant = "Items.sp0stk0101",
                Fishnet = {
                    Black = "Items.sp0stk0113",
                    Red = "Items.sp0stk0114",
                    White = "Items.sp0stk0115",
                    Pink = "Items.sp0stk0116",
                    Holo = "Items.sp0stk0118"
                },
                Holo = "Items.sp0stk0117",
                Lace = {
                    Black = "Items.sp0stk0110",
                    Red = "Items.sp0stk0111",
                    White = "Items.sp0stk0112"
                },
                Pink = "Items.sp0stk0103",
                Red = "Items.sp0stk0102",
                Rich = "Items.sp0stk0104",
                Ripped = {
                    Black = "Items.sp0stk0119",
                    Fancy = "Items.sp0stk0120",
                    Glowing = "Items.sp0stk0124",
                    Gold = "Items.sp0stk0122",
                    Torn = "Items.sp0stk0121",
                    Worker = "Items.sp0stk0123"
                },
                Teal = "Items.sp0stk0105",
                Transparent = {
                    Black = "Items.sp0stk0106",
                    White = "Items.sp0stk0107",
                    Red = "Items.sp0stk0108",
                    Pink = "Items.sp0stk0109"
                }
            },
            Tights = {
                Camo = "Items.sp0tht0111",
                Crotchless = {
                    Black = "Items.sp0tht0110",
                    Blue = "Items.sp0tht0107",
                    Glowing = "Items.sp0tht0112",
                    Lace = "Items.sp0tht0105"
                },
                Elegant = "Items.sp0tht0114",
                Harem = {
                    Duolayer = "Items.sp0tgh0101",
                    Elastic = "Items.sp0tgh0104",
                    Pink = "Items.sp0tgh0103",
                    Red = "Items.sp0tgh0105",
                    Shiny = "Items.sp0tgh0102",
                    Transparent = "Items.sp0tgh0106"
                },
                Lace = {
                    Pink = "Items.sp0tht0106",
                    Yellow = "Items.sp0tht0108",
                },
                Pink = "Items.sp0tht0102",
                Polka = {
                    Black = "Items.sp0tht0113",
                    Green = "Items.sp0tht0109"
                },
                Red = "Items.sp0tht0104",
                Seamed = "Items.sp0tht0101",
                White = "Items.sp0tht0103",
            }
        }
    },
    Heladios = {
        Head = {
            Hair = {
                Lucy = "Items.hair_00_lucy"
            }
        },
    },
    Zwei = {
        Head = {
            NylonTights = {
                Bordeaux = "Items.zwei_tightsbordeaux",
                Brown = "Items.zwei_tightsbrown",
                Default = "Items.zwei_tights",
                Pink = "Items.zwei_tightspink",
                Violet = "Items.zwei_tightsviolet"
            }
        },
        Feet = {
            BootPants = {
                Black = "Items.zwei_fvbootpantsblack",
                Blue = "Items.zwei_fvbootpantsblue",
                Default = "Items.zwei_fvbootpants",
                HarleyQuinn = "Items.zwei_fvbootpantsharleyquinn",
                Jadzia = "Items.zwei_fvbootpantsjadzia",
                MetallicBlue = "Items.zwei_fvbootpantsmetallicblue",
                MetallicGold = "Items.zwei_fvbootpantsmetallicgold",
                MetallicPink = "Items.zwei_fvbootpantsmetallicpink",
                MetallicRed = "Items.zwei_fvbootpantsmetallicred",
                MetallicSilver = "Items.zwei_fvbootpantsmetallicsilver",
                MetallicYellow = "Items.zwei_fvbootpantsmetallicyellow",
                PastelRose = "Items.zwei_fvbootpantspastelrose",
                PlaidRed = "Items.zwei_fvbootpantsplaidred",
                PlaidBlue = "Items.zwei_fvbootpantsplaidblue",
                Red = "Items.zwei_fvbootpantsredblack",
                White = "Items.zwei_fvbootpantswhite"
            }
        },
        Pants = {
            Johnny = {
                Default = "Items.zwei_fvpants",
                Camo = "Items.zwei_fvpantscamo",
                Plaid = "Items.zwei_fvpantsplaidred",
                Stickers = "Items.zwei_fvpantsstickers",
                Jeans = "Items.zwei_fvpantsdarkjeans",
                Black = "Items.zwei_fvpantsdarkblack",
                White = "Items.zwei_fvpantswhitegold",
                Silver = "Items.zwei_fvpantsblacksilver"
            }
        }
    },
    CubFan = {
        InnerTorso = {
            AltTank = {
                Black = "Items.cubfan82tank01_black",
                Blue = "Items.cubfan82tank01_blue",
                DarkPurple = "Items.cubfan82tank01_darkpurple",
                Green = "Items.cubfan82tank01_green",
                Grey = "Items.cubfan82tank01_grey",
                Pink = "Items.cubfan82tank01_pink",
                Purple = "Items.cubfan82tank01_purple",
                Red = "Items.cubfan82tank01_red",
                Teal = "Items.cubfan82tank01_teal",
                White = "Items.cubfan82tank01_white"
            }
        },
        Legs = {
            HighHeelPants = {
                Arasaka = "Items.cubfan82_highheelpants01_arasaka",
                Black = "Items.cubfan82_highheelpants01_black",
                BlueGrey = "Items.cubfan82_highheelpants01_bluegrey",
                Brown = "Items.cubfan82_highheelpants01_brown",
                Green = "Items.cubfan82_highheelpants01_green",
                Grey = "Items.cubfan82_highheelpants01_grey",
                Lilac = "Items.cubfan82_highheelpants01_lilac",
                Navy = "Items.cubfan82_highheelpants01_navy",
                Orange = "Items.cubfan82_highheelpants01_orange",
                Purple = "Items.cubfan82_highheelpants01_purple",
                Red = "Items.cubfan82_highheelpants01_red",
                Rose = "Items.cubfan82_highheelpants01_rose",
                Salmon = "Items.cubfan82_highheelpants01_salmon",
                Sapphire = "Items.cubfan82_highheelpants01_sapphire",
                Teal = "Items.cubfan82_highheelpants01_teal",
                White = "Items.cubfan82_highheelpants01_white"
            }
        },
        Feet = {
            KneeBoots = {
                BlackGloss = "Items.cubfan82_kneeboots_blackglossy",
                Stars = "Items.cubfan82_kneeboots_stars",
                Red = "Items.cubfan82_kneeboots_red",
                Purple = "Items.cubfan82_kneeboots_purple",
                Blue = "Items.cubfan82_kneeboots_blue",
                White = "Items.cubfan82_kneeboots_white",
                Black = "Items.cubfan82_kneeboots_black",
                Brown = "Items.cubfan82_kneeboots_brown",
                Gray = "Items.cubfan82_kneeboots_grey",
                Gold = "Items.cubfan82_kneeboots_gold",
                Silver = "Items.cubfan82_kneeboots_silver",
                Green = "Items.cubfan82_kneeboots_green",
                Zebra = "Items.cubfan82_kneeboots_zebra",
                Arasaka = "Items.cubfan82_kneeboots_arasaka",
                Plaid = "Items.cubfan82_kneeboots_plaid"
            }
        }
    },
    Alvarix = {
        Face = {
            RockerGirl = {
                Jewels = "Items.rockergirl_jewels"
            }
        },
        InnerTorso = {
            RockerGirl = {
                Bra = "Items.rockergirl_tank_bra",
                Tank = "Items.rockergirl_tank_spyked"
            },
            SongbirdDress = {
                DressOnly = {
                    Original = "Items.songbird__dress_only",
                    Black = "Items.songbird__dress_only_black",
                    Blue = "Items.songbird__dress_only_blue",
                    Cyan = "Items.songbird__dress_only_cyan",
                    Beige = "Items.songbird__dress_only_beige",
                    Pink = "Items.songbird__dress_only_pink",
                    Red = "Items.songbird__dress_only_red",
                    Violet = "Items.songbird__dress_only_violet",
                    White = "Items.songbird__dress_only_white",
                    Gray = "Items.songbird__dress_only_gray"
                },
                DressWithFur = {
                    Original = "Items.songbird__dress",
                    Black = "Items.songbird__dress_black",
                    Blue = "Items.songbird__dress_blue",
                    Cyan = "Items.songbird__dress_cyan",
                    Beige = "Items.songbird__dress_beige",
                    Pink = "Items.songbird__dress_pink",
                    Red = "Items.songbird__dress_red",
                    Violet = "Items.songbird__dress_violet",
                    White = "Items.songbird__dress_white",
                    Gray = "Items.songbird__dress_gray"
                }
            }
        },
        OuterTorso = {
            RockerGirl = {
                Jacket = "Items.rockergirl_jacket"
            }
        },
        Legs = {
            RockerGirl = {
                Shorts = "Items.rockergirl_shorts",
                Skirt = "Items.rockergirl_skirt"
            }
        },
        Feet = {
            RockerGirl = {
                HeelBoots = "Items.rockergirl_heel_boots",
                KneeBoots = "Items.rockergirl_laceup_knee_boots"
            }
        },
        Outfit = {
            SongbirdFur = {
                PurpleBlue = "Items.songbird__fur_purple_blue",
                BlackCarbon = "Items.songbird__fur_black_carbon",
                BlueSapphire = "Items.songbird__fur_blue_sapphire",
                HyenaTeal = "Items.songbird__fur_hyena_teal",
                BeigePeach = "Items.songbird__fur_purple_beige_peach",
                PinkRose = "Items.songbird__fur_pink_rose",
                RedGolden = "Items.songbird__fur_red_golden",
                OrangeFluorescent = "Items.songbird__fur_orange_fluorescent",
                ColdWhite = "Items.songbird__fur_cold_white",
                GrayGunmetal = "Items.songbird__fur_gray_gunmetal",
                MidnightBlue = "Items.songbird__fur_midnight_blue",
                BlondePlatinum = "Items.songbird__fur_blonde_platinum",
                RedMerlot = "Items.songbird__fur_red_merlot",
                GoldenYellow = "Items.songbird__fur_golden_yellow",
                BrownLiquorice = "Items.songbird__fur_brown_liquorice",
                Liliac = "Items.songbird__fur_liliac",
                RedApple = "Items.songbird__fur_red_apple",
                TealFluorescent = "Items.songbird__fur_teal_fluorescent",
                GingerCopper = "Items.songbird__fur_ginger_copper",
                LiliacBlue = "Items.songbird__fur_liliac_blue",
                PinkMagenta = "Items.songbird__fur_pink_magenta",
                BlackYellow = "Items.songbird__fur_black_yellow",
                TealAsh = "Items.songbird__fur_teal_ash",
                BlackRed = "Items.songbird__fur_black_red",
                Hyena = "Items.songbird__fur_hyena",
                PurpleOmbre = "Items.songbird__fur_purple_ombre",
                BlondeDishwater = "Items.songbird__fur_blonde_dishwater",
                GingerStrawberry = "Items.songbird__fur_ginger_strawberry"
            }
        }
    },
    Hyst = {
        Feet = {
            HighBoots = {
                Black = "Items.hyst_highboots_black",
                Blue = "Items.hyst_highboots_blue",
                Purple = "Items.hyst_highboots_purple",
                Red = "Items.hyst_highboots_red",
                Yellow = "Items.hyst_highboots_yellow",
                White = "Items.hyst_highboots_white"
            },
            GlamSandals = {
                Black ="Items.hyst_sandal_glam_black",
                Blue = "Items.hyst_sandal_glam_blue",
                Green = "Items.hyst_sandal_glam_green",
                Pink = "Items.hyst_sandal_glam_pink",
                Purple = "Items.hyst_sandal_glam_purple",
                Red ="Items.hyst_sandal_glam_red",
                White = "Items.hyst_sandal_glam_white"
            }
        },
        InnerTorso = {
            CelebDress = {
                Gold = "Items.hyst_celebdress_gold",
                Silver = "Items.hyst_celebdress_silver"
            },
            EvelynDress = {
                Black = "Items.hyst_evelyn_dress_black",
                Blue = "Items.hyst_evelyn_dress_blue",
                Burgundy = "Items.hyst_evelyn_dress_burgundy",
                Default = "Items.hyst_evelyn_dress_default",
                Gold = "Items.hyst_evelyn_dress_gold",
                Green = "Items.hyst_evelyn_dress_green",
                Pink = "Items.hyst_evelyn_dress_pink"
            },
            ShortTank = {
                Normal = {
                    Black = "Items.hyst_short_tank_black",
                    Blue = "Items.hyst_short_tank_blue",
                    Green = "Items.hyst_short_tank_green",
                    Pink = "Items.hyst_short_tank_pink",
                    PinkPastel = "Items.hyst_short_tank_pinkpastel",
                    Red = "Items.hyst_short_tank_red",
                    White = "Items.hyst_short_tank_white"
                },
                UnderBoob = {
                    Black = "Items.hyst_short_tank_ub_black",
                    Blue = "Items.hyst_short_tank_ub_blue",
                    Green = "Items.hyst_short_tank_ub_green",
                    Pink = "Items.hyst_short_tank_ub_pink",
                    PinkPastel = "Items.hyst_short_tank_ub_pinkpastel",
                    Red = "Items.hyst_short_tank_ub_red",
                    White = "Items.hyst_short_tank_ub_white"
                }
            },
            EroticLingerie = {
                Bra = {
                    Black = "Items.HystxAngy_Erotic_Lingerie_Suit_Bra_Black",
                    Beige = "Items.HystxAngy_Erotic_Lingerie_Suit_Bra_Beige",
                    Blue = "Items.HystxAngy_Erotic_Lingerie_Suit_Bra_Blue",
                    Burgundy = "Items.HystxAngy_Erotic_Lingerie_Suit_Bra_Burgundy",
                    Purple = "Items.HystxAngy_Erotic_Lingerie_Suit_Bra_Purple",
                    Red = "Items.HystxAngy_Erotic_Lingerie_Suit_Bra_Red",
                    RedBlack = "Items.HystxAngy_Erotic_Lingerie_Suit_Bra_RedBlack",
                    Turquoise = "Items.HystxAngy_Erotic_Lingerie_Suit_Bra_Turquoise",
                    White = "Items.HystxAngy_Erotic_Lingerie_Suit_Bra_White",
                    Samurai = "Items.HystxAngy_Erotic_Lingerie_Suit_Bra_Samurai"
                },
                Full = {
                    Black = "Items.HystxAngy_Erotic_Lingerie_Suit_Full_Black",
                    Beige = "Items.HystxAngy_Erotic_Lingerie_Suit_Full_Beige",
                    Blue = "Items.HystxAngy_Erotic_Lingerie_Suit_Full_Blue",
                    Burgundy = "Items.HystxAngy_Erotic_Lingerie_Suit_Full_Burgundy",
                    Purple = "Items.HystxAngy_Erotic_Lingerie_Suit_Full_Purple",
                    Red = "Items.HystxAngy_Erotic_Lingerie_Suit_Full_Red",
                    RedBlack = "Items.HystxAngy_Erotic_Lingerie_Suit_Full_RedBlack",
                    Turquoise = "Items.HystxAngy_Erotic_Lingerie_Suit_Full_Turquoise",
                    White = "Items.HystxAngy_Erotic_Lingerie_Suit_Full_White",
                    Samurai = "Items.HystxAngy_Erotic_Lingerie_Suit_Full_Samurai"
                },
                Bustier = {
                    Black = "Items.HystxAngy_Erotic_Lingerie_Suit_Bustier_Black",
                    Beige = "Items.HystxAngy_Erotic_Lingerie_Suit_Bustier_Beige",
                    Blue = "Items.HystxAngy_Erotic_Lingerie_Suit_Bustier_Blue",
                    Burgundy = "Items.HystxAngy_Erotic_Lingerie_Suit_Bustier_Burgundy",
                    Purple = "Items.HystxAngy_Erotic_Lingerie_Suit_Bustier_Purple",
                    Red = "Items.HystxAngy_Erotic_Lingerie_Suit_Bustier_Red",
                    RedBlack = "Items.HystxAngy_Erotic_Lingerie_Suit_Bustier_RedBlack",
                    Turquoise = "Items.HystxAngy_Erotic_Lingerie_Suit_Bustier_Turquoise",
                    White = "Items.HystxAngy_Erotic_Lingerie_Suit_Bustier_White",
                    Samurai = "Items.HystxAngy_Erotic_Lingerie_Suit_Bustier_Samurai"
                }
            }
        },
        Legs = {
            FishnetTights = {
                Small = {
                    Black = "Items.hyst_fishnet_v2_tights_black",
                    Pink = "Items.hyst_fishnet_v2_tights_pink",
                    Red = "Items.hyst_fishnet_v2_tights_red",
                    White = "Items.hyst_fishnet_v2_tights_white"
                },
                Large = {
                    Black = "Items.hyst_fishnet_v2_tights_black_large",
                    Pink = "Items.hyst_fishnet_v2_tights_pink_large",
                    Red = "Items.hyst_fishnet_v2_tights_red_large",
                    White = "Items.hyst_fishnet_v2_tights_white_large"
                }
            },
            EroticLingerie = {
                Panties = {
                    Black = "Items.HystxAngy_Erotic_Lingerie_Suit_Panty_Black",
                    Beige = "Items.HystxAngy_Erotic_Lingerie_Suit_Panty_Beige",
                    Blue = "Items.HystxAngy_Erotic_Lingerie_Suit_Panty_Blue",
                    Burgundy = "Items.HystxAngy_Erotic_Lingerie_Suit_Panty_Burgundy",
                    Purple = "Items.HystxAngy_Erotic_Lingerie_Suit_Panty_Purple",
                    Red = "Items.HystxAngy_Erotic_Lingerie_Suit_Panty_Red",
                    -- No red-black version this time.
                    Turquoise = "Items.HystxAngy_Erotic_Lingerie_Suit_Panty_Turquoise",
                    White = "Items.HystxAngy_Erotic_Lingerie_Suit_Panty_White",
                    Samurai = "Items.HystxAngy_Erotic_Lingerie_Suit_Panty_Samurai"
                }
            }
        },
        OuterTorso = {
            Bodysuit = {
                Normal = {
                    Black = "Items.hyst_bodysuit_black",
                    Blue = "Items.hyst_bodysuit_blue",
                    Green = "Items.hyst_bodysuit_green",
                    PinkPastel = "Items.hyst_bodysuit_pinkpastel",
                    Red = "Items.hyst_bodysuit_red",
                    White = "Items.hyst_bodysuit_white"
                },
                Sleeves = {
                    Black = "Items.hyst_bodysuitsleeve_black",
                    Blue = "Items.hyst_bodysuitsleeve_blue",
                    Green = "Items.hyst_bodysuitsleeve_green",
                    PinkPastel = "Items.hyst_bodysuitsleeve_pinkpastel",
                    Red = "Items.hyst_bodysuitsleeve_red",
                    White = "Items.hyst_bodysuitsleeve_white"
                }
            }
        },
        Outfit = {
            FishnetBodysuit = {
                Black = "Items.hyst_bds_fishnet_black",
                White = "Items.hyst_bds_fishnet_white"
            }
        }
    },
    xBaebsae = {
        Feet = {
            Angy = {
                Heels = {
                    Beige = "Items.SE7EN_ClothingShoes_AngyFavHeel_Beige",
                    Black = "Items.SE7EN_ClothingShoes_AngyFavHeel_Black",
                    BlackGold = "Items.SE7EN_ClothingShoes_AngyFavHeel_BlackGold",
                    BlackSilver = "Items.SE7EN_ClothingShoes_AngyFavHeel_BlackSilver",
                    Brown = "Items.SE7EN_ClothingShoes_AngyFavHeel_Brown",
                    Red = "Items.SE7EN_ClothingShoes_AngyFavHeel_Red",
                    White = "Items.SE7EN_ClothingShoes_AngyFavHeel_White",
                    WhiteGold = "Items.SE7EN_ClothingShoes_AngyFavHeel_WhiteGold",
                    WhiteSilver = "Items.SE7EN_ClothingShoes_AngyFavHeel_WhiteSilver"
                },
                Boots = {
                    Beige = "Items.SE7EN_ClothingShoes_AngyFav_Beige",
                    Black = "Items.SE7EN_ClothingShoes_AngyFav_Black",
                    BlackGold = "Items.SE7EN_ClothingShoes_AngyFav_BlackGold",
                    BlackSilver = "Items.SE7EN_ClothingShoes_AngyFav_BlackSilver",
                    Brown = "Items.SE7EN_ClothingShoes_AngyFav_Brown",
                    Red = "Items.SE7EN_ClothingShoes_AngyFav_Red",
                    White = "Items.SE7EN_ClothingShoes_AngyFav_White",
                    WhiteGold = "Items.SE7EN_ClothingShoes_AngyFav_WhiteGold",
                    WhiteSilver = "Items.SE7EN_ClothingShoes_AngyFav_WhiteSilver"
                }
            }
        }
    },
    NolaDreamer = {
        Head = {
            FishnetTop = {
                Black = "Items.nd_fishnet_top_black",
                Blue = "Items.nd_fishnet_top_blue",
                Burgundy = "Items.nd_fishnet_top_burgundy",
                Pink = "Items.nd_fishnet_top_pink",
                Red = "Items.nd_fishnet_top_red",
                White = "Items.nd_fishnet_top_white"
            }
        },
        OuterTorso = {
            AltJacket = {
                Long = {                    
                    Default = "Items.nd_alt_jacket_default",
                    Black = "Items.nd_alt_jacket_black",
                    Blue = "Items.nd_alt_jacket_blue",
                    Green = "Items.nd_alt_jacket_green",
                    Pink = "Items.nd_alt_jacket_pink",
                    Red = "Items.nd_alt_jacket_red",
                    White = "Items.nd_alt_jacket_white",
                    Burgundy = "Items.nd_alt_jacket_burgundy",
                    Brown = "Items.nd_alt_jacket_brown"
                },
                Crop = {
                    Default = "Items.nd_alt_jacket2_default",
                    Black = "Items.nd_alt_jacket2_black",
                    Blue = "Items.nd_alt_jacket2_blue",
                    Green = "Items.nd_alt_jacket2_green",
                    Pink = "Items.nd_alt_jacket2_pink",
                    Red = "Items.nd_alt_jacket2_red",
                    White = "Items.nd_alt_jacket2_white",
                    Burgundy = "Items.nd_alt_jacket2_burgundy",
                    Brown = "Items.nd_alt_jacket2_brown"
                }
            },
            EvelynJacket = {
                Crop = {
                    Gold = "Items.nd_evelyn_crop_coat_goldpat",
                    Silver = "Items.nd_evelyn_crop_coat_silverseq",
                    White = "Items.nd_evelyn_crop_coat_white",
                    Pink = "Items.nd_evelyn_crop_coat_pinkheart",
                    Red = "Items.nd_evelyn_crop_coat_redplaid",
                    Black = "Items.nd_evelyn_crop_coat_black",
                    Violet = "Items.nd_evelyn_crop_coat_violetrose",
                    Blue = "Items.nd_evelyn_crop_coat_bluegrid",
                    Camo = "Items.nd_evelyn_crop_coat_camo",
                    Green = "Items.nd_evelyn_crop_coat_greenclo",
                    Transparent = {
                        White = "Items.nd_evelyn_crop_coat_transpwhite",
                        Yellow = "Items.nd_evelyn_crop_coat_transpyellow",
                        Pink = "Items.nd_evelyn_crop_coat_transppink",
                        Red = "Items.nd_evelyn_crop_coat_transpred",
                        Blue = "Items.nd_evelyn_crop_coat_transpblue",
                        Purple = "Items.nd_evelyn_crop_coat_transppurple",
                        Teal = "Items.nd_evelyn_crop_coat_transpteal",
                        Green = "Items.nd_evelyn_crop_coat_transpgreen",
                        Gray = "Items.nd_evelyn_crop_coat_transpgray",
                        Black = "Items.nd_evelyn_crop_coat_transpblack"
                    }
                },
                Long = {
                    Gold = "Items.nd_evelyn_long_coat_goldpat",
                    Silver = "Items.nd_evelyn_long_coat_silverseq",
                    White = "Items.nd_evelyn_long_coat_white",
                    Pink = "Items.nd_evelyn_long_coat_pinkheart",
                    Red = "Items.nd_evelyn_long_coat_redplaid",
                    Black = "Items.nd_evelyn_long_coat_black",
                    Violet = "Items.nd_evelyn_long_coat_violetrose",
                    Blue = "Items.nd_evelyn_long_coat_bluegrid",
                    Camo = "Items.nd_evelyn_long_coat_camo",
                    Green = "Items.nd_evelyn_long_coat_greenclo",
                    Transparent = {
                        White = "Items.nd_evelyn_long_coat_transpwhite",
                        Yellow = "Items.nd_evelyn_long_coat_transpyellow",
                        Pink = "Items.nd_evelyn_long_coat_transppink",
                        Red = "Items.nd_evelyn_long_coat_transpred",
                        Blue = "Items.nd_evelyn_long_coat_transpblue",
                        Purple = "Items.nd_evelyn_long_coat_transppurple",
                        Teal = "Items.nd_evelyn_long_coat_transpteal",
                        Green = "Items.nd_evelyn_long_coat_transpgreen",
                        Gray = "Items.nd_evelyn_long_coat_transpgray",
                        Black = "Items.nd_evelyn_long_coat_transpblack"
                    }
                }
            }
        },
        InnerTorso = {
            FishnetBodysuit = {
                Sleeveless = {
                    Black = "Items.nd_panam_crop_fishnet_bodysuit1_black",
                    Blue = "Items.nd_panam_crop_fishnet_bodysuit1_blue",
                    White = "Items.nd_panam_crop_fishnet_bodysuit1_white",
                    Pink = "Items.nd_panam_crop_fishnet_bodysuit1_pink",
                    Red = "Items.nd_panam_crop_fishnet_bodysuit1_red",
                    Burgundy = "Items.nd_panam_crop_fishnet_bodysuit1_burgundy",
                    Green = "Items.nd_panam_crop_fishnet_bodysuit1_green",
                    Violet = "Items.nd_panam_crop_fishnet_bodysuit1_violet"
                },
                Cropped = {
                    Black = "Items.nd_panam_crop_fishnet_bodysuit_black",
                    Blue = "Items.nd_panam_crop_fishnet_bodysuit_blue",
                    White = "Items.nd_panam_crop_fishnet_bodysuit_white",
                    Pink = "Items.nd_panam_crop_fishnet_bodysuit_pink",
                    Red = "Items.nd_panam_crop_fishnet_bodysuit_red",
                    Burgundy = "Items.nd_panam_crop_fishnet_bodysuit_burgundy",
                    Green = "Items.nd_panam_crop_fishnet_bodysuit_green",
                    Violet = "Items.nd_panam_crop_fishnet_bodysuit_violet"
                }
            },
            HanakoDress = {
                Plain = {
                    Black = "Items.nd_hanako_crop_dress_black",
                    Blue = "Items.nd_hanako_crop_dress_blue",
                    Green = "Items.nd_hanako_crop_dress_green",
                    Pink = "Items.nd_hanako_crop_dress_pink",
                    Red = "Items.nd_hanako_crop_dress_red",
                    White = "Items.nd_hanako_crop_dress_white"
                },
                Sequin = {
                    Black = "Items.nd_hanako_crop_dress_blacksequin",
                    Blue = "Items.nd_hanako_crop_dress_bluesequin",
                    Green = "Items.nd_hanako_crop_dress_greensequin",
                    Gold = "Items.nd_hanako_crop_dress_goldsequin",
                    Pink = "Items.nd_hanako_crop_dress_pinksequin",
                    Red = "Items.nd_hanako_crop_dress_redsequin",
                    Silver = "Items.nd_hanako_crop_dress_silversequin"
                }
            },
            MichikoDress = {
                Black = "Items.nd_michiko_dress_black",
                Blue = "Items.nd_michiko_dress_blue",
                Burgundy = "Items.nd_michiko_dress_burgundy",
                Green = "Items.nd_michiko_dress_green",
                Pink = "Items.nd_michiko_dress_pink",
                Red = "Items.nd_michiko_dress_red",
                Teal = "Items.nd_michiko_dress_teal",
                Violet = "Items.nd_michiko_dress_violet",
                White = "Items.nd_michiko_dress_white",
                Yellow = "Items.nd_michiko_dress_yellow"
            },
            NippleStickers = {
                Black = "Items.nd_nipple_stickers_black",
                Blue = "Items.nd_nipple_stickers_blue",
                Burgundy = "Items.nd_nipple_stickers_burgundy",
                Pink = "Items.nd_nipple_stickers_pink",
                Red = "Items.nd_nipple_stickers_red",
                White = "Items.nd_nipple_stickers_white"
            },
            RockerGirlTop = {
                Full = {
                    Black = "Items.nd_aquelyras_rockergirl_top_black",
                    White = "Items.nd_aquelyras_rockergirl_top_white",
                    Pink = "Items.nd_aquelyras_rockergirl_top_pink",
                    Red = "Items.nd_aquelyras_rockergirl_top_red",
                    Blue = "Items.nd_aquelyras_rockergirl_top_blue",
                    Green = "Items.nd_aquelyras_rockergirl_top_green",
                    Violet = "Items.nd_aquelyras_rockergirl_top_violet",
                    Teal = "Items.nd_aquelyras_rockergirl_top_teal",
                    Brown = "Items.nd_aquelyras_rockergirl_top_brown",
                    Burgundy = "Items.nd_aquelyras_rockergirl_top_burgundy"
                },
                Fishnet = {
                    Black = "Items.nd_aquelyras_rockergirl_top1_black",
                    White = "Items.nd_aquelyras_rockergirl_top1_white",
                    Pink = "Items.nd_aquelyras_rockergirl_top1_pink",
                    Red = "Items.nd_aquelyras_rockergirl_top1_red",
                    Blue = "Items.nd_aquelyras_rockergirl_top1_blue",
                    Green = "Items.nd_aquelyras_rockergirl_top1_green",
                    Violet = "Items.nd_aquelyras_rockergirl_top1_violet",
                    Teal = "Items.nd_aquelyras_rockergirl_top1_teal",
                    Brown = "Items.nd_aquelyras_rockergirl_top1_brown",
                    Burgundy = "Items.nd_aquelyras_rockergirl_top1_burgundy"
                },
                Solid = {
                    Black = "Items.nd_aquelyras_rockergirl_top2_black",
                    White = "Items.nd_aquelyras_rockergirl_top2_white",
                    Pink = "Items.nd_aquelyras_rockergirl_top2_pink",
                    Red = "Items.nd_aquelyras_rockergirl_top2_red",
                    Blue = "Items.nd_aquelyras_rockergirl_top2_blue",
                    Green = "Items.nd_aquelyras_rockergirl_top2_green",
                    Violet = "Items.nd_aquelyras_rockergirl_top2_violet",
                    Teal = "Items.nd_aquelyras_rockergirl_top2_teal",
                    Brown = "Items.nd_aquelyras_rockergirl_top2_brown",
                    Burgundy = "Items.nd_aquelyras_rockergirl_top2_burgundy"
                }
            }
        },
        Legs = {
            AltPants = {
                Black = "Items.nd_alt_pants_black",
                Blue = "Items.nd_alt_pants_blue",
                Pink = "Items.nd_alt_pants_pink",
                White = "Items.nd_alt_pants_white",
                FullBlue = "Items.nd_alt_pants_fullblue",
                FullBlack = "Items.nd_alt_pants_fullblack",
                Burgundy = "Items.nd_alt_pants_burgundy",
                LightBlue = "Items.nd_alt_pants_lightblue",
                DefaultBlue = "Items.nd_alt_pants_defaultblue",
                DefaultBlack = "Items.nd_alt_pants_defaultblack"
            },
            AltShorts = {
                Black = "Items.nd_alt_pants2_black",
                Blue = "Items.nd_alt_pants2_blue",
                Pink = "Items.nd_alt_pants2_pink",
                White = "Items.nd_alt_pants2_white",
                FullBlue = "Items.nd_alt_pants2_fullblue",
                FullBlack = "Items.nd_alt_pants2_fullblack",
                Burgundy = "Items.nd_alt_pants2_burgundy",
                LightBlue = "Items.nd_alt_pants2_lightblue",
                DefaultBlue = "Items.nd_alt_pants2_defaultblue",
                DefaultBlack = "Items.nd_alt_pants2_defaultblack"
            },
            FishnetPants = {
                Black = "Items.nd_fishnet_pants_black",
                Blue = "Items.nd_fishnet_pants_blue",
                Burgundy = "Items.nd_fishnet_pants_burgundy",
                Pink = "Items.nd_fishnet_pants_pink",
                Red = "Items.nd_fishnet_pants_red",
                White = "Items.nd_fishnet_pants_white"
            },
            FishnetTights = {
                Black = "Items.nd_fishnet_tights_black",
                White = "Items.nd_fishnet_tights_white",
                Red = "Items.nd_fishnet_tights_red",
                Blue = "Items.nd_fishnet_tights_blue",
                Pink = "Items.nd_fishnet_tights_pink",
                Burgundy = "Items.nd_fishnet_tights_burgundy"
            },
            FishnetStockings = {
                Black = "Items.nd_fishnet_stockings_black",
                White = "Items.nd_fishnet_stockings_white",
                Red = "Items.nd_fishnet_stockings_red",
                Blue = "Items.nd_fishnet_stockings_blue",
                Pink = "Items.nd_fishnet_stockings_pink",
                Burgundy = "Items.nd_fishnet_stockings_burgundy"
            },
            FishnetSocks = {
                Black = "Items.nd_fishnet_socks_black",
                White = "Items.nd_fishnet_socks_white",
                Red = "Items.nd_fishnet_socks_red",
                Blue = "Items.nd_fishnet_socks_blue",
                Pink = "Items.nd_fishnet_socks_pink",
                Burgundy = "Items.nd_fishnet_socks_burgundy"
            },
            RockerGirlPants = {
                Black = "Items.nd_aquelyras_rockergirl_pants_black",
                White = "Items.nd_aquelyras_rockergirl_pants_white",
                Pink = "Items.nd_aquelyras_rockergirl_pants_pink",
                Red = "Items.nd_aquelyras_rockergirl_pants_red",
                Blue = "Items.nd_aquelyras_rockergirl_pants_blue",
                Green = "Items.nd_aquelyras_rockergirl_pants_green",
                Violet = "Items.nd_aquelyras_rockergirl_pants_violet",
                Teal = "Items.nd_aquelyras_rockergirl_pants_teal",
                Brown = "Items.nd_aquelyras_rockergirl_pants_brown",
                Burgundy = "Items.nd_aquelyras_rockergirl_pants_burgundy"
            }
        },
        Feet = {
            NinjaShoes = {
                Default = "Items.nd_ninja_boots_f_default",
                DarkRed = "Items.nd_ninja_boots_f_red",
                BlackBlue = "Items.nd_ninja_boots_f_blue_sole",
                BlackPink = "Items.nd_ninja_boots_f_pink_sole",
                BlackRed = "Items.nd_ninja_boots_f_red_sole",
                Red = "Items.nd_ninja_boots_f_full_red",
                RedGold = "Items.nd_ninja_boots_f_red_gold",
                RedGreen = "Items.nd_ninja_boots_f_red_green"
            },
            RockerGirlBoots = {
                Black = "Items.nd_aquelyras_rockergirl_boots_black",
                White = "Items.nd_aquelyras_rockergirl_boots_white",
                Pink = "Items.nd_aquelyras_rockergirl_boots_pink",
                Red = "Items.nd_aquelyras_rockergirl_boots_red",
                Blue = "Items.nd_aquelyras_rockergirl_boots_blue",
                Green = "Items.nd_aquelyras_rockergirl_boots_green",
                Violet = "Items.nd_aquelyras_rockergirl_boots_violet",
                Teal = "Items.nd_aquelyras_rockergirl_boots_teal",
                Brown = "Items.nd_aquelyras_rockergirl_boots_brown",
                Burgundy = "Items.nd_aquelyras_rockergirl_boots_burgundy"
            },
            GothShoes = {
                Black = "Items.nd_aquelyras_goth_shoes_black",
                Blue = "Items.nd_aquelyras_goth_shoes_blue",
                Brown = "Items.nd_aquelyras_goth_shoes_brown",
                Burgundy = "Items.nd_aquelyras_goth_shoes_burgundy",
                Green = "Items.nd_aquelyras_goth_shoes_green",
                Pink = "Items.nd_aquelyras_goth_shoes_pink",
                Teal = "Items.nd_aquelyras_goth_shoes_teal",
                White = "Items.nd_aquelyras_goth_shoes_white"
            }
        },
        Outfit = {
            EvelynFur = {
                Black = "Items.nd_evelyn_fur_black_carbon",
                BlackRed = "Items.nd_evelyn_fur_black_red",
                BlackYellow = "Items.nd_evelyn_fur_black_yellow",
                Blonde = "Items.nd_evelyn_fur_blonde_dishwater",
                Platinum = "Items.nd_evelyn_fur_blonde_platinum",
                Blue = "Items.nd_evelyn_fur_blue_sapphire",
                Brown = "Items.nd_evelyn_fur_brown_liquorice",
                White = "Items.nd_evelyn_fur_cold_white",
                Ginger = "Items.nd_evelyn_fur_ginger_copper",
                Strawberry = "Items.nd_evelyn_fur_ginger_strawberry",
                Gold = "Items.nd_evelyn_fur_golden_yellow",
                Gray = "Items.nd_evelyn_fur_gray_gunmetal",
                Spotted = "Items.nd_evelyn_fur_hyena",
                SpottedTeal = "Items.nd_evelyn_fur_hyena_teal",
                Lilac = "Items.nd_evelyn_fur_liliac",
                LilacBlue = "Items.nd_evelyn_fur_liliac_blue",
                MidnightBlue = "Items.nd_evelyn_fur_midnight_blue",
                Orange = "Items.nd_evelyn_fur_orange_fluorescent",
                Magneta = "Items.nd_evelyn_fur_pink_magenta",
                Rose = "Items.nd_evelyn_fur_pink_rose",
                PurplePeach = "Items.nd_evelyn_fur_purple_beige_peach",
                PurpleBlue = "Items.nd_evelyn_fur_purple_blue",
                Ombre = "Items.nd_evelyn_fur_purple_ombre",
                Apple = "Items.nd_evelyn_fur_red_apple",
                Golden = "Items.nd_evelyn_fur_red_golden",
                Merlot = "Items.nd_evelyn_fur_red_merlot",
                Ash = "Items.nd_evelyn_fur_teal_ash",
                Teal = "Items.nd_evelyn_fur_teal_fluorescent"
            },
            MichikoFur = {
                MidnightBlue = "Items.nd_michiko_fur_midnight_blue",
                Platinum = "Items.nd_michiko_fur_blonde_platinum",
                Merlot = "Items.nd_michiko_fur_red_merlot",
                Yellow = "Items.nd_michiko_fur_golden_yellow",
                Beige = "Items.nd_michiko_fur_purple_beige_peach",
                Sapphire = "Items.nd_michiko_fur_blue_sapphire",
                OmbreBrown = "Items.nd_michiko_fur_brown_ombre",
                Lilac = "Items.nd_michiko_fur_liliac",
                Apple = "Items.nd_michiko_fur_red_apple",
                Teal = "Items.nd_michiko_fur_teal_fluorescent",
                Ginger = "Items.nd_michiko_fur_ginger_copper",
                OmbreTeal = "Items.nd_michiko_fur_teal_ombre",
                River = "Items.nd_michiko_fur_river_custom",
                RedGold = "Items.nd_michiko_fur_red_golden",
                Gray = "Items.nd_michiko_fur_gray_gunmetal",
                HyenaCustom = "Items.nd_michiko_fur_custom_hyena",
                Brown = "Items.nd_michiko_fur_brown_liquorice",
                Strawberry = "Items.nd_michiko_fur_ginger_strawberry",
                HyenaTeal= "Items.nd_michiko_fur_hyena_teal",
                Magenta = "Items.nd_michiko_fur_pink_magenta",
                BlackYellow = "Items.nd_michiko_fur_black_yellow",
                Ash = "Items.nd_michiko_fur_teal_ash",
                Carbon = "Items.nd_michiko_fur_black_carbon",
                Red = "Items.nd_michiko_fur_black_red",
                White = "Items.nd_michiko_fur_cold_white",
                Hyena = "Items.nd_michiko_fur_hyena",
                Purple = "Items.nd_michiko_fur_purple_ombre",
                Gold = "Items.nd_michiko_fur_blonde_golden",
                Pink = "Items.nd_michiko_fur_pink_rose",
                Blonde = "Items.nd_michiko_fur_blonde_dishwater",
                BlackBlue = "Items.nd_michiko_fur_black_blue",
                Blue = "Items.nd_michiko_fur_blue_steel",
                Orange = "Items.nd_michiko_fur_orange_fluorescent"
            },
            RockerGirlBra = {
                Black = "Items.nd_aquelyras_rockergirl_bra_black",
                White = "Items.nd_aquelyras_rockergirl_bra_white",
                Pink = "Items.nd_aquelyras_rockergirl_bra_pink",
                Red = "Items.nd_aquelyras_rockergirl_bra_red",
                Blue = "Items.nd_aquelyras_rockergirl_bra_blue",
                Green = "Items.nd_aquelyras_rockergirl_bra_green",
                Violet = "Items.nd_aquelyras_rockergirl_bra_violet",
                Teal = "Items.nd_aquelyras_rockergirl_bra_teal",
                Brown = "Items.nd_aquelyras_rockergirl_bra_brown",
                Burgundy = "Items.nd_aquelyras_rockergirl_bra_burgundy"
            }
        }
    },
    PinkyDude = {
        InnerTorso = {
            CrossTop = {
               Black = "Items.PinkyDude_CrossTop_Black",
               Blue = "Items.PinkyDude_CrossTop_Blue",
               Green = "Items.PinkyDude_CrossTop_Green",
               Orange = "Items.PinkyDude_CrossTop_Orange",
               Pink = "Items.PinkyDude_CrossTop_Pink",
               Purple = "Items.PinkyDude_CrossTop_Purple",
               Red = "Items.PinkyDude_CrossTop_Red",
               Turquoise = "Items.PinkyDude_CrossTop_Turquoise",
               White = "Items.PinkyDude_CrossTop_White",
               Yellow = "Items.PinkyDude_CrossTop_Yellow"
            }
        },
        Legs = {
            SilkyLaceLingerie = {
                Hearts = {
                    Black = "Items.PinkyDude_SilkyLaceLingerie_Hearts_Black",
                    White = "Items.PinkyDude_SilkyLaceLingerie_Hearts_White",
                    Red = "Items.PinkyDude_SilkyLaceLingerie_Hearts_Red",
                    Pink = "Items.PinkyDude_SilkyLaceLingerie_Hearts_Pink",
                    Gold = "Items.PinkyDude_SilkyLaceLingerie_Hearts_Gold"
                },
                Roses = {
                    Black = "Items.PinkyDude_SilkyLaceLingerie_Roses_Black",
                    White = "Items.PinkyDude_SilkyLaceLingerie_Roses_White",
                    Red = "Items.PinkyDude_SilkyLaceLingerie_Roses_Red",
                    Pink = "Items.PinkyDude_SilkyLaceLingerie_Roses_Pink",
                    Gold = "Items.PinkyDude_SilkyLaceLingerie_Roses_Gold"
                }
            },
            StripedSkirt = {
                Black = "Items.PinkyDude_Fancy_StripedSkirt_Black",
                Red = "Items.PinkyDude_Fancy_StripedSkirt_Red",
                Purple = "Items.PinkyDude_Fancy_StripedSkirt_Purple",
                Pink = "Items.PinkyDude_Fancy_StripedSkirt_Pink",
                Orange = "Items.PinkyDude_Fancy_StripedSkirt_Orange",
                Yellow = "Items.PinkyDude_Fancy_StripedSkirt_Yellow",
                Green = "Items.PinkyDude_Fancy_StripedSkirt_Green",
                Blue = "Items.PinkyDude_Fancy_StripedSkirt_Blue",
                Turquoise = "Items.PinkyDude_Fancy_StripedSkirt_Turquoise",
                White = "Items.PinkyDude_Fancy_StripedSkirt_White"
            }
        }
    },
    Kwek = {
        Face = {
            Choker = {
                Cotton = {
                    Black = "Items.choker_01_basic_01_kwek",
                    Pink = "Items.choker_01_old_03_kwek",
                    White = "Items.choker_01_basic_02_kwek",
                    Yellow = "Items.choker_01_old_01_kwek"
                },
                Holo = {
                    Blue = "Items.choker_01_holo_01_kwek",
                    Pink = "Items.choker_01_holo_03_kwek",
                    YellowDot = "Items.choker_01_holo_02_kwek"
                },
                Pattern = {
                    Blue = "Items.choker_01_rich_02_kwek",
                    Camo = "Items.choker_01_old_02_kwek",
                    Gold = "Items.choker_01_rich_03_kwek",
                    Leopard = "Items.choker_01_basic_04_kwek",
                    Red = "Items.choker_01_rich_01_kwek",
                    Silver = "Items.choker_01_rich_04_kwek",
                },
                PVC = {
                    Black = "Items.choker_01_pvc_01_kwek",
                    Red = "Items.choker_01_pvc_03_kwek",
                    White = "Items.choker_01_basic_03_kwek",
                    Yellow = "Items.choker_01_pvc_02_kwek"
                },
                Sheer = {
                    Black = "Items.choker_01_net_01_kwek",
                    Purple = "Items.choker_01_net_03_kwek",
                    White = "Items.choker_01_net_02_kwek"
                },
                Transparent = {
                    Black = "Items.choker_01_transparent_01_kwek",
                    Red = "Items.choker_01_transparent_03_kwek",
                    Yellow = "Items.choker_01_transparent_02_kwek"
                }
            },
            HoopEarrings = {
                Big = {
                    Gold = "Items.earrings_01_basic_01_kwek",
                    Silver = "Items.earrings_01_basic_02_kwek",
                    PinkGlow = "Items.earrings_01_basic_03_kwek",
                    Orange = "Items.earrings_01_basic_04_kwek",
                    Holo = "Items.earrings_01_old_01_kwek",
                    Purple = "Items.earrings_01_old_02_kwek",
                    Pink = "Items.earrings_01_old_03_kwek",
                },
                Cross = {
                    Gold = "Items.earrings_06_basic_01_kwek",
                    Silver = "Items.earrings_06_basic_02_kwek",
                    PinkGlow = "Items.earrings_06_basic_03_kwek",
                    Orange = "Items.earrings_06_basic_04_kwek",
                    Holo = "Items.earrings_06_old_01_kwek",
                    Purple = "Items.earrings_06_old_02_kwek",
                    Pink = "Items.earrings_06_old_03_kwek",
                    Red = "Items.earrings_06_rich_01_kwek",
                },
                Double = {
                    Gold = "Items.earrings_04_basic_01_kwek",
                    Silver = "Items.earrings_04_basic_02_kwek",
                    PinkGlow = "Items.earrings_04_basic_03_kwek",
                    Orange = "Items.earrings_04_basic_04_kwek",
                    Holo = "Items.earrings_04_old_01_kwek",
                    Purple = "Items.earrings_04_old_02_kwek",
                    Pink = "Items.earrings_04_old_03_kwek"
                },
                MoonAndStar = {
                    Gold = "Items.earrings_08_basic_01_kwek",
                    Holo = "Items.earrings_08_old_01_kwek",
                    PinkGlow = "Items.earrings_08_basic_03_kwek",
                    Orange = "Items.earrings_08_basic_04_kwek",
                    Pink = "Items.earrings_08_old_03_kwek",
                    Purple = "Items.earrings_08_old_02_kwek",
                    Red = "Items.earrings_08_rich_01_kwek",
                    Silver = "Items.earrings_08_basic_02_kwek"
                },
                OpenHeart = {
                    Gold = "Items.earrings_07_basic_01_kwek",
                    Holo = "Items.earrings_07_old_01_kwek",
                    PinkGlow = "Items.earrings_07_basic_03_kwek",
                    Orange = "Items.earrings_07_basic_04_kwek",
                    Pink = "Items.earrings_07_old_03_kwek",
                    Purple = "Items.earrings_07_old_02_kwek",
                    Red = "Items.earrings_07_rich_01_kwek",
                    Silver = "Items.earrings_07_basic_02_kwek"
                }
            },
            Necklace = {
                Valentino = {
                    StackOne = {
                        Gold = "Items.necklace_01_basic_01_kwek",
                        Holo = "Items.necklace_01_old_01_kwek",
                        Orange = "Items.necklace_01_basic_04_kwek",
                        Pink = "Items.necklace_01_old_03_kwek",
                        PinkGlow = "Items.necklace_01_basic_03_kwek",
                        Purple = "Items.necklace_01_old_02_kwek",
                        Red = "Items.necklace_01_rich_01_kwek",
                        Silver = "Items.necklace_01_basic_02_kwek"
                    },
                    StackTwo = {
                        Gold = "Items.necklace_02_basic_01_kwek",
                        Holo = "Items.necklace_02_old_01_kwek",
                        Orange = "Items.necklace_02_basic_04_kwek",
                        Pink = "Items.necklace_02_old_03_kwek",
                        PinkGlow = "Items.necklace_02_basic_03_kwek",
                        Purple = "Items.necklace_02_old_02_kwek",
                        Red = "Items.necklace_02_rich_01_kwek",
                        Silver = "Items.necklace_02_basic_02_kwek"
                    }
                }
            },
            ChainNecklace = {
                Gold = "Items.kwek_necklace_04_default",
                Silver = "Items.kwek_necklace_04_silver",
                Glow = "Items.kwek_necklace_04_glow_pink",
                Orange = "Items.kwek_necklace_04_orange",
                Holo = "Items.kwek_necklace_04_holo",
                Purple = "Items.kwek_necklace_04_purple",
                Pink = "Items.kwek_necklace_04_pink",
                Red = "Items.kwek_necklace_04_red",
                White = "Items.kwek_necklace_04_white",
                Black = "Items.kwek_necklace_04_black"
            }
        },
        Feet = {
            HeeledSandals = {
                Black = "Items.high_sandals_01_rich_02_kwek",
                BlackOrange = "Items.high_sandals_01_basic_01_kwek",
                Gold = "Items.high_sandals_01_old_03_kwek",
                Green = "Items.high_sandals_01_rich_01_kwek",
                Leopard = "Items.high_sandals_01_old_01_kwek",
                Pink = "Items.high_sandals_01_basic_03_kwek",
                Purple = "Items.high_sandals_01_basic_04_kwek",
                Silver = "Items.high_sandals_01_old_02_kwek",
                White = "Items.high_sandals_01_basic_02_kwek"
            },
            HighHeelPants = {
                Gradient = {
                    Gold = "Items.boots_01_holo_02_kwek",
                    Pink = "Items.boots_01_transparent_02_kwek",
                },
                Leather = {
                    Black = "Items.boots_01_net_01_kwek",
                    Pink = "Items.boots_01_net_03_kwek",
                    Red = "Items.boots_01_transparent_03_kwek",
                    White = "Items.boots_01_net_02_kwek"
                },
                Metallic = {
                    Chrome = "Items.boots_01_holo_01_kwek"
                },
                Pattern = {
                    Blue = "Items.boots_01_rich_02_kwek",
                    Camo = "Items.boots_01_old_02_kwek",
                    Gold = "Items.boots_01_rich_03_kwek",
                    Leopard = "Items.boots_01_basic_04_kwek",
                    Red = "Items.boots_01_rich_01_kwek",
                    Silver = "Items.boots_01_rich_04_kwek"
                },
                PVC = {
                    Black = "Items.boots_01_pvc_01_kwek",
                    Red = "Items.boots_01_pvc_03_kwek",
                    White = "Items.boots_01_basic_03_kwek",
                    Yellow = "Items.boots_01_pvc_02_kwek"
                },
                Satin = {
                    Black = "Items.boots_01_basic_01_kwek",
                    Pink = "Items.boots_01_old_03_kwek",
                    White = "Items.boots_01_basic_02_kwek",
                    Yellow = "Items.boots_01_old_01_kwek"
                },
                Solid = {
                    Green = "Items.boots_01_holo_03_kwek",
                    Orange = "Items.boots_01_transparent_01_kwek"
                }
            }
        },
        InnerTorso = {
            MicroBikini = {
                Holo = {
                    Blue = "Items.micro_bikini_01_holo_01_kwek",
                    YellowDot = "Items.micro_bikini_01_holo_02_kwek",
                    Pink = "Items.micro_bikini_01_holo_03_kwek"
                },
                Pattern = {
                    Blue = "Items.micro_bikini_01_rich_02_kwek",
                    Camo = "Items.micro_bikini_01_old_02_kwek",
                    Gold = "Items.micro_bikini_01_rich_03_kwek",
                    Leopard = "Items.micro_bikini_01_basic_04_kwek",
                    Red = "Items.micro_bikini_01_rich_01_kwek",
                    Silver = "Items.micro_bikini_01_rich_04_kwek"
                },
                PVC = {
                    Black = "Items.micro_bikini_01_pvc_01_kwek",
                    Red = "Items.micro_bikini_01_pvc_03_kwek",
                    White = "Items.micro_bikini_01_basic_03_kwek",
                    Yellow = "Items.micro_bikini_01_pvc_02_kwek"
                },
                Sheer = {
                    Black = "Items.micro_bikini_01_net_01_kwek",
                    White = "Items.micro_bikini_01_net_02_kwek",
                    Purple = "Items.micro_bikini_01_net_03_kwek"
                },
                Solid = {
                    Black = "Items.micro_bikini_01_basic_01_kwek",
                    Pink = "Items.micro_bikini_01_old_03_kwek",
                    White = "Items.micro_bikini_01_basic_02_kwek",
                    Yellow = "Items.micro_bikini_01_old_01_kwek",
                },
                Transparent = {
                    Black = "Items.micro_bikini_01_transparent_01_kwek",
                    Red = "Items.micro_bikini_01_transparent_02_kwek",
                    Yellow = "Items.micro_bikini_01_transparent_03_kwek",
                }
            },
            NipplePasties = {
                Starstruck = {
                    Cotton = {
                        Black = "Items.fancy_pasties_03_basic_01_kwek",
                        White = "Items.fancy_pasties_03_basic_02_kwek",
                        Yellow = "Items.fancy_pasties_03_old_01_kwek",
                        Pink = "Items.fancy_pasties_03_old_03_kwek"
                    },
                    PVC = {
                        White = "Items.fancy_pasties_03_basic_03_kwek",
                        Black = "Items.fancy_pasties_03_pvc_01_kwek",
                        Yellow = "Items.fancy_pasties_03_pvc_02_kwek",
                        Red = "Items.fancy_pasties_03_pvc_03_kwek"
                    },
                    Pattern = {
                        Leopard = "Items.fancy_pasties_03_basic_04_kwek",
                        Camo = "Items.fancy_pasties_03_old_02_kwek",
                        Red = "Items.fancy_pasties_03_rich_01_kwek",
                        Blue = "Items.fancy_pasties_03_rich_02_kwek"
                    },
                    Metallic = {
                        Gold = "Items.fancy_pasties_03_rich_03_kwek",
                        Silver = "Items.fancy_pasties_03_rich_04_kwek"
                    },
                    Holo = {
                        Blue = "Items.fancy_pasties_03_holo_01_kwek",
                        Yellow = "Items.fancy_pasties_03_holo_02_kwek",
                        Pink = "Items.fancy_pasties_03_holo_03_kwek"
                    },
                    Transparent = {
                        Black = "Items.fancy_pasties_03_transparent_01_kwek",
                        Yellow = "Items.fancy_pasties_03_transparent_02_kwek",
                        Red = "Items.fancy_pasties_03_transparent_03_kwek",
                    },
                    Sheer = {
                        Black = "Items.fancy_pasties_03_net_01_kwek",
                        White = "Items.fancy_pasties_03_net_02_kwek",
                        Purple = "Items.fancy_pasties_03_net_03_kwek"
                    }
                },
                Xtravagant = {
                    Cotton = {
                        Black = "Items.fancy_pasties_05_basic_01_kwek",
                        White = "Items.fancy_pasties_05_basic_02_kwek",
                        Yellow = "Items.fancy_pasties_05_old_01_kwek",
                        Pink = "Items.fancy_pasties_05_old_03_kwek"
                    },
                    PVC = {
                        White = "Items.fancy_pasties_05_basic_03_kwek",
                        Black = "Items.fancy_pasties_05_pvc_01_kwek",
                        Yellow = "Items.fancy_pasties_05_pvc_02_kwek",
                        Red = "Items.fancy_pasties_05_pvc_03_kwek"
                    },
                    Pattern = {
                        Leopard = "Items.fancy_pasties_05_basic_04_kwek",
                        Camo = "Items.fancy_pasties_05_old_02_kwek",
                        Red = "Items.fancy_pasties_05_rich_01_kwek",
                        Blue = "Items.fancy_pasties_05_rich_02_kwek"
                    },
                    Metallic = {
                        Gold = "Items.fancy_pasties_05_rich_03_kwek",
                        Silver = "Items.fancy_pasties_05_rich_04_kwek",
                    },
                    Holo = {
                        Blue = "Items.fancy_pasties_05_holo_01_kwek",
                        Yellow = "Items.fancy_pasties_05_holo_02_kwek",
                        Pink = "Items.fancy_pasties_05_holo_03_kwek"
                    },
                    Transparent = {
                        Black = "Items.fancy_pasties_05_transparent_01_kwek",
                        Yellow = "Items.fancy_pasties_05_transparent_02_kwek",
                        Red = "Items.fancy_pasties_05_transparent_03_kwek"
                    },
                    Sheer = {
                        Black = "Items.fancy_pasties_05_net_01_kwek",
                        White = "Items.fancy_pasties_05_net_02_kwek",
                        Purple = "Items.fancy_pasties_05_net_03_kwek"
                    }
                }
            }
        },
        OuterTorso = {
            ChainBracelet = {
                Gold = "Items.kwek_bracelet_02_default",
                Silver = "Items.kwek_bracelet_02_silver",
                Glow = "Items.kwek_bracelet_02_glow_pink",
                Orange = "Items.kwek_bracelet_02_orange",
                Holo = "Items.kwek_bracelet_02_holo",
                Purple = "Items.kwek_bracelet_02_purple",
                Pink = "Items.kwek_bracelet_02_pink",
                Red = "Items.kwek_bracelet_02_red",
                White = "Items.kwek_bracelet_02_white",
                Black = "Items.kwek_bracelet_02_black"
            }
        }
    },
    Llama = {
        OuterTorso = {
            Emmerick = {
                Black = "Items.bouncer_black",
                Camo = "Items.bouncer_camo",
                Digital = "Items.bouncer_digi",
                FDE = "Items.bouncer_fde",
                Orange = "Items.bouncer_orange",
                Original = "Items.bouncer_og",
                PlaidGreen = "Items.bouncer_plaidg",
                PlaidRed = "Items.bouncer_plaidr",
                Purple = "Items.bouncer_purple",
                Silver = "Items.bouncer_silver"
            }
        }
    },
    Monsteraider = {
        InnerTorso = {
            HollowBra = {
                Black = "Items.raid_hollow_bra_black",
                Gold = "Items.raid_hollow_bra_gold",
                Holo = "Items.raid_hollow_bra_holo",
                Pink = "Items.raid_hollow_bra_pink"
            }
        },
        Legs = {
            MiniSkirt = {
                Salmon = "Items.raid_cybersmini_light_red",
                Formal = {
                    Black = "Items.raid_cybersmini_black_formal",
                    Olive = "Items.raid_cybersmini_olive_formal"
                },
                Silver = "Items.raid_cybersmini_silver",
                Beige = "Items.raid_cybersmini_beige",
                Cyan = "Items.raid_cybersmini_cyan",
                Lime = "Items.raid_cybersmini_lime",
                Green = "Items.raid_cybersmini_green",
                Pink = "Items.raid_cybersmini_pink",
                Burgundy = "Items.raid_cybersmini_burgundy",
                Red = "Items.raid_cybersmini_red",
                White = "Items.raid_cybersmini_white",
                Holo = "Items.raid_cybersmini_holo",
            },
            MicroSkirt = {
                Black = "Items.raid_cyberskirt_black",
                Plaid = {
                    Red = "Items.raid_cyberskirt_plaid_red",
                    Navy = "Items.raid_cyberskirt_plaid_navy"
                },
                Navy = "Items.raid_cyberskirt_navy",
                Pink = "Items.raid_cyberskirt_pink",
                Pattern = {
                    Skull = "Items.raid_cyberskirt_black_skull",
                    Striped = "Items.raid_cyberskirt_stripes"
                },
                Cotton = {
                    Black = "Items.raid_cyberskirt_cotton_black",
                    White = "Items.raid_cyberskirt_cotton_white",
                    Navy = "Items.raid_cyberskirt_cotton_navy"
                },
                Lime = "Items.raid_cyberskirt_lime",
                Wool = {
                    Beige = "Items.raid_cyberskirt_wool_beige"
                }
            },
            AngledSkirt = {
                Arasaka = {
                    Red = "Items.raid_cyberangle_red_arasaka",
                    White = "Items.raid_cyberangle_white_arasaka"
                },
                Pattern = {
                    Cyber = "Items.raid_cyberangle_black_cyber",
                    Sakura = "Items.raid_cyberangle_pink_sakura",
                    Denim = "Items.raid_cyberangle_denim",
                    Roses = "Items.raid_cyberangle_rich_roses",
                    Gray = "Items.raid_cyberangle_rich_gray",
                    Sequin = {
                        Rich = "Items.raid_cyberangle_rich_sequin",
                        White = "Items.raid_cyberangle_white_sequin",
                        Beige = "Items.raid_cyberangle_beige_sequin"
                    },
                    Dragon = "Items.raid_cyberangle_purple_dragon",
                    Fixer = "Items.raid_cyberangle_fixer"
                },
                Gradient = {
                    Purple = "Items.raid_cyberangle_purple_grdient",
                    Orange = "Items.raid_cyberangle_orange_grdient",
                    Coral = "Items.raid_cyberangle_coral_gradient",
                },
                Black = "Items.raid_cyberangle_black",
                Transparent = "Items.raid_cyberangle_black_transparent",
                Silver = "Items.raid_cyberangle_silver"
            }
        }
    },
    Ziva = {
        Feet = {
            CurvySandals = {
                Economy = {
                    Black = "Items.curv_a",
                    White = "Items.curv_b",
                },
                Luxury = {
                    Gold = "Items.curv_c",
                    Red = "Items.curv_d",
                    White = "Items.curv_f",
                    Black = "Items.curv_e"
                }
            }
        },
        InnerTorso = {
            NavalPiercing = {
                Blue = "Items.navp_a",
                Red = "Items.navp_b",
                Green = "Items.navp_c",
                Pink = "Items.navp_d"
            }
        }
    },
    Wizzo = {
        Legs = {
            DaisyDuke = {
                Blue = "Items.wizzo_daisy_duke_shorts_1",
                White = "Items.wizzo_daisy_duke_shorts_2"
            }
        }
    },
    Veegee = {
        InnerTorso = {
            ChainTop = {
                Black = {
                    Brass = "Items.chain_top_1",
                    Silver = "Items.chain_top_2",
                    Gold = "Items.chain_top_3",
                    Pink = "Items.chain_top_20"
                },
                White = {
                    Brass = "Items.chain_top_4",
                    Silver = "Items.chain_top_5",
                    Gold = "Items.chain_top_6",
                    Pink = "Items.chain_top_19"
                },
                Red = {
                    Brass = "Items.chain_top_7",
                    Silver = "Items.chain_top_8",
                    Gold = "Items.chain_top_9"
                },
                Green = {
                    Brass = "Items.chain_top_10",
                    Silver = "Items.chain_top_11",
                    Gold = "Items.chain_top_12",
                },
                Blue = {
                    Brass = "Items.chain_top_13",
                    Silver = "Items.chain_top_14",
                    Gold = "Items.chain_top_15",
                },
                Purple = {
                    Brass = "Items.chain_top_16",
                    Silver = "Items.chain_top_17",
                    Gold = "Items.chain_top_18",
                }
            },
            LaceShirt = {
                Shiny = {
                    BlackGold = "Items.washxveegee_lace_shirt_black_gold",
                    BlackLeather = "Items.washxveegee_lace_shirt_black_leather",
                    BlackSilver = "Items.washxveegee_lace_shirt_black_silver",
                    BlueSilver = "Items.washxveegee_lace_shirt_blue_silver",
                    EmeraldSilver = "Items.washxveegee_lace_shirt_emerald_silver",
                    GreenGold = "Items.washxveegee_lace_shirt_green_gold",
                    SilverBlack = "Items.washxveegee_lace_shirt_silver_black",
                    Gold = "Items.washxveegee_lace_shirt_snakeskin_gold",
                    Silver = "Items.washxveegee_lace_shirt_snakeskin_silver",
                    Teal = "Items.washxveegee_lace_shirt_snakeskin_teal",
                    WhiteBlack = "Items.washxveegee_lace_shirt_white_black",
                    WhiteGold = "Items.washxveegee_lace_shirt_white_gold",
                    PinkGold = "Items.washxveegee_lace_shirt_pink_gold"
                },
                Paisley = {
                    Berry = "Items.washxveegee_lace_shirt_paisley_berry",
                    Blue = "Items.washxveegee_lace_shirt_paisley_blue",
                    Green = "Items.washxveegee_lace_shirt_paisley_green",
                    Scarlet = "Items.washxveegee_lace_shirt_paisley_scarlet",
                    PinkBlack = "Items.washxveegee_lace_shirt_pink_black",
                    PinkBlue = "Items.washxveegee_lace_shirt_pink_blue",
                    PinkTeal = "Items.washxveegee_lace_shirt_pink_teal",
                    RedBlack = "Items.washxveegee_lace_shirt_red_black",
                    PurpleBlack = "Items.washxveegee_lace_shirt_purple_black"
                },
                Plaid = {
                    WhiteBlack = "Items.washxveegee_lace_shirt_plaid_black",
                    BlueWhite = "Items.washxveegee_lace_shirt_plaid_blue",
                    BlueGreen = "Items.washxveegee_lace_shirt_plaid_blue_green",
                    BlueYellow = "Items.washxveegee_lace_shirt_plaid_blue_yellow",
                    Green = "Items.washxveegee_lace_shirt_plaid_green",
                    LightGreen = "Items.washxveegee_lace_shirt_plaid_green_lt",
                    Purple = "Items.washxveegee_lace_shirt_plaid_purple",
                    RedWhite = "Items.washxveegee_lace_shirt_plaid_red_white",
                    RedBlack = "Items.washxveegee_lace_shirt_plaid_red",
                    RedYellow = "Items.washxveegee_lace_shirt_plaid_red_yellow",
                    Yellow = "Items.washxveegee_lace_shirt_plaid_yellow"
                },
                Dotted = {
                    BlackWhite = "Items.washxveegee_lace_shirt_dots_black_white",
                    PinkBlack = "Items.washxveegee_lace_shirt_dots_pink_black",
                    PinkWhite = "Items.washxveegee_lace_shirt_dots_pink_white",
                    WhiteBlack = "Items.washxveegee_lace_shirt_dots_white_black",
                    WhitePink = "Items.washxveegee_lace_shirt_dots_white_pink"
                },
                Roses = {
                    Black = "Items.washxveegee_lace_shirt_roses_black",
                    Pink = "Items.washxveegee_lace_shirt_roses_pink",
                    Red =  "Items.washxveegee_lace_shirt_roses_red"
                },
                Checkered = {
                    BlackWhite = "Items.washxveegee_lace_shirt_checker_black_white"
                }
            },
            EchlSwimsuit = {
                Black = "Items.veegee_echl_swimsuit_black",
                Blue = "Items.veegee_echl_swimsuit_blue",
                Grey = "Items.veegee_echl_swimsuit_grey",
                Red = "Items.veegee_echl_swimsuit_red",
                Green = "Items.veegee_echl_swimsuit_green",
                Purple = "Items.veegee_echl_swimsuit_purple",
                Pink = "Items.veegee_echl_swimsuit_pink"
            },
            GothSuit = {
                Black = "Items.veegee_goth_suit_black",
                White = "Items.veegee_goth_suit_white",
                Red = "Items.veegee_goth_suit_camo_red",
                Green = "Items.veegee_goth_suit_plaid_green",
                Yellow = "Items.veegee_goth_suit_plaid_yellow",
                Blue = "Items.veegee_goth_suit_camo_blue",
                Pink = "Items.veegee_goth_suit_pink"
            },
            BunnySuit = {
                Black = "Items.veegee_bunny_suit_black",
                Blue = "Items.veegee_bunny_suit_blue",
                Green = "Items.veegee_bunny_suit_green",
                Pink = "Items.veegee_bunny_suit_pink",
                Purple = "Items.veegee_bunny_suit_purple",
                Red = "Items.veegee_bunny_suit_red",
                White = "Items.veegee_bunny_suit_white",
                Yellow = "Items.veegee_bunny_suit_yellow"
            }
        },
        Legs = {
            GothDress = {
                Black = "Items.veegee_goth_dress_black",
                White = "Items.veegee_goth_dress_white",
                Red = "Items.veegee_goth_dress_camo_red",
                Green = "Items.veegee_goth_dress_plaid_green",
                Yellow = "Items.veegee_goth_dress_plaid_yellow",
                Blue = "Items.veegee_goth_dress_camo_blue",
                Pink = "Items.veegee_goth_dress_pink"
            },
            CombatPants = {
                Black = "Items.veegee_combat_pants_black",
                Cyber = "Items.veegee_combat_pants_cyber",
                White = "Items.veegee_combat_pants_white",
                Blue = "Items.veegee_combat_pants_blue",
                Red = "Items.veegee_combat_pants_red",
                Green = "Items.veegee_combat_pants_green",
                Grey = "Items.veegee_combat_pants_grey",
                Pink = "Items.veegee_combat_pants_pink"
            }
        },
        Feet = {
            BowShoe = {
                BlackRed = "Items.johnxveegee_bow_shoe_black_red",
                WhiteBlack = "Items.johnxveegee_bow_shoe_white_black",
                Pink = "Items.johnxveegee_bow_shoe_pink",
                BlueWhite = "Items.johnxveegee_bow_shoe_blue_white",
                RedBlack = "Items.johnxveegee_bow_shoe_red_black",
                Beach = "Items.johnxveegee_bow_shoe_beach",
                BlueRed = "Items.johnxveegee_bow_shoe_blue_pommy",
                PurpleGrey = "Items.johnxveegee_bow_shoe_purple_grey",
                BeachBlue = "Items.johnxveegee_bow_shoe_beach_blue",
                Black = "Items.johnxveegee_bow_shoe_black",
                White = "Items.johnxveegee_bow_shoe_white"
            }
        },
        Face = {
            Rings = {
                Chevron = {
                    Gold = "Items.veegee_ring_gold_01",
                    Silver = "Items.veegee_ring_silver_01",
                    White = "Items.veegee_ring_white_01",
                    Black = "Items.veegee_ring_black_01"
                },
                SlimJewel = {
                    Gold = "Items.veegee_ring_gold_02",
                    Silver = "Items.veegee_ring_silver_02",
                    White = "Items.veegee_ring_white_02",
                    Black = "Items.veegee_ring_black_02"
                },
                Open = {
                    Gold = "Items.veegee_ring_gold_03",
                    Silver = "Items.veegee_ring_silver_03",
                    White = "Items.veegee_ring_white_03",
                    Black = "Items.veegee_ring_black_03"
                },
                Seashell = {
                    Gold = "Items.veegee_ring_gold_04",
                    Silver = "Items.veegee_ring_silver_04",
                    White = "Items.veegee_ring_white_04",
                    Black = "Items.veegee_ring_black_04"
                },
                Heart = {
                    Gold = "Items.veegee_ring_gold_05",
                    Silver = "Items.veegee_ring_silver_05",
                    White = "Items.veegee_ring_white_05",
                    Black = "Items.veegee_ring_black_05"
                },
                Infinity = {
                    Gold = "Items.veegee_ring_gold_06",
                    Silver = "Items.veegee_ring_silver_06",
                    White = "Items.veegee_ring_white_06",
                    Black = "Items.veegee_ring_black_06"
                },
                Flowers = {
                    Gold = "Items.veegee_ring_gold_07",
                    Silver = "Items.veegee_ring_silver_07",
                    White = "Items.veegee_ring_white_07",
                    Black = "Items.veegee_ring_black_07"
                },
                Sharp = {
                    Gold = "Items.veegee_ring_gold_08",
                    Silver = "Items.veegee_ring_silver_08",
                    White = "Items.veegee_ring_white_08",
                    Black = "Items.veegee_ring_black_08"
                },
                Wavy = {
                    Gold = "Items.veegee_ring_gold_09",
                    Silver = "Items.veegee_ring_silver_09",
                    White = "Items.veegee_ring_white_09",
                    Black = "Items.veegee_ring_black_09"
                },
                Paradox = {
                    Gold = "Items.veegee_ring_gold_10",
                    Silver = "Items.veegee_ring_silver_10",
                    White = "Items.veegee_ring_white_10",
                    Black = "Items.veegee_ring_black_10"
                },
                Embossed = {
                    Gold = "Items.veegee_ring_gold_11",
                    Silver = "Items.veegee_ring_silver_11",
                    White = "Items.veegee_ring_white_11",
                    Black = "Items.veegee_ring_black_11"
                },
                Plated = {
                    Gold = "Items.veegee_ring_gold_12",
                    Silver = "Items.veegee_ring_silver_12",
                    White = "Items.veegee_ring_white_12",
                    Black = "Items.veegee_ring_black_12"
                },
                Band = {
                    Gold = "Items.veegee_ring_gold_13",
                    Silver = "Items.veegee_ring_silver_13",
                    White = "Items.veegee_ring_white_13",
                    Black = "Items.veegee_ring_black_13"
                },
                Royal = {
                    Gold = "Items.veegee_ring_gold_14",
                    Silver = "Items.veegee_ring_silver_14",
                    White = "Items.veegee_ring_white_14",
                    Black = "Items.veegee_ring_black_14"
                },
                Smooth = {
                    Gold = "Items.veegee_ring_gold_16",
                    Silver = "Items.veegee_ring_silver_16",
                    White = "Items.veegee_ring_white_16",
                    Black = "Items.veegee_ring_black_16"
                },
                Jewel = {
                    Gold = "Items.veegee_ring_gold_17",
                    Silver = "Items.veegee_ring_silver_17",
                    White = "Items.veegee_ring_white_17",
                    Black = "Items.veegee_ring_black_17"
                },
                String = {
                    Gold = "Items.veegee_ring_gold_18",
                    Silver = "Items.veegee_ring_silver_18",
                    White = "Items.veegee_ring_white_18",
                    Black = "Items.veegee_ring_black_18"
                },
                Rope = {
                    Gold = "Items.veegee_ring_gold_19",
                    Silver = "Items.veegee_ring_silver_19",
                    White = "Items.veegee_ring_white_19",
                    Black = "Items.veegee_ring_black_19"
                }
            },
            BunnyLace = {
                Black = "Items.veegee_bunny_lace_black",
                White = "Items.veegee_bunny_lace_white"
            }
        },
        Head = {
            BunnyEars = {
                Black = "Items.veegee_bunny_headgear_black",
                White = "Items.veegee_bunny_headgear_white"
            }
        },
        Special = {
            Netrunner = {
                Suit = {
                    Zipped = {
                        Black = "Items.veegee_netrunner_suit_p2_black",
                        White = "Items.veegee_netrunner_suit_p2_white",
                        Yellow = "Items.veegee_netrunner_suit_p2_yellow",
                        Red = "Items.veegee_netrunner_suit_p2_red",
                        Pink = "Items.veegee_netrunner_suit_p2_pink"
                    },
                    Unzipped = {
                        Black = "Items.veegee_netrunner_suit_p2_open_black",
                        White = "Items.veegee_netrunner_suit_p2_open_white",
                        Yellow = "Items.veegee_netrunner_suit_p2_open_yellow",
                        Red = "Items.veegee_netrunner_suit_p2_open_red",
                        Pink = "Items.veegee_netrunner_suit_p2_open_pink"
                    }
                },
                Helm = {
                    Open = {
                        Black = "Items.veegee_netrunner_helm_black",
                        White = "Items.veegee_netrunner_helm_white",
                        Yellow = "Items.veegee_netrunner_helm_yellow",
                        Red = "Items.veegee_netrunner_helm_red",
                        Pink = "Items.veegee_netrunner_helm_pink"
                    },
                    Closed = {
                        Black = "Items.veegee_netrunner_helm_close_black",
                        White = "Items.veegee_netrunner_helm_close_white",
                        Yellow = "Items.veegee_netrunner_helm_close_yellow",
                        Red = "Items.veegee_netrunner_helm_close_red",
                        Pink = "Items.veegee_netrunner_helm_close_pink"
                    }
                },
                Gloves = {
                    Black = "Items.veegee_judy_gloves_black"
                }
            }
        }
    },
    Eren = {
        InnerTorso = {
            LacedBodysuit = {
                Spandex = {
                    Black = "Items.laced_bodysuit_1",
                    White = "Items.laced_bodysuit_2",
                    Red = "Items.laced_bodysuit_3",
                    Blue = "Items.laced_bodysuit_4",
                    Pink = "Items.laced_bodysuit_5",
                    Purple = "Items.laced_bodysuit_6",
                    Turquoise = "Items.laced_bodysuit_25"
                },
                Latex = {
                    Black = "Items.laced_bodysuit_7",
                    White = "Items.laced_bodysuit_8",
                    Red = "Items.laced_bodysuit_9",
                    Blue = "Items.laced_bodysuit_10",
                    Pink = "Items.laced_bodysuit_11",
                    Purple = "Items.laced_bodysuit_12",
                    Turquoise = "Items.laced_bodysuit_26"
                },
                Silk = {
                    Berry = "Items.laced_bodysuit_13",
                    Black = "Items.laced_bodysuit_14",
                    Blue = "Items.laced_bodysuit_15",
                    Green = "Items.laced_bodysuit_16",
                    Red = "Items.laced_bodysuit_17",
                    Violet = "Items.laced_bodysuit_18"
                },
                Velvet = {
                    Berry = "Items.laced_bodysuit_19",
                    Black = "Items.laced_bodysuit_20",
                    Blue = "Items.laced_bodysuit_21",
                    Green = "Items.laced_bodysuit_22",
                    Red = "Items.laced_bodysuit_23",
                    RoseGold = "Items.laced_bodysuit_24",
                }
            },
            SportyCropTank = {
                Design = {
                    NoRulesNoLimits = {
                        Net = "Items.sporty_crop_tank_1",
                        Simple = "Items.sporty_crop_tank_no_net_1",
                    },
                    Tokyo = {
                        Net = "Items.sporty_crop_tank_2",
                        Simple = "Items.sporty_crop_tank_no_net_2",
                    },
                    Vibes = {
                        Net = "Items.sporty_crop_tank_3",
                        Simple = "Items.sporty_crop_tank_no_net_3",
                    },
                    Whatever = {
                        Net = "Items.sporty_crop_tank_4",
                        Simple = "Items.sporty_crop_tank_no_net_4",
                    },
                    Young = {
                        Net = "Items.sporty_crop_tank_5",
                        Simple = "Items.sporty_crop_tank_no_net_5",
                    },
                    BlahBlahBlah = {
                        Net = "Items.sporty_crop_tank_6",
                        Simple = "Items.sporty_crop_tank_no_net_6",
                    },
                },
                Color = {
                    Pink = {
                        Net = "Items.sporty_crop_tank_7",
                        Simple = "Items.sporty_crop_tank_no_net_7",
                    },
                    PinkWhite = {
                        Net = "Items.sporty_crop_tank_8",
                        Simple = "Items.sporty_crop_tank_no_net_8",
                    },
                    Black = {
                        Net = "Items.sporty_crop_tank_9",
                        Simple = "Items.sporty_crop_tank_no_net_9",
                    },
                    BlackGrey = {
                        Net = "Items.sporty_crop_tank_10",
                        Simple = "Items.sporty_crop_tank_no_net_10",
                    },
                    Blue = {
                        Net = "Items.sporty_crop_tank_11",
                        Simple = "Items.sporty_crop_tank_no_net_11",
                    },
                    BlueWhite = {
                        Net = "Items.sporty_crop_tank_12",
                        Simple = "Items.sporty_crop_tank_no_net_12",
                    },
                    Purple = {
                        Net = "Items.sporty_crop_tank_13",
                        Simple = "Items.sporty_crop_tank_no_net_13",
                    },
                    PurpleBlue = {
                        Net = "Items.sporty_crop_tank_14",
                        Simple = "Items.sporty_crop_tank_no_net_14",
                    },
                    Red = {
                        Net = "Items.sporty_crop_tank_15",
                        Simple = "Items.sporty_crop_tank_no_net_15",
                    },
                    RedBlack = {
                        Net = "Items.sporty_crop_tank_16",
                        Simple = "Items.sporty_crop_tank_no_net_16",
                    },
                    Turquoise = {
                        Net = "Items.sporty_crop_tank_17",
                        Simple = "Items.sporty_crop_tank_no_net_17",
                    },
                    TurquoiseWhite = {
                        Net = "Items.sporty_crop_tank_18",
                        Simple = "Items.sporty_crop_tank_no_net_18",
                    },
                    White = {
                        Net = "Items.sporty_crop_tank_19",
                        Simple = "Items.sporty_crop_tank_no_net_19",
                    },
                    WhiteGrey = {
                        Net = "Items.sporty_crop_tank_20",
                        Simple = "Items.sporty_crop_tank_no_net_20",
                    },
                    Yellow = {
                        Net = "Items.sporty_crop_tank_21",
                        Simple = "Items.sporty_crop_tank_no_net_21",
                    },
                    YellowWhite = {
                        Net = "Items.sporty_crop_tank_22",
                        Simple = "Items.sporty_crop_tank_no_net_22",
                    }
                },
           }
        }
    },
    Mistshield = {
        Face = {
            AltNecklace = {
                Full = "Items.alt_necklace_full",
                Bullet = "Items.alt_necklace_bullet",
                Samurai = "Items.alt_necklace_samurai"
            },
            BeadedChoker = {
                Default = "Items.bead_choker_default",
                Silver = "Items.bead_choker_silver",
                Gold = "Items.bead_choker_gold",
                Holo = "Items.bead_choker_holo",
                Cyber = "Items.bead_choker_cyber"
            }
        }
    },
    EyeOfCenter = {
        Legs = {
            E3V = "Items.Q001_Pants_Original"
        },
        InnerTorso = {
            FormalShirt = {
                Male = {
                    White = "Items.FormalShirt_00_Takemura_01",
                    Black = "Items.FormalShirt_00_Takemura_02",
                    Gray = "Items.FormalShirt_00_Takemura_03"
                },
                Female = {
                    White = "Items.FormalShirt_00_Takemura_01_w",
                    Black = "Items.FormalShirt_00_Takemura_02_w",
                    Gray = "Items.FormalShirt_00_Takemura_03_w"
                }
            }
        }
    },
    Peachu = {
        Legs = {
            PeachuBikini = {
                Black = "Items.peachu_bikini_bottom_black",
                Pink = "Items.peachu_bikini_bottom_pink",
                Blue = "Items.peachu_bikini_bottom_blue",
                DarkBlue = "Items.peachu_bikini_bottom_darkblue",
                Green = "Items.peachu_bikini_bottom_darkgreen",
                Orange = "Items.peachu_bikini_bottom_orange",
                Purple = "Items.peachu_bikini_bottom_purple",
                Red = "Items.peachu_bikini_bottom_red",
                White = "Items.peachu_bikini_bottom_white"
            }
        },
        InnerTorso = {
            PeachuDress = {
                Black = "Items.peachu_short_dress_black",
                Blue = "Items.peachu_short_dress_blue",
                Cow = {
                    Black = "Items.peachu_short_dress_blackcow",
                    Pink = "Items.peachu_short_dress_pinkcow"
                },
                Garnet = "Items.peachu_short_dress_granate",
                Orange = "Items.peachu_short_dress_orange",
                Pink = "Items.peachu_short_dress_pink",
                Purple = "Items.peachu_short_dress_purple",
                Red = "Items.peachu_short_dress_red",
                White = "Items.peachu_short_dress_white"
            },
            PeachuBikini = {
                Black = "Items.peachu_bikini_top_black",
                Pink = "Items.peachu_bikini_top_pink",
                Blue = "Items.peachu_bikini_top_blue",
                DarkBlue = "Items.peachu_bikini_top_darkblue",
                Green = "Items.peachu_bikini_top_darkgreen",
                Orange = "Items.peachu_bikini_top_orange",
                Purple = "Items.peachu_bikini_top_purple",
                Red = "Items.peachu_bikini_top_red",
                White = "Items.peachu_bikini_top_white"
            }
        }
    },
    Wingdeer = {
        Feet = {
            ZoyasBoots = {
                Black = "Items.JOHNAUGUSTxWINGDEER_Zoyas_Boots",
                Brown = "Items.JOHNAUGUSTxWINGDEER_Zoyas_Boots_brown",
                Midnight = "Items.JOHNAUGUSTxWINGDEER_Zoyas_Boots_midnight",
                Pale = "Items.JOHNAUGUSTxWINGDEER_Zoyas_Boots_pale",
                Pink = "Items.JOHNAUGUSTxWINGDEER_Zoyas_Boots_pink",
                Bubblegum = "Items.JOHNAUGUSTxWINGDEER_Zoyas_Boots_bubblegum",
                Red = "Items.JOHNAUGUSTxWINGDEER_Zoyas_Boots_red"
            },
            ZoyasPlatform = {
                Black = "Items.JOHNAUGUSTxWINGDEER_Zoyas_PlatformBoots",
                Brown = "Items.JOHNAUGUSTxWINGDEER_Zoyas_PlatformBoots_brown",
                Midnight = "Items.JOHNAUGUSTxWINGDEER_Zoyas_PlatformBoots_midnight",
                Pale = "Items.JOHNAUGUSTxWINGDEER_Zoyas_PlatformBoots_pale",
                Pink = "Items.JOHNAUGUSTxWINGDEER_Zoyas_PlatformBoots_pink",
                Bubblegum = "Items.JOHNAUGUSTxWINGDEER_Zoyas_PlatformBoots_bubblegum",
                Red = "Items.JOHNAUGUSTxWINGDEER_Zoyas_PlatformBoots_red"
            }
        }
    },
    Wash = {
        Legs = {
            Jeans = {
                Denim = {
                    Black = "Items.wash_pma_jeans_denim_black",
                    Blue = "Items.wash_pma_jeans_denim_blue",
                    DarkBlue = "Items.wash_pma_jeans_denim_blue_dark",
                    LightBlue = "Items.wash_pma_jeans_denim_blue_light",
                    Brown = "Items.wash_pma_jeans_denim_brown",
                    Green = "Items.wash_pma_jeans_denim_green",
                    Red = "Items.wash_pma_jeans_denim_red",
                    Faded = {
                        Black = "Items.wash_pma_jeans_denim_black_faded",
                        Blue = "Items.wash_pma_jeans_denim_blue_faded"
                    },
                    Camo = {
                        Brown = "Items.wash_pma_jeans_denim_camo_brown",
                        Green = "Items.wash_pma_jeans_denim_camo_green"
                    }
                },
                Leather = {
                    Black = "Items.wash_pma_jeans_leather_black",
                    Red = "Items.wash_pma_jeans_leather_red"
                },
                Acid = {
                    Black = "Items.wash_pma_jeans_denim_black_acid_wash_01",
                    BlackAlt = "Items.wash_pma_jeans_denim_black_acid_wash_02",
                    Blue = "Items.wash_pma_jeans_denim_blue_acid_wash_01",
                    BlueAlt = "Items.wash_pma_jeans_denim_blue_acid_wash_02"
                },
                Military = {
                    Black = "Items.wash_pma_jeans_militarism_black",
                    Blue = "Items.wash_pma_jeans_militarism_blue",
                    Green = "Items.wash_pma_jeans_militarism_green",
                    Red = "Items.wash_pma_jeans_militarism_red"
                },
                Paisley = {
                    Black = "Items.wash_pma_jeans_paisley_black",
                    Blue = "Items.wash_pma_jeans_paisley_blue",
                    Green = "Items.wash_pma_jeans_paisley_green"
                },
                Plaid = {
                    BlueGreen = "Items.wash_pma_jeans_plaid_bluegreen",
                    Red = "Items.wash_pma_jeans_plaid_red",
                    RedYellow = "Items.wash_pma_jeans_plaid_redyellow",
                    Yellow = "Items.wash_pma_jeans_plaid_yellow"
                },
                Sparkly = {
                    Black = "Items.wash_pma_jeans_sparkly_black",
                    Red = "Items.wash_pma_jeans_sparkly_red",
                    RedGold = "Items.wash_pma_jeans_sparkly_red_gold"
                },
                Triangles = {
                    Grey = "Items.wash_pma_jeans_triangles_black_grey",
                    Blue = "Items.wash_pma_jeans_triangles_black_blue",
                    Green = "Items.wash_pma_jeans_triangles_black_green"
                },
                Stripes = {
                    Grey = "Items.wash_pma_jeans_stripes_black_grey",
                    Blue = "Items.wash_pma_jeans_stripes_black_blue"
                },
                Squares = {
                    Blue = "Items.wash_pma_jeans_squares_black_blue",
                    Green = "Items.wash_pma_jeans_squares_black_green"
                }
            }
        }
    },
    Johnson = {
        Feet = {
            Songbird = "Items.johnson_songbird_boots"
        }
    },
    Buff = {
        Weapons = {
            Ranged = {
                MA70 = {
                    Common = "Items.Preset_BuffsSmartLMG_common",
                    Uncommon = "Items.Preset_BuffsSmartLMG_uncommon",
                    Rare = "Items.Preset_BuffsSmartLMG_rare",
                    Epic = "Items.Preset_BuffsSmartLMG_epic",
                    Legendary = "Items.Preset_BuffsSmartLMG_legendary",
                }
            }
        }
    },
    Scorpion = {
        OuterTorso = {
            MilitaryVest = {
                Standard = {
                    Grey = "Items.military_vest_grey_standard_grey_white",
                    Tan = "Items.military_vest_tan_standard_tan_white",
                    Pine = "Items.military_vest_pine_standard_pine_white",
                    Olive = "Items.military_vest_olive_standard_olive_white",
                    Green = "Items.military_vest_green_standard_green_white",
                    Navy = "Items.military_vest_navy_standard_navy_white",
                    Sand = "Items.military_vest_sand_standard_sand_white",
                    Charcoal = "Items.military_vest_charcoal_standard_charcoal_white",
                    Black = "Items.military_vest_black_standard_black_white",
                    Void = "Items.military_vest_void_standard_void_white",
                    White = "Items.military_vest_white_standard_white_white",
                    Militech = "Items.military_vest_militech_standard_militech_white",
                    Forest = "Items.military_vest_forest_standard_forest_white",
                    Red = "Items.military_vest_red_standard_red_white",
                    Blue = "Items.military_vest_blue_standard_blue_white",
                    Burgundy = "Items.military_vest_burgundy_standard_burgundy_white",
                    Snow = "Items.military_vest_snow_standard_snow_white",
                    Teal = "Items.military_vest_teal_standard_teal_white",
                    Pink = "Items.military_vest_pink_standard_pink_white",
                    Brown = "Items.military_vest_brown_standard_brown_white"
                },
                Custom = {
                    SpecOps = "Items.military_vest_specops_custom_specops_red",
                    Pinewood = "Items.military_vest_pinewood_custom_pinewood_pinewood",
                    Woodland = "Items.military_vest_woodland_custom_woodland_woodland",
                    Urban = "Items.military_vest_urban_custom_urban_urban",
                    Arctic = "Items.military_vest_arctic_custom_arctic_blue",
                    Arid = "Items.military_vest_arid_custom_arid_arid",
                    Tropical = "Items.military_vest_tropical_custom_tropical_woodland",
                    Digital = "Items.military_vest_digital_custom_digital_digital"
                }
            }
        },
        Head = {
            MilitaryRadio = {
                Black = "Items.military_vest_radio_black",
                Grey = "Items.military_vest_radio_grey",
                Charcoal = "Items.military_vest_radio_charcoal",
                White = "Items.military_vest_radio_white"
            }
        }
    },
    Apzurv = {
        Face = {
            Gloves = "Items.xglo_a"
        }
    },
    Breezy = {
        Feet = {
            AltBoots = {
                Black = {
                    Full = "Items.SilverBreezy_AltBoots_AllBlack",
                    Gold = {
                        VariantA = "Items.SilverBreezy_AltBoots_BlackGold1",
                        VariantB = "Items.SilverBreezy_AltBoots_BlackGold2"
                    },
                    Silver = "Items.SilverBreezy_AltBoots_BlackSilver"
                },
                Barbie = "Items.SilverBreezy_AltBoots_Barbie",
                Cherry = "Items.SilverBreezy_AltBoots_Cherryfrost",
                Soda = "Items.SilverBreezy_AltBoots_Creamsoda",
                Purple = "Items.SilverBreezy_AltBoots_Electricpurple",
                Original = "Items.SilverBreezy_AltBoots_OG",
                Leather = "Items.SilverBreezy_AltBoots_OldLeather",
                Stormy = "Items.SilverBreezy_AltBoots_Stormy",
                Vamp = "Items.SilverBreezy_AltBoots_Vampy",
                White = {
                    Gold = {
                        VariantA = "Items.SilverBreezy_AltBoots_WhiteGold1",
                        VariantB = "Items.SilverBreezy_AltBoots_WhiteGold2",
                    },
                    Silver = {
                        VariantA = "Items.SilverBreezy_AltBoots_WhiteSilver1",
                        VariantB = "Items.SilverBreezy_AltBoots_WhiteSilver2",
                    }
                }
            }
        }
    },
    Dusty = {
        InnerTorso = {
            SpikedBra = {
                Silver = "Items.dusty_spikedbra_default",
                Pink = "Items.dusty_spikedbra_pink",
                Gold = "Items.dusty_spikedbra_gold"
            }
        }
    }
}

return Custom