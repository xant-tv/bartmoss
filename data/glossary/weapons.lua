-- Weapons (ranged, melee, grenades) dictionary.
local Weapons = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

Weapons = {
    Ranged = {
        Achilles = {
            Default = "Items.Preset_Achilles_Default",
            Military = "Items.Preset_Achilles_Military",
            Neon = "Items.Preset_Achilles_Neon",
            Pimp = "Items.Preset_Achilles_Pimp",
            Iconic = {
                -- TinyMike = "Items.Preset_Achilles_Tiny_Mike", -- What is this? Is it a Rick and Morty reference?
                WidowMaker = {
                    Rare = "Items.Preset_Achilles_Nash",
                    Epic = "Items.Preset_Achilles_Nash_Epic",
                    Legendary = "Items.Preset_Achilles_Nash_Legendary"
                }
            }
        },
        Ajax = {
            Default = "Items.Preset_Ajax_Default",
            Military = "Items.Preset_Ajax_Military",
            Neon = "Items.Preset_Ajax_Neon",
            Pimp = "Items.Preset_Ajax_Pimp",
            Training = "Items.Preset_Ajax_Training",
            Iconic = {
                MoronLabe = {
                    Epic = "Items.Preset_Ajax_Moron",
                    Legendary = "Items.Preset_Ajax_Moron_Legendary"
                }
            }
        },
        Ashura = {
            Default = "Items.Preset_Ashura_Default",
            Military = "Items.Preset_Ashura_Military",
            Neon = "Items.Preset_Ashura_Neon",
            Pimp = "Items.Preset_Ashura_Pimp"
        },
        Burya = {
            Default = "Items.Preset_Burya_Default",
            Military = "Items.Preset_Burya_Military",
            Neon = "Items.Preset_Burya_Neon",
            Pimp = "Items.Preset_Burya_Pimp",
            Iconic = {
                ComradesHammer = {
                    Epic = "Items.Preset_Burya_Comrade",
                    Legendary = "Items.Preset_Burya_Comrade_Legendary"
                }
            }
        },
        Carnage = {
            Default = "Items.Preset_Carnage_Default",
            Military = "Items.Preset_Carnage_Military",
            Neon = "Items.Preset_Carnage_Neon",
            Pimp = "Items.Preset_Carnage_Pimp",
            Iconic = {
                Mox = {
                    Rare = "Items.Preset_Carnage_Mox",
                    Epic = "Items.Preset_Carnage_Mox_Epic",
                    Legendary = "Items.Preset_Carnage_Mox_Legendary"
                }
            }
        },
        Chao = {
            Default = "Items.Preset_Chao_Default",
            Military = "Items.Preset_Chao_Military",
            Neon = "Items.Preset_Chao_Neon",
            Pimp = "Items.Preset_Chao_Pimp"
        },
        Copperhead = {
            Default = "Items.Preset_Copperhead_Default",
            Military = "Items.Preset_Copperhead_Military",
            Neon = "Items.Preset_Copperhead_Neon",
            Pimp = "Items.Preset_Copperhead_Pimp",
            Iconic = {
                Psalm = {
                    Rare = "Items.Preset_Copperhead_Genesis",
                    Epic = "Items.Preset_Copperhead_Genesis_Epic",
                    Legendary = "Items.Preset_Copperhead_Genesis_Legendary"
                }
            }
        },
        Crusher = {
            Default = "Items.Preset_Crusher_Default",
            Military = "Items.Preset_Crusher_Military",
            Neon = "Items.Preset_Crusher_Neon",
            Pimp = "Items.Preset_Crusher_Pimp"
        },
        Defender = {
            Default = "Items.Preset_Defender_Default",
            Military = "Items.Preset_Defender_Military",
            Neon = "Items.Preset_Defender_Neon",
            Pimp = "Items.Preset_Defender_Pimp"
        },
        Dian = {
            Default = "Items.Preset_Dian_Default",
            Military = "Items.Preset_Dian_Military",
            Neon = "Items.Preset_Dian_Neon",
            Pimp = "Items.Preset_Dian_Pimp",
            Trauma = "Items.Preset_Dian_Trauma",
            Iconic = {
                YingLong = {
                    Legendary = "Items.Preset_Dian_Yinglong"
                }
            }
        },
        Grad = {
            Default = "Items.Preset_Grad_Default",
            Military = "Items.Preset_Grad_Military",
            Neon = "Items.Preset_Grad_Neon",
            Pimp = "Items.Preset_Grad_Pimp",
            Iconic = {
                OFive = {
                    Epic = "Items.Preset_Grad_Buck",
                    Legendary = "Items.Preset_Grad_Buck_Legendary"
                },
                Overwatch = {
                    Rare = "Items.Preset_Grad_Panam",
                    Epic = "Items.Preset_Grad_Panam_Epic",
                    Legendary = "Items.Preset_Grad_Panam_Legendary"
                }
            }
        },
        Igla = {
            Default = "Items.Preset_Igla_Default",
            Military = "Items.Preset_Igla_Military",
            Neon = "Items.Preset_Igla_Neon",
            Pimp = "Items.Preset_Igla_Pimp",
            Iconic = {
                Sovereign = {
                    Epic = "Items.Preset_Igla_Sovereign",
                    Legendary = "Items.Preset_Igla_Sovereign_Legendary"
                }
            }
        },
        Kenshin = {
            Default = "Items.Preset_Kenshin_Default",
            Military = "Items.Preset_Kenshin_Military",
            Neon = "Items.Preset_Kenshin_Neon",
            Pimp = "Items.Preset_Kenshin_Pimp",
            Iconic = {
                Apparition = {
                    Epic = "Items.Preset_Kenshin_Frank",
                    Legendary = "Items.Preset_Kenshin_Frank_Legendary"
                },
                Chaos = {
                    Rare = "Items.Preset_Kenshin_Royce",
                    Epic = "Items.Preset_Kenshin_Royce_Epic",
                    Legendary = "Items.Preset_Kenshin_Royce_Legendary"
                }
            }
        },
        Lexington = {
            Default = "Items.Preset_Lexington_Default",
            Military = "Items.Preset_Lexington_Military",
            Neon = "Items.Preset_Lexington_Neon",
            Pimp = "Items.Preset_Lexington_Pimp",
            Iconic = {
                DyingNight = {
                    Uncommon = "Items.Preset_Lexington_Wilson",
                    Rare = "Items.Preset_Lexington_Wilson_Rare",
                    Epic = "Items.Preset_Lexington_Wilson_Epic",
                    Legendary = "Items.Preset_Lexington_Wilson_Legendary"
                }
            }
        },
        Liberty = {
            Default = "Items.Preset_Liberty_Default",
            Iconic = {
                Konguo = {
                    Rare = "Items.Preset_Liberty_Yorinobu",
                    Epic = "Items.Preset_Liberty_Yorinobu_Epic",
                    Legendary = "Items.Preset_Liberty_Yorinobu_Legendary"
                },
                PlanB = {
                    Rare = "Items.Preset_Liberty_Dex",
                    Epic = "Items.Preset_Liberty_Dex_Epic",
                    Legendary = "Items.Preset_Liberty_Dex_Legendary"
                },
                Pride = {
                    Legendary = "Items.Preset_Liberty_Rogue"
                }
            }
        },
        Masamune = {
            Default = "Items.Preset_Masamune_Default",
            Flashlight = "Items.Preset_Masamune_Flashlight",
            Military = "Items.Preset_Masamune_Military",
            Neon = "Items.Preset_Masamune_Neon",
            Pimp = "Items.Preset_Masamune_Pimp",
            Trauma = "Items.Preset_Masamune_Trauma",
            Iconic = {
                Prejudice = {
                    Legendary = "Items.Preset_Masamune_Rogue"
                }
            }
        },
        Nekomata = {
            Default = "Items.Preset_Nekomata_Default",
            Military = "Items.Preset_Nekomata_Military",
            Neon = "Items.Preset_Nekomata_Neon",
            Pimp = "Items.Preset_Nekomata_Pimp",
            Iconic = {
                Breakthrough = {
                    Epic = "Items.Preset_Nekomata_Breakthrough",
                    Legendary = "Items.Preset_Nekomata_Breakthrough_Legendary"
                }
            }
        },
        Nova = {
            Default = "Items.Preset_Nova_Default",
            Military = "Items.Preset_Nova_Military",
            Neon = "Items.Preset_Nova_Neon",
            Pimp = "Items.Preset_Nova_Pimp",
            Iconic = {
                DoomDoom = {
                    Rare = "Items.Preset_Nova_Doom_Doom",
                    Epic = "Items.Preset_Nova_Doom_Doom_Epic",
                    Legendary = "Items.Preset_Nova_Doom_Doom_Legendary"
                }
            }
        },
        Nue = {
            Arasaka = "Items.Preset_Nue_Arasaka_2020",
            Default = "Items.Preset_Nue_Default",
            Military = "Items.Preset_Nue_Military",
            Neon = "Items.Preset_Nue_Neon",
            Pimp = "Items.Preset_Nue_Pimp",
            Iconic = {
                ChingonaDorada = {
                    Rare = "Items.Preset_Nue_Jackie",
                    Epic = "Items.Preset_Nue_Jackie_Epic",
                    Legendary = "Items.Preset_Nue_Jackie_Legendary"
                },
                DeathTaxes = {
                    Rare = "Items.Preset_Nue_Maiko",
                    Epic = "Items.Preset_Nue_Maiko_Epic",
                    Legendary = "Items.Preset_Nue_Maiko_Legendary"
                }
            }
        },
        Omaha = {
            Default = "Items.Preset_Omaha_Default",
            Military = "Items.Preset_Omaha_Military",
            Neon = "Items.Preset_Omaha_Neon",
            Pimp = "Items.Preset_Omaha_Pimp",
            Iconic = {
                Lizzie = {
                    Rare = "Items.Preset_Omaha_Suzie",
                    Epic = "Items.Preset_Omaha_Suzie_Epic",
                    Legendary = "Items.Preset_Omaha_Suzie_Legendary"
                }
            }
        },
        Overture = {
            Default = "Items.Preset_Overture_Default",
            Military = "Items.Preset_Overture_Military",
            Neon = "Items.Preset_Overture_Neon",
            Pimp = "Items.Preset_Overture_Pimp",
            Iconic = {
                Amnesty = {
                    Epic = "Items.Preset_Overture_Cassidy",
                    Legendary = "Items.Preset_Overture_Cassidy_Legendary"
                },
                Archangel = {
                    Rare = "Items.Preset_Overture_Kerry",
                    Epic = "Items.Preset_Overture_Kerry_Epic",
                    Legendary = "Items.Preset_Overture_Kerry_Legendary"
                },
                Crash = {
                    Epic = "Items.Preset_Overture_River", -- This is added with a quest flag.
                    Legendary = "Items.Preset_Overture_River_Legendary"
                }
            }
        },
        Palica = {
            Default = "Items.Preset_Palica_Default",
            Military = "Items.Preset_Palica_Military",
            Neon = "Items.Preset_Palica_Neon",
            Pimp = "Items.Preset_Palica_Pimp"
        },
        Pulsar = {
            Default = "Items.Preset_Pulsar_Default",
            Military = "Items.Preset_Pulsar_Military",
            Neon = "Items.Preset_Pulsar_Neon",
            Pimp = "Items.Preset_Pulsar_Pimp",
            Iconic = {
                Buzzsaw = {
                    Rare = "Items.Preset_Pulsar_Buzzsaw",
                    Epic = "Items.Preset_Pulsar_Buzzsaw_Epic",
                    Legendary = "Items.Preset_Pulsar_Buzzsaw_Legendary"
                }
            }
        },
        Quasar = {
            Default = "Items.Preset_Quasar_Default",
            Military = "Items.Preset_Quasar_Military",
            Neon = "Items.Preset_Quasar_Neon",
            Pimp = "Items.Preset_Quasar_Pimp"
        },
        Saratoga = {
            Arasaka = "Items.Preset_Saratoga_Arasaka_2020",
            Default = "Items.Preset_Saratoga_Default",
            Military = "Items.Preset_Saratoga_Military",
            Neon = "Items.Preset_Saratoga_Neon",
            Pimp = "Items.Preset_Saratoga_Pimp",
            Iconic = {
                Fenrir = {
                    Rare = "Items.Preset_Saratoga_Maelstrom",
                    Epic = "Items.Preset_Saratoga_Maelstrom_Epic",
                    Legendary = "Items.Preset_Saratoga_Maelstrom_Legendary"
                },
                Raffen = {
                    Rare = "Items.Preset_Saratoga_Raffen",
                    Epic = "Items.Preset_Saratoga_Raffen_Epic",
                    Legendary = "Items.Preset_Saratoga_Raffen_Legendary"
                }
            }
        },
        Satara = {
            Default = "Items.Preset_Satara_Default",
            Military = "Items.Preset_Satara_Military",
            Neon = "Items.Preset_Satara_Neon",
            Pimp = "Items.Preset_Satara_Pimp"
        },
        Shingen = {
            Default = "Items.Preset_Shingen_Default",
            Military = "Items.Preset_Shingen_Military",
            Neon = "Items.Preset_Shingen_Neon",
            Pimp = "Items.Preset_Shingen_Pimp",
            Iconic = {
                Prototype = {
                    Legendary = "Items.Preset_Shingen_Prototype"
                }
            }
        },
        Sidewinder = {
            Default = "Items.Preset_Sidewinder_Default",
            Military = "Items.Preset_Sidewinder_Military",
            Neon = "Items.Preset_Sidewinder_Neon",
            Pimp = "Items.Preset_Sidewinder_Pimp",
            Iconic = {
                DividedWeStand = {
                    Rare = "Items.Preset_Sidewinder_Divided",
                    Epic = "Items.Preset_Sidewinder_Divided_Epic",
                    Legendary = "Items.Preset_Sidewinder_Divided_Legendary"
                }
            }
        },
        Silverhand = {
            Legendary = "Items.Preset_Silverhand_3516"
        },
        Sor22 = {
            Default = "Items.Preset_Sor22_Default",
            Military = "Items.Preset_Sor22_Military",
            Neon = "Items.Preset_Sor22_Neon",
            Pimp = "Items.Preset_Sor22_Pimp"
        },
        Tactician = {
            Default = "Items.Preset_Tactician_Default",
            Military = "Items.Preset_Tactician_Military",
            Neon = "Items.Preset_Tactician_Neon",
            Pimp = "Items.Preset_Tactician_Pimp",
            Iconic = {
                Headsman = {
                    Epic = "Items.Preset_Tactician_Headsman",
                    Legendary = "Items.Preset_Tactician_Headsman_Legendary"
                }
            }
        },
        Testera = {
            Default = "Items.Preset_Testera_Default",
            Neon = "Items.Preset_Testera_Neon",
            Pimp = "Items.Preset_Testera_Pimp"
        },
        Unity = {
            Default = "Items.Preset_Unity_Default",
            Military = "Items.Preset_Unity_Military",
            Neon = "Items.Preset_Unity_Neon",
            Pimp = "Items.Preset_Unity_Pimp"
        },
        Yukimara = {
            Default = "Items.Preset_Yukimura_Default",
            Military = "Items.Preset_Yukimura_Military",
            Neon = "Items.Preset_Yukimura_Neon",
            Pimp = "Items.Preset_Yukimura_Pimp",
            Iconic = {
                Genjiroh = {
                    Epic = "Items.Preset_Yukimura_Kiji",
                    Legendary = "Items.Preset_Yukimura_Kiji_Legendary"
                },
                Skippy = {
                    Epic = "Items.Preset_Yukimura_Skippy" -- This is added with a quest flag.
                }
            }
        },
        Zhuo = {
            Default = "Items.Preset_Zhuo_Default",
            Military = "Items.Preset_Zhuo_Military",
            Neon = "Items.Preset_Zhuo_Neon",
            Pimp = "Items.Preset_Zhuo_Pimp",
            Trauma = "Items.Preset_Zhuo_Trauma",
            Iconic = {
                BaXingChong = {
                    Legendary = "Items.Preset_Zhuo_Eight_Star"
                }
            }
        }
    },
    Melee = {
        BaseballBat = {
            Default = "Items.Preset_Baseball_Bat_Default",
            Iconic = {
                GoldPlated = {
                    Rare = "Items.Preset_Baseball_Bat_Denny",
                    Epic = "Items.Preset_Baseball_Bat_Denny_Epic",
                    Legendary = "Items.Preset_Baseball_Bat_Denny_Legendary"
                }
            }
        },
        Baton = {
            Alpha = "Items.Preset_Baton_Alpha",
            Beta = "Items.Preset_Baton_Beta",
            Gamma = "Items.Preset_Baton_Gamma",
            Iconic = {
                TinkerBell = {
                    Rare = "Items.Preset_Baton_Tinker_Bell",
                    Epic = "Items.Preset_Baton_Tinker_Bell_Epic",
                    Legendary = "Items.Preset_Baton_Tinker_Bell_Legendary"
                }
            }
        },
        ButchersKnife = {
            Default = "Items.Preset_Butchers_Knife_Default"
        },
        Cane = {
            Iconic = {
                Cottonmouth = {
                    Rare = "Items.Preset_Cane_Fingers",
                    Epic = "Items.Preset_Cane_Fingers_Epic",
                    Legendary = "Items.Preset_Cane_Fingers_Legendary"
                }
            }
        },
        ChefsKnife = {
            Default = "Items.Preset_Chefs_Knife_Default"
        },
        Crowbar = {
            Default = "Items.Preset_Crowbar_Default"
        },
        Dildo = {
            Iconic = {
                Phallustiff = {
                    Rare = "Items.Preset_Dildo_Stout",
                    Epic = "Items.Preset_Dildo_Stout_Epic",
                    Legendary = "Items.Preset_Dildo_Stout_Legendary"
                }
            }
        },
        Hammer = {
            Default = "Items.Preset_Hammer_Default",
            Sasquatch = "Items.Preset_Hammer_Sasquatch",
        },
        IronPipe = {
            Default = "Items.Preset_Iron_Pipe_Default"
        },
        Kanabo = {
            Default = "Items.Preset_Kanabo_Default"
        },
        Katana = {
            Arasaka = "Items.Preset_Katana_Arasaka_2020",
            Default = "Items.Preset_Katana_Default",
            Military = "Items.Preset_Katana_Military",
            Neon = "Items.Preset_Katana_Neon",
            Training = "Items.Preset_Katana_Training",
            Iconic = {
                BlackUnicorn = {
                    Rare = "Items.Preset_Katana_GoG",
                    Epic = "Items.Preset_Katana_GoG_Epic",
                    Legendary = "Items.Preset_Katana_GoG_Legendary"
                },
                Cocktail = {
                    Rare = "Items.Preset_Katana_Cocktail",
                    Epic = "Items.Preset_Katana_Cocktail_Epic",
                    Legendary = "Items.Preset_Katana_Cocktail_Legendary"
                },
                JinchuMaru = {
                    Epic = "Items.Preset_Katana_Takemura",
                    Legendary = "Items.Preset_Katana_Takemura_Legendary"
                },
                Satori = {
                    Rare = "Items.Preset_Katana_Saburo",
                    Epic = "Items.Preset_Katana_Saburo_Epic",
                    Legendary = "Items.Preset_Katana_Saburo_Legendary"
                },
                Scalpel = {
                    Rare = "Items.Preset_Katana_Surgeon",
                    Epic = "Items.Preset_Katana_Surgeon_Epic",
                    Legendary = "Items.Preset_Katana_Surgeon_Legendary"
                },
                Tsumetogi = {
                    Rare = "Items.Preset_Katana_Hiromi",
                    Epic = "Items.Preset_Katana_Hiromi_Epic",
                    Legendary = "Items.Preset_Katana_Hiromi_Legendary"
                }
            }
        },
        Knife = {
            Default = "Items.Preset_Knife_Default",
            Military = "Items.Preset_Knife_Military",
            Iconic = {
                Stinger = {
                    Rare = "Items.Preset_Knife_Stinger",
                    Epic = "Items.Preset_Knife_Stinger_Epic",
                    Legendary = "Items.Preset_Knife_Stinger_Legendary"
                }
            }
        },
        -- Disabled until (if) it gets implemented?
        -- Knuckles = {
        --     Default = "Items.Preset_Knuckles_Default",
        --     Military = "Items.Preset_Knuckles_Military",
        --     Pimp = "Items.Preset_Knuckles_Pimp",
        --     Iconic = {
        --         Golden = "Items.Preset_Knuckles_Golden"
        --     }
        -- },
        Kukri = {
            Default = "Items.Preset_Kukri_Default",
            Voodoo = "Items.Preset_Kukri_Voodoo"
        },
        Machete = {
            Default = "Items.Preset_Machete_Default",
            Maelstrom = "Items.Preset_Machete_Maelstrom",
            Valentino = "Items.Preset_Machete_Valentinos"
        },
        PipeWrench = {
            Default = "Items.Preset_Pipe_Wrench_Default"
        },
        Shovel = {
            Iconic = {
                Caretaker = {
                    Legendary = "Items.Preset_Shovel_Caretaker"
                }
            }
        },
        Tanto = {
            Default = "Items.Preset_Tanto_Default"
        },
        TireIron = {
            Default = "Items.Preset_Tire_Iron_Default"
        },
        Tomahawk = {
            Default = "Items.Preset_Tomahawk_Default"
        }
    },
    Grenades = {
        Biohazard = {
            Homing = "Items.GrenadeBiohazardHoming",
            Regular = "Items.GrenadeBiohazardRegular"
        },
        EMP = {
            Homing = "Items.GrenadeEMPHoming",
            Regular = "Items.GrenadeEMPRegular",
            Sticky = "Items.GrenadeEMPSticky"
        },
        Flash = {
            Homing = "Items.GrenadeFlashHoming",
            Regular = "Items.GrenadeFlashRegular"
        },
        Frag = {
            Homing = "Items.GrenadeFragHoming",
            Regular = "Items.GrenadeFragRegular",
            Sticky = "Items.GrenadeFragSticky"
        },
        Gash = "Items.GrenadeCuttingRegular",
        Incendiary = {
            Homing = "Items.GrenadeIncendiaryHoming",
            Regular = "Items.GrenadeIncendiaryRegular",
            Sticky = "Items.GrenadeIncendiarySticky"
        },
        Recon = {
            Regular = "Items.GrenadeReconRegular",
            Sticky = "Items.GrenadeReconSticky"
        }
    }
}

return Weapons