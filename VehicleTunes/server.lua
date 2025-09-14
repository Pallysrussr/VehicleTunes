local nosList = {}
local tuneList = {}
local QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand('nosdb', function(source, args)
    local data = MySQL.Sync.fetchAll('SELECT Value FROM script_lists WHERE name = ?', {'nitrous_vehicles'})

    -- Setup our data
    if data ~= nil and data[1] ~= nil then
        nosList = json.decode(data[1]["Value"])
        local queries = {}
        for k,v in pairs(nosList) do--k=plate, v=value
            queries[#queries+1] = { 'UPDATE player_vehicles SET nos = ? WHERE plate = ?', {json.encode({nos = v}), k}}
        end
        MySQL.transaction(queries)
    end


end)

RegisterCommand('tunedb', function(source, args)
    local liftdata = MySQL.Sync.fetchAll('SELECT Value FROM script_lists WHERE name = ?', {'lifted_vehicles'})
    local tunedata = MySQL.Sync.fetchAll('SELECT Value FROM script_lists WHERE name = ?', {'tuned_vehicles'})

    -- Setup our data
    if liftdata ~= nil and liftdata[1] ~= nil and tunedata ~= nil and tunedata[1] ~= nil  then
        liftList = json.decode(liftdata[1]["Value"])
        tuneList = json.decode(tunedata[1]["Value"])
        local queries = {}
        local tunes = {}
        for k,v in pairs(liftList) do--k=plate, v={
            --[[
            "isLifted"    : true,
            "tiresettings": {
                "height"         : 0.43,
                "offset"         : 0.47,
                "offsetR"        : 0.48,
                "width"          : 0.57,
                "widthCollision" : 0.57,
                "heightCollision": 0.215,
                "camber"         : 0.0
            },
            "isStanced"   : false,
            "isOffroad"   : false,
            "liftsettings": {
                "suspensionForce": 0.47,
                "suspensionLift" : 0.02
            },
            "plate": "1ID937HJ"
        }, }--]]
        if not tunes[k] then tunes[k] = {} end
            if v.isLifted then
                tunes[k].tune = 'lift'
                tunes[k].lift = {h = v.tiresettings.height, o = v.tiresettings.offset, oR = v.tiresettings.offsetR, w = v.tiresettings.width, fSuspensionForce = v.tiresettings.suspensionForce, fSuspensionLift = v.tiresettings.suspensionLift}
            elseif v.isStanced then
                tunes[k].tune = 'stance'
                tunes[k].stance = {h = v.tiresettings.height, o = v.tiresettings.offset, oR = v.tiresettings.offsetR, w = v.tiresettings.width, fSuspensionForce = v.tiresettings.suspensionForce, fSuspensionLift = v.tiresettings.suspensionLift, c = v.tiresettings.camber}
            end
        end
        for k,v in pairs(tuneList) do--k=plate, v={LastTune='DRIFT', Plate = ''}
            if not tunes[k] then tunes[k] = {} end
            tunes[k].tune = v.LastTune and string.lower(v.LastTune) or 'default'
            tunes[k].stance = {}
            tunes[k].drift = {}
            tunes[k].drag = {}
        end
        for k,v in pairs(tunes) do
            queries[#queries+1] = { 'UPDATE player_vehicles SET tune = ? WHERE plate = ?', {json.encode(v), k}}
        end
        MySQL.transaction(queries)
    end


end)

RegisterNetEvent('vehicletunes:server:settune', function(settings, tunetype, netid)
    if netid then
        --if tune then
            local vehState = Entity(NetworkGetEntityFromNetworkId(netid))

            local tune = json.decode(vehState.state.tune)
            if tune and tune.tune == tunetype then
                tune[tunetype] = settings
                vehState.state.tune = json.encode(tune)
            end
        --end
        -- if nos then
        --     local vehState = Entity(NetworkGetEntityFromNetworkId(netid))
        --     vehState.state.nos = nos
        -- end
    end
end)