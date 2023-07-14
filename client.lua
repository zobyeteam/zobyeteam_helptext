local currentKey = nil

function visible(text, key)
    text = text or 'Placeholder Text'

    -- Replace E With E Button
    text = string.gsub(text, ' E ', '<div><p>E</p></div>')

    currentKey = key

    SendNUIMessage({
        action = 'visible',
        text = text,
    })
end

function hidden(key)
    if currentKey and key and currentKey ~= key then return end

    SendNUIMessage({
        action = 'hidden'
    })
end

RegisterNetEvent('zobyeteam_helptext:visible', visible)
RegisterNetEvent('zobyeteam_helptext:hidden', hidden)