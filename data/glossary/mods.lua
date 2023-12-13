-- Mods for clothing, weapons, items, etc.
local Mods = {}

Mods = {
    Generic = {
        Pax = {
            Common = "Items.GenericMod1_Common",
            Uncommon = "Items.GenericMod1_Uncommon",
            Rare = "Items.GenericMod1_Rare",
            Epic = "Items.GenericMod1_Epic",
            Legendary = "Items.GenericMod1_Legendary"
        }
    },
    Ranged = {
        Generic = {
            BetterHalf = {
                Epic = "Items.RangedMod1_Epic",
                Legendary = "Items.RangedMod1_Legendary"
            },
            Shuffler = {
                Common = "Items.RangedMod2_Common",
                Uncommon = "Items.RangedMod2_Uncommon",
                Rare = "Items.RangedMod2_Rare",
                Epic = "Items.RangedMod2_Epic",
                Legendary = "Items.RangedMod2_Legendary"
            },
            Equalizer = {
                Common = "Items.RangedMod3_Common",
                Uncommon = "Items.RangedMod3_Uncommon",
                Rare = "Items.RangedMod3_Rare",
                Epic = "Items.RangedMod3_Epic",
                Legendary = "Items.RangedMod3_Legendary"
            }
        },
        Automatic = {
            BigMag = {
                Common = "Items.ARSMGLMGMod1_Common",
                Uncommon = "Items.ARSMGLMGMod1_Uncommon",
                Rare = "Items.ARSMGLMGMod1_Rare",
                Epic = "Items.ARSMGLMGMod1_Epic",
                Legendary = "Items.ARSMGLMGMod1_Legendary"
            },
            ReadSteady = {
                Common = "Items.ARSMGLMGMod2_Common",
                Uncommon = "Items.ARSMGLMGMod2_Uncommon",
                Rare = "Items.ARSMGLMGMod2_Rare",
                Epic = "Items.ARSMGLMGMod2_Epic",
                Legendary = "Items.ARSMGLMGMod2_Legendary",
            },
            FocusFire = {
                Common = "Items.ARSMGLMGMod3_Common",
                Uncommon = "Items.ARSMGLMGMod3_Uncommon",
                Rare =  "Items.ARSMGLMGMod3_Rare",
                Epic = "Items.ARSMGLMGMod3_Epic",
                Legendary = "Items.ARSMGLMGMod3_Legendary",
            }
        },
        Handgun = {
            Pinpoint = {
                Common = "Items.HGMod1_Common",
                Uncommon = "Items.HGMod1_Uncommon",
                Rare = "Items.HGMod1_Rare",
                Epic = "Items.HGMod1_Epic",
                Legendary = "Items.HGMod1_Legendary"
            },
            Zenith = {
                Common = "Items.HGMod2_Common",
                Uncommon = "Items.HGMod2_Uncommon",
                Rare = "Items.HGMod2_Rare",
                Epic = "Items.HGMod2_Epic",
                Legendary = "Items.HGMod2_Legendary"
            },
            Parallax = {
                Common = "Items.HGMod3_Common",
                Uncommon = "Items.HGMod3_Uncommon",
                Rare = "Items.HGMod3_Rare",
                Epic = "Items.HGMod3_Epic",
                Legendary = "Items.HGMod3_Legendary"
            }
        },
        Shotgun = {
            Vivisector = {
                Common = "Items.ShotgunMod1_Common",
                Uncommon = "Items.ShotgunMod1_Uncommon",
                Rare = "Items.ShotgunMod1_Rare",
                Epic = "Items.ShotgunMod1_Epic",
                Legendary = "Items.ShotgunMod1_Legendary"
            },
            Kneel = {
                Common = "Items.ShotgunMod2_Common",
                Uncommon = "Items.ShotgunMod2_Uncommon",
                Rare = "Items.ShotgunMod2_Rare",
                Epic = "Items.ShotgunMod2_Epic",
                Legendary = "Items.ShotgunMod2_Legendary"
            },
            Condenser = {
                Common = "Items.ShotgunMod3_Common",
                Uncommon = "Items.ShotgunMod3_Uncommon",
                Rare = "Items.ShotgunMod3_Rare",
                Epic = "Items.ShotgunMod3_Epic",
                Legendary = "Items.ShotgunMod3_Legendary"
            }
        },
        Precision = {
            Stabilizer = {
                Common = "Items.PRSRMod1_Common",
                Uncommon = "Items.PRSRMod1_Uncommon",
                Rare = "Items.PRSRMod1_Rare",
                Epic = "Items.PRSRMod1_Epic",
                Legendary = "Items.PRSRMod1_Legendary"
            },
            Headtoll = {
                Common = "Items.PRSRMod2_Common",
                Uncommon = "Items.PRSRMod2_Uncommon",
                Rare = "Items.PRSRMod2_Rare",
                Epic = "Items.PRSRMod2_Epic",
                Legendary = "Items.PRSRMod2_Legendary"
            },
            Fleetshot = {
                Common = "Items.PRSRMod3_Common",
                Uncommon = "Items.PRSRMod3_Uncommon",
                Rare = "Items.PRSRMod3_Rare",
                Epic = "Items.PRSRMod3_Epic",
                Legendary = "Items.PRSRMod3_Legendary"
            },
        },
        Power = {
            Pyro = {
                Common = "Items.PowerMod1_Common",
                Uncommon = "Items.PowerMod1_Uncommon",
                Rare = "Items.PowerMod1_Rare",
                Epic = "Items.PowerMod1_Epic",
                Legendary = "Items.PowerMod1_Legendary"
            },
            SwissCheese = {
                Common = "Items.PowerMod2_Common",
                Uncommon = "Items.PowerMod2_Uncommon",
                Rare = "Items.PowerMod2_Rare",
                Epic = "Items.PowerMod2_Epic",
                Legendary = "Items.PowerMod2_Legendary"
            },
            Critochet = {
                Common = "Items.PowerMod3_Common",
                Uncommon = "Items.PowerMod3_Uncommon",
                Rare = "Items.PowerMod3_Rare",
                Epic = "Items.PowerMod3_Epic",
                Legendary = "Items.PowerMod3_Legendary"
            },
            Firecracker = "Items.ChimeraPowerMod"
        },
        Tech = {
            Spinetickler = {
                Common = "Items.TechMod1_Common",
                Uncommon = "Items.TechMod1_Uncommon",
                Rare = "Items.TechMod1_Rare",
                Epic = "Items.TechMod1_Epic",
                Legendary = "Items.TechMod1_Legendary"
            },
            CThru = {
                Common = "Items.TechMod2_Common",
                Uncommon = "Items.TechMod2_Uncommon",
                Rare = "Items.TechMod2_Rare",
                Epic = "Items.TechMod2_Epic",
                Legendary = "Items.TechMod2_Legendary"
            },
            Supercharger = {
                Common = "Items.TechMod3_Common",
                Uncommon = "Items.TechMod3_Uncommon",
                Rare = "Items.TechMod3_Rare",
                Epic = "Items.TechMod3_Epic",
                Legendary = "Items.TechMod3_Legendary"
            },
            Wallpuncher = "Items.ChimeraTechMod"
        },
        Smart = {
            Headhopper = {
                Epic = "Items.SmartMod1_Epic",
                Legendary = "Items.SmartMod1_Legendary"
            },
            Gambiteer = {
                Common = "Items.SmartMod2_Common",
                Uncommon = "Items.SmartMod2_Uncommon",
                Rare = "Items.SmartMod2_Rare",
                Epic = "Items.SmartMod2_Epic",
                Legendary = "Items.SmartMod2_Legendary"
            },
            Panorama = {
                Common = "Items.SmartMod3_Common",
                Uncommon = "Items.SmartMod3_Uncommon",
                Rare = "Items.SmartMod3_Rare",
                Epic = "Items.SmartMod3_Epic",
                Legendary = "Items.SmartMod3_Legendary"
            },
            Hackatomy = "Items.ChimeraSmartMod"
        },
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
            Genjiroh = "Items.YukimuraKijiWeaponMod",
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
        Generic = {
            Airstrike = {
                Common = "Items.MeleeMod1_Common",
                Uncommon = "Items.MeleeMod1_Uncommon",
                Rare = "Items.MeleeMod1_Rare",
                Epic = "Items.MeleeMod1_Epic",
                Legendary = "Items.MeleeMod1_Legendary"
            },
            Cyclone = {
                Common = "Items.MeleeMod2_Common",
                Uncommon = "Items.MeleeMod2_Uncommon",
                Rare = "Items.MeleeMod2_Rare",
                Epic = "Items.MeleeMod2_Epic",
                Legendary = "Items.MeleeMod2_Legendary"
            },
            Silencio = {
                Common = "Items.MeleeMod3_Common",
                Uncommon = "Items.MeleeMod3_Uncommon",
                Rare = "Items.MeleeMod3_Rare",
                Epic = "Items.MeleeMod3_Epic",
                Legendary = "Items.MeleeMod3_Legendary"
            },
            Severance = "Items.ChimeraMeleeMod",
        },
        Blade = {
            Bleedout = {
                Common = "Items.BladeMod1_Common",
                Uncommon = "Items.BladeMod1_Uncommon",
                Rare = "Items.BladeMod1_Rare",
                Epic = "Items.BladeMod1_Epic",
                Legendary = "Items.BladeMod1_Legendary"
            },
            SliceEmUp = {
                Legendary = "Items.BladeMod2_Legendary"
            },
            Haemocide = {
                Common = "Items.BladeMod3_Common",
                Uncommon = "Items.BladeMod3_Uncommon",
                Rare = "Items.BladeMod3_Rare",
                Epic = "Items.BladeMod3_Epic",
                Legendary = "Items.BladeMod3_Legendary"
            }
        },
        Blunt = {
            KO = {
                Common = "Items.BluntMod1_Common",
                Uncommon = "Items.BluntMod1_Uncommon",
                Rare = "Items.BluntMod1_Rare",
                Epic = "Items.BluntMod1_Epic",
                Legendary = "Items.BluntMod1_Legendary"
            },
            Bloodbruiser = {
                Common = "Items.BluntMod2_Common",
                Uncommon = "Items.BluntMod2_Uncommon",
                Rare = "Items.BluntMod2_Rare",
                Epic = "Items.BluntMod2_Epic",
                Legendary = "Items.BluntMod2_Legendary"
            },
            Barbarian = {
                Epic = "Items.BluntMod3_Epic",
                Legendary = "Items.BluntMod3_Legendary"
            },
        },
        Throw = {
            Boomerang = {
                Common = "Items.ThrowMod1_Common",
                Uncommon = "Items.ThrowMod1_Uncommon",
                Rare = "Items.ThrowMod1_Rare",
                Epic = "Items.ThrowMod1_Epic",
                Legendary = "Items.ThrowMod1_Legendary"
            },
            ZeroG = {
                Rare = "Items.ThrowMod2_Rare",
                Epic = "Items.ThrowMod2_Epic",
                Legendary = "Items.ThrowMod2_Legendary"
            },
            Javelin = {
                Common = "Items.ThrowMod3_Common",
                Uncommon = "Items.ThrowMod3_Uncommon",
                Rare = "Items.ThrowMod3_Rare",
                Epic = "Items.ThrowMod3_Epic",
                Legendary = "Items.ThrowMod3_Legendary"
            },
        },
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
    -- There are no more cyberware mods as of recent patch.
}

return Mods