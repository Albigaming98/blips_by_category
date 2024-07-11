Citizen.CreateThread(function()
    for category, blips in pairs(Config.Blips) do
        for _, blipInfo in ipairs(blips) do
            local blip = AddBlipForCoord(blipInfo.x, blipInfo.y, blipInfo.z)
            SetBlipSprite(blip, blipInfo.sprite)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, blipInfo.scale)
            SetBlipColour(blip, blipInfo.color)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(blipInfo.name)
            EndTextCommandSetBlipName(blip)
        end
    end
end)
