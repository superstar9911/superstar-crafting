Config = {}

-- Crafting table location (you can set your preferred position)

Config.CraftingTableLocation = vector3(-2880.47, 2245.71, 0.92)

-- Weapons available for crafting (no level or XP required)
Config.Weapons = {
    -- Melee Weapons
    {
        name = "weapon_bat",  -- The name of the weapon
        label = "Baseball Bat",  -- The display name of the weapon
        materials = {  -- Materials required to craft the weapon
            steel = 5  -- 5 Steel for a Baseball Bat
        }
    },
    {
        name = "weapon_knife",  -- The name of the weapon
        label = "Knife",  -- The display name of the weapon
        materials = {  -- Materials required to craft the weapon
            steel = 3  -- 3 Steel for a Knife
        }
    },
    {
        name = "weapon_hammer",  -- The name of the weapon
        label = "Hammer",  -- The display name of the weapon
        materials = {  -- Materials required to craft the weapon
            steel = 8  -- 8 Steel for a Hammer
        }
    },
    {
        name = "weapon_machete",  -- The name of the weapon
        label = "Machete",  -- The display name of the weapon
        materials = {  -- Materials required to craft the weapon
            steel = 7,  -- 7 Steel for a Machete
            rubber = 3  -- 3 Wood for a Machete
        }
    },

    -- Pistols
    {
        name = "weapon_pistol",  -- The name of the weapon
        label = "Pistol",  -- The display name of the weapon
        materials = {  -- Materials required to craft the weapon
            steel = 10,  -- 10 Steel for a Pistol
            glass = 5  -- 5 Glass for a Pistol
        }
    },
    {
        name = "weapon_combatpistol",  -- The name of the weapon
        label = "Combat Pistol",  -- The display name of the weapon
        materials = {  -- Materials required to craft the weapon
            steel = 15,  -- 15 Steel for a Combat Pistol
            glass = 7  -- 7 Glass for a Combat Pistol
        }
    },

    -- Shotguns
    {
        name = "weapon_shotgun",  -- The name of the weapon
        label = "Pump Shotgun",  -- The display name of the weapon
        materials = {  -- Materials required to craft the weapon
            steel = 20,  -- 20 Steel for a Shotgun
            wood = 5  -- 5 Wood for a Shotgun
        }
    },
    {
        name = "weapon_sawnoffshotgun",  -- The name of the weapon
        label = "Sawed-off Shotgun",  -- The display name of the weapon
        materials = {  -- Materials required to craft the weapon
            steel = 18,  -- 18 Steel for a Sawed-off Shotgun
            wood = 4  -- 4 Wood for a Sawed-off Shotgun
        }
    },

    -- SMGs
    {
        name = "weapon_smg",  -- The name of the weapon
        label = "SMG",  -- The display name of the weapon
        materials = {  -- Materials required to craft the weapon
            steel = 25,  -- 25 Steel for a SMG
            plastic = 8  -- 8 Plastic for a SMG
        }
    },

    -- Rifles
    {
        name = "weapon_assaultrifle",  -- The name of the weapon
        label = "Assault Rifle",  -- The display name of the weapon
        materials = {  -- Materials required to craft the weapon
            steel = 40,  -- 40 Steel for an Assault Rifle
            plastic = 12  -- 12 Plastic for an Assault Rifle
        }
    },
    {
        name = "weapon_carbinerifle",  -- The name of the weapon
        label = "Carbine Rifle",  -- The display name of the weapon
        materials = {  -- Materials required to craft the weapon
            steel = 35,  -- 35 Steel for a Carbine Rifle
            plastic = 10  -- 10 Plastic for a Carbine Rifle
        }
    },

    -- Ammo Types
    -- Pistol Ammo
    {
        name = "pistol_ammo",  -- The name of the ammo
        label = "Pistol Ammo",  -- The display name of the ammo
        materials = {  -- Materials required to craft the ammo
            aluminum = 5,  -- 5 alimunum for Pistol Ammo
            steel = 3  -- 3 steel for Pistol Ammo
        }
    },
    -- Shotgun Ammo
    {
        name = "shotgun_ammo",  -- The name of the ammo
        label = "Shotgun Ammo",  -- The display name of the ammo
        materials = {  -- Materials required to craft the ammo
            steel = 8,  -- 8 steek for Shotgun Ammo
            alimunum = 5  -- 5 aluminum for Shotgun Ammo
        }
    },
    -- SMG Ammo
    {
        name = "smg_ammo",  -- The name of the ammo
        label = "SMG Ammo",  -- The display name of the ammo
        materials = {  -- Materials required to craft the ammo
           steel = 7,  -- 7 steel for SMG Ammo
            aluminum = 4  -- 4 aluminum for SMG Ammo
        }
    },
    -- Rifle Ammo
    {
        name = "rifle_ammo",  -- The name of the ammo
        label = "Rifle Ammo",  -- The display name of the ammo
        materials = {  -- Materials required to craft the ammo
            steel = 10,  -- 10 steel for Rifle Ammo
            aluminum = 6  -- 6 aluminum for Rifle Ammo
        }
    },
}

-- Crafting table interaction distance
Config.CraftingTableDistance = 2.0
