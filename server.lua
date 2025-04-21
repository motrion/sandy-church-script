local currentScene = nil

RegisterNetEvent('church:setScene', function(scene)
    local src = source
    if not IsPlayerAceAllowed(src, Config.AcePermission) then
        TriggerClientEvent('ox_lib:notify', src, {
            title = 'Church Scene',
            description = 'You do not have permission to change the scene.',
            type = 'error',
            position = 'center-right',
            icon = 'ban'
        })
        return
    end

    if scene == "clear" then
        currentScene = nil
    elseif scene == "funeral" or scene == "married" or scene == "service" then
        currentScene = scene
    else
        return
    end

    TriggerClientEvent('church:applyScene', -1, currentScene)

    TriggerClientEvent('ox_lib:notify', src, {
        title = 'Church Scene',
        description = scene == "clear" and 'Church scene cleared.' or ('Scene set to: ' .. scene),
        type = 'success',
        position = 'center-right',
        icon = 'check'
    })
end)

RegisterNetEvent('church:checkPermissionForSceneChange', function()
    local src = source
    if IsPlayerAceAllowed(src, Config.AcePermission) then
        TriggerClientEvent('church:openSceneDialog', src)
    else
        TriggerClientEvent('ox_lib:notify', src, {
            title = 'Church Scene',
            description = 'You do not have permission to use this command.',
            type = 'error',
            position = 'center-right',
            icon = 'ban'
        })
    end
end)

RegisterNetEvent('church:requestScene', function()
    local src = source
    TriggerClientEvent('church:applyScene', src, currentScene)
end)
