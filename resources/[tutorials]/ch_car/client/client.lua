RegisterCommand('car', function(source, args)
    local vehicleName = args[1] or 'adder'

    if not IsModelInCdimage(vehicleName) or not IsModelAVehicle(vehicleName) then
        TriggerEvent('chat:addMessage', {
            args = { 'Whoops.. looks like ' ..  vehicleName .. ' its not a valid vehicle' }
        })
        return
    end
    RequestModel(vehicleName)
    while not HasModelLoaded(vehicleName) do
        Wait(500)
        TriggerEvent('chat:addMessage', {
            args = { 'Spawning ' .. vehicleName }
        })
    end
    
    local playerPed = PlayerPedId() 
    local pos       = GetEntityCoords(playerPed)
    local heading   = GetEntityHeading(playerPed)

    local vehicle   = CreateVehicle(
        vehicleName,
        pos,
        heading,
        true  
      )
    SetPedIntoVehicle(playerPed, vehicle, -1)

    SetModelAsNoLongerNeeded(vehicleName)
    end)

