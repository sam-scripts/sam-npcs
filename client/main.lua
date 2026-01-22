local debug = false

Citizen.CreateThread(function ()
    if Config.Debug then
        debug = true
    end
end)

Citizen.CreateThread(function ()
    for i, data in ipairs(Config.NPCS) do

    local pedHash = GetHashKey(data.model)

    RequestModel(pedHash)
    while not HasModelLoaded(pedHash) do
        Citizen.Wait(100)
    end

    local ped = CreatePed(4, pedHash, data.coords.x, data.coords.y, data.coords.z, data.coords.w, false, false)

    FreezeEntityPosition(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityAsMissionEntity(ped, true, true)
    DisablePedPainAudio(ped, true)
    SetPedCanRagdollFromPlayerImpact(ped, false)
    SetPedCanEvasiveDive(ped, false)
    SetPedConfigFlag(ped,70, true)
    SetEntityInvincible(ped,true)

    if data.animations.dict and data.animations.name then
    RequestAnimDict(tostring(data.animations.dict))
    while not HasAnimDictLoaded(tostring(data.animations.dict)) do
    Wait(100)
        end
    TaskPlayAnim(ped,data.animations.dict, data.animations.name, 1.0,1.0, -1, data.animations.flag, 0.0, true,true,true)
    if DoesEntityExist(ped) and debug then
        print("^2[SUCCESS] ^5" .. data.model .. " has been spawned at " .. data.coords .. " playing animation " .. data.animations.dict .. ":"  .. data.animations.name)
    elseif not DoesEntityExist(ped) and debug then
        print("^1[ERROR] There was an error spawning a ped, check the config!")
    end
    else
    if debug then
        print("^2[SUCCESS] ^5" .. data.model .. " has been spawned at " .. data.coords)
    end
        end
    end
end)