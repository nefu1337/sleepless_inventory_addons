--- Defines a slot with a bone, position, and rotation
---@class Slot
---@field bone number
---@field pos vector3
---@field rot vector3

---@class OptionalVector
---@field x? number
---@field y? number
---@field z? number

--- Defines an item with properties for its placement and grouping
---@class BackItem
---@field prio number a number to define the priority of importance that the weapon should appear over others
---@field group? string which slot group the item should use. defaults to 'back'
---@field customPos? {bone?: number , pos?: OptionalVector | vector3,  rot?:  OptionalVector | vector3} optional custom position. required if ignorelimits is true
---@field ignoreLimits? boolean wether or not the item is attached regardless of available slots. requires a full custom position. a full custom position has a bone, pos as a vec3, and rot as a vec3
---@field model? number | string this is required for non-weapon items. can optionally be used for weapons in order to have the attached model different than the equipped model. like if you want a sheathed katanta on your back

---@class Config
---@field defaultSlots table<string, Slot[]>
---@field BackItems table<string, BackItem>

--- Configurations for item slots and back items
local Config = {}

--- Default slots configuration
---@type table<string, Slot[]>
Config.defaultSlots = {
    ['back2'] = {
        { bone = 24818, pos = vec3(0.00, 0.00, 0.00), rot = vec3(0.00, 0.00, 0.00) }
    },
    ['front'] = { -- add as many slot groups as you like for different types of items
        { bone = 24818, pos = vec3(-0.075, 0.210, -0.090), rot = vec3(162.0, 130.0, 6.0) }
    },
    ['belt'] = {
        { bone = 11816, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0) }
    }
}

--- these vehicle classes will be allowed to display all attached back items
Config.allowedVehicleClasses = {
    [8] = true,  -- motorcycles
    [13] = true, -- bicycles
    [14] = true, -- boats
}

--- Back items configuration
---@type table<string, BackItem>
Config.BackItems = {
    -- RS GUNS
    ['WEAPON_SMG'] = {
        prio = 3,
        group = 'front',
    },
    ['WEAPON_COMBATPDW'] = {
        prio = 3,
        group = 'front',
    },
    ['WEAPON_PUMPSHOTGUN_MK2'] = {
        prio = 3,
        group = 'front',
    },
    ['WEAPON_SPECIALCARBINE_MK2'] = {
        prio = 3,
        group = 'front',
    },
    ['WEAPON_CARBINERIFLE_MK2'] = {
        prio = 3,
        group = 'front',
    },
    -- RS MELEE GUNS
    ['WEAPON_BAT'] = {
        prio = 1,
        group = 'back2',
        customPos = {
            pos = vec3(0.360, -0.120, 0.080),
            rot = vec3(0.0, -90.0, 6.0)
        }
    },
    ['WEAPON_HATCHET'] = {
        prio = 1,
        group = 'back2',
        customPos = {
            pos = vec3(0.360, -0.120, 0.080),
            rot = vec3(0.0, -90.0, 6.0)
        }
    },        
    ['WEAPON_POOLCUE'] = {
        prio = 1,
        group = 'back2',
        customPos = {
            pos = vec3(0.360, -0.115, 0.080),
            rot = vec3(0.0, -90.0, 6.0)
        }
    },
    ['WEAPON_GOLFCLUB'] = {
        prio = 1,
        group = 'back2',
        customPos = {
            pos = vec3(0.360, -0.110, 0.080),
            rot = vec3(0.0, -90.0, 6.0)
        }
    },
    ['WEAPON_KATANA'] = {
        prio = 1,
        group = 'back2',
        customPos = {
            pos = vec3(0.370, -0.150, 0.100),
            rot = vec3(30.0, -90.0, 3.0)
        }
    },
    ['WEAPON_PERFORATOR'] = {
        prio = 1,
        group = 'back2',
        customPos = {
            pos = vec3(0.470, -0.120, 0.130),
            rot = vec3(0.0, -92.0, 6.0)
        }
    },
    ['WEAPON_HUNTINGRIFLE'] = {
        prio = 1,
        group = 'back2',
        customPos = {
            pos = vec3(-0.030, -0.190, 0.060),
            rot = vec3(0.0, 0.0, 0.0)
        }
    },
    -- BELT
    ['WEAPON_PEPPERSPRAY'] = {
        prio = 1,
        group = 'belt',
        customPos = {
            --pos = vec3(-0.030, -0.150, 0.150),
            --rot = vec3(165.0, -90.0, 0.0)
            pos = vec3(-0.050, -0.160, 0.150),
            rot = vec3(165.0, -90.0, 0.0)
        }
    },
    ['WEAPON_DAGGER'] = {
        prio = 2,
        group = 'belt',
        customPos = {
            pos = vec3(0.010, 0.020, -0.210),
            rot = vec3(96.0, 0.0, 90.0)
        }
    },
    ['WEAPON_MACHETE'] = {
        prio = 1,
        group = 'belt',
        customPos = {
            pos = vec3(0.010, 0.020, -0.210),
            rot = vec3(96.0, 0.0, 90.0)
        }
    },
}

return Config