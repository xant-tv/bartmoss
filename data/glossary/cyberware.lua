-- Cyberware items glossary.
local Cyberware = {}

-- Variants with +1 and +2 exist but it's easier to only support base quality.
-- This is better to allow for players to upgrade and take advantage of the Engineer perk.
Cyberware = {
    Arms = {
        MantisBlades = {
            Physical = {
                Uncommon = "Items.AdvancedMantisBladesUncommon",
                Rare = "Items.AdvancedMantisBladesRare",
                Epic = "Items.AdvancedMantisBladesEpic",
                Legendary = "Items.AdvancedMantisBladesLegendary"
            },
            Electric = {
                Uncommon = "Items.AdvancedMantisBladesElectricUncommon",
                Rare = "Items.AdvancedMantisBladesElectricRare",
                Epic = "Items.AdvancedMantisBladesElectricEpic",
                Legendary = "Items.AdvancedMantisBladesElectricLegendary"
            },
            Thermal = {
                Uncommon = "Items.AdvancedMantisBladesThermalUncommon",
                Rare = "Items.AdvancedMantisBladesThermalRare",
                Epic = "Items.AdvancedMantisBladesThermalEpic",
                Legendary = "Items.AdvancedMantisBladesThermalLegendary"
            },
            Toxic = {
                Uncommon = "Items.AdvancedMantisBladesChemicalUncommon",
                Rare = "Items.AdvancedMantisBladesChemicalRare",
                Epic = "Items.AdvancedMantisBladesChemicalEpic",
                Legendary = "Items.AdvancedMantisBladesChemicalLegendary"
            },
            MaxTac = {
                Epic = "Items.AdvancedMaxTacMantisBladesEpic",
                Legendary = "Items.AdvancedMaxTacMantisBladesLegendary"
            }
        },
        Monowire = {
            Physical = {
                Uncommon = "Items.AdvancedNanoWiresUncommon",
                Rare = "Items.AdvancedNanoWiresRare",
                Epic = "Items.AdvancedNanoWiresEpic",
                Legendary = "Items.AdvancedNanoWiresLegendary"
            },
            Electric = {
                Uncommon = "Items.AdvancedNanoWiresElectricUncommon",
                Rare = "Items.AdvancedNanoWiresElectricRare",
                Epic = "Items.AdvancedNanoWiresElectricEpic",
                Legendary = "Items.AdvancedNanoWiresElectricLegendary"
            },
            Thermal = {
                Uncommon = "Items.AdvancedNanoWiresThermalUncommon",
                Rare = "Items.AdvancedNanoWiresThermalRare",
                Epic = "Items.AdvancedNanoWiresThermalEpic",
                Legendary = "Items.AdvancedNanoWiresThermalLegendary"
            },
            Toxic = {
                Uncommon = "Items.AdvancedNanoWiresChemicalUncommon",
                Rare = "Items.AdvancedNanoWiresChemicalRare",
                Epic = "Items.AdvancedNanoWiresChemicalEpic",
                Legendary = "Items.AdvancedNanoWiresChemicalLegendary"
            },
        },
        ProjectileLauncher = {
            Physical = {
                Uncommon = "Items.AdvancedProjectileLauncherUncommon",
                Rare = "Items.AdvancedProjectileLauncherRare",
                Epic = "Items.AdvancedProjectileLauncherEpic",
                Legendary = "Items.AdvancedProjectileLauncherLegendary"
            },
            Electric = {
                Uncommon = "Items.AdvancedProjectileLauncherElectricUncommon",
                Rare = "Items.AdvancedProjectileLauncherElectricRare",
                Epic = "Items.AdvancedProjectileLauncherElectricEpic",
                Legendary = "Items.AdvancedProjectileLauncherElectricLegendary"
            },
            Thermal = {
                Uncommon = "Items.AdvancedProjectileLauncherThermalUncommon",
                Rare = "Items.AdvancedProjectileLauncherThermalRare",
                Epic = "Items.AdvancedProjectileLauncherThermalEpic",
                Legendary = "Items.AdvancedProjectileLauncherThermalLegendary"
            },
            Toxic = {
                Uncommon = "Items.AdvancedProjectileLauncherChemicalUncommon",
                Rare = "Items.AdvancedProjectileLauncherChemicalRare",
                Epic = "Items.AdvancedProjectileLauncherChemicalEpic",
                Legendary = "Items.AdvancedProjectileLauncherChemicalLegendary"
            }
        },
        GorillaArms = {
            Physical = {
                Uncommon = "Items.AdvancedStrongArmsUncommon",
                Rare = "Items.AdvancedStrongArmsRare",
                Epic = "Items.AdvancedStrongArmsEpic",
                Legendary = "Items.AdvancedStrongArmsLegendary"
            },
            Electric = {
                Uncommon = "Items.AdvancedStrongArmsElectricUncommon",
                Rare = "Items.AdvancedStrongArmsElectricRare",
                Epic = "Items.AdvancedStrongArmsElectricEpic",
                Legendary = "Items.AdvancedStrongArmsElectricLegendary"
            },
            Thermal = {
                Uncommon = "Items.AdvancedStrongArmsThermalUncommon",
                Rare = "Items.AdvancedStrongArmsThermalRare",
                Epic = "Items.AdvancedStrongArmsThermalEpic",
                Legendary = "Items.AdvancedStrongArmsThermalLegendary"
            },
            Toxic = {
                Uncommon = "Items.AdvancedStrongArmsChemicalUncommon",
                Rare = "Items.AdvancedStrongArmsChemicalRare",
                Epic = "Items.AdvancedStrongArmsChemicalEpic",
                Legendary = "Items.AdvancedStrongArmsChemicalLegendary"
            }
        }
    },
    Circulatory = {
        AdrenalineBooster = {
            Common = "Items.AdvancedStaminaRegenBoosterCommon",
            Uncommon = "Items.AdvancedStaminaRegenBoosterUncommon",
            Rare = "Items.AdvancedStaminaRegenBoosterRare",
            Epic = "Items.AdvancedStaminaRegenBoosterEpic",
            Legendary = "Items.AdvancedStaminaRegenBoosterLegendary"
        },
        Biomonitor = {
            Common = "Items.AdvancedBiomonitorCommon",
            Uncommon = "Items.AdvancedBiomonitorUncommon",
            Rare = "Items.AdvancedBiomonitorRare",
            Epic = "Items.AdvancedBiomonitorEpic",
            Legendary = "Items.AdvancedBiomonitorLegendary"
        },
        BlackMamba = {
            Common = "Items.AdvancedViralVenomCommon",
            Uncommon = "Items.AdvancedViralVenomUncommon",
            Rare = "Items.AdvancedViralVenomRare",
            Epic = "Items.AdvancedViralVenomEpic",
            Legendary = "Items.AdvancedViralVenomLegendary"
        },
        BloodPump = {
            Common = "Items.AdvancedBloodPumpCommon",
            Uncommon = "Items.AdvancedBloodPumpUncommon",
            Rare = "Items.AdvancedBloodPumpRare",
            Epic = "Items.AdvancedBloodPumpEpic",
            Legendary = "Items.AdvancedBloodPumpLegendary"
        },
        ClutchPadding = {
            Common = "Items.AdvancedShockAbsorberCommon",
            Uncommon = "Items.AdvancedShockAbsorberUncommon",
            Rare = "Items.AdvancedShockAbsorberRare",
            Epic = "Items.AdvancedShockAbsorberEpic",
            Legendary = "Items.AdvancedShockAbsorberLegendary"
        },
        ElectromagRecycler = {
            Rare = "Items.IconicDischargeConnectorRare",
            Epic = "Items.IconicDischargeConnectorEpic",
            Legendary = "Items.IconicDischargeConnectorLegendary"
        },
        FeedbackCircuit = {
            Common = "Items.AdvancedDischargeConnectorCommon",
            Uncommon = "Items.AdvancedDischargeConnectorUncommon",
            Rare = "Items.AdvancedDischargeConnectorRare",
            Epic = "Items.AdvancedDischargeConnectorEpic",
            Legendary = "Items.AdvancedDischargeConnectorLegendary"
        },
        HealOnKill = {
            Common = "Items.AdvancedHealOnKillCommon",
            Uncommon = "Items.AdvancedHealOnKillUncommon",
            Rare = "Items.AdvancedHealOnKillRare",
            Epic = "Items.AdvancedHealOnKillEpic",
            Legendary = "Items.AdvancedHealOnKillLegendary"
        },
        IsometricStabilizer = {
            Rare = "Items.IconicShockAbsorberRare",
            Epic = "Items.IconicShockAbsorberEpic",
            Legendary = "Items.IconicShockAbsorberLegendary"
        },
        MicroRotors = {
            Common = "Items.AdvancedCyberRotorsCommon",
            Uncommon = "Items.AdvancedCyberRotorsUncommon",
            Rare = "Items.AdvancedCyberRotorsRare",
            Epic = "Items.AdvancedCyberRotorsEpic",
            Legendary = "Items.AdvancedCyberRotorsLegendary"
        },
        SecondHeart = {
            Epic = "Items.AdvancedSecondHeartEpic",
            Legendary = "Items.AdvancedSecondHeartLegendary"
        },
        ThreatEvac = {
            Common = "Items.AdvancedCatchMeIfYouCanCommon",
            Uncommon = "Items.AdvancedCatchMeIfYouCanUncommon",
            Rare = "Items.AdvancedCatchMeIfYouCanRare",
            Epic = "Items.AdvancedCatchMeIfYouCanEpic",
            Legendary = "Items.AdvancedCatchMeIfYouCanLegendary"
        },
    },
    Deck = {
        Arasaka = {
            Common = "Items.AdvancedArasakaShadowMKICommon",
            Uncommon = "Items.AdvancedArasakaShadowMKIIUncommon",
            Rare = "Items.AdvancedArasakaShadowMKIIIRare",
            Epic = "Items.AdvancedArasakaShadowMKIVEpic",
            Legendary = "Items.AdvancedArasakaShadowMKVLegendary"
        },
        Biodyne = {
            Berserk = {
                Uncommon = "Items.AdvancedBerserkC2MK1",
                Rare = "Items.AdvancedBerserkC2MK2",
                Epic = "Items.AdvancedBerserkC2MK3",
                Legendary = "Items.AdvancedBerserkC2MK4",
            }
        },
        Biotech = {
            Uncommon = "Items.AdvancedBiotechSigmaMKIUncommon",
            Rare = "Items.AdvancedBiotechSigmaMKIIRare",
            Epic = "Items.AdvancedBiotechSigmaMKIIIEpic",
            Legendary = "Items.AdvancedBiotechSigmaMKIVLegendary"
        },
        ChromeCompressor = {
            Uncommon = "Items.CapacityBoosterUncommon",
            Rare = "Items.CapacityBoosterRare",
            Epic = "Items.CapacityBoosterEpic",
            Legendary = "Items.CapacityBoosterLegendary",
        },
        Dynalar = {
            Sandevistan = {
                Uncommon = "Items.AdvancedSandevistanC2MK1",
                Rare = "Items.AdvancedSandevistanC2MK2",
                Epic = "Items.AdvancedSandevistanC2MK3",
                Legendary = "Items.AdvancedSandevistanC2MK4"
            }
        },
        Fuyutsuki = {
            Legendary = "Items.TetratronicLegendaryTest"
        },
        Militech = {
            Sandevistan = {
                Apogee = {
                    Legendary = "Items.AdvancedSandevistanApogee"
                },
                Falcon = {
                    Epic = "Items.AdvancedSandevistanC4MK4",
                    Legendary = "Items.AdvancedSandevistanC4MK5"
                }
            },
            Berserk = {
                Epic = "Items.AdvancedBerserkC4MK4",
                Legendary = "Items.AdvancedBerserkC4MK5"
            },
            Canto = {
                Rare = "Items.HauntedCyberdeck_Rare",
                Epic = "Items.HauntedCyberdeck_Epic",
                Legendary = "Items.HauntedCyberdeck_Legendary"
            },
            Paraline = {
                Uncommon = "Items.AdvancedMilitechParalineMKIIUncommon",
                Rare = "Items.AdvancedMilitechParalineMKIIIRare",
                Epic = "Items.AdvancedMilitechParalineMKIVEpic",
                Legendary = "Items.AdvancedMilitechParalineMKVLegendary"
            }
        },
        MooreTech = {
            Berserk = {
                Uncommon = "Items.AdvancedBerserkC1MK1",
                Rare = "Items.AdvancedBerserkC1MK2",
                Epic = "Items.AdvancedBerserkC1MK3",
                Legendary = "Items.AdvancedBerserkC1MK4"
            }
        },
        Netwatch = {
            Legendary = "Items.AdvancedNetwatchNetdriverMKLegendary"
        },
        Qiant = {
            Sandevistan = {
                Rare = "Items.AdvancedSandevistanC3MK3",
                Epic = "Items.AdvancedSandevistanC3MK4",
                Legendary = "Items.AdvancedSandevistanC3MK5"
            }
        },
        Raven = {
            Rare = "Items.AdvancedRavenMicrocyberMKIRare",
            Epic = "Items.AdvancedRavenMicrocyberMKIIEpic",
            Legendary = "Items.AdvancedRavenMicrocyberMKIIILegendary"
        },
        Tetratronic = {
            Common = "Items.AdvancedTetratronicRipplerMKICommon",
            Uncommon = "Items.AdvancedTetratronicRipplerMKIIUncommon",
            Rare = "Items.AdvancedTetratronicRipplerMKIIIRare",
            Epic = "Items.AdvancedTetratronicRipplerMKIVEpic",
            Legendary = "Items.AdvancedTetratronicRipplerMKVLegendary"
        },
        Zetatech = {
            Berserk = {
                Rare = "Items.AdvancedBerserkC3MK3",
                Epic = "Items.AdvancedBerserkC3MK4",
                Legendary = "Items.AdvancedBerserkC3MK5"
            },
            Sandevistan = {
                Uncommon = "Items.AdvancedSandevistanC1MK1",
                Rare = "Items.AdvancedSandevistanC1MK2",
                Epic = "Items.AdvancedSandevistanC1MK3",
                Legendary = "Items.AdvancedSandevistanC1MK4"
            }
        }
    },
    FrontalCortex = {
        Axolotl = {
            Epic = "Items.IconicAdvancedSubdermalCoProcessorEpic",
            Legendary = "Items.IconicAdvancedSubdermalCoProcessorLegendary"
        },
        Bioconductor = {
            Common = "Items.AdvancedBioConductorsCommon",
            Uncommon = "Items.AdvancedBioConductorsUncommon",
            Rare = "Items.AdvancedBioConductorsRare",
            Epic = "Items.AdvancedBioConductorsEpic",
            Legendary = "Items.AdvancedBioConductorsLegendary",
        },
        BurnoutBuffer = {
            Common = "Items.AdvancedSmartStorageCommon",
            Uncommon = "Items.AdvancedSmartStorageUncommon",
            Rare = "Items.AdvancedSmartStorageRare",
            Epic = "Items.AdvancedSmartStorageEpic",
            Legendary = "Items.AdvancedSmartStorageLegendary"
        },
        CamilloRamManager = {
            Epic = "Items.AdvancedCamilloRamManagerEpic",
            Legendary = "Items.AdvancedCamilloRamManagerLegendary"
        },
        CybersomaticOptimizer = {
            Rare = "Items.IconicBioConductorsRare",
            Epic = "Items.IconicBioConductorsEpic",
            Legendary = "Items.IconicBioConductorsLegendary"
        },
        ExDisk = {
            Rare = "Items.AdvancedExDiskRare",
            Epic = "Items.AdvancedExDiskEpic",
            Legendary = "Items.AdvancedExDiskLegendary"
        },
        KerenzikovBoostSystem = {
            Common = "Items.AdvancedKerenziovBoostSystemCommon",
            Uncommon = "Items.AdvancedKerenziovBoostSystemUncommon",
            Rare = "Items.AdvancedKerenziovBoostSystemRare",
            Epic = "Items.AdvancedKerenziovBoostSystemEpic",
            Legendary = "Items.AdvancedKerenziovBoostSystemLegendary"
        },
        MechatronicCore = {
            Common = "Items.AdvancedMechatronicCoreCommon",
            Uncommon = "Items.AdvancedMechatronicCoreUncommon",
            Rare = "Items.AdvancedMechatronicCoreRare",
            Epic = "Items.AdvancedMechatronicCoreEpic",
            Legendary = "Items.AdvancedMechatronicCoreLegendary"
        },
        MemoryBoost = {
            Uncommon = "Items.AdvancedMemoryBoostUncommon",
            Rare = "Items.AdvancedMemoryBoostRare",
            Epic = "Items.AdvancedMemoryBoostEpic",
            Legendary = "Items.AdvancedMemoryBoostLegendary"
        },
        NewtonModule = {
            Common = "Items.AdvancedSubdermalCoProcessorCommon",
            Uncommon = "Items.AdvancedSubdermalCoProcessorUncommon",
            Rare = "Items.AdvancedSubdermalCoProcessorRare",
            Epic = "Items.AdvancedSubdermalCoProcessorEpic",
            Legendary = "Items.AdvancedSubdermalCoProcessorLegendary"
        },
        QuantumTuner = {
            Legendary = "Items.AdvancedTimeBankLegendary",
        },
        RamReallocator = {
            Epic = "Items.IconicCamilloRamManagerEpic",
            Legendary = "Items.IconicCamilloRamManagerLegendary"
        },
        RamUpgrade = {
            Common = "Items.AdvancedRamUpgradeCommon",
            Uncommon = "Items.AdvancedRamUpgradeUncommon",
            Rare = "Items.AdvancedRamUpgradeRare",
            Epic = "Items.AdvancedRamUpgradeEpic",
            Legendary = "Items.AdvancedRamUpgradeLegendary"
        },
        SelfIce = {
            Rare = "Items.AdvancedSelfIceRare",
            Epic = "Items.AdvancedSelfIceEpic",
            Legendary = "Items.AdvancedSelfIceLegendary"
        }
    },
    Hands = {
        BallisticCoprocessor = {
            Common = "Items.AdvancedPowerGripCommon",
            Uncommon = "Items.AdvancedPowerGripUncommon",
            Rare = "Items.AdvancedPowerGripRare",
            Epic = "Items.AdvancedPowerGripEpic",
            Legendary = "Items.AdvancedPowerGripLegendary"
        },
        HandleWrap = {
            Common = "Items.AdvancedKnifeSharpenerCommon",
            Uncommon = "Items.AdvancedKnifeSharpenerUncommon",
            Rare = "Items.AdvancedKnifeSharpenerRare",
            Epic = "Items.AdvancedKnifeSharpenerEpic",
            Legendary = "Items.AdvancedKnifeSharpenerLegendary"
        },
        ImmovableForce = {
            Common = "Items.IconicGunStabilizerCommon",
            Uncommon = "Items.IconicGunStabilizerUncommon",
            Rare = "Items.IconicGunStabilizerRare",
            Epic = "Items.IconicGunStabilizerEpic",
            Legendary = "Items.IconicGunStabilizerLegendary"
        },
        Microgenerator = {
            Common = "Items.AdvancedMicroGeneratorCommon",
            Uncommon = "Items.AdvancedMicroGeneratorUncommon",
            Rare = "Items.AdvancedMicroGeneratorRare",
            Epic = "Items.AdvancedMicroGeneratorEpic",
            Legendary = "Items.AdvancedMicroGeneratorLegendary"
        },
        ShockAbsorber = {
            Common = "Items.AdvancedJointLockCommon",
            Uncommon = "Items.AdvancedJointLockUncommon",
            Rare = "Items.AdvancedJointLockRare",
            Epic = "Items.AdvancedJointLockEpic",
            Legendary = "Items.AdvancedJointLockLegendary"
        },
        SmartLink = {
            Common = "Items.AdvancedSmartLinkCommon",
            Uncommon = "Items.AdvancedSmartLinkUncommon",
            Rare = "Items.AdvancedSmartLinkRare",
            Epic = "Items.AdvancedSmartLinkEpic",
            Legendary = "Items.AdvancedSmartLinkLegendary"
        },
        TattooJohnny = {
            Rare = "Items.AdvancedCasiusTattooRare",
            Epic = "Items.AdvancedCasiusTattooEpic",
            Legendary = "Items.AdvancedCasiusTattooLegendary"
        },
        TattooTogetherForever = {
            Rare = "Items.AdvancedSilverhandTattooRare",
            Epic = "Items.AdvancedSilverhandTattooEpic",
            Legendary = "Items.AdvancedSilverhandTattooLegendary"
        },
        TattooTygerClaws = {
            Rare = "Items.AdvancedYakuzaTattooRare",
            Epic = "Items.AdvancedYakuzaTattooEpic",
            Legendary = "Items.AdvancedYakuzaTattooLegendary"
        }
    },
    Integumentary = {
        Carapace = {
            Common = "Items.AdvancedWeirdTankyPlatingCommon",
            Uncommon = "Items.AdvancedWeirdTankyPlatingUncommon",
            Rare = "Items.AdvancedWeirdTankyPlatingRare",
            Epic = "Items.AdvancedWeirdTankyPlatingEpic",
            Legendary = "Items.AdvancedWeirdTankyPlatingLegendary"
        },
        CellularAdapter = {
            Common = "Items.AdvancedAdaptiveStemCellsCommon",
            Uncommon = "Items.AdvancedAdaptiveStemCellsUncommon",
            Rare = "Items.AdvancedAdaptiveStemCellsRare",
            Epic = "Items.AdvancedAdaptiveStemCellsEpic",
            Legendary = "Items.AdvancedAdaptiveStemCellsLegendary"
        },
        Chitin = {
            Common = "Items.IconicAdvancedChitonCommon",
            Uncommon = "Items.IconicAdvancedChitonUncommon",
            Rare = "Items.IconicAdvancedChitonRare",
            Epic = "Items.IconicAdvancedChitonEpic",
            Legendary = "Items.IconicAdvancedChitonLegendary"
        },
        Countershell = {
            Common = "Items.AdvancedSuddenAidCommon",
            Uncommon = "Items.AdvancedSuddenAidUncommon",
            Rare = "Items.AdvancedSuddenAidRare",
            Epic = "Items.AdvancedSuddenAidEpic",
            Legendary = "Items.AdvancedSuddenAidLegendary"
        },
        Defenzikov = {
            Common = "Items.AdvancedPlatingGlitchCommon",
            Uncommon = "Items.AdvancedPlatingGlitchUncommon",
            Rare = "Items.AdvancedPlatingGlitchRare",
            Epic = "Items.AdvancedPlatingGlitchEpic",
            Legendary = "Items.AdvancedPlatingGlitchLegendary"
        },
        NanoPlating = {
            Common = "Items.AdvancedNanoTechPlatesCommon",
            Uncommon = "Items.AdvancedNanoTechPlatesUncommon",
            Rare = "Items.AdvancedNanoTechPlatesRare",
            Epic = "Items.AdvancedNanoTechPlatesEpic",
            Legendary = "Items.AdvancedNanoTechPlatesLegendary"
        },
        OpticalCamo = {
            Common = "Items.AdvancedOpticalCamoCommon",
            Uncommon = "Items.AdvancedOpticalCamoUncommon",
            Rare = "Items.AdvancedOpticalCamoRare",
            Epic = "Items.AdvancedOpticalCamoEpic",
            Legendary = "Items.AdvancedOpticalCamoLegendary"
        },
        PainEditor = {
            Epic = "Items.AdvancedPainReductorEpic",
            Legendary = "Items.AdvancedPainReductorLegendary"
        },
        Painducer = {
            Common = "Items.AdvancedBloodDepleterCommon",
            Uncommon = "Items.AdvancedBloodDepleterUncommon",
            Rare = "Items.AdvancedBloodDepleterRare",
            Epic = "Items.AdvancedBloodDepleterEpic",
            Legendary = "Items.AdvancedBloodDepleterLegendary",
        },
        PeripheralInverse = {
            Epic = "Items.IconicAdvancedProximityReducerEpic",
            Legendary = "Items.IconicAdvancedProximityReducerLegendary"
        },
        Proxishield = {
            Common = "Items.AdvancedProximityReducerCommon",
            Uncommon = "Items.AdvancedProximityReducerUncommon",
            Rare = "Items.AdvancedProximityReducerRare",
            Epic = "Items.AdvancedProximityReducerEpic",
            Legendary = "Items.AdvancedProximityReducerLegendary"
        },
        Rangeguard = {
            Common = "Items.AdvancedChargeSystemCommon",
            Uncommon = "Items.AdvancedChargeSystemUncommon",
            Rare = "Items.AdvancedChargeSystemRare",
            Epic = "Items.AdvancedChargeSystemEpic",
            Legendary = "Items.AdvancedChargeSystemLegendary",
        },
        ShockNAwe = {
            Common = "Items.AdvancedElectroshockMechanismCommon",
            Uncommon = "Items.AdvancedElectroshockMechanismUncommon",
            Rare = "Items.AdvancedElectroshockMechanismRare",
            Epic = "Items.AdvancedElectroshockMechanismEpic",
            Legendary = "Items.AdvancedElectroshockMechanismLegendary",
        },
        SubdermalArmor = {
            Common = "Items.AdvancedBoringPlatingCommon",
            Uncommon = "Items.AdvancedBoringPlatingUncommon",
            Rare = "Items.AdvancedBoringPlatingRare",
            Epic = "Items.AdvancedBoringPlatingEpic",
            Legendary = "Items.AdvancedBoringPlatingLegendary"
        }
    },
    Legs = {
        FortifiedAnkles = {
            Uncommon = "Items.AdvancedReinforcedMusclesUncommon",
            Rare = "Items.AdvancedReinforcedMusclesRare",
            Epic = "Items.AdvancedReinforcedMusclesEpic",
            Legendary = "Items.AdvancedReinforcedMusclesLegendary",
        },
        JenkinsTendons = {
            Common = "Items.AdvancedJenkinsTendonsCommon",
            Uncommon = "Items.AdvancedJenkinsTendonsUncommon",
            Rare = "Items.AdvancedJenkinsTendonsRare",
            Epic = "Items.AdvancedJenkinsTendonsEpic",
            Legendary = "Items.AdvancedJenkinsTendonsLegendary",
        },
        LeeroyLigamentSystem = {
            Uncommon = "Items.IconicJenkinsTendonsUncommon",
            Rare = "Items.IconicJenkinsTendonsRare",
            Epic = "Items.IconicJenkinsTendonsEpic",
            Legendary = "Items.IconicJenkinsTendonsLegendary",
        },
        LynxPaws = {
            Uncommon = "Items.AdvancedCatPawsUncommon",
            Rare = "Items.AdvancedCatPawsRare",
            Epic = "Items.AdvancedCatPawsEpic",
            Legendary = "Items.AdvancedCatPawsLegendary",
        },
        ReinforcedTendons = {
            Uncommon = "Items.AdvancedBoostedTendonsUncommon",
            Rare = "Items.AdvancedBoostedTendonsRare",
            Epic = "Items.AdvancedBoostedTendonsEpic",
            Legendary = "Items.AdvancedBoostedTendonsLegendary",
        }
    },
    Nervous = {
        AdrenalineConverter = {
            Common = "Items.AdvancedDetectorRushCommon",
            Uncommon = "Items.AdvancedDetectorRushUncommon",
            Rare = "Items.AdvancedDetectorRushRare",
            Epic = "Items.AdvancedDetectorRushEpic",
            Legendary = "Items.AdvancedDetectorRushLegendary"
        },
        AdrenoTrigger = {
            Rare = "Items.IconicAdvancedDetectorRushRare",
            Epic = "Items.IconicAdvancedDetectorRushEpic",
            Legendary = "Items.IconicAdvancedDetectorRushLegendary"
        },
        AtomicSensors = {
            Common = "Items.AdvancedTroubleFinderCommon",
            Uncommon = "Items.AdvancedTroubleFinderUncommon",
            Rare = "Items.AdvancedTroubleFinderRare",
            Epic = "Items.AdvancedTroubleFinderEpic",
            Legendary = "Items.AdvancedTroubleFinderLegendary"
        },
        DeepFieldVisualInterface = {
            Common = "Items.IconicAdvancedVisualCortexSupportCommon",
            Uncommon = "Items.IconicAdvancedVisualCortexSupportUncommon",
            Rare = "Items.IconicAdvancedVisualCortexSupportRare",
            Epic = "Items.IconicAdvancedVisualCortexSupportEpic",
            Legendary = "Items.IconicAdvancedVisualCortexSupportLegendary"
        },
        Kerenzikov = {
            Common = "Items.AdvancedKerenzikovCommon",
            Uncommon = "Items.AdvancedKerenzikovUncommon",
            Rare = "Items.AdvancedKerenzikovRare",
            Epic = "Items.AdvancedKerenzikovEpic",
            Legendary = "Items.AdvancedKerenzikovLegendary",
        },
        Neofiber = {
            Common = "Items.AdvancedNeoFiberCommon",
            Uncommon = "Items.AdvancedNeoFiberUncommon",
            Rare = "Items.AdvancedNeoFiberRare",
            Epic = "Items.AdvancedNeoFiberEpic",
            Legendary = "Items.AdvancedNeoFiberLegendary",
        },
        ReflexTuner = {
            Common = "Items.AdvancedReflexRecorderCommon",
            Uncommon = "Items.AdvancedReflexRecorderUncommon",
            Rare = "Items.AdvancedReflexRecorderRare",
            Epic = "Items.AdvancedReflexRecorderEpic",
            Legendary = "Items.AdvancedReflexRecorderLegendary"
        },
        Revulsor = {
            Rare = "Items.IconicAdvancedReflexRecorderRare",
            Epic = "Items.IconicAdvancedReflexRecorderEpic",
            Legendary = "Items.IconicAdvancedReflexRecorderLegendary"
        },
        Stabber = {
            Common = "Items.AdvancedOilDispenserCommon",
            Uncommon = "Items.AdvancedOilDispenserUncommon",
            Rare = "Items.AdvancedOilDispenserRare",
            Epic = "Items.AdvancedOilDispenserEpic",
            Legendary = "Items.AdvancedOilDispenserLegendary",
        },
        SynapticAccelerator = {
            Common = "Items.AdvancedSynapticAcceleratorCommon",
            Uncommon = "Items.AdvancedSynapticAcceleratorUncommon",
            Rare = "Items.AdvancedSynapticAcceleratorRare",
            Epic = "Items.AdvancedSynapticAcceleratorEpic",
            Legendary = "Items.AdvancedSynapticAcceleratorLegendary",
        },
        TyrosineInjector = {
            Common = "Items.AdvancedTyrosineInjectorCommon",
            Uncommon = "Items.AdvancedTyrosineInjectorUncommon",
            Rare = "Items.AdvancedTyrosineInjectorRare",
            Epic = "Items.AdvancedTyrosineInjectorEpic",
            Legendary = "Items.AdvancedTyrosineInjectorLegendary",
        },
        VisualCortexSupport = {
            Common = "Items.AdvancedVisualCortexSupportCommon",
            Uncommon = "Items.AdvancedVisualCortexSupportUncommon",
            Rare = "Items.AdvancedVisualCortexSupportRare",
            Epic = "Items.AdvancedVisualCortexSupportEpic",
            Legendary = "Items.AdvancedVisualCortexSupportLegendary",
        }
    },
    Ocular = {
        Kiroshi = {
            Basic = {
                Common = "Items.AdvancedKiroshiOpticsBareCommon",
                Uncommon = "Items.AdvancedKiroshiOpticsBareUncommon",
                Rare = "Items.AdvancedKiroshiOpticsBareRare",
                Epic = "Items.AdvancedKiroshiOpticsBareEpic",
                Legendary = "Items.AdvancedKiroshiOpticsBareLegendary"
            },
            Clairvoyant = {
                Common = "Items.AdvancedKiroshiOpticsWallhackCommon",
                Uncommon = "Items.AdvancedKiroshiOpticsWallhackUncommon",
                Rare = "Items.AdvancedKiroshiOpticsWallhackRare",
                Epic = "Items.AdvancedKiroshiOpticsWallhackEpic",
                Legendary = "Items.AdvancedKiroshiOpticsWallhackLegendary"
            },
            Cockatrice = {
                Epic = "Items.Iconic_AdvancedKiroshiOpticsBareEpic",
                Legendary = "Items.Iconic_AdvancedKiroshiOpticsBareLegendary"
            },
            Doomsayer = {
                Common = "Items.AdvancedKiroshiOpticsHunterCommon",
                Uncommon = "Items.AdvancedKiroshiOpticsHunterUncommon",
                Rare = "Items.AdvancedKiroshiOpticsHunterRare",
                Epic = "Items.AdvancedKiroshiOpticsHunterEpic",
                Legendary = "Items.AdvancedKiroshiOpticsHunterLegendary"
            },
            Oracle = {
                Common = "Items.AdvancedKiroshiOpticsCombinedCommon",
                Uncommon = "Items.AdvancedKiroshiOpticsCombinedUncommon",
                Rare = "Items.AdvancedKiroshiOpticsCombinedRare",
                Epic = "Items.AdvancedKiroshiOpticsCombinedEpic",
                Legendary = "Items.AdvancedKiroshiOpticsCombinedLegendary"
            },
            Sentry = {
                Common = "Items.AdvancedKiroshiOpticsSensorCommon",
                Uncommon = "Items.AdvancedKiroshiOpticsSensorUncommon",
                Rare = "Items.AdvancedKiroshiOpticsSensorRare",
                Epic = "Items.AdvancedKiroshiOpticsSensorEpic",
                Legendary = "Items.AdvancedKiroshiOpticsSensorLegendary"
            },
            Stalker = {
                Common = "Items.AdvancedKiroshiOpticsPiercingCommon",
                Uncommon = "Items.AdvancedKiroshiOpticsPiercingUncommon",
                Rare = "Items.AdvancedKiroshiOpticsPiercingRare",
                Epic = "Items.AdvancedKiroshiOpticsPiercingEpic",
                Legendary = "Items.AdvancedKiroshiOpticsPiercingLegendary"
            }
        }
    },
    Skeleton = {
        -- This cyberware has two variants.
        -- There are minor differences between the two - sometimes armour, sometimes effects.
        -- Not sure what or why, yet.
        BionicJoints = {
            VariantA = {
                Common = "Items.AdvancedBionicJointsCommon",
                Uncommon = "Items.AdvancedBionicJointsUncommon",
                Rare = "Items.AdvancedBionicJointsRare",
                Epic = "Items.AdvancedBionicJointsEpic",
                Legendary = "Items.AdvancedBionicJointsLegendary"
            },
            VariantB = {
                Common = "Items.AdvancedBionicJointsCommon2",
                Uncommon = "Items.AdvancedBionicJointsUncommon2",
                Rare = "Items.AdvancedBionicJointsRare2",
                Epic = "Items.AdvancedBionicJointsEpic2",
                Legendary = "Items.AdvancedBionicJointsLegendary2"
            }
        },
        DenseMarrow = {
            VariantA = {
                Common = "Items.AdvancedDenseMarrowCommon",
                Uncommon = "Items.AdvancedDenseMarrowUncommon",
                Rare = "Items.AdvancedDenseMarrowRare",
                Epic = "Items.AdvancedDenseMarrowEpic",
                Legendary = "Items.AdvancedDenseMarrowLegendary"
            },
            VariantB = {
                Common = "Items.AdvancedDenseMarrowCommon2",
                Uncommon = "Items.AdvancedDenseMarrowUncommon2",
                Rare = "Items.AdvancedDenseMarrowRare2",
                Epic = "Items.AdvancedDenseMarrowEpic2",
                Legendary = "Items.AdvancedDenseMarrowLegendary2"
            }
        },
        EpimorphicSkeleton = {
            VariantA = {
                -- These don't show up in your inventory.
                Epic = "Items.AdvancedEndoskeletonEpic",
                Legendary = "Items.AdvancedEndoskeletonLegendary"
            },
            VariantB = {
                Epic = "Items.AdvancedEndoskeletonEpic2",
                Legendary = "Items.AdvancedEndoSkeletonLegendary2" -- Note the capitalisation!
            }
        },
        KineticFrame = {
            VariantA = {
                Common = "Items.AdvancedBoneMarrowCellsCommon",
                Uncommon = "Items.AdvancedBoneMarrowCellsUncommon",
                Rare = "Items.AdvancedBoneMarrowCellsRare",
                Epic = "Items.AdvancedBoneMarrowCellsEpic",
                Legendary = "Items.AdvancedBoneMarrowCellsLegendary"
            },
            VariantB = {
                Common = "Items.AdvancedBoneMarrowCellsCommon2",
                Uncommon = "Items.AdvancedBoneMarrowCellsUncommon2",
                Rare = "Items.AdvancedBoneMarrowCellsRare2",
                Epic = "Items.AdvancedBoneMarrowCellsEpic2",
                Legendary = "Items.AdvancedBoneMarrowCellsLegendary2"
            }
        },
        ParaBellum = {
            VariantA = {
                Common = "Items.AdvancedT1000Common",
                Uncommon = "Items.AdvancedT1000Uncommon",
                Rare = "Items.AdvancedT1000Rare",
                Epic = "Items.AdvancedT1000Epic",
                Legendary = "Items.AdvancedT1000Legendary"
            },
            VariantB = {
                Common = "Items.AdvancedT1000Common2",
                Uncommon = "Items.AdvancedT1000Uncommon2",
                Rare = "Items.AdvancedT1000Rare2",
                Epic = "Items.AdvancedT1000Epic2",
                Legendary = "Items.AdvancedT1000Legendary2"
            }
        },
        RamRecoup = {
            VariantA = {
                Common = "Items.AdvancedCompilingSkeletonCommon",
                Uncommon = "Items.AdvancedCompilingSkeletonUncommon",
                Rare = "Items.AdvancedCompilingSkeletonRare",
                Epic = "Items.AdvancedCompilingSkeletonEpic",
                Legendary = "Items.AdvancedCompilingSkeletonLegendary"
            },
            VariantB = {
                Common = "Items.AdvancedCompilingSkeletonCommon2",
                Uncommon = "Items.AdvancedCompilingSkeletonUncommon2",
                Rare = "Items.AdvancedCompilingSkeletonRare2",
                Epic = "Items.AdvancedCompilingSkeletonEpic2",
                Legendary = "Items.AdvancedCompilingSkeletonLegendary2"
            }
        },
        RaraAvis = {
            VariantA = {
                Common = "Items.IconicAdvancedT1000Common",
                Uncommon = "Items.IconicAdvancedT1000Uncommon",
                Rare = "Items.IconicAdvancedT1000Rare",
                Epic = "Items.IconicAdvancedT1000Epic",
                Legendary = "Items.IconicAdvancedT1000Legendary"
            },
            VariantB = {
                Common = "Items.IconicAdvancedT1000Common2",
                Uncommon = "Items.IconicAdvancedT1000Uncommon2",
                Rare = "Items.IconicAdvancedT1000Rare2",
                Epic = "Items.IconicAdvancedT1000Epic2",
                Legendary = "Items.IconicAdvancedT1000Legendary2"
            }
        },
        Scarab = {
            VariantA = {
                Common = "Items.AdvancedRapidMuscleNurishCommon",
                Uncommon = "Items.AdvancedRapidMuscleNurishUncommon",
                Rare = "Items.AdvancedRapidMuscleNurishRare",
                Epic = "Items.AdvancedRapidMuscleNurishEpic",
                Legendary = "Items.AdvancedRapidMuscleNurishLegendary"
            },
            VariantB = {
                Common = "Items.AdvancedRapidMuscleNurishCommon2",
                Uncommon = "Items.AdvancedRapidMuscleNurishUncommon2",
                Rare = "Items.AdvancedRapidMuscleNurishRare2",
                Epic = "Items.AdvancedRapidMuscleNurishEpic2",
                Legendary = "Items.AdvancedRapidMuscleNurishLegendary2"
            }
        },
        ScarCoalescer = {
            VariantA = {
                Common = "Items.AdvancedNoPainNoGainCommon",
                Uncommon = "Items.AdvancedNoPainNoGainUncommon",
                Rare = "Items.AdvancedNoPainNoGainRare",
                Epic = "Items.AdvancedNoPainNoGainEpic",
                Legendary = "Items.AdvancedNoPainNoGainLegendary"
            },
            VariantB = {
                Common = "Items.AdvancedNoPainNoGainCommon2",
                Uncommon = "Items.AdvancedNoPainNoGainUncommon2",
                Rare = "Items.AdvancedNoPainNoGainRare2",
                Epic = "Items.AdvancedNoPainNoGainEpic2",
                Legendary = "Items.AdvancedNoPainNoGainLegendary2"
            }
        },
        SpringJoints = {
            VariantA = {
                Common = "Items.AdvancedAgileJointsCommon",
                Uncommon = "Items.AdvancedAgileJointsUncommon",
                Rare = "Items.AdvancedAgileJointsRare",
                Epic = "Items.AdvancedAgileJointsEpic",
                Legendary = "Items.AdvancedAgileJointsLegendary"
            },
            VariantB = {
                Common = "Items.AdvancedAgileJointsCommon2",
                Uncommon = "Items.AdvancedAgileJointsUncommon2",
                Rare = "Items.AdvancedAgileJointsRare2",
                Epic = "Items.AdvancedAgileJointsEpic2",
                Legendary = "Items.AdvancedAgileJointsLegendary2"
            }
        },
        TitaniumBones = {
            VariantA = {
                Common = "Items.AdvancedTitaniumInfusedBonesCommon",
                Uncommon = "Items.AdvancedTitaniumInfusedBonesUncommon",
                Rare = "Items.AdvancedTitaniumInfusedBonesRare",
                Epic = "Items.AdvancedTitaniumInfusedBonesEpic",
                Legendary = "Items.AdvancedTitaniumInfusedBonesLegendary"
            },
            VariantB = {
                Common = "Items.AdvancedTitaniumInfusedBonesCommon2",
                Uncommon = "Items.AdvancedTitaniumInfusedBonesUncommon2",
                Rare = "Items.AdvancedTitaniumInfusedBonesRare2",
                Epic = "Items.AdvancedTitaniumInfusedBonesEpic2",
                Legendary = "Items.AdvancedTitaniumInfusedBonesLegendary2"
            }
        },
        UniversalBooster = {
            VariantA = {
                Common = "Items.AdvancedPainDistributorCommon",
                Uncommon = "Items.AdvancedPainDistributorUncommon",
                Rare = "Items.AdvancedPainDistributorRare",
                Epic = "Items.AdvancedPainDistributorEpic",
                Legendary = "Items.AdvancedPainDistributorLegendary"
            },
            VariantB = {
                Common = "Items.AdvancedPainDistributorCommon2",
                Uncommon = "Items.AdvancedPainDistributorUncommon2",
                Rare = "Items.AdvancedPainDistributorRare2",
                Epic = "Items.AdvancedPainDistributorEpic2",
                Legendary = "Items.AdvancedPainDistributorLegendary2"
            }
        }
    }
}

return Cyberware