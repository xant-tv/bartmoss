local Style = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

-- Define intelligently to autosize from other properties as needed.

Style.Position = {
    App = {
        X = 0,
        Y = 326
    }
}

Style.Size = {
    App = {
        Width = 730,
        Height = 646
    },
    ColSpacer = 16,
    SmallColSpacer = 12
}

Style.Size.Global = {
    Button = {
        Full = {
            Width = (Style.Size.App.Width - 18),
            Height = 19
        },
        Half = {
            Width = ((Style.Size.App.Width / 2) - 13),
            Height = 19
        }
    }
}

Style.Size.ItemsTab = {
    Button = {
        Width = Style.Size.Global.Button.Full.Width,
        Height = Style.Size.Global.Button.Full.Height
    }
}
Style.Size.ItemsTab.Integer = {
    -- Integer elements seem to draw larger than their set size. 
    -- Suspect they scale to nearest full integer width.
    -- Include as offset.
    Width = 104,
    Offset = 10
}
Style.Size.ItemsTab.Text = {
    Width = (Style.Size.App.Width - (Style.Size.ItemsTab.Integer.Width + Style.Size.ItemsTab.Integer.Offset + Style.Size.SmallColSpacer))
}

Style.Size.PlayerTab = {
    Text = {
        Width = (Style.Size.App.Width / 3)
    },
    Integer = {
        Width = 124,
        Offset = 4
    }
}

Style.Size.QuickhacksTab = {
    Button = {
        Width = Style.Size.Global.Button.Half.Width,
        Height = Style.Size.Global.Button.Half.Height
    },
}

Style.Size.WeaponsTab = {
    Button = {
        Width = Style.Size.Global.Button.Full.Width,
        Height = Style.Size.Global.Button.Full.Height
    },
    Text = {
        Width = 100
    },
    Columns = {
        [1] = {
            Start = 0
        },
        [2] = {
            -- Conveniently this also represents width.
            Start = (Style.Size.App.Width / 2)
        },
        [3] = {
            -- Conveniently this also represents width.
            Start = (Style.Size.App.Width / 3)
        }
    },
    Float = {
        [2] = {
            Width = 134
        },
        [3] = {
            Width = 110
        }
    }
}

Style.Size.ArmorTab = {
    Button = {
        Width = Style.Size.Global.Button.Full.Width,
        Height = Style.Size.Global.Button.Full.Height
    },
    Text = {
        Width = 100
    },
    Float = {
        Width = 134
    }
}

return Style