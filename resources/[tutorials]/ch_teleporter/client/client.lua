--Command to go to another player
RegisterCommand('goto', function(source, args)
    local targetId = args[1];

    if not targetId then
        TriggerEvent('chat:addMessage', {
            args = { 'You need to specify a player id' }
        })
        return
    end

    TriggerServerEvent('ch_teleporter:goto', targetId)
end)

-- Command to bring a player to us

RegisterCommand('summon', function(source, args)

    local targetId = args[1];

    if not targetId then
        TriggerEvent('chat:addMessage', {
            args = { 'You need to specify a player id' }
        })
        return
    end

    TriggerServerEvent('ch_teleporter:summon', targetId)
end)


