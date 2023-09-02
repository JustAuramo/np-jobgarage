wx = {} -- Don't touch


wx.Framework = 'esx' -- [ esx / qb ]
wx.Cooldown = 5000 -- In ms, how long the player needs to wait before choosing another vehicle?
wx.HeliCooldown = 120*60000 -- Cooldown but for helis (Default 2 minutes)
wx.AllExtras = true -- Spawn the vehicle with all available extras? (Doesn't apply to helicopters)
wx.MaxTuning = true -- Spawn the vehicle with max upgrades? (Doesn't apply to helicopters)

wx.Garages = {
    ['police'] --[[ Job Name ]] = {
        Label = "Poliisi", -- Optional blip name and target + context menu label
        Positions = {
            vector4(338.13, -581.62, 74.18, 156.91),
        }, -- NPC Spawn position (X,Y,Z, Heading)
        Blip = true, -- Show blip? (only players with required job will see it)
        SpawnPosition = vector4(-1051.9429, -847.4304, 4.8676, 211.9775), -- Vehicle spawn position (X,Y,Z, Heading)
        CustomPlate = "LSPD", -- Maximum of 8 characters, if the character count is lower, it will be completed with random numbers
        Ped = `s_m_y_airworker`, -- Ped model
        Scenario = "WORLD_HUMAN_CLIPBOARD", -- Ped scenario (https://pastebin.com/6mrYTdQv)
        Vehicles = {
            -- Label      -- Spawn code
            ['Charger'] = { model = 'polmav', livery = 1},
        }
    },

}

wx.Helipads = {
    ['police'] --[[ Job Name ]] = {
        Label = "Los Santos Police Department", -- Optional blip name and target + context menu label
        Positions = {
            vector4(-1107.5497, -832.3687, 37.6754, 221.9360),
        }, -- NPC Spawn position (X,Y,Z, Heading)
        Blip = true, -- Show blip? (only players with required job will see it)
        SpawnPosition = vector4(-1095.6434, -835.1830, 37.6754, 306.7749), -- Vehicle spawn position (X,Y,Z, Heading)
        Ped = `s_m_y_airworker`, -- Ped model
        Scenario = "WORLD_HUMAN_CLIPBOARD", -- Ped scenario (https://pastebin.com/6mrYTdQv)
        Vehicles = {
            -- Label      -- Spawn code
            ['Police Maverick'] = { model = 'polmav', livery = 2},
        }
    },

}

Notify = function (title,message) -- You can replace this notify function if you want
    lib.notify({
        title = title,
        description = message,
        Positions = 'top',
        style = {
            backgroundColor = '#1E1E2E',
            color = '#C1C2C5',
            ['.description'] = {
              color = '#909296'
            }
        },
        icon = 'car-side',
    })
end