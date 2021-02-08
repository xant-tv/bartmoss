-- Mods for clothing, weapons, items, etc.
local Mods = {}

Mods = {
    Clothing = {
        AntiVenom = "Items.PowerfulFabricEnhancer02",
        Armadillo = "Items.SimpleFabricEnhancer01",
        Backpack = "Items.SimpleFabricEnhancer05",
        BoomBreaker = "Items.SimpleFabricEnhancer14",
        Bully = "Items.SimpleFabricEnhancer04",
        CoolIt = "Items.PowerfulFabricEnhancer01",
        CutItOut = "Items.PowerfulFabricEnhancer06",
        DeadEye = "Items.PowerfulFabricEnhancer08",
        Footloose = "Items.SimpleFabricEnhancer06",
        Fortuna = "Items.SimpleFabricEnhancer03",
        Osmosis = "Items.SimpleFabricEnhancer09", -- Literally why is oxygen even a thing in this game?
        Panacea = "Items.PowerfulFabricEnhancer03",
        Plume = "Items.SimpleFabricEnhancer10",
        Predator = "Items.PowerfulFabricEnhancer07",
        Resist = "Items.SimpleFabricEnhancer02",
        Showtime = "Items.SimpleFabricEnhancer07",
        SoftSole = "Items.PowerfulFabricEnhancer05",
        SuperInsulator = "Items.PowerfulFabricEnhancer04",
        Tenacity = "Items.SimpleFabricEnhancer12",
        Vanguard = "Items.SimpleFabricEnhancer13",
        ZeroDrag = "Items.SimpleFabricEnhancer11"
    },
    Ranged = {
        Autoloader = "Items.SimpleWeaponMod16",
        -- BeSmart = "Items.SimpleWeaponMod15", -- Disabled as this mod doesn't appear to actually be usable.
        -- Bouncy = "Items.SimpleWeaponMod08", -- Disabled as this mod doesn't appear to actually be usable.
        -- ChargeSpike = "Items.SimpleWeaponMod09", -- Disabled as this mod doesn't appear to actually be usable.
        CombatAmplifier = "Items.SimpleWeaponMod04",
        CounterMass = "Items.SimpleWeaponMod11",
        Crunch = "Items.SimpleWeaponMod01",
        NeonArrow = "Items.TygerRangedWeaponMod",
        Pacifier = "Items.SimpleWeaponMod03",
        Pax = "Items.SimpleWeaponMod17",
        Penetrator = "Items.SimpleWeaponMod02",
        Phantom = "Items.WraithsRangedWeaponMod",
        Pulverize = "Items.SimpleWeaponMod12",
        Vendetta = "Items.ValentinosRangedWeaponMod",
        Weaken = "Items.SimpleWeaponMod13",
        Iconic = {
            -- These weapon mods can be added to inventory but are unable to be manually socketed.
            -- However, we can probably force these into special weapon slots.
            Archangel = "Items.KerryWeaponMod",
            Amnesty = "Items.CassidyWeaponMod",
            Apparition = "Items.FrankWeaponMod",
            BaXingChong = "Items.ZhuoEightStarWeaponMod",
            Breakthrough = "Items.NekomataBreakthroughWeaponMod",
            Buzzsaw = "Items.PulsarBuzzsawWeaponMod",
            Chaos = "Items.RoyceWeaponMod",
            ChingonaDorada = "Items.JackieNueWeaponMod",
            ComradesHammer = "Items.BuryaHammerWeaponMod",
            Crash = "Items.RiverWeaponMod",
            DeathTaxes = "Items.MaikoNueWeaponMod",
            DividedWeStand = "Items.SidewinderDividedWeaponMod",
            DoomDoom = "Items.DoomDoomWeaponMod",
            DyingNight = "Items.WilsonWeaponMod",
            Fenrir = "Items.SaratogaMaelstromWeaponMod",
            Genjiroh = "YukimuraKijiWeaponMod",
            Headsman = "Items.TacticianHeadsmanWeaponMod",
            Kongou = "Items.YorinobuLibertyWeaponMod",
            Lizzie = "Items.SuzieWeaponMod",
            MoronLabe = "Items.AjaxMoronWeaponMod",
            Mox = "Items.MoxCarnageWeaponMod",
            OFive = "Items.BuckWeaponMod",
            Overwatch = "Items.PanamWeaponMod",
            PlanB = "Items.DexLibertyWeaponMod",
            Prejudice = "Items.RogueMasamuneWeaponMod",
            Pride = "Items.RogueLibertyWeaponMod",
            Psalm = "Items.CopperheadGenesisWeaponMod",
            ProblemSolver = "Items.RaffenSaratogaWeaponMod",
            -- Skippy = "", -- Doesn't appear to have an iconic weapon mod associated with it.
            Shingen = "Items.PrototypeShingenWeaponMod",
            Sovereign = "Items.IglaSovereignWeaponMod",
            WidowMaker = "Items.NashWeaponMod",
            YingLong = "Items.DianYinglongWeaponMod",
        }
    },
    Melee = {
        ColdShoulder = "Items.ValentinosMeleeWeaponMod",
        Kunai = "Items.ArasakaMeleeWeaponMod",
        Scourge = "Items.WraithsMeleeWeaponMod",
        WhiteKnuckled = "Items.TygerMeleeWeaponMod",
        Iconic = {
            -- Similar to ranged weapon mods but melee weapons do actually allow these mods to be manually socketed.
            Caretaker = "Items.CyberspadeWeaponMod",
            Cocktail = "Items.CocktailStickWeaponMod",
            Cottonmouth = "Items.FingersCaneWeaponMod",
            GoldPlated = "Items.DennysBatWeaponMod",
            JinchuMaru = "Items.TakemuraKatanaWeaponMod",
            Phallustiff = "Items.DildoWeaponMod",
            Satori = "Items.SaburoKatanaWeaponMod",
            Scalpel = "Items.SurgeonKatanaWeaponMod",
            Stinger = "Items.ScorpionKnifeWeaponMod",
            TinkerBell = "Items.TinkerBellWeaponMod",
            Tsumetogi = "Items.HiromiKatanaWeaponMod"
        }
    },
    Cyberware = {
        -- This needs to be filled out to contain all the cyberdeck, eyes and arms mods.
        Arms = {
            GorillaArms = {
                Battery = {
                    BlackMarket = "Items.AnimalsStrongArmsBattery1",
                    Low = "Items.LowChargedBattery",
                    High = "Items.HighChargedBattery",
                    Medium = "Items.MediumChargedBattery",
                    Rin3u = "Items.TygerClawsStrongArmsBattery1"
                },
                Knuckles = {
                    Animals = "Items.AnimalsStrongArmsKnuckles1",
                    Chemical = "Items.ChemicalDamageKnuckles",
                    Electrical = "Items.ElectricDamageKnuckles",
                    Physical = "Items.PhysicalDamageKnuckles",
                    Thermal = "Items.ThermalDamageKnuckles"
                }
            },
            MantisBlades = {
                Edge = {
                    Chemical = "Items.ChemicalDamageEdge",
                    Electrical = "Items.ElectricDamageEdge",
                    Physical = "Items.PhysicalDamageEdge",
                    Thermal = "Items.ThermalDamageEdge"
                },
                Rotor = {
                    Fast = "Items.FastRotor",
                    Haming8 = "Items.TygerClawsMantisBladesRotor1",
                    Slow = "Items.SlowRotor"
                }
            },
            Monowire = {
                Battery = {
                    Low = "Items.LowChargedWiresBattery",
                    High = "Items.HighChargedWiresBattery",
                    Medium = "Items.MediumChargedWiresBattery"
                },
                Cable = {
                    Chemical = "Items.ChemicalDamageCable",
                    Electrical = "Items.ElectricDamageCable",
                    Physical = "Items.PhysicalDamageCable",
                    Thermal = "Items.ThermalDamageCable"
                }
            },
            ProjectileLauncher = {
                Round = {
                    Chemical = "Items.ChemicalDamageRound",
                    Electrical = "Items.ElectricDamageRound",
                    Explosive = "Items.ExplosiveDamageRound",
                    Incendiary = "Items.MilitechProjectileLauncherRound1",
                    Thermal = "Items.ThermalDamageRound",
                    Tranquilizer = "Items.TranquilizerRound"
                },
                Plating = {
                    Metal = "Items.MetalPlating",
                    Neoplastic = "Items.NeoplasticPlating",
                    Titanium = "Items.TitaniumPlating"
                }
            },
            Universal = {
                SensoryAmplifier = {
                    Armor = "Items.ArmsCyberwareSharedFragment4",
                    CritChance = "Items.ArmsCyberwareSharedFragment1",
                    CritDamage = "Items.ArmsCyberwareSharedFragment2",
                    Health = "Items.ArmsCyberwareSharedFragment3"
                }
            }
        },
        Deck = {
            Berserk = {
                Armored = "Items.BerserkFragment3",
                BeastMode = "Items.AnimalsBerserkFragment1",
                Bruising = "Items.BerserkFragment4",
                Chained = "Items.BerserkFragment2",
                Devastating = "Items.BerserkFragment7",
                Extended = "Items.BerserkFragment1",
                Focused = "Items.BerserkFragment5",
                Invigorating = "Items.BerserkFragment6",
                Sharpened = "Items.BerserkFragment8"
            },
            Sandevistan = {
                Arasaka = "Items.ArasakaSandevistanFragment1",
                Heatsink = "Items.SandevistanFragment4",
                MicroAmplifier = "Items.SandevistanFragment8",
                NeuroTransmitters = "Items.SandevistanFragment3",
                Overclocked = "Items.SandevistanFragment1",
                Prototype = "Items.SandevistanFragment2",
                RapidBull = "Items.ValentinosSandevistanFragment1",
                TygerPaw = "Items.TygerClawsSandevistanFragment1"
            }
        },
        Eyes = {
            ExplosiveAnalysis = "Items.KiroshiOpticsFragment2",
            TargetAnalysis = "Items.KiroshiOpticsFragment1",
            -- For some reason this mod also has another name.
            -- There does not appear to be any difference in terms of effect.
            -- TargetAnalysis = "Items.KiroshiOpticsFragment3",
            ThreatDetector = "Items.KiroshiOpticsFragment4",
            TrajectoryAnalysis = "Items.KiroshiOpticsFragment5",
            TrajectoryGenerator = "Items.KiroshiOpticsFragment7",
            WeakspotDetection = "Items.KiroshiOpticsFragment6"
        }
    }
}

return Mods