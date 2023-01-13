-- Cyberware items glossary. Cybermods are in the mods glossary.
local Cyberware = {}

Cyberware = {
    Arms = {
        MantisBlades = {
            Rare = "Items.MantisBlades",
            Epic = "Items.MantisBladesEpic",
            Legendary = "Items.MantisBladesLegendary"
        },
        Monowire = {
            Rare = "Items.NanoWires",
            Epic = "Items.NanoWiresEpic",
            Legendary = "Items.NanoWiresLegendary"
        },
        ProjectileLauncher = {
            Rare = "Items.ProjectileLauncher",
            Epic = "Items.ProjectileLauncherEpic",
            Legendary = "Items.ProjectileLauncherLegendary"
        },
        GorillaArms = {
            Rare = "Items.StrongArms",
            Epic = "Items.StrongArmsEpic",
            Legendary = "Items.StrongArmsLegendary"
        }
    },
    Circulatory = {
        AdrenalineBooster = {
            Common = "Items.StaminaRegenBoosterCommon",
            Uncommon = "Items.StaminaRegenBoosterUncommon",
            Rare = "Items.StaminaRegenBoosterRare",
            Epic = "Items.StaminaRegenBoosterEpic",
            Legendary = "Items.StaminaRegenBoosterLegendary"
        },
        Bioconductor = {
            Rare = "Items.BioConductorsRare",
            Epic = "Items.BioConductorsEpic",
            Legendary = "Items.BioConductorsLegendary"
        },
        Biomonitor = {
            Common = "Items.HealthMonitorCommon",
            Uncommon = "Items.HealthMonitorUncommon",
            Rare = "Items.HealthMonitorRare",
            Epic = "Items.HealthMonitorEpic",
            Legendary = "Items.HealthMonitorLegendary"
        },
        BloodPump = {
            Common = "Items.BloodPumpCommon",
            Uncommon = "Items.BloodPumpUncommon",
            Rare = "Items.BloodPumpRare",
            Epic = "Items.BloodPumpEpic",
            Legendary = "Items.BloodPumpLegendary"
        },
        BloodVessels = {
            Common = "Items.EnhancedBloodVesselsCommon",
            Uncommon = "Items.EnhancedBloodVesselsUncommon",
            Rare = "Items.EnhancedBloodVesselsRare",
            Epic = "Items.EnhancedBloodVesselsEpic",
            Legendary = "Items.EnhancedBloodVesselsLegendary"
        },
        FeedbackCircuit = {
            Rare = "Items.DischargeConnectorRare",
            Epic = "Items.DischargeConnectorEpic",
            Legendary = "Items.DischargeConnectorLegendary"
        },
        MicroGenerator = {
            Common = "Items.MicroGeneratorCommon",
            Uncommon = "Items.MicroGeneratorUncommon",
            Rare = "Items.MicroGeneratorRare",
            Epic = "Items.MicroGeneratorEpic",
            Legendary = "Items.MicroGeneratorLegendary"
        },
        SecondHeart = {
            Legendary = "Items.SecondHeart"
        },
        SynLungs = {
            Common = "Items.IronLungsCommon",
            Uncommon = "Items.IronLungsUncommon",
            Rare = "Items.IronLungsRare",
            Epic = "Items.IronLungsEpic",
            Legendary = "Items.IronLungsLegendary"
        },
        TyrosineInjector = {
            Uncommon = "Items.TyrosineInjector"
        }
    },
    Deck = {
        Arasaka = {
            Epic = "Items.ArasakaEpicMKIII",
            Legendary = "Items.ArasakaLegendaryMKIV"
        },
        Biodyne = {
            Uncommon = "Items.BioDyneUncommonMKI",
            Rare = "Items.BioDyneRareMKII",
            Berserk = {
                Uncommon = "Items.BerserkC2MK1",
                Rare = "Items.BerserkC2MK2",
                Epic = "Items.BerserkC2MK3",
                Legendary = "Items.BerserkC2MK4"
            }
        },
        Biotech = {
            Uncommon = "Items.BiotechUncommonMKI",
            Rare = "Items.BiotechRareMKII",
            Epic = "Items.BiotechEpicMKIII"
        },
        Dynalay = {
            Uncommon = "Items.SandevistanC2MK1",
            Rare = "Items.SandevistanC2MK2",
            Epic = "Items.SandevistanC2MK3",
            Legendary = "Items.SandevistanC2MK4"
        },
        Fuyutsui = {
            Common = "Items.FuyutsuiCommonMKI",
            Iconic = "Items.FuyutsuiTinkererLegendaryMKIII"
        },
        Militech = {
            Common = "Items.MilitechParaline",
            Berserk = {
                Iconic = "Items.BerserkC4MK5"
            },
            Sandevistan = {
                Iconic = "Items.SandevistanC4MK5"
            },
        },
        MooreTech = {
            Uncommon = "Items.BerserkC1MK1",
            Rare = "Items.BerserkC1MK2",
            Epic = "Items.BerserkC1MK3"
        },
        Netwatch = {
            Iconic = "Items.NetwatchNetdriverLegendaryMKV"
        },
        Qiant = {
            Sandevistan = {
                Legendary = "Items.SandevistanC3MK4",
                Iconic = "Items.SandevistanC3MK5"
            }
        },
        Raven = {
            Epic = "Items.RavenEpicMKIII",
            Legendary = "Items.RavenLegendaryMKIV"
        },
        Seocho = {
            Uncommon = "Items.SeachoUncommonMKI",
            Rare = "Items.SeachoRareMKII"
        },
        Stephenson = {
            Rare = "Items.StephensonRareMKII",
            Epic = "Items.StephensonEpicMKIII",
            Legendary = "Items.StephensonLegendaryMKIV"
        },
        Tetratonic = {
            Uncommon = "Items.TetratronicUncommonMKI",
            Rare = "Items.TetratronicRareMKII",
            Epic = "Items.TetratronicEpicMKIII",
            Legendary = "Items.TetratronicRipplerLegendaryMKIV"
        },
        Zetatech = {
            Berserk = {
                Legendary = "Items.BerserkC3MK4",
                Iconic = "Items.BerserkC3MK5"
            },
            Sandevistan = {
                Uncommon = "Items.SandevistanC1MK1",
                Rare = "Items.SandevistanC1MK2",
                Epic = "Items.SandevistanC1MK3"
            }
        },

    },
    FrontalCortex = {
        Camillo = {
            Epic = "Items.MemoryReplenishmentEpic",
            Legendary = "Items.MemoryReplenishmentLegendary"
        },
        ExDisk = {
            Rare = "Items.BrainCapacityBoosterRare",
            Epic = "Items.BrainCapacityBoosterEpic",
            Legendary = "Items.BrainCapacityBoosterLegendary"
        },
        HealOnKill = {
            Common = "Items.HealOnKillCommon",
            Uncommon = "Items.HealOnKillUncommon",
            Epic = "Items.HealOnKillEpic",
            Legendary = "Items.HealOnKillLegendary"
        },
        Limbic = {
            Common = "Items.LimbicSystemEnhancementCommon",
            Rare = "Items.LimbicSystemEnhancementRare",
            Legendary = "Items.LimbicSystemEnhancementLegendary"
        },
        Mechatronic = {
            Common = "Items.RoboticCoreCommon",
            Uncommon = "Items.RoboticCoreUncommon",
            Rare = "Items.RoboticCoreRare",
            Epic = "Items.RoboticCoreEpic",
            Legendary = "Items.RoboticCoreLegendary"
        },
        MemoryBoost = {
            Common = "Items.MemoryBoostCommon",
            Uncommon = "Items.MemoryBoostUncommon",
            Rare = "Items.MemoryBoostRare",
            Epic = "Items.MemoryBoostEpic"
        },
        RAMUpgrade = {
            Common = "Items.FastAccessMemoryCommon",
            Uncommon = "Items.FastAccessMemoryUncommon",
            Rare = "Items.FastAccessMemoryRare"
        },
        SelfICE = {
            Rare = "Items.AntiVirus"
        },
        VisualCortex = {
            Common = "Items.ImprovedPerceptionCommon",
            Uncommon = "Items.ImprovedPerceptionUncommon",
            Epic = "Items.ImprovedPerceptionEpic",
            Legendary = "Items.ImprovedPerceptionLegendary"
        }
    },
    Hands = {
        Ballistic = {
            Rare = "Items.PowerGripRare",
            Epic = "Items.PowerGripEpic",
            Legendary = "Items.PowerGripLegendary"
        },
        SmartLink = {
            Rare = "Items.SmartLinkRare",
            Epic = "Items.SmartLinkEpic",
            Legendary = "Items.SmartLinkLegendary"
        }
    },
    Immune = {
        Cataresist = {
            Common = "Items.ResistancesBoosterCommon",
            Uncommon = "Items.ResistancesBoosterUncommon",
            Epic = "Items.ResistancesBoosterEpic",
            Legendary = "Items.ResistancesBoosterLegendary"
        },
        Detoxifier = {
            Rare = "Items.ToxinCleanser"
        },
        Inductor = {
            Epic = "Items.ReversePowerInductor"
        },
        Metabolic = {
            Epic = "Items.ReverseMetabolicEnhancer"
        },
        PainEditor = {
            Legendary = "Items.PainReductor"
        },
        ShockAwe = {
            Common = "Items.ElectroshockMechanismCommon",
            Uncommon = "Items.ElectroshockMechanismUncommon",
            Epic = "Items.ElectroshockMechanismEpic",
            Legendary = "Items.ElectroshockMechanismLegendary"
        }
    },
    Integumentary = {
        FireproofCoating = {
            Rare = "Items.FireproofSkin"
        },
        GroundingPlating = {
            Rare = "Items.GroundingPlating"
        },
        HeatConverter = {
            Epic = "Items.HeatUsingBooster"
        },
        -- Might be functional now!
        OpticalCamo = {
            Rare = "Items.OpticalCamoRare",
            Epic = "Items.OpticalCamoEpic",
            Legendary = "Items.OpticalCamoLegendary"
        },
        SubdermalArmor = {
            Common = "Items.SubdermalArmorCommon",
            Uncommon = "Items.SubdermalArmorUncommon",
            Rare = "Items.SubdermalArmorRare",
            Epic = "Items.SubdermalArmorEpic",
            Legendary = "Items.SubdermalArmorLegendary"
        },
        SupraDermalWeave = {
            Rare = "Items.MetalCoveredSkin"
        }
    },
    Legs = {
        BoostedTendons = {
            Rare = "Items.BoostedTendonsRare"
        },
        FortifiedAnkles = {
            Rare = "Items.ReinforcedMusclesRare",
            Epic = "Items.ReinforcedMusclesEpic"
        },
        LynxPaws = {
            Epic = "Items.CatPaws"
        }
    },
    Nervous = {
        Kerenzikov = {
            Common = "Items.KerenzikovCommon",
            Uncommon = "Items.KerenzikovUncommon",
            Rare = "Items.KerenzikovRare",
            Epic = "Items.KerenzikovEpic",
            Legendary = "Items.KerenzikovLegendary"
        },
        Maneuvering = {
            Rare = "Items.NervousSystemDischarge"
        },
        Nanorelays = {
            Uncommon = "Items.ImprovedReactionUncommon",
            Rare = "Items.ImprovedReactionRare",
            Epic = "Items.ImprovedReactionEpic"
        },
        Neofiber = {
            Common = "Items.NeoFiberCommon",
            Uncommon = "Items.NeoFiberUncommon",
            Rare = "Items.NeoFiberRare",
            Epic = "Items.NeoFiberEpic",
            Legendary = "Items.NeoFiberLegendary"
        },
        ReflexTuner = {
            Common = "Items.ReflexRecorderCommon",
            Uncommon = "Items.ReflexRecorderUncommon",
            Rare = "Items.ReflexRecorderRare",
            Legendary = "Items.ReflexRecorderLegendary"
        },
        SynapticAccel = {
            Common = "Items.SynapticAcceleratorCommon",
            Uncommon = "Items.SynapticAcceleratorUncommon",
            Rare = "Items.SynapticAcceleratorRare",
            Epic = "Items.SynapticAcceleratorEpic",
            Legendary = "Items.SynapticAcceleratorLegendary"
        }
    },
    Ocular = {
        Kiroshi = {
            Common = "Items.KiroshiOptics",
            Rare = "Items.KiroshiOpticsRare",
            Epic = "Items.KiroshiOpticsEpic"
        }
    },
    Skeleton = {
        BionicJoints = {
            Rare = "Items.JointLockRare",
            Epic = "Items.JointLockEpic"
        },
        BionicLungs = {
            Common = "Items.EnhancedTissueCommon",
            Uncommon = "Items.EnhancedTissueUncommon",
            Rare = "Items.EnhancedTissueRare",
            Epic = "Items.EnhancedTissueEpic",
            Legendary = "Items.EnhancedTissueLegendary"
        },
        DenseMarrow = {
            Uncommon = "Items.DenseMarrowUncommon",
            Rare = "Items.DenseMarrowRare",
            Epic = "Items.DenseMarrowEpic"
        },
        Microrotors = {
            Common = "Items.CyberRotorsCommon",
            Uncommon = "Items.CyberRotorsUncommon",
            Rare = "Items.CyberRotorsRare",
            Epic = "Items.CyberRotorsEpic",
            Legendary = "Items.CyberRotorsLegendary"
        },
        MicroVibrationGen = {
            Uncommon = "Items.MicroVibrationsGeneratorUncommon",
            Rare = "Items.MicroVibrationsGeneratorRare",
            Legendary = "Items.MicroVibrationsGeneratorEpic"
        },
        SynapticSignal = {
            Common = "Items.EndoskeletonCommon",
            Uncommon = "Items.EndoskeletonUncommon",
            Rare = "Items.EndoskeletonRare",
            Epic = "Items.EndoskeletonEpic",
            Legendary = "Items.EndoskeletonLegendary"
        },
        TitaniumBones = {
            Common = "Items.TitaniumInfusedBonesCommon",
            Uncommon = "Items.TitaniumInfusedBonesUncommon",
            Rare = "Items.TitaniumInfusedBonesRare"
        }
    },

}

return Cyberware