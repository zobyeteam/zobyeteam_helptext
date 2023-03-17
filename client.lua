function visible(text)
    text = text or 'Placeholder Text'

    SendNUIMessage({
        action = 'visible',
        text = text,
    })
end

function hidden() 
    SendNUIMessage({
        action = 'hidden'
    })
end

RegisterNetEvent('zobyeteam_helptext:visible', visible)
RegisterNetEvent('zobyeteam_helptext:hidden', hidden)