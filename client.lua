for k, v in ipairs(Config.SafeZones) do
    lib.zones.sphere({
        coords = v.coords,
        radius = v.radius,
        debug = v.debug,
        onEnter = function ()
            SetLocalPlayerAsGhost(true)
            Notify('Beléptél egy védett zónába', 'top', 'success')
        end,
        onExit = function ()
            SetLocalPlayerAsGhost(false)
            Notify('Kiléptél egy védett zónábol', 'top', 'error')
        end
    })
end

Citizen.CreateThread(function()

    for k, v in ipairs(Config.SafeZones) do
        if v.blip == true then
            local blip = AddBlipForCoord(v.coords)
            SetBlipSprite(blip, v.blipid)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, 0.8)
            SetBlipColour(blip, v.blipcolour)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.name)
            EndTextCommandSetBlipName(blip)

            local circleBlip = AddBlipForRadius(v.coords, v.radius)
            SetBlipColour(circleBlip, v.blipcolour)
            SetBlipAlpha(circleBlip, 128)
        end
    end
end)
