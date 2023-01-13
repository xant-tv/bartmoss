-- Styling configuration.
-- Define intelligently to autosize from other properties as needed.
local Style = {}

-- We need mathematics to scale nicely.
local Math = require("utility/math")

-- Change this depending on your resolution.
-- 1080p -> 1
-- 2160p -> 1.4
Style.ScalingFactor = 1.4

Style.Position = {
    App = {
        X = 0,
        Y = 390
    }
}

Style.Size = {
    App = {
        Width = Math.RoundToInteger(Style.ScalingFactor * 800),
        Height = Math.RoundToInteger(Style.ScalingFactor * 690)
    },
    ColSpacer = Math.RoundToInteger(Style.ScalingFactor * 16),
    SmallColSpacer = Math.RoundToInteger(Style.ScalingFactor * 12)
}

Style.Size.Global = {
    Button = {
        Full = {
            Width = (Style.Size.App.Width - Math.RoundToInteger(Style.ScalingFactor * 18)),
            Height = Math.RoundToInteger(Style.ScalingFactor * 19)
        },
        Half = {
            Width = ((Style.Size.App.Width / 2) - Math.RoundToInteger(Style.ScalingFactor * 13)),
            Height = Math.RoundToInteger(Style.ScalingFactor * 19)
        },
        Third = {
            Width = ((Style.Size.App.Width / 3) - Math.RoundToInteger(Style.ScalingFactor * 11)),
            Height = Math.RoundToInteger(Style.ScalingFactor * 19)
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
    Width = Math.RoundToInteger(Style.ScalingFactor * 104),
    Offset = Math.RoundToInteger(Style.ScalingFactor * 10)
}
Style.Size.ItemsTab.Text = {
    Width = (Style.Size.App.Width - (Style.Size.ItemsTab.Integer.Width + Style.Size.ItemsTab.Integer.Offset + Style.Size.SmallColSpacer))
}

Style.Size.PlayerTab = {
    Text = {
        Width = (Style.Size.App.Width / 3)
    },
    Integer = {
        Width = Math.RoundToInteger(Style.ScalingFactor * 124),
        Offset = Math.RoundToInteger(Style.ScalingFactor * 4)
    }
}

Style.Size.QuickhacksTab = {
    Button = {
        Width = Style.Size.Global.Button.Third.Width,
        Height = Style.Size.Global.Button.Third.Height
    },
    SmallButton = {
        Width = Math.RoundToInteger(Style.ScalingFactor * 124),
        Offset = Math.RoundToInteger(Style.ScalingFactor * 10),
        Height = Style.Size.Global.Button.Full.Height
    }
}
Style.Size.QuickhacksTab.Text = {
    Width = (Style.Size.App.Width - (Style.Size.QuickhacksTab.SmallButton.Width + Style.Size.QuickhacksTab.SmallButton.Offset + Style.Size.SmallColSpacer))
}

Style.Size.WeaponsTab = {
    Button = {
        Width = Style.Size.Global.Button.Full.Width,
        Height = Style.Size.Global.Button.Full.Height
    },
    Text = {
        Width = Math.RoundToInteger(Style.ScalingFactor * 100)
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
            Width = Math.RoundToInteger(Style.ScalingFactor * 134)
        },
        [3] = {
            Width = Math.RoundToInteger(Style.ScalingFactor * 134)
        }
    }
}

Style.Size.ArmorTab = {
    Button = {
        Width = Style.Size.Global.Button.Full.Width,
        Height = Style.Size.Global.Button.Full.Height
    },
    Text = {
        Width = Math.RoundToInteger(Style.ScalingFactor * 100)
    },
    Float = {
        Width = Math.RoundToInteger(Style.ScalingFactor * 134)
    }
}

return Style