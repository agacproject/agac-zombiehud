local hudStatus = false

Citizen.CreateThread(function()
    while true do
        if hudStatus == true then
            Citizen.Wait(1000)
            TriggerEvent('deniz:load')
        else
            Citizen.Wait(4000)
        end
        Citizen.Wait(1)
    end
end)

-- discord: denizaight - .gg/teamcloud
-- discord: denizaight - .gg/teamcloud
-- discord: denizaight - .gg/teamcloud
-- discord: denizaight - .gg/teamcloud

RegisterCommand('debughud', function()
    TriggerEvent('deniz:load')
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

RegisterNetEvent('deniz:load', function()
    local loadData = {
        health = GetEntityHealth(PlayerPedId()) / 2,
        armor = GetPedArmour(PlayerPedId())
    }
    SendNUIMessage({
        type = 'updateHud',
        data = loadData
    })
end)

-- discord: denizaight - .gg/teamcloud
-- discord: denizaight - .gg/teamcloud
-- discord: denizaight - .gg/teamcloud
-- discord: denizaight - .gg/teamcloud
