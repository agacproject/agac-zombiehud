local hudStatus = false

Citizen.CreateThread(function()
    while true do
        if hudStatus == true then
           updateHud()
        end
        Citizen.Wait(hudStatus == true and 1000 or 4000)
    end
end)

-- discord: denizaight - .gg/teamcloud
-- discord: denizaight - .gg/teamcloud
-- discord: denizaight - .gg/teamcloud
-- discord: denizaight - .gg/teamcloud

RegisterCommand('debughud', function()
    updateHud()
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

function updateHud()
    local loadData = {
        health = GetEntityHealth(PlayerPedId()) / 2,
        armor = GetPedArmour(PlayerPedId())
    }
    SendNUIMessage({
        type = 'updateHud',
        data = loadData
    })
end

-- discord: denizaight - .gg/teamcloud
-- discord: denizaight - .gg/teamcloud
-- discord: denizaight - .gg/teamcloud
-- discord: denizaight - .gg/teamcloud
