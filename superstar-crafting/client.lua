local QBCore = exports['qb-core']:GetCoreObject()

local craftingTable = nil

CreateThread(function()
    RequestModel(`prop_tool_bench02`)
    while not HasModelLoaded(`prop_tool_bench02`) do
        Wait(10)
    end

    craftingTable = CreateObject(`prop_tool_bench02`, Config.CraftingTableLocation.x, Config.CraftingTableLocation.y, Config.CraftingTableLocation.z, false, false, true)
    SetEntityHeading(craftingTable, 0.0)
    FreezeEntityPosition(craftingTable, true)

    exports['qb-target']:AddTargetEntity(craftingTable, {
        options = {
            {
                type = "client",
                event = "superstar-crafting:openMenu",
                icon = "fas fa-cogs",
                label = "Craft Weapon",
            }
        },
        distance = 2.0,
    })
end)

RegisterNetEvent('superstar-crafting:openMenu', function()
    print("Opening crafting menu...")

    local elements = {}

    -- Loop through weapons and add them to menu
    for _, weapon in pairs(Config.Weapons) do
        table.insert(elements, {label = weapon.label .. " (Materials: " .. table.concat(weapon.materials, ", ") .. ")", value = weapon.name})
    end

    -- Open crafting menu with available weapons
    exports['qb-menu']:openMenu({
        {
            header = 'Weapon Crafting',
            icon = 'fas fa-cogs',
            isMenuHeader = true,
        },
        {
            header = 'Craft Weapons',
            icon = 'fas fa-cogs',
            txt = "Select a weapon to craft.",
            params = {
                event = 'superstar-crafting:selectWeapon',
                args = { weapons = elements }  -- Pass weapons as data to the next event
            }
        }
    })
end)

RegisterNetEvent('superstar-crafting:selectWeapon', function(data)
    print("Selected weapon data: ", data)

    -- Add crafting options for selected weapon
    local elements = {}

    for _, weapon in pairs(data.weapons) do
        table.insert(elements, {
            header = weapon.label,
            txt = "Craft this weapon",
            icon = 'fas fa-cogs',
            params = {
                event = 'superstar-crafting:craftWeapon',
                args = {weaponName = weapon.value}
            }
        })
    end

    exports['qb-menu']:openMenu(elements)
end)

RegisterNetEvent('superstar-crafting:craftWeapon', function(data)
    print("Crafting weapon: " .. data.weaponName)

    -- Start crafting process with a progress bar
    exports['progressbar']:Progress({
        name = "crafting_weapon",
        duration = 5000,  -- Crafting duration in milliseconds
        label = "Crafting " .. data.weaponName,
        useWhileDead = false,
        canCancel = true,
        controlDisables = {disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true},
        animation = {animDict = "amb@prop_human_bum_bin@idle_b", anim = "idle_b"},
    }, function(cancelled)
        if not cancelled then
            -- Trigger the server event to craft the weapon
            TriggerServerEvent('superstar-crafting:craftWeapon', data.weaponName)
        else
            print("Crafting canceled.")
        end
    end)
end)
