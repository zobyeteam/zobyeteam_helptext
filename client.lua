ESX = exports['es_extended']:getSharedObject()

local currentKey = nil

function Visible(text, description, key)
    while not ESX.IsLoadingScreenLoaded() do
        Wait(1000)
    end

    text = text or 'Placeholder Text'
    description = description or 'Placeholder Text'

    -- Replace E With E Button
    text = string.gsub(text, ' E ', '<div><p>E</p></div>')
    description = string.gsub(description, ' Key ', '<div><p> Key </p></div>')

    currentKey = key

    SendNUIMessage({
        action = 'visible',
        text = text,
        description = description
    })

    SendNUIMessage({
        action = 'playSound',
        fileName = 'help.wav'
    })
end
exports('Visible', Visible)

function Hidden(key)
    if currentKey and key and currentKey ~= key and key ~= 'force' then return end

    SendNUIMessage({
        action = 'hidden'
    })
end
exports('Hidden', Hidden)

RegisterNetEvent('zobyeteam_helptext:visible', Visible)
RegisterNetEvent('zobyeteam_helptext:hidden', Hidden)