-- Weapon attachments glossary.
local Attachments = {}

Attachments = {
    Scope = {
        Short = {
            AddVantage = "Items.w_att_scope_short_03",
            GimletEye = "Items.w_att_scope_short_01",
            Handyman = {
                Default = "Items.w_att_scope_short_06",
                Legendary = "Items.w_att_scope_short_06_legendary",
            },
            Hyakume = "Items.w_att_scope_short_02",
            Kanetsugu = {
                Default = "Items.w_att_scope_short_07",
                Legendary = "Items.w_att_scope_short_07_legendary",
            },
            KanoneMini = "Items.w_att_scope_short_04",
            Type2067 = "Items.w_att_scope_short_05"
        },
        Long = {
            ClearVue = "Items.w_att_scope_long_03",
            Grandstand = "Items.w_att_scope_long_01",
            Jue = {
                Default = "Items.w_att_scope_long_05",
                Legendary = "Items.w_att_scope_long_05_legendary"
            },
            Kairo = "Items.w_att_scope_long_06",
            Percipient = "Items.w_att_scope_long_02",
            Saika = {
                Default = "Items.w_att_scope_long_04",
                Legendary = "Items.w_att_scope_long_04_legendary"
            }
        },
        Sniper = {
            Gaki = {
                Default = "Items.w_att_scope_sniper_03",
                Legendary = "Items.w_att_scope_sniper_03_legendary"
            },
            KanoneMax = {
                Common = "Items.w_att_scope_sniper_01_Common",
                Uncommon = "Items.w_att_scope_sniper_01_Uncommon",
                Rare = "Items.w_att_scope_sniper_01_Rare",
                Epic = "Items.w_att_scope_sniper_01_Epic",
                Legendary = "Items.w_att_scope_sniper_01_legendary", -- Lower case is important here!
            },
            Prospecta = {
                Common = "Items.w_att_scope_sniper_02_Common",
                Uncommon = "Items.w_att_scope_sniper_02_Uncommon",
                Rare = "Items.w_att_scope_sniper_02_Rare",
                Epic = "Items.w_att_scope_sniper_02_Epic",
                Legendary = "Items.w_att_scope_sniper_02_Legendary",
            }
        }
    },
    Silencer = {
        Cetus = {
            Default = "Items.w_silencer_03",
            Legendary = "Items.w_silencer_03_legendary"
        },
        Strix = "Items.w_silencer_02",
        Taipan = "Items.w_silencer_01",
        Tocororo = "Items.w_silencer_04"
    },
    Muzzle = {
        Generic = {
            Aswang = "Items.w_muzzle_brake_05",
            Ifrit = "Items.w_muzzle_brake_06",
            Kutrub = "Items.w_muzzle_brake_08",
            Liger = "Items.w_muzzle_brake_11",
            Yokai = "Items.w_muzzle_brake_07",
            Zaar = "Items.w_muzzle_brake_02"
        },
        Automatic = {
            Strigoi = {
                Default = "Items.w_muzzle_brake_01",
                Legendary = "Items.w_muzzle_brake_01_legendary"
            },
            Varkolak = {
                Default = "Items.w_muzzle_brake_03",
                Legendary = "Items.w_muzzle_brake_03_legendary"
            }
        },
        Handgun = {
            Babaroga = {
                Default = "Items.w_muzzle_brake_10",
                Legendary = "Items.w_muzzle_brake_10_legendary"
            },
            Dybbuk = {
                Default = "Items.w_muzzle_brake_09",
                Legendary = "Items.w_muzzle_brake_09_legendary"
            }
        }
    }
}

return Attachments