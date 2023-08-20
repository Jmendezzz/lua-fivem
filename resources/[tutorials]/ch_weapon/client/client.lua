RegisterCommand('weapon', function(source,args)

    local weaponName = 'weapon_'.. args[1]
    local weapon     = GetHashKey(weaponName)
    
    local playerPed  = PlayerPedId()

    if not IsWeaponValid(weapon) then
        TriggerEvent('chat:addMessage', {
            args = { 'Whoops.. looks like ' ..  weaponName .. ' its not a valid weapon' }
        })
        return
    end

    if not HasPedGotWeapon(playerPed, weapon, false) then
        GiveWeaponToPed(playerPed, weapon, 1000, false, true)
    else
        SetPedAmmo(playerPed, weapon, 1000)
    end

    end
)

