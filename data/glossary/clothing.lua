-- Recipes for clothing, weapons, mods all contained here.
local Clothing = {}

Clothing = {
    Head = {
        Balaclava = {
            Tactical = "Items.Balaclava_01_basic_01",
            Darra = "Items.Balaclava_01_basic_02",
            Shock = "Items.Balaclava_01_old_01",
            Nami = "Items.Balaclava_01_old_02",
            Termo = "Items.Balaclava_01_rich_01",
            Saeko = "Items.Balaclava_01_rich_02"
        },
        Cap = {
            Baseball = {
                Darra = "Items.Cap_01_basic_01",
                Daemon = "Items.Cap_01_basic_02",
                Reinforced = "Items.Cap_01_basic_03",
                Worn = "Items.Cap_01_old_01",
                Braindance = "Items.Cap_01_old_02",
                Samurai = "Items.Cap_01_old_03",
                Dandy = "Items.Cap_01_rich_01",
                Urban = "Items.Cap_01_rich_02",
                Bitch = "Items.Cap_01_rich_03"
            },
            Flat = {
                Stylish = "Items.Cap_02_basic_01",
                Classic = "Items.Cap_02_basic_02",
                Reinforced = "Items.Cap_02_basic_03",
                Sturdy = "Items.Cap_02_old_01",
                NUSA = "Items.Cap_02_old_02",
                Plain = "Items.Cap_02_old_03"
            },
            Beanie = {
                Mox = "Items.Cap_03_basic_01",
                Aztec = "Items.Cap_03_basic_02",
                Worn = "Items.Cap_03_old_01",
                Old = "Items.Cap_03_old_02",
                Kinryu = "Items.Cap_03_rich_01",
                Emerald = "Items.Cap_03_rich_02"
            },
            Camera = {
                TraumaTeam = "Items.Cap_04_basic_01",
                Certified = "Items.Cap_04_basic_02",
                Makeshift = "Items.Cap_04_old_01",
                Arasaka = "Items.Cap_04_old_02",
                KangTao = "Items.Cap_04_rich_01"
            },
            Side = {
                Arasaka = "Items.Cap_05_basic_01",
                Classic = "Items.Cap_05_basic_02",
                Officer = "Items.Cap_05_basic_03",
                SixthStreet = "Items.Cap_05_old_01",
                Maelstrom = "Items.Cap_05_old_02",
            },
            Motorcycle = {
                Cotton = "Items.Cap_06_basic_01",
                Protective = "Items.Cap_06_basic_02",
                Old = "Items.Cap_06_old_02"
            },
            -- Split this base across by item name.
            Pilot = {
                Hard = "Items.Cap_06_old_01",
                Cute = "Items.Cap_06_rich_01",
                Golden = "Items.Cap_06_rich_02"
            }
        },
        Hat = {
            Trilby = {
                Classic = "Items.Hat_01_basic_01",
                Solid = "Items.Hat_01_basic_02",
                Felt = "Items.Hat_01_old_01",
                Canvas = "Items.Hat_01_old_02",
                Mafioso = "Items.Hat_01_rich_01",
                Cebra = "Items.Hat_01_rich_02"
            },
            Cowboy = {
                Leather = "Items.Hat_02_basic_01",
                Cyan = "Items.Hat_02_basic_02",
                Sturdy = "Items.Hat_02_old_01",
                SnakeSkin = "Items.Hat_02_old_02",
                Gunslinger = "Items.Hat_02_rich_01",
                Mirame = "Items.Hat_02_rich_02"
            },
            Brimmed = {
                Nomad = "Items.Hat_03_basic_01",
                Farmer = "Items.Hat_03_basic_02",
                Modded = "Items.Hat_03_old_01",
                Worn = "Items.Hat_03_old_02",
                Military = "Items.Hat_03_rich_01"
            },
            Conical = {
                Sturdy = "Items.Hat_04_basic_01",
                Carbon = "Items.Hat_04_basic_02",
                Reinforced = "Items.Hat_04_old_01"
            }
        },
        Helmet = {
            Motorcycle = {
                ATAK = "Items.Helmet_01_basic_01",
                Light = "Items.Helmet_01_basic_02",
                Lime = "Items.Helmet_01_basic_03",
                Scratch = "Items.Helmet_01_old_01",
                Carbon = "Items.Helmet_01_rich_01",
                Copper = "Items.Helmet_01_rich_02"
            },
            Military = {
                Police = "Items.Helmet_02_basic_01",
                Speed = "Items.Helmet_02_basic_02",
                Militech = "Items.Helmet_02_basic_03",
                Colorado = "Items.Helmet_02_basic_04",
                Graffiti = "Items.Helmet_02_old_01",
                Old = "Items.Helmet_02_old_02",
                Assault = "Items.Helmet_02_old_03",
                Veteran = "Items.Helmet_02_old_04",
                Chengse = "Items.Helmet_02_rich_01",
                Bloody = "Items.Helmet_02_rich_02",
                Sueno = "Items.Helmet_02_rich_03",
                Daemon = "Items.Helmet_02_rich_04"
            },
            Hardhat = {
                Security = "Items.Helmet_03_basic_01",
                Arasaka = "Items.Helmet_03_basic_02",
                Construction = "Items.Helmet_03_old_01",
                Rusty = "Items.Helmet_03_old_02",
                Tactical = "Items.Helmet_03_rich_01"
            },
            -- Japanese for helmet.
            Kabuto = {
                Arasaka = "Items.Helmet_04_basic_01",
                Steel = "Items.Helmet_04_basic_02",
                Zunari = "Items.Helmet_04_old_01",
                TygerClaws = "Items.Helmet_04_old_02",
                Kuro = "Items.Helmet_04_rich_01",
                Hinote = "Items.Helmet_04_rich_02"
            }
        },
        Scarf = {
            Bandana = {
                Military = "Items.Scarf_01_basic_01",
                Rabenda = "Items.Scarf_01_basic_02",
                Canine = "Items.Scarf_01_basic_03",
                Graffiti = "Items.Scarf_01_old_01",
                Amber = "Items.Scarf_01_old_02",
                Camo = "Items.Scarf_01_old_03",
                Ten70 = "Items.Scarf_01_rich_01",
                Daemon = "Items.Scarf_01_rich_02",
                MagentaSpark = "Items.Scarf_01_rich_03"
            },
            Headband = {
                Simple = "Items.Scarf_02_basic_01",
                Cotton = "Items.Scarf_02_basic_02",
                Plaid = "Items.Scarf_02_old_01",
                Punk = "Items.Scarf_02_old_02",
                SandyBoa = "Items.Scarf_02_rich_01"
            },
            Hijab = {
                Light = "Items.Scarf_03_basic_01",
                Floral = "Items.Scarf_03_basic_02",
                Graffiti = "Items.Scarf_03_basic_03",
                Camo = "Items.Scarf_03_old_01",
                Quilted = "Items.Scarf_03_old_02",
                Linen = "Items.Scarf_03_old_03",
                Gray = "Items.Scarf_03_rich_01",
                Zihira = "Items.Scarf_03_rich_02",
                Kinryu = "Items.Scarf_03_rich_03"
            }
        },
        Special = {
            Media = "Items.Media_01_Set_Cap",
            Techie = "Items.Techie_01_Set_Cap",
            Spacesuit = "Items.Q203_Spacesuit_Helmet",
            MaxTac = "Items.SQ030_MaxTac_Helmet",
            NUSA = "Items.Twitch_Drop_Specs"
        }
    },
    Face = {
        Glasses = {
            Aviators = {
                Stylish = "Items.Glasses_01_basic_01",
                Sepia = "Items.Glasses_01_basic_02",
                Gold = "Items.Glasses_01_basic_03",
                Silver = "Items.Glasses_01_basic_04",
                Classic = "Items.Glasses_01_basic_05"
            },
            Square = {
                Sazan = "Items.Glasses_02_basic_01",
                ElastiFlex = "Items.Glasses_02_basic_02",
                Taped = "Items.Glasses_02_basic_03",
                Breach = "Items.Glasses_02_basic_04",
                Classic = "Items.Glasses_02_basic_05"
            },
            Shades = {
                Speed = "Items.Glasses_03_basic_01",
                Graffiti = "Items.Glasses_03_basic_02",
                Ergonomic = "Items.Glasses_03_basic_03",
                Biker = "Items.Glasses_03_basic_04",
                Sport = "Items.Glasses_03_basic_05",
                Turquoise = "Items.Glasses_03_basic_06",
                ShiroiTora = "Items.Glasses_03_basic_07",
                Tactical = "Items.Glasses_03_basic_08",
                Zebra = "Items.Glasses_03_basic_09",
                Military = "Items.Glasses_03_basic_10"
            },
            Goggles = {
                SynLeather = "Items.Glasses_05_basic_01",
                Gilt = "Items.Glasses_05_basic_02",
                Punk = "Items.Glasses_05_basic_03",
                Rocker = "Items.Glasses_05_basic_04",
                Tactical = "Items.Glasses_05_old_01",
                Plastic = "Items.Glasses_05_old_02"
            }
        },
        Mask = {
            Gas = {
                Titanium = "Items.Mask_02_basic_01",
                Maelstrom = "Items.Mask_02_basic_02",
                Old = "Items.Mask_02_old_01",
                Plastic = "Items.Mask_02_old_02",
                Carbon = "Items.Mask_02_old_03",
                Arctic = "Items.Mask_02_rich_01",
                Mox = "Items.Mask_02_rich_02",
                Wraiths = "Items.SQ004_RaffenShiv_Mask"
            },
            Menpo = {
                Lining = "Items.Mask_03_basic_01",
                Padding = "Items.Mask_03_basic_02",
                Weathered = "Items.Mask_03_old_01",
                Reactive = "Items.Mask_03_old_02",
                JigokuNoOni = "Items.Mask_03_rich_01",
                AkaiOni = "Items.Mask_03_rich_02",

            }
        },
        Tech = {
            Ocuset = {
                Steel = "Items.Tech_01_basic_01",
                Composite = "Items.Tech_01_basic_02",
                Old = "Items.Tech_01_old_01",
                KangTao = "Items.Tech_01_rich_01",
                NCPD = "Items.Tech_01_rich_02"
            },
            Wreath = {
                AoiTora = "Items.Tech_02_basic_01",
                Tungsten = "Items.Tech_02_basic_02",
                Dated = "Items.Tech_02_old_01",
                SweetDreams = "Items.Tech_02_rich_01",
                KoganeNoYume = "Items.Tech_02_rich_02"
            }
        },
        Visor = {
            InfoVisor = {
                Lab = "Items.Visor_01_basic_01",
                Military = "Items.Visor_01_basic_02",
                Blue = "Items.Visor_01_basic_03",
                Red = "Items.Visor_01_basic_04",
                SunSpark = "Items.Visor_01_basic_05"
            },
            TechGogs = {
                Military = "Items.Visor_02_basic_01",
                Arasaka = "Items.Visor_02_basic_02",
                Biker = "Items.Visor_02_basic_03",
                Broken = "Items.Visor_02_old_01",
                Old = "Items.Visor_02_old_02",
                Yamori = "Items.Visor_02_rich_01",
                Bitch = "Items.Visor_02_rich_02",
                Blood = "Items.Visor_02_rich_03"
            }
        },
        Special = {
            Police = "Items.Cop_01_Set_Glasses",
            Corpo = "Items.Corporate_01_Set_Glasses",
            Fixer = "Items.Fixer_01_Set_Glasses",
            Media = "Items.Media_01_Set_Tech",
            Techie = "Items.Techie_01_Set_Tech",
            Rocker = "Items.Rockerboy_01_Set_Glasses",
            Netrunner = "Items.Netrunner_01_Set_Visor",
            Nomad = "Items.Nomad_01_Set_Mask",
            Solo = "Items.Solo_01_Set_Visor",
            V = {
                Aviators = "Items.Q203_Epilogue_Glasses"
            },
            Johnny = {
                Rare = "Items.Q005_Johnny_Glasses",
                Epic = "Items.Q005_Johnny_Glasses_Epic",
                Legendary = "Items.Q005_Johnny_Glasses_Legendary"
            }
        }
    },
    InnerTorso = {
        FormalShirt = {
            WithVest = {
                Office = "Items.FormalShirt_01_basic_01",
                Reinforced = "Items.FormalShirt_01_basic_02",
                Stylish = "Items.FormalShirt_01_basic_03",
                Cowboy = "Items.FormalShirt_01_old_01",
                Classy = "Items.FormalShirt_01_old_02",
                Penguin = "Items.FormalShirt_01_old_03",
                Dandy = "Items.FormalShirt_01_rich_01",
                Abrasion = "Items.FormalShirt_01_rich_02",
                MallowBreeze = "Items.FormalShirt_01_rich_03",
                ElDorado = "Items.FormalShirt_01_rich_04",
                GinNo = "Items.FormalShirt_01_rich_05",
                Paris = "Items.FormalShirt_01_rich_06"
            },
            ButtonUp = {
                SemiFormal = "Items.FormalShirt_02_basic_01",
                ArctiCombat = "Items.FormalShirt_02_basic_02",
                RedLeopard = "Items.FormalShirt_02_basic_03",
                Classic = "Items.FormalShirt_02_basic_04",
                Linen = "Items.FormalShirt_02_old_01",
                PurplePanther = "Items.FormalShirt_02_old_02",
                Wrinkled = "Items.FormalShirt_02_old_03",
                DesertCross = "Items.FormalShirt_02_rich_01",
                Paisley = "Items.FormalShirt_02_rich_02",
                LiquidShine = "Items.FormalShirt_02_rich_03"
            }
        },
        Jumpsuit = {
            Tactical = {
                Animals = "Items.Jumpsuit_01_basic_01",
                Polyamide = "Items.Jumpsuit_01_basic_02",
                PurpleForce = "Items.Jumpsuit_01_basic_03",
                Militech = "Items.Jumpsuit_01_old_01",
                Ten70 = "Items.Jumpsuit_01_old_02",
                Blend = "Items.Jumpsuit_01_old_03",
                StreamExtreme = "Items.Jumpsuit_01_rich_01",
                Emperatriz = "Items.Jumpsuit_01_rich_02"
            },
            Racing = {
                YellowCobra = "Items.Jumpsuit_02_basic_01",
                Rocker = "Items.Jumpsuit_02_basic_02",
                Ten70 = "Items.Jumpsuit_02_old_01",
                Motorcycle = "Items.Jumpsuit_02_old_02",
                NightCity = "Items.Jumpsuit_02_rich_01",
                Natsunoshio = "Items.Jumpsuit_02_rich_02",
                Lightning = "Items.Jumpsuit_02_rich_03"
            },
            Hazmat = {
                Arasaka = "Items.Jumpsuit_03_old_01",
                NCPD = "Items.Jumpsuit_03_old_02",
                Militech = "Items.Jumpsuit_03_old_03"
            },
            Netrunner = {
                Military = "Items.TightJumpsuit_01_basic_01",
                Elastomer = "Items.TightJumpsuit_01_basic_02",
                Worn = "Items.TightJumpsuit_01_old_01",
                Old = "Items.TightJumpsuit_01_old_02",
                Arasaka = "Items.TightJumpsuit_01_rich_01",
                RedAlert = "Items.TightJumpsuit_01_rich_02"
            }
        },
        Shirt = {
            LongSleeve = {
                Braindance = "Items.Shirt_01_basic_01",
                Psycho = "Items.Shirt_01_basic_02",
                Cotton = "Items.Shirt_01_old_01",
                Composite = "Items.Shirt_01_old_02",
                Stylish = "Items.Shirt_01_rich_01",
                Geisha = "Items.Shirt_01_rich_02"
            },
            Turtleneck = {
                Darra = "Items.Shirt_02_basic_01",
                Biker = "Items.Shirt_02_basic_02",
                Arasaka = "Items.Shirt_02_basic_03",
                Samurai = "Items.Shirt_02_basic_04",
                Aramid = "Items.Shirt_02_old_01",
                Tactical = "Items.Shirt_02_old_02",
                Elastic = "Items.Shirt_02_old_03",
                Punch = "Items.Shirt_02_rich_01",
                ATAK = "Items.Shirt_02_rich_02",
                VioletNebula = "Items.Shirt_02_rich_03"
            },
            Combat = {
                Suichu = "Items.Shirt_03_basic_01",
                Geisha = "Items.Shirt_03_basic_02",
                SynFiber = "Items.Shirt_03_basic_03",
                Flazh = "Items.Shirt_03_old_01",
                Scav = "Items.Shirt_03_old_02",
                Maelstrom = "Items.Shirt_03_old_03",
                BouletTurquoise = "Items.Shirt_03_rich_01",
                AtomicBlast = "Items.Shirt_03_rich_02",
                Decadencia = "Items.Shirt_03_rich_03"
            }
        },
        Tank = {
            Standard = {
                Basic = "Items.TShirt_01_basic_01",
                Melting = "Items.TShirt_01_basic_02",
                PurpleDragon = "Items.TShirt_01_basic_03",
                SynFabric = "Items.TShirt_01_old_01",
                Punk = {
                    Basic = "Items.TShirt_01_old_02",
                    Duolayer = "Items.TShirt_11_old_01"
                },
                OnceWeWereBoosted = "Items.TShirt_01_old_03",
                Geisha = "Items.TShirt_01_rich_01",
                Daemon = "Items.TShirt_01_rich_02",
                SankakuNichibotsu = "Items.TShirt_01_rich_03",
                DeadlyLagoon = "Items.TShirt_03_basic_01",
                Striped = "Items.TShirt_03_basic_02",
                Canine = "Items.TShirt_03_basic_03",
                Spotted = "Items.TShirt_03_old_01",
                Tamashi = "Items.TShirt_03_old_02",
                Mox = "Items.TShirt_03_old_03",
                Neokitsch = "Items.TShirt_03_rich_01",
                SantaMuerte = "Items.TShirt_03_rich_02",
                TestedOnAnimals = "Items.TShirt_03_rich_03",
                HighTensile = "Items.TShirt_04_old_01",
                Frayed = "Items.TShirt_04_old_02",
                BloodyPiggy = "Items.TShirt_04_old_03",
                X = "Items.TShirt_04_old_04",
                SpeedAddict = "Items.TShirt_04_old_05",
                Sturdy = "Items.TShirt_04_old_06",
                Camo = "Items.TShirt_09_basic_01",
                Plaid = "Items.TShirt_09_basic_02",
                Reinforced = "Items.TShirt_09_old_02",
                FuckYou = "Items.TShirt_10_basic_01",
                NuTek = "Items.TShirt_10_old_01",
                Saeko = "Items.TShirt_10_rich_01",
                Sporty = "Items.TShirt_11_basic_01",
                Army = "Items.TShirt_11_rich_01"
            },
            Muscle = {
                PurpleDragon = "Items.TShirt_06_rich_01",
                BloodyPiggy = "Items.TShirt_06_old_01",
                X = "Items.TShirt_06_rich_02",
                Nippon = "Items.TShirt_06_basic_01",
                Bermuda = "Items.TShirt_06_basic_02",
                Emerald = "Items.TShirt_06_old_02",
            },
            Racerback = {
                SantaMuerte = "Items.TShirt_07_rich_02",
                Tamashi = "Items.TShirt_07_old_02",
                GrayDecay = "Items.TShirt_07_basic_01",
                NightCity = "Items.TShirt_07_basic_02",
                Tactical = "Items.TShirt_07_old_01",
                Psycho = "Items.TShirt_07_rich_01",
            },
            Knotted = {
                ArmorWeave = "Items.TShirt_08_basic_01",
                Reinforced = "Items.TShirt_08_basic_02",
                Belted = "Items.TShirt_08_old_01",
                Secondhand = "Items.TShirt_08_old_02",
                Punk = "Items.TShirt_08_rich_01",
                BloomingAmber = "Items.TShirt_08_rich_02"
            }
        },
        TShirt = {
            BurnCorpo = {
                Normal = "Items.TShirt_02_basic_01",
                Torn = "Items.TShirt_05_old_01"
            },
            Punch = "Items.TShirt_02_basic_02",
            DedZed = "Items.TShirt_02_basic_03",
            NUSA = "Items.TShirt_02_basic_04",
            Samurai = "Items.TShirt_02_basic_05",
            Life = "Items.TShirt_02_old_01",
            Hex = "Items.TShirt_02_old_02",
            Durable = "Items.TShirt_02_old_03",
            Composite = "Items.TShirt_02_old_04",
            Psycho = "Items.TShirt_02_rich_01",
            BigFish = "Items.TShirt_02_rich_02",
            Bitch = {
                Composite = "Items.TShirt_02_rich_03",
                Sturdy = "Items.TShirt_05_old_06"
            },
            YoruNoSamurai = {
                Cotton = "Items.TShirt_02_rich_04",
                Torn = "Items.TShirt_09_old_01"
            },
            Daemon = "Items.TShirt_05_old_02",
            Polyamide = "Items.TShirt_05_old_03",
            Blend = "Items.TShirt_05_old_04",
            Sturdy = "Items.TShirt_05_old_05"
        },
        Undershirt = {
            Bra = {
                Spotted = "Items.Undershirt_02_basic_01",
                Leather = "Items.Undershirt_02_basic_02",
                AmandeRose = "Items.Undershirt_02_rich_01",
                DenkiHachi = "Items.Undershirt_02_rich_02"
            },
            Bustier = {
                Simple = "Items.Undershirt_03_basic_01",
                BaraKaika = "Items.Undershirt_03_basic_02",
                AtomicBlast = "Items.Undershirt_03_basic_03",
                Spotted = "Items.Undershirt_03_basic_04",
                JasminDoucet = "Items.Undershirt_03_rich_01",
                ReineDeAbeilles = "Items.Undershirt_03_rich_02"
            }
        },
        Special = {
            Corpo = "Items.Corporate_01_Set_FormalShirt",
            Fixer = "Items.Fixer_01_Set_TShirt",
            Media = "Items.Media_01_Set_Shirt",
            Netrunner = "Items.Netrunner_01_Set_Jumpsuit",
            Nomad = "Items.Nomad_01_Set_TShirt",
            Rocker = "Items.Rockerboy_01_Set_TShirt",
            Solo = "Items.Solo_01_Set_TShirt",
            Techie = "Items.Techie_01_Set_TShirt",
            Wraith = "Items.SQ021_Wraiths_Vest",
            FourthWall = "Items.SQ023_Switchblade_Shirt",
            Samurai = "Items.SamuraiWorldTour_TShirt",
            Hospital = "Items.Q201_SpaceHospitalShirt",
            River = "Items.SQ029_River_Romance_Shirt",
            Yorinobu = "Items.Q005_Yorinobu_FormalShirt",
            V = {
                Nomad = "Items.Q000_Nomad_TShirt",
                StreetKid = "Items.Q000_StreetKid_TShirt",
                Basic = "Items.Q001_TShirt",
                Blank = "Items.Q202_Epilogue_TShirt",
                Shirt = "Items.Q203_Epilogue_TShirt",
                Epilogue = "Items.Q204_Epilogue_TShirt"
            },
            Johnny = {
                Rare = "Items.Q005_Johnny_Shirt",
                Epic = "Items.Q005_Johnny_Shirt_Epic",
                Legendary = "Items.Q005_Johnny_Shirt_Legendary"
            },
            Wolf = {
                Rare = "Items.GOG_DLC_TShirt",
                Epic = "Items.GOG_DLC_TShirt_Epic",
                Legendary = "Items.GOG_DLC_TShirt_Legendary"
            },
            Galaxy = {
                Rare = "Items.GOG_Galaxy_TShirt",
                Epic = "Items.GOG_Galaxy_TShirt_Epic",
                Legendary = "Items.GOG_Galaxy_TShirt_Legendary"
            },
            NUSA = "Items.Twitch_Drop_Vest"
        }
    },
    OuterTorso = {
        Coat = {
            Winter = {
                SpunkyMonkey = "Items.Coat_01_basic_01",
                Biker = "Items.Coat_01_basic_02",
                Daemon = "Items.Coat_01_basic_03",
                Punk = "Items.Coat_01_old_01",
                Puncture = "Items.Coat_01_old_02",
                BurnCorpo = "Items.Coat_01_old_03",
                Golden = "Items.Coat_01_rich_01",
                Canine = "Items.Coat_01_rich_02",
                ToraToRyu = "Items.Coat_01_rich_03"
            },
            LongVest = {
                Duolayer = "Items.Coat_02_basic_01",
                Pattern = "Items.Coat_02_basic_02",
                ArmorWeave = "Items.Coat_02_old_01",
                Dated = "Items.Coat_02_old_02",
                HeatResist = "Items.Coat_02_old_03",
                PlasticWeave = "Items.Coat_02_old_04"
            },
            Collar = {
                Biker = "Items.Coat_03_basic_01",
                Kyuketsuki = "Items.Coat_03_basic_02",
                Puncture = "Items.Coat_03_old_01",
                Wraiths = "Items.Coat_03_old_02",
                SixthStreet = "Items.Coat_03_old_03",
                MoltoVivace = "Items.Coat_03_rich_01",
                Trickster = "Items.Coat_03_rich_02"
            },
            Trench = {
                Ultralight = "Items.Coat_04_basic_01",
                PolkaDot = "Items.Coat_04_basic_02",
                Koumori = "Items.Coat_04_basic_03",
                Spotted = "Items.Coat_04_old_01",
                Timeworn = "Items.Coat_04_old_02",
                FairyFrost = "Items.Coat_04_rich_01",
                MilkyGold = "Items.Coat_04_rich_02"
            }
        },
        Dress = {
            Pencil = {
                Victorian = "Items.Dress_01_basic_01",
                Rozovaya = "Items.Dress_01_basic_02",
                Elegant = "Items.Dress_01_basic_03",
                LadyInWhite = "Items.Dress_01_rich_01",
                Rhapsody = "Items.Dress_01_rich_02",
                GreenViper = "Items.Dress_01_rich_03"
            },
            Formal = {
                SynWeave = "Items.Dress_02_basic_01",
                Arasaka = "Items.Dress_02_basic_02",
                Spotted = "Items.Dress_02_basic_03",
                Phoenix = "Items.Dress_02_rich_01",
                Brass = "Items.Dress_02_rich_02",
                Schwarze = "Items.Dress_02_rich_03"
            }
        },
        FormalJacket = {
            Suit = {
                Polyamide = "Items.FormalJacket_01_basic_01",
                Wool = "Items.FormalJacket_01_basic_02",
                SynFabric = "Items.FormalJacket_01_old_01",
                Aramid = "Items.FormalJacket_01_old_02",
                MarbreDore = "Items.FormalJacket_01_rich_01",
                Mosaic = "Items.FormalJacket_01_rich_02"
            },
            Blazer = {
                Arasaka = "Items.FormalJacket_02_basic_01",
                SynSilk = "Items.FormalJacket_02_basic_02",
                PowderPink = "Items.FormalJacket_02_basic_03",
                LillaNatt = "Items.FormalJacket_02_rich_01",
                Diamant = "Items.FormalJacket_02_rich_02",
                Cassico = "Items.FormalJacket_02_rich_03"
            },
            Cocktail = {
                Midori = "Items.FormalJacket_03_basic_01",
                SynCotton = "Items.FormalJacket_03_basic_02",
                Dandylion = "Items.FormalJacket_03_basic_03",
                FelineFury = "Items.FormalJacket_03_rich_01",
                RedDragon = "Items.FormalJacket_03_rich_02",
                OrchidSnake = "Items.FormalJacket_03_rich_03"
            },
            Evening = {
                SynFiber = "Items.FormalJacket_04_basic_01",
                CyanMulti = "Items.FormalJacket_04_basic_02",
                DoubleKnit = "Items.FormalJacket_04_basic_03",
                GattoNero = "Items.FormalJacket_04_rich_01",
                Kinryu = "Items.FormalJacket_04_rich_02",
                NobleWhite = "Items.FormalJacket_04_rich_03"
            },
            Business = {
                Synthetic = "Items.FormalJacket_05_basic_01",
                Arasaka = "Items.FormalJacket_05_basic_02",
                Composite = "Items.FormalJacket_05_basic_03",
                BaiLong = "Items.FormalJacket_05_rich_01",
                Yunami = "Items.FormalJacket_05_rich_02",
                GoldenHive = "Items.FormalJacket_05_rich_03"
            }
        },
        Jacket = {
            Bomber = {
                Torikkusuta = "Items.Jacket_01_basic_01",
                BikerVibe = "Items.Jacket_01_basic_02",
                RockerHeart = "Items.Jacket_01_old_01",
                EdgeWarrior = "Items.Jacket_01_old_02",
                DenkShin = "Items.Jacket_01_rich_01",
                BlueMirror = "Items.Jacket_01_rich_02"
            },
            Flight = {
                Laminate = "Items.Jacket_02_basic_01",
                Punk = "Items.Jacket_02_basic_02",
                Rubber = "Items.Jacket_02_old_01",
                Wraiths = "Items.Jacket_02_old_02",
                SecondConflict = "Items.Jacket_02_old_03",
                Bitch = "Items.Jacket_02_rich_01",
                ArmyJewel = "Items.Jacket_02_rich_02",
                WoundedMachine = "Items.Jacket_02_rich_03"
            },
            Edgerunner = {
                ATAK = "Items.Jacket_03_basic_01",
                Graffiti = "Items.Jacket_03_basic_02",
                TygerClaws = "Items.Jacket_03_basic_03",
                Valentino = "Items.Jacket_03_basic_04",
                Old = "Items.Jacket_03_old_01",
                Carbon = "Items.Jacket_03_old_02",
                Wraiths = "Items.Jacket_03_old_03",
                SixthStreet = "Items.Jacket_03_old_04",
                PurpleSymphony = "Items.Jacket_03_rich_01",
                HolyRose = "Items.Jacket_03_rich_02",
                OceanArmor = "Items.Jacket_03_rich_03"
            },
            Field = {
                Thermoset = "Items.Jacket_04_basic_01",
                Militech = "Items.Jacket_04_basic_02",
                Sleeveless = "Items.Jacket_04_basic_03",
                Maelstrom = "Items.Jacket_04_old_01",
                Scav = "Items.Jacket_04_old_02",
                Ten70 = "Items.Jacket_04_old_03",
                Remon = "Items.Jacket_04_rich_01",
                NuTek = "Items.Jacket_04_rich_02",
                NightCity = "Items.Jacket_04_rich_03"
            },
            LongBiker = {
                Quilted = "Items.Jacket_05_basic_01",
                Punk = "Items.Jacket_05_basic_02",
                SecondConflict = "Items.Jacket_05_old_01",
                Rubber = "Items.Jacket_05_old_02",
                NightCity = "Items.Jacket_05_rich_01",
                Golden = "Items.Jacket_05_rich_02"
            },
            Rocker = {
                Flame = "Items.Jacket_06_basic_01",
                Lazr = "Items.Jacket_06_basic_02",
                Leather = "Items.Jacket_06_old_01",
                Puncture = "Items.Jacket_06_old_02",
                RosaPlatino = "Items.Jacket_06_rich_01",
                BlueJaguar = "Items.Jacket_06_rich_02"
            },
            Windbreaker = {
                Scav = "Items.Jacket_07_basic_01",
                SixthStreet = "Items.Jacket_07_basic_02",
                Braindance = "Items.Jacket_07_old_01",
                Old = "Items.Jacket_07_old_02",
                Zolotoy = "Items.Jacket_07_rich_01",
                Smiley = "Items.Jacket_07_rich_02"
            },
            ShortSleeve = {
                Spike = "Items.Jacket_08_basic_01",
                Membrane = "Items.Jacket_08_basic_02",
                Maelstrom = "Items.Jacket_08_old_01",
                Punk = "Items.Jacket_08_old_02"
            },
            Motorcycle = {
                Tenka = "Items.Jacket_09_basic_01",
                KangTao = "Items.Jacket_09_basic_02",
                Aldecaldos = "Items.Jacket_09_old_01",
                TygerClaws = "Items.Jacket_09_old_02",
                GoldenAge = "Items.Jacket_09_rich_01",
                Wraiths = "Items.Jacket_09_rich_02"
            },
            RallyBolero = {
                AmethySpeed = "Items.Jacket_10_basic_01",
                Midori = "Items.Jacket_10_basic_02",
                Wraiths = "Items.Jacket_10_old_01",
                Composite = "Items.Jacket_10_old_02",
                ATAK = "Items.Jacket_10_rich_01",
                Tamashi = "Items.Jacket_10_rich_02"
            },
            Foldtop = {
                CoolQuilt = "Items.Jacket_11_basic_01",
                Basic = "Items.Jacket_11_basic_02",
                Camo = "Items.Jacket_11_old_01",
                Leather = "Items.Jacket_11_old_02",
                NeoKitsch = "Items.Jacket_11_rich_01",
                Blauer = "Items.Jacket_11_rich_02"
            },
            ShortBiker = {
                Denim = "Items.Jacket_12_basic_01",
                Blurry = "Items.Jacket_12_basic_02",
                SynLeather = "Items.Jacket_12_old_01",
                Primeval = "Items.Jacket_12_old_02",
                Salamander = "Items.Jacket_12_rich_01",
                Jinn = "Items.Jacket_12_rich_02"
            },
            Hooded = {
                Polyamide = "Items.Jacket_13_basic_01",
                Smiley = "Items.Jacket_13_basic_02",
                Spirit = "Items.Jacket_13_basic_03",
                Psycho = "Items.Jacket_13_old_01",
                Shrapnel = "Items.Jacket_13_old_02",
                StreetArt = "Items.Jacket_13_old_03",
                Moscow = "Items.Jacket_13_rich_01",
                Punch = "Items.Jacket_13_rich_02",
                Maroon = "Items.Jacket_13_rich_03"
            },
            BoleroBomber = {
                Rubber = "Items.Jacket_14_basic_01",
                Irbis = "Items.Jacket_14_basic_02",
                SynLeather = "Items.Jacket_14_old_01",
                Galaxy = "Items.Jacket_14_rich_01",
                Lychee = "Items.Jacket_14_rich_02"
            },
            CropSweater = {
                Peach = "Items.Jacket_15_basic_01",
                Rainbow = "Items.Jacket_15_basic_02",
                DanseMacabre = "Items.Jacket_15_old_01",
                AlbaEstiva = "Items.Jacket_15_rich_01"
            },
            Bodysuit = {
                Coral = "Items.Jacket_16_basic_01",
                SecondConflict = "Items.Jacket_16_basic_02",
                Psycho = "Items.Jacket_16_old_01",
                Quilted = "Items.Jacket_16_old_02",
                Bermuda = "Items.Jacket_16_rich_01"
            },
            Pozer = {
                Canine = "Items.Jacket_17_basic_01",
                Triangle = "Items.Jacket_17_basic_02",
                VoodooBoys = "Items.Jacket_17_basic_03",
                Melting = "Items.Jacket_17_basic_04",
                Carbon = "Items.Jacket_17_old_01",
                SynLeather = "Items.Jacket_17_old_02",
                SixthStreet = "Items.Jacket_17_old_03",
                Sapfir = "Items.Jacket_17_rich_01",
                Torera = "Items.Jacket_17_rich_02",
                Lazrpunk = "Items.Jacket_17_rich_03",
                Punch = "Items.Jacket_17_rich_04",
                Valentino = "Items.Jacket_17_rich_05",
                DeadlyLagoon = "Items.Jacket_17_rich_06"
            },
            BoleroBlazer = {
                Spacer = "Items.Jacket_25_basic_01",
                FireResistant = "Items.Jacket_25_basic_02",
                Fitted = "Items.Jacket_25_basic_03",
                Trilayer = "Items.Jacket_25_basic_04",
                Polycarbonate = "Items.Jacket_25_basic_05",
                DoubleEmbroidered = "Items.Jacket_25_basic_06",
                FiveHundred = "Items.Jacket_25_basic_07",
                Neoprene = "Items.Jacket_25_basic_08",
                Padded = "Items.Jacket_25_basic_09",
                Quilted = "Items.Jacket_25_old_01",
                Worn = "Items.Jacket_25_old_02",
                Defective = "Items.Jacket_25_old_03",
                FireProof = "Items.Jacket_25_rich_01",
                Laminate = "Items.Jacket_25_rich_02",
                Nanotube = "Items.Jacket_25_rich_03",
                Aramid = "Items.Jacket_25_rich_04",
                Minimalist = "Items.Jacket_25_rich_05",
                Fiberglass = "Items.Jacket_25_rich_06",
                ShockAbsorbent = "Items.Jacket_25_rich_07"
            }
        },
        LooseShirt = {
            Casual = {
                LimitedEd = "Items.LooseShirt_01_basic_01",
                NanoWeave = "Items.LooseShirt_01_basic_02",
                Plaid = "Items.LooseShirt_01_old_01",
                Puncture = "Items.LooseShirt_01_old_02",
                ArteUrbano = "Items.LooseShirt_01_rich_01",
                HebiTsukai = "Items.LooseShirt_01_rich_02"
            },
            Formal = {
                Cowboy = "Items.LooseShirt_02_basic_01",
                Denim = "Items.LooseShirt_02_basic_02",
                Composite = "Items.LooseShirt_02_old_01",
                Graphite = "Items.LooseShirt_02_old_02",
                Aqua = "Items.LooseShirt_02_rich_01",
                Saloon = "Items.LooseShirt_02_rich_02"
            }
        },
        Vest = {
            Ballistic = {
                BorderGuard = {
                    Aramid = "Items.Vest_01_basic_01",
                    Plated = "Items.Vest_03_basic_02"
                },
                Arasaka = "Items.Vest_01_basic_02",
                SixthStreet = {
                    Aramid = "Items.Vest_01_old_01",
                    Plated = "Items.Vest_03_old_02"
                },
                Maelstrom = "Items.Vest_01_old_02",
                Cyan = "Items.Vest_01_rich_01",
                Marble = "Items.Vest_01_rich_02",
                Enhanced = "Items.Vest_02_basic_01",
                Ultralight = "Items.Vest_02_basic_02",
                Punk = "Items.Vest_02_old_01",
                Military = "Items.Vest_02_old_02",
                KangTao = "Items.Vest_02_rich_01",
                Militech = "Items.Vest_02_rich_02",
                NCPD = "Items.Vest_03_basic_01",
                Scav = "Items.Vest_03_old_01",
                Amber = "Items.Vest_03_rich_01",
                Powder = "Items.Vest_03_rich_02",
                Basic = "Items.Vest_04_basic_01",
                Police = "Items.Vest_04_basic_02",
                Combat = "Items.Vest_04_old_01",
                WornOut = "Items.Vest_04_old_02",
                VirtuGlow = "Items.Vest_04_rich_01",
                Daemon = "Items.Vest_04_rich_02"
            },
            TacticalHarness = {
                Militech = "Items.Vest_06_basic_01",
                TygerClaws = "Items.Vest_06_basic_02",
                SixthStreet = "Items.Vest_06_old_01",
                NUSA = "Items.Vest_06_old_02",
                Animals = "Items.Vest_06_rich_01",
                Decadencia = "Items.Vest_06_rich_02",
                Arasaka = "Items.Vest_06_rich_03",
                Flazh = "Items.Vest_06_rich_04"
            },
            HighCollar = {
                Military = "Items.Vest_07_basic_01",
                Enhanced = "Items.Vest_07_basic_02",
                Basic = "Items.Vest_07_basic_03",
                Punk = "Items.Vest_07_old_01",
                Durable = "Items.Vest_07_old_02",
                Graffiti = "Items.Vest_07_old_03",
                Shirokuro = "Items.Vest_07_rich_01",
                UrbanJungle = "Items.Vest_07_rich_02",
                Puncture = "Items.Vest_07_rich_03"
            },
            Tactical = {
                Militech = "Items.Vest_08_basic_01",
                KangTao = "Items.Vest_08_basic_02",
                BorderGuard = "Items.Vest_08_old_01",
                Camo = "Items.Vest_08_old_02",
                Bitch = "Items.Vest_08_rich_01",
                TraumaTeam = "Items.Vest_08_rich_02"
            },
            Straps = {
                Sturdy = "Items.Vest_10_basic_01",
                Valentino = "Items.Vest_10_basic_02",
                Camo = "Items.Vest_10_old_01",
                SixthStreet = "Items.Vest_10_old_02",
                Animals = "Items.Vest_10_rich_01",
                Wraiths = "Items.Vest_10_rich_02"
            },
            Civic = {
                Reflective = "Items.Vest_11_basic_01",
                KangTao = "Items.Vest_11_basic_02",
                NCPD = "Items.Vest_11_old_01",
                SixthStreet = "Items.Vest_11_old_02",
                Cyan = "Items.Vest_11_rich_01",
                Graffiti = "Items.Vest_11_rich_02"
            },
            Collar = {
                Arasaka = "Items.Vest_12_basic_01",
                Mox = "Items.Vest_12_basic_02",
                Military = "Items.Vest_12_old_01",
                NCPD = "Items.Vest_12_old_02",
                TygerClaws = "Items.Vest_12_rich_01",
                Valentino = "Items.Vest_12_rich_02"
            },
            Breastplate = {
                Militech = "Items.Vest_13_basic_01",
                Corporate = "Items.Vest_13_basic_02",
                Saeko = "Items.Vest_13_rich_01",
                Arumajiro = "Items.Vest_13_rich_02",
                KaniKara = "Items.Vest_13_rich_03",
                Shield = "Items.Vest_13_rich_04"
            },
            Casual = {
                Camo = "Items.Vest_14_basic_01",
                LadyInBlue = "Items.Vest_14_basic_02",
                NUSA = "Items.Vest_14_old_01",
                SynLeather = "Items.Vest_14_old_02",
                Bitch = "Items.Vest_14_rich_01",
                Brass = "Items.Vest_14_rich_02"
            },
            CutOff = {
                Denim = "Items.Vest_15_basic_01",
                Camo = "Items.Vest_15_basic_02",
                Candy = "Items.Vest_15_basic_03",
                Bloody = "Items.Vest_15_old_01",
                Hooded = "Items.Vest_15_old_02",
                Underlayer = "Items.Vest_15_old_03"
            },
            Puffer = {
                Tamashi = "Items.Vest_16_basic_01",
                NanoStitch = "Items.Vest_16_basic_02",
                Underlayer = "Items.Vest_16_old_01",
                Reinforced = "Items.Vest_16_old_02",
                ClawTaste = "Items.Vest_16_rich_01",
                FancyDragon = "Items.Vest_16_rich_02",
                JSHLX = "Items.Vest_17_basic_01",
                FinalImpulse = "Items.Vest_17_basic_02",
                Wasp = "Items.Vest_17_rich_01",
                Bee = "Items.Vest_17_rich_02"
            },
            Fringe = {
                Western = "Items.Vest_18_basic_01",
                America = "Items.Vest_18_basic_02",
                Camo = "Items.Vest_18_old_01",
                AdamantRoad = "Items.Vest_18_rich_01",
                AnheloBlanco = "Items.Vest_18_rich_02"
            },
            Yukata = {
                AsaNoHeiwa = "Items.Vest_19_basic_01",
                Elegant = "Items.Vest_19_basic_02",
                SynWeave = "Items.Vest_19_old_01",
                WakaiUmi = "Items.Vest_19_rich_01",
                Murasaki = "Items.Vest_19_rich_02"
            },
            Biker = {
                Padded = "Items.Vest_20_basic_01",
                Junge = "Items.Vest_20_basic_02",
                Studded = "Items.Vest_20_old_01",
                Leather = "Items.Vest_20_old_02",
                Silverock = "Items.Vest_20_rich_01",
                RosaEscarlata = "Items.Vest_20_rich_02"
            }
        },
        Special = {
            Police = "Items.Cop_01_Set_Jacket",
            Corpo = "Items.Corporate_01_Set_FormalJacket",
            Fixer = "Items.Fixer_01_Set_Coat",
            Media = "Items.Media_01_Set_Vest",
            Nomad = "Items.Nomad_01_Set_Jacket",
            Rocker = "Items.Rockerboy_01_Set_Jacket",
            Solo = "Items.Solo_01_Set_Jacket",
            Techie = "Items.Techie_01_Set_Vest",
            Aldecaldo = "Items.Q114_Aldecaldo_Jacket",
            Rogue = "Items.Q115_Custom_Predator_Armor",
            MaxTac = "Items.SQ030_MaxTac_Chest",
            KotetsuNoRyu = "Items.Q005_Steel_Dragons_Coat",
            Wolf = {
                Rare = "Items.GOG_DLC_Jacket",
                Epic = "Items.GOG_DLC_Jacket_Epic",
                Legendary = "Items.GOG_DLC_Jacket_Legendary",
            },
            V = {
                Office = "Items.Q000_Corpo_FormalJacket",
                NomadWithPatch = "Items.Q000_Nomad_Vest",
                NomadNoPatch = "Items.Q000_Nomad_noPatch_Vest"
            },
            Johnny = {
                Rare = "Items.SQ031_Samurai_Jacket",
                Epic = "Items.SQ031_Samurai_Jacket_Epic",
                Legendary = "Items.SQ031_Samurai_Jacket_Legendary"
            },
            Samerai = {
                Crystal = "Items.MQ017_Samerai_Jacket",
                Fake = "Items.mq017_SameraiJacket"
            },
            -- Special items added through downloadable content.
            -- Can't seem to find their item hashes yet so disabled for now.
            -- Deltajock = {
            --     Rare = '',
            --     Epic = '',
            --     Legendary = ''
            -- },
            -- LuminescentPunk = {
            --     Rare = '',
            --     Epic = '',
            --     Legendary = ''
            -- }
        }
    },
    Legs = {
        FormalPants = {
            Pleated = {
                Sturdy = "Items.FormalPants_01_basic_01",
                Classic = "Items.FormalPants_01_basic_02",
                Durable = "Items.FormalPants_01_basic_03",
                Puncture = "Items.FormalPants_01_old_01",
                TactiCloth = "Items.FormalPants_01_old_02"
            },
            Corporate = {
                Classic = "Items.FormalPants_02_basic_01",
                Bordeaux = "Items.FormalPants_02_basic_02",
                Flash = "Items.FormalPants_02_basic_03",
                BaiLong = "Items.FormalPants_02_rich_01",
                RoyalGray = "Items.FormalPants_02_rich_02",
                GoldenHive = "Items.FormalPants_02_rich_03"
            },
            Office = {
                Simple = "Items.FormalPants_03_basic_01",
                Custom = "Items.FormalPants_03_old_01",
                SpeedAddict = "Items.FormalPants_03_old_02",
                Marble = "Items.FormalPants_03_rich_01",
                Brass = "Items.FormalPants_03_rich_02"
            }
        },
        FormalSkirt = {
            Straight = {
                Plaid = "Items.FormalSkirt_01_basic_01",
                Classy = "Items.FormalSkirt_01_basic_02",
                PowderPink = "Items.FormalSkirt_01_basic_03",
                Bitch = "Items.FormalSkirt_01_basic_04",
                Golden = "Items.FormalSkirt_01_rich_01",
                Mosaic = "Items.FormalSkirt_01_rich_02",
                Arasaka = "Items.FormalSkirt_01_rich_03"
            },
            Angled = {
                TearResist = "Items.FormalSkirt_02_basic_01",
                Burgundy = "Items.FormalSkirt_02_basic_02",
                Saeko = "Items.FormalSkirt_02_basic_03",
                Heise = "Items.FormalSkirt_02_rich_01",
                Brass = "Items.FormalSkirt_02_rich_02",
                Chich = "Items.FormalSkirt_02_rich_03"
            }
        },
        Pants = {
            SlimFit = {
                Rocker = "Items.Pants_01_basic_01",
                Azure = "Items.Pants_01_basic_02",
                Sturdy = "Items.Pants_01_basic_03",
                Spotted = "Items.Pants_01_old_01",
                Camo = "Items.Pants_01_old_02",
                Duoweave = "Items.Pants_01_old_03",
                RosaEscarlata = "Items.Pants_01_rich_01",
                Basilisk = "Items.Pants_01_rich_02",
                Denkyoku = "Items.Pants_01_rich_03"
            },
            LooseFit = {
                Smiley = "Items.Pants_02_basic_01",
                YoruNoSamurai = "Items.Pants_02_basic_02",
                StreetGlow = "Items.Pants_02_basic_03",
                Duoweave = "Items.Pants_02_old_01",
                Workplace = "Items.Pants_02_old_02",
                Micromesh = "Items.Pants_02_old_03",
                HolyRose = "Items.Pants_02_rich_01",
                Chikurin = "Items.Pants_02_rich_02",
                PurpleDragon = "Items.Pants_02_rich_03"
            },
            Jeans = {
                Sturdy = "Items.Pants_03_basic_01",
                Canine = "Items.Pants_03_basic_02",
                Bitch = "Items.Pants_03_basic_03",
                Frayed = "Items.Pants_03_old_01",
                Patched = "Items.Pants_03_old_02",
                Custom = "Items.Pants_03_old_03",
                Saeko = "Items.Pants_03_rich_01",
                DarkSapphire = "Items.Pants_03_rich_02",
                Psycho = "Items.Pants_03_rich_03"
            },
            Cargo = {
                Slim = {
                    Geisha = "Items.Pants_04_basic_01",
                    Mandarine = "Items.Pants_04_basic_02",
                    Kancho = "Items.Pants_04_basic_03",
                    Samurai = "Items.Pants_04_basic_04",
                    Worn = "Items.Pants_04_old_01",
                    SynFiber = "Items.Pants_04_old_02",
                    Rubber = "Items.Pants_04_old_03",
                    OroFloreciente = "Items.Pants_04_rich_01",
                    SilverStar = "Items.Pants_04_rich_02",
                    Cyano = "Items.Pants_04_rich_03"
                },
                Full = {
                    ArmyStar = "Items.Pants_11_basic_01",
                    Caution = "Items.Pants_11_basic_02",
                    Phantom = "Items.Pants_11_basic_03",
                    TactiCloth = "Items.Pants_11_old_01",
                    Nomad = "Items.Pants_11_old_02",
                    SixthStreet = "Items.Pants_11_old_03",
                    Slant = "Items.Pants_11_rich_01",
                    PurpleShock = "Items.Pants_11_rich_02",
                    PowerFame = "Items.Pants_11_rich_03"
                }
            },
            Racers = {
                Punk = "Items.Pants_05_basic_01",
                Padded = "Items.Pants_05_basic_02",
                Military = "Items.Pants_05_old_01",
                Psycho = "Items.Pants_05_old_02",
                Candy = "Items.Pants_05_rich_01",
                YoruNoSamurai = "Items.Pants_05_rich_02"
            },
            Straightcuts = {
                Federalist = "Items.Pants_06_basic_01",
                SombaRosa = "Items.Pants_06_basic_02",
                Vintage = "Items.Pants_06_old_01",
                TactiCloth = "Items.Pants_06_old_02",
                Reinforced = "Items.Pants_06_old_03",
                CraneoBrillante = "Items.Pants_06_rich_01",
                Golpe = "Items.Pants_06_rich_02"
            },
            Tactical = {
                SuichuYogan = "Items.Pants_07_basic_01",
                Geisha = "Items.Pants_07_basic_02",
                Comfy = "Items.Pants_07_basic_03",
                Flazh = "Items.Pants_07_old_01",
                KangTao = "Items.Pants_07_old_02",
                Maelstrom = "Items.Pants_07_old_03",
                BouletTurquoise = "Items.Pants_07_rich_01",
                AtomicBlast = "Items.Pants_07_rich_02",
                Decadencia = "Items.Pants_07_rich_03"
            },
            Neotac = {
                Militech = "Items.Pants_08_basic_01",
                Boostknit = "Items.Pants_08_basic_02",
                Rubber = "Items.Pants_08_basic_03",
                BananaJuice = "Items.Pants_08_old_01",
                Maelstrom = "Items.Pants_08_old_02",
                Wraiths = "Items.Pants_08_old_03",
                GoldFury = "Items.Pants_08_rich_01",
                UrbanLaser = "Items.Pants_08_rich_02",
                Ocean = "Items.Pants_08_rich_03"
            },
            Utility = {
                AmethySpeed = "Items.Pants_09_basic_01",
                Midori = "Items.Pants_09_basic_02",
                Wraiths = "Items.Pants_09_old_01",
                Performance = "Items.Pants_09_old_02",
                Composite = "Items.Pants_09_old_03",
                ATAK = "Items.Pants_09_rich_01",
                Tamashi = "Items.Pants_09_rich_02"
            },
            Shinos = {
                SixthStreet = "Items.Pants_10_basic_01",
                Cyan = "Items.Pants_10_basic_02",
                HeatResist = "Items.Pants_10_old_01",
                Cowboy = "Items.Pants_10_old_02",
                Ten70 = "Items.Pants_10_rich_01",
                StripeBlack = "Items.Pants_10_rich_02"
            },
            Windbreaker = {
                Durable = "Items.Pants_12_basic_01",
                SweetLicks = "Items.Pants_12_basic_02",
                ATAK = "Items.Pants_12_basic_03",
                MaxiWear = "Items.Pants_12_old_01",
                Saeko = "Items.Pants_12_old_02",
                RedDeath = "Items.Pants_12_old_03",
                SudoClaws = "Items.Pants_12_rich_01",
                TGTiger = "Items.Pants_12_rich_02",
                Golden = "Items.Pants_12_rich_03"
            },
            Riding = {
                VenomDye = "Items.Pants_13_basic_01",
                Wraiths = "Items.Pants_13_basic_02",
                Military = "Items.Pants_13_basic_03",
                Ultra = "Items.Pants_13_old_01",
                RottenJungle = "Items.Pants_13_old_02",
                Maelstrom = "Items.Pants_13_old_03",
                ComfyTrickster = "Items.Pants_13_rich_01",
                Flamingo = "Items.Pants_13_rich_02"
            },
            Yoros = {
                Psycho = "Items.Pants_14_basic_01",
                Tiger = "Items.Pants_14_basic_02",
                Simple = "Items.Pants_14_old_01",
                YoruNoSamurai = "Items.Pants_14_old_02",
                Midori = "Items.Pants_14_rich_01",
                Ryu = "Items.Pants_14_rich_02"
            },
            Harem = {
                Flexi = "Items.Pants_15_basic_01",
                Sporty = "Items.Pants_15_basic_02",
                Elastic = "Items.Pants_15_old_01",
                PinkLagoon = "Items.Pants_15_rich_01"
            }
        },
        Shorts = {
            CutOff = {
                Denim = "Items.Shorts_01_basic_01",
                Composite = "Items.Shorts_01_old_01",
                Puncture = "Items.Shorts_01_old_02",
                Gold = "Items.Shorts_01_old_03",
                Magenta = "Items.Shorts_01_rich_01"
            },
            Hotpants = {
                Hybrid = "Items.Shorts_02_basic_01",
                BlueBrick = "Items.Shorts_02_basic_02",
                Trilayer = "Items.Shorts_02_old_01",
                HeatResist = "Items.Shorts_02_old_02",
                Golden = "Items.Shorts_02_rich_01",
                KoJaga = "Items.Shorts_02_rich_02"
            },
            Athletic = {
                Classic = "Items.Shorts_03_basic_01",
                Aramid = "Items.Shorts_03_basic_02",
                N54 = "Items.Shorts_03_basic_03",
                Old = "Items.Shorts_03_old_01",
                Green = "Items.Shorts_03_rich_01"
            },
            Jean = {
                Composite = "Items.Shorts_04_old_01",
                Frayed = "Items.Shorts_04_old_02",
                Military = "Items.Shorts_04_old_03",
                Faded = "Items.Shorts_04_old_04"
            },
            Mixed = {
                Military = "Items.Shorts_05_old_01",
                SynThreaded = "Items.Shorts_05_old_02",
                Electro = "Items.Shorts_05_old_03",
                Grauer = "Items.Shorts_05_old_04",
                Comfy = "Items.Shorts_05_old_05"
            }
        },
        Special = {
            Police = "Items.Cop_01_Set_Pants",
            Corpo = "Items.Corporate_01_Set_Pants",
            Fixer = "Items.Fixer_01_Set_Pants",
            Media = "Items.Media_01_Set_Pants",
            Netrunner = "Items.Netrunner_01_Set_Pants",
            Nomad = "Items.Nomad_01_Set_Pants",
            Rocker = "Items.Rockerboy_01_Set_Pants",
            Solo = "Items.Solo_01_Set_Pants",
            Techie = "Items.Techie_01_Set_Pants",
            MaxTac = "Items.SQ030_MaxTac_Pants",
            Hospital = "Items.Q201_SpaceHospitalPants",
            Yorinobu = "Items.Q005_Yorinobu_FormalPants",
            V = {
                Corpo = "Items.Q000_Corpo_FormalPants",
                Nomad = "Items.Q000_Nomad_Pants",
                StreetKid = "Items.Q000_StreetKid_Pants",
                Basic = "Items.Q001_Pants",
                New = "Items.Q202_Epilogue_Pants",
                Expensive = "Items.Q203_Epilogue_Pants",
                Epilogue = "Items.Q204_Epilogue_Pants"
            },
            Johnny = {
                Rare = "Items.Q005_Johnny_Pants",
                Epic = "Items.Q005_Johnny_Pants_Epic",
                Legendary = "Items.Q005_Johnny_Pants_Legendary"
            },
            NUSA = "Items.Twitch_Drop_Pants"
        }
    },
    Feet = {
        Boots = {
            Platform = {
                UniWare = "Items.Boots_01_basic_01",
                Titanium = "Items.Boots_01_old_01",
                Queen = "Items.Boots_01_rich_01"
            },
            Shorties = {
                Western = "Items.Boots_02_basic_01",
                Rocker = "Items.Boots_02_basic_02",
                Worn = "Items.Boots_02_old_01",
                Biker = "Items.Boots_02_old_02",
                Sheriff = "Items.Boots_02_rich_001",
                Gunslinger = "Items.Boots_02_rich_02"
            },
            Biker = {
                Heavy = "Items.Boots_03_basic_01",
                Reinforced = "Items.Boots_03_basic_02",
                Combat = "Items.Boots_03_old_01",
                Tactical = "Items.Boots_03_old_02",
                LightSpeed = "Items.Boots_03_rich_01",
                Orchid = "Items.Boots_03_rich_02"
            },
            Combat = {
                Rocker = "Items.Boots_04_basic_01",
                Molybdenum = "Items.Boots_04_basic_02",
                Murica = "Items.Boots_04_basic_03",
                Leather = "Items.Boots_04_old_01",
                Titanium = "Items.Boots_04_old_02",
                Tungsten = "Items.Boots_04_old_03"
            },
            Fleets = {
                America = "Items.Boots_05_basic_01",
                Ultralight = "Items.Boots_05_basic_02",
                Punk = "Items.Boots_05_basic_03",
                Muddy = "Items.Boots_05_old_01",
                SynLeather = "Items.Boots_05_old_02",
                Plastic = "Items.Boots_05_old_03",
                ATAK = "Items.Boots_05_rich_01"
            },
            Work = {
                Military = "Items.Boots_06_basic_01",
                Sporty = "Items.Boots_06_basic_02",
                Polyamide = "Items.Boots_06_old_01",
                Underwater = "Items.Boots_06_old_02",
                Rostiger = "Items.Boots_06_rich_01",
                StarTrail = "Items.Boots_06_rich_02"
            },
            SteelToe = {
                Glitter = "Items.Boots_07_basic_01",
                Camo = "Items.Boots_07_basic_02",
                Sturdy = "Items.Boots_07_old_01",
                Faded = "Items.Boots_07_old_02",
                Havskum = "Items.Boots_07_old_03",
                Claret = "Items.Boots_07_rich_01",
                RockGarden = "Items.Boots_07_rich_02"
            },
            Strappers = {
                Padded = "Items.Boots_08_basic_01",
                Biker = "Items.Boots_08_basic_02",
                Military = {
                    Repurposed = "Items.Boots_08_old_01",
                    Boosted = "Items.Boots_08_old_02",
                },
                NekoKa = "Items.Boots_08_rich_01"
            },
            ExoJacks = {
                Biker = "Items.Boots_09_basic_01",
                Ultralight = "Items.Boots_09_basic_02",
                Punk = "Items.Boots_09_old_01",
                Worn = "Items.Boots_09_old_02",
                MiliToxic = "Items.Boots_09_rich_01",
                Kasen = "Items.Boots_09_rich_02",
                Rouge = "Items.Boots_09_rich_03" -- Be aware of "rouge" not "rogue" for these items!
            },
            Cowboy = {
                Western = "Items.Boots_10_basic_01",
                Traditional = "Items.Boots_10_basic_02",
                Rubber = "Items.Boots_10_old_01",
                SnakeSkin = "Items.Boots_10_old_02",
                GhostTown = "Items.Boots_10_rich_01",
                LonelyLuke = "Items.Boots_10_rich_02" -- Amazing name.
            },
            Snow = {
                Pink = "Items.Boots_11_basic_01",
                Yuki = "Items.Boots_11_basic_02",
                Winter = "Items.Boots_11_old_01",
                Zolotoy = "Items.Boots_11_old_02",
                PixelNeige = "Items.Boots_11_rich_01",
                PinkuInku = "Items.Boots_11_rich_02" -- Also an amazing name.
            }
        },
        Casual = {
            HighTops = {
                Sunny = "Items.CasualShoes_01_basic_01",
                Punk = {
                    Black = "Items.CasualShoes_01_basic_02",
                    Turquoise = "Items.CasualShoes_01_basic_03"
                },
                Practical = "Items.CasualShoes_01_basic_04",
                Tactical = "Items.CasualShoes_01_basic_05",
                Worn = "Items.CasualShoes_01_old_01",
                Rubber = "Items.CasualShoes_01_old_02"
            },
            Tongues = {
                Daemon = "Items.CasualShoes_02_basic_01",
                MilkyTrail = "Items.CasualShoes_02_basic_02",
                Carbon = "Items.CasualShoes_02_old_01",
                Puncture = "Items.CasualShoes_02_old_02"
            },
            Sneakers = {
                Cute = "Items.CasualShoes_04_basic_01",
                Darra = "Items.CasualShoes_04_basic_02",
                Basic = "Items.CasualShoes_04_old_01",
                Threadbare = "Items.CasualShoes_04_old_02"
            },
            Athletic = {
                Marble = "Items.CasualShoes_05_basic_01",
                Yuki = "Items.CasualShoes_05_basic_02",
                Graffiti = "Items.CasualShoes_05_basic_03",
                Militech = "Items.CasualShoes_05_old_01",
                Rubber = "Items.CasualShoes_05_old_02",
                Frayed = "Items.CasualShoes_05_old_03",
                Pastel = "Items.CasualShoes_05_rich_01",
                Captain = "Items.CasualShoes_05_rich_02",
                Rainbow = "Items.CasualShoes_05_rich_03"
            },
            Street = {
                Basic = "Items.CasualShoes_06_basic_01",
                Tigre = "Items.CasualShoes_06_basic_02",
                Aramid = "Items.CasualShoes_06_old_01",
                Shock = "Items.CasualShoes_06_old_02",
                Chaman = "Items.CasualShoes_06_rich_01",
                Spirit = "Items.CasualShoes_06_rich_02"
            },
            Kicks = {
                SpunkyMonkey = "Items.CasualShoes_07_basic_01",
                Licks = "Items.CasualShoes_07_basic_02",
                Bermuda = "Items.CasualShoes_07_basic_03",
                Magenta = "Items.CasualShoes_07_basic_04",
                America = "Items.CasualShoes_07_old_01",
                Murica = "Items.CasualShoes_07_old_02",
                Worn = "Items.CasualShoes_07_old_03",
                KashuuHanten = "Items.CasualShoes_07_rich_01",
                Bitch = "Items.CasualShoes_07_rich_02",
                YoruNoSamurai = "Items.CasualShoes_07_rich_03"
            }
        },
        Formal = {
            Pumps = {
                Office = {
                    Simple = "Items.FormalShoes_01_basic_01",
                    Comfy = "Items.FormalShoes_01_basic_02",
                    Cushion = "Items.FormalShoes_01_basic_03",
                    Silbermond = "Items.FormalShoes_01_rich_01",
                    MidDayGlow = "Items.FormalShoes_01_rich_02"
                },
                Evening = {
                    Leather = "Items.FormalShoes_02_basic_01",
                    Classic = "Items.FormalShoes_02_basic_02",
                    Varnish = "Items.FormalShoes_02_basic_03",
                    Silver = "Items.FormalShoes_02_rich_01",
                    Lezard = "Items.FormalShoes_02_rich_02",
                    Lily = "Items.FormalShoes_02_rich_03"
                }
            },
            Wedges = {
                Reinforced = "Items.FormalShoes_03_basic_01",
                Breeze = "Items.FormalShoes_03_basic_02",
                Abendstern = "Items.FormalShoes_03_rich_01",
                Rhubarb = "Items.FormalShoes_03_rich_02"
            }
        },
        Special = {
            Police = "Items.Cop_01_Set_Boots",
            Corpo = "Items.Corporate_01_Set_FormalShoes",
            Fixer = "Items.Fixer_01_Set_FormalShoes",
            Media = "Items.Media_01_Set_Shoes",
            Netrunner = "Items.Netrunner_01_Set_Shoes",
            Nomad = "Items.Nomad_01_Set_Boots",
            Rocker = "Items.Rockerboy_01_Set_Boots",
            Solo = "Items.Solo_01_Set_Boots",
            Techie = "Items.Techie_01_Set_Shoes",
            V = {
                Corpo = "Items.Q000_Corpo_FormalShoes",
                Nomad = "Items.Q000_Nomad_Boots",
                StreetKid = "Items.Q000_StreetKid_Shoes",
                Basic = "Items.Q001_Shoes",
                Muddy = "Items.Q202_Epilogue_Boots",
                Gold = "Items.Q203_Epilogue_Boots",
                Epilogue = "Items.Q204_Epilogue_Boots"
            },
            Johnny = {
                Rare = "Items.Q005_Johnny_Shoes",
                Epic = "Items.Q005_Johnny_Shoes_Epic",
                Legendary = "Items.Q005_Johnny_Shoes_Legendary"
            },
            Rogue = {
                ExoJacks = "Items.Q115_Custom_Predator_Boots",
                Thrusters = "Items.q115_thrusters" -- This item holds unequip blocked tag.
            },
            NUSA = "Items.Twitch_Drop_Boots"
        }
    },
    Outfit = {
        V = {
            Corpo = "Items.Q000_half_Corpo",
            Nomad = "Items.Q000_half_Nomad",
            StreetKid = "Items.Q000_half_StreetKid"
        },
        Militech = {
            Suit = "Items.Q005_Militech_Suit",
            SuitDirty = "Items.Q005_Militech_Suit_Dirty",
            SuitRuined = "Items.Q005_Militech_Suit_Filthy"
        },
        Bandages = "Items.Q101_Recovery_Bandage_Outfit",
        Jumpsuit = "Items.Q114_Cyberspace_Jumpsuit",
        Afterlife = "Items.Q115_Afterlife_Netrunner",
        Spacesuit = {
            WithHelmet = "Items.Q203_Spacesuit_Outfit_WithHelmet",
            NoHelmet = "Items.Q203_Spacesuit_Outfit_NoHelmet"
        },
        Lab = "Items.SQ021_Lab_Costume",
        Prison = "Items.SQ023_Joshua_Prisonwear",
        Police = "Items.SQ029_Police_Suit"
    }
}

return Clothing