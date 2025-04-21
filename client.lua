local interiorId

CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/setchurchscene', 'Open church scene selection (Funeral, Marriage, Service, or Clear)')
end)

CreateThread(function()
    interiorId = GetInteriorAtCoords(Config.ChurchPostal.x, Config.ChurchPostal.y, Config.ChurchPostal.z)
    if not IsInteriorReady(interiorId) then
        LoadInterior(interiorId)
    end
    TriggerServerEvent('church:requestScene')
end)

RegisterNetEvent('church:applyScene', function(scene)
    if not interiorId then return end

    for _, set in ipairs(Config.EntitySets) do
        DeactivateInteriorEntitySet(interiorId, set)
    end

    if scene and scene ~= "clear" then
        ActivateInteriorEntitySet(interiorId, "church_" .. scene)
    end

    RefreshInterior(interiorId)
end)

RegisterNetEvent('church:openSceneDialog', function()
    local input = lib.inputDialog('Set Church Scene', {
        {
            type = 'select',
            label = 'Choose Scene',
            name = 'scene',
            options = {
                {label = 'Funeral Scene', value = 'funeral'},
                {label = 'Marriage Scene', value = 'married'},
                {label = 'Church Service Scene', value = 'service'},
                {label = 'Clear Scene', value = 'clear'}
            }
        }
    })

    if not input then
        lib.notify({ type = 'error', position = 'center-right', description = 'You canceled the input.' })
        return
    end

    local scene = input[1]
    if not scene or scene == '' then
        lib.notify({ type = 'error', position = 'center-right', description = 'Invalid scene selected.' })
        return
    end

    TriggerServerEvent('church:setScene', scene)
end)

RegisterCommand("setchurchscene", function()
    TriggerServerEvent('church:checkPermissionForSceneChange')
end, false)
