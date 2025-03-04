local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('superstar-crafting:craftWeapon', function(weaponName)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local weapon = nil

    -- Find the weapon in the config
    for _, w in pairs(Config.Weapons) do
        if w.name == weaponName then
            weapon = w
            break
        end
    end

    -- If the weapon doesn't exist in the config, return an error
    if not weapon then
        print("Weapon not found!")
        return
    end

    -- Check if the player has the required materials
    local hasMaterials = true
    for material, amount in pairs(weapon.materials) do
        if Player.Functions.GetItemByName(material) == nil or Player.Functions.GetItemByName(material).amount < amount then
            hasMaterials = false
            break
        end
    end

    if not hasMaterials then
        TriggerClientEvent('QBCore:Notify', src, "You don't have enough materials!", "error")
        return
    end

    -- Deduct the materials from the player's inventory
    for material, amount in pairs(weapon.materials) do
        Player.Functions.RemoveItem(material, amount)
    end

    -- Give the player the crafted weapon
    Player.Functions.AddItem(weaponName, 1)
    TriggerClientEvent('QBCore:Notify', src, "Weapon crafted successfully!", "success")
end)
