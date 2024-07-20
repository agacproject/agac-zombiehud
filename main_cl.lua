local hudStatus = false

Citizen.CreateThread(function()
    while true do
        if hudStatus == true then
            Citizen.Wait(1000)
            TriggerEvent('agac-zombiehud:load')
        else
            Citizen.Wait(4000)
        end
        Citizen.Wait(1)
    end
end)

RegisterCommand('debughud', function()
    TriggerEvent('agac-zombiehud:load')
end)

RegisterCommand('showhud', function()
    SendNUIMessage({
        type = 'showHud'
    })
    hudStatus = true
end)

RegisterCommand('hidehud', function()
    SendNUIMessage({
        type = 'hideHud'
    })
    hudStatus = false
end)

RegisterNetEvent('agac-zombiehud:load', function()
    local loadData = {
        health = GetEntityHealth(PlayerPedId()) / 2,
        armor = GetPedArmour(PlayerPedId())
    }
    SendNUIMessage({
        type = 'updateHud',
        data = loadData
    })
end)
