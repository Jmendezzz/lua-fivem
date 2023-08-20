RegisterNetEvent('ch_teleporter:goto',function (targetId)
    local playerId  = source

    local targetPed = GetPlayerPed(targetId)

    if targetPed <= 0 then
        TriggerClientEvent('chat:addMessage',playerId, {
            args = { 'Player not found' }
        })
        return
    end
    
    local targetPos = GetEntityCoords(targetPed)

    SetEntiTyCoords(playerId, targetPos)
end)

RegisterNetEvent('ch_teleporter:summon',function (targetId)

    local playerId  = source
    local playerPed = GetPlayerPed(playerId)
    local targetPed = GetPlayerPed(targetId)

    if targetPed <= 0 then
        TriggerClientEvent('chat:addMessage',playerId, {
            args = { 'Player not found' }
        })
        return
    end
    
    local playerPos = GetEntityCoords(playerPed)

    SetEntityCoords(targetPed, playerPos)

end)