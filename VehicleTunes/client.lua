local QBCore = exports['qb-core']:GetCoreObject()
local test = QBCore.Shared.GetServerInfo() == 'test'
local inSettingsMenu
local TunedVehicles = {
	--['entityid'] = {tune = 'default, drag, drift, circuit, lift, stance', plate = '', drift = {}, drag = {fSuspensionRaise = 10.0, Mech_fSuspensionRaise = 10.0}}
}
local LoopedVehicles = {
	--['entityid'] = {--[[ settings ]]}
}

local handlingData = {
	--vecCentreOfMassOffset = {type = 'vector'},
	--vecInertiaMultiplier = {type = 'vector'},
	--nInitialDriveGears = {type = 'integer'},
	--nMonetaryValue = {type = 'integer'},
	fLeanFwdCOMMult = {class = 'CBikeHandlingData'},
	fLeanFwdForceMult = {class = 'CBikeHandlingData'},
	fLeanBakCOMMult = {class = 'CBikeHandlingData'},
	fLeanBakForceMult = {class = 'CBikeHandlingData'},
	fMaxBankAngle = {class = 'CBikeHandlingData'},
	fFullAnimAngle = {class = 'CBikeHandlingData'},
	fDesLeanReturnFrac = {class = 'CBikeHandlingData'},
	fStickLeanMult = {class = 'CBikeHandlingData'},
	fBrakingStabilityMult = {class = 'CBikeHandlingData'},
	fInAirSteerMult = {class = 'CBikeHandlingData'},
	fWheelieBalancePoint = {class = 'CBikeHandlingData'},
	fStoppieBalancePoint = {class = 'CBikeHandlingData'},
	fWheelieSteerMult = {class = 'CBikeHandlingData'},
	fRearBalanceMult = {class = 'CBikeHandlingData'},
	fFrontBalanceMult = {class = 'CBikeHandlingData'},
	fBikeGroundSideFrictionMult = {class = 'CBikeHandlingData'},
	fBikeWheelGroundSideFrictionMult = {class = 'CBikeHandlingData'},
	fBikeOnStandLeanAngle = {class = 'CBikeHandlingData'},
	fBikeOnStandSteerAngle = {class = 'CBikeHandlingData'},
	fJumpForce = {class = 'CBikeHandlingData'},
	fBoxFrontMult = {class = 'CBoatHandlingData'},
	fBoxRearMult = {class = 'CBoatHandlingData'},
	fBoxSideMult = {class = 'CBoatHandlingData'},
	fSampleTop = {class = 'CBoatHandlingData'},
	fSampleBottom = {class = 'CBoatHandlingData'},
	fAquaplaneForce = {class = 'CBoatHandlingData'},
	fAquaplanePushWaterMult = {class = 'CBoatHandlingData'},
	fAquaplanePushWaterCap = {class = 'CBoatHandlingData'},
	fAquaplanePushWaterApply = {class = 'CBoatHandlingData'},
	fRudderForce = {class = 'CBoatHandlingData'},
	fRudderOffsetSubmerge = {class = 'CBoatHandlingData'},
	fRudderOffsetForce = {class = 'CBoatHandlingData'},
	fRudderOffsetForceZMult = {class = 'CBoatHandlingData'},
	fWaveAudioMult = {class = 'CBoatHandlingData'},
	--vecMoveResistance = {type = 'vector', class = 'CBoatHandlingData'},
	--vecTurnResistance = {type = 'vector', class = 'CBoatHandlingData'},
	fLook_L_R_CamHeight = {class = 'CBoatHandlingData'},
	fDragCoefficient = {class = 'CBoatHandlingData'},
	fKeelSphereSize = {class = 'CBoatHandlingData'},
	fPropRadius = {class = 'CBoatHandlingData'},
	fLowLodAngOffset = {class = 'CBoatHandlingData'},
	fLowLodDraughtOffset = {class = 'CBoatHandlingData'},
	fImpellerOffset = {class = 'CBoatHandlingData'},
	fImpellerForceMult = {class = 'CBoatHandlingData'},
	fDinghySphereBuoyConst = {class = 'CBoatHandlingData'},
	fProwRaiseMult = {class = 'CBoatHandlingData'},
	fTransmissionMultiplier = {class = 'CBoatHandlingData'},
	fTractionMultiplier = {class = 'CBoatHandlingData'},
	fThrust = {class = 'CFlyingHandlingData'},
	fThrustFallOff = {class = 'CFlyingHandlingData'},
	fThrustVectoring = {class = 'CFlyingHandlingData'},
	fYawMult = {class = 'CFlyingHandlingData'},
	fYawStabilise = {class = 'CFlyingHandlingData'},
	fSideSlipMult = {class = 'CFlyingHandlingData'},
	fRollMult = {class = 'CFlyingHandlingData'},
	fRollStabilise = {class = 'CFlyingHandlingData'},
	fPitchMult = {class = 'CFlyingHandlingData'},
	fPitchStabilise = {class = 'CFlyingHandlingData'},
	fFormLiftMult = {class = 'CFlyingHandlingData'},
	fAttackLiftMult = {class = 'CFlyingHandlingData'},
	fAttackDiveMult = {class = 'CFlyingHandlingData'},
	fGearDownDragV = {class = 'CFlyingHandlingData'},
	fGearDownLiftMult = {class = 'CFlyingHandlingData'},
	fWindMult = {class = 'CFlyingHandlingData'},
	fMoveRes = {class = 'CFlyingHandlingData'},
	--vecTurnRes = {type = 'vector', class = 'CFlyingHandlingData'},
	--vecSpeedRes = {type = 'vector', class = 'CFlyingHandlingData'},
	fGearDoorFrontOpen = {class = 'CFlyingHandlingData'},
	fGearDoorRearOpen = {class = 'CFlyingHandlingData'},
	fGearDoorRearOpen2 = {class = 'CFlyingHandlingData'},
	fGearDoorRearMOpen = {class = 'CFlyingHandlingData'},
	fTurublenceMagnitudeMax = {class = 'CFlyingHandlingData'},
	fTurublenceForceMulti = {class = 'CFlyingHandlingData'},
	fTurublenceRollTorqueMulti = {class = 'CFlyingHandlingData'},
	fTurublencePitchTorqueMulti = {class = 'CFlyingHandlingData'},
	fBodyDamageControlEffectMult = {class = 'CFlyingHandlingData'},
	fInputSensitivityForDifficulty = {class = 'CFlyingHandlingData'},
	fOnGroundYawBoostSpeedPeak = {class = 'CFlyingHandlingData'},
	fOnGroundYawBoostSpeedCap = {class = 'CFlyingHandlingData'},
	fEngineOffGlideMulti = {class = 'CFlyingHandlingData'},
	fSubmergeLevelToPullHeliUnderwater = {class = 'CFlyingHandlingData'},
}

-- local function trim(value)
-- 	if not value then return nil end
--     return (string.gsub(value, '^%s*(.-)%s*$', '%1'))
-- end

-- function TruncateNumber(value)
-- 	value = value * Config.Precision
-- 	return (value % 1.0 > 0.5 and math.ceil(value) or math.floor(value)) / Config.Precision
-- end

local function TuneVehicle(entity)
	if inSettingsMenu then lib.closeInputDialog() inSettingsMenu = nil end
	print('TUNEVEHICLE', entity)
	local plate = TunedVehicles[entity].plate
	local model = GetEntityModel(entity)
	local class = QBCore.Shared.GetVehicleInfo(model)?.class
	local meta = QBCore.Functions.HandlingCache(entity)
	local defaultClass = Config.Default[class]
	local defaultModel = Config.Default[model]
	local defaultPlate = Config.Default[plate]
	local tuneClass = Config[tune]?[class]
	local tuneModel = Config[tune]?[model]
	local tunePlate = Config[tune]?[plate]
	local custom = TunedVehicles[entity][TunedVehicles[entity].tune]
	print('1')
	for k,v in pairs(meta) do
		SetVehicleHandlingField(entity, handlingData[k]?.class or 'CHandlingData', k, custom?[k] or (defaultPlate?[k] or defaultModel?[k] or defaultClass?[k] or v) * (tunePlate?[k] or tuneModel?[k] or tuneClass?[k] or 1.0))
	end
	print('2')
	local maxSpeed = tonumber(defaultPlate?.fMaxSpeed or defaultModel?.fMaxSpeed or defaultClass?.fMaxSpeed)
	if maxSpeed then
		SetVehicleMaxSpeed(entity, (maxSpeed * (tunePlate?.fMaxSpeed or tuneModel?.fMaxSpeed or tuneClass?.fMaxSpeed or 1.0)) / 2.236936)
	end
	print(maxSpeed)
	ModifyVehicleTopSpeed(entity, 1.0)
end

local isLooped
local function LoopVehicles()
	if isLooped then return end
	isLooped = true
	CreateThread(function()
		while next(LoopedVehicles) do
			for k,v in pairs(LoopedVehicles) do
				if DoesEntityExist(k) then
					-- Wheel tallness settings
					SetVehicleWheelSize(k, v.h)
					local half = v.h * 0.5
					SetVehicleWheelTireColliderSize(k, 0, half)--height collison is half of height
					SetVehicleWheelTireColliderSize(k, 1, half)
					SetVehicleWheelTireColliderSize(k, 2, half)
					SetVehicleWheelTireColliderSize(k, 3, half)

					-- Wheel width settings
					SetVehicleWheelWidth(k, v.w)
					SetVehicleWheelTireColliderWidth(k, 0, v.w)--width collison is same as width
					SetVehicleWheelTireColliderWidth(k, 1, v.w)
					SetVehicleWheelTireColliderWidth(k, 2, v.w)
					SetVehicleWheelTireColliderWidth(k, 3, v.w)

					-- Set wheel offset.
					SetVehicleWheelXOffset(k, 0, -v.o)
					SetVehicleWheelXOffset(k, 1, v.o)
					SetVehicleWheelXOffset(k, 2, -v.oR) -- Rear
					SetVehicleWheelXOffset(k, 3, v.oR)  -- Rear

					-- Set camber
					if v.c then
						SetVehicleWheelYRotation(k,0, -v.c)
						SetVehicleWheelYRotation(k,1, v.c)
						SetVehicleWheelYRotation(k,2, -v.c)
						SetVehicleWheelYRotation(k,3, v.c)
					end

					-- -- Traction Length????
					-- SetVehicleWheelTractionVectorLength(k, 0, 0.8)
					-- SetVehicleWheelTractionVectorLength(k, 1, 0.8)
					-- SetVehicleWheelTractionVectorLength(k, 2, 0.8)
					-- SetVehicleWheelTractionVectorLength(k, 3, 0.8)
				else
					LoopedVehicles[k] = nil
				end
			end
			Wait(5)
		end
		isLooped = nil
	end)
end

-- exports('GetDefaultMaxSpeed', GetDefaultMaxSpeed)

-- RegisterNetEvent('baseevents:enteredVehicle', function(vehicle, seat, name, netId)
-- 	if Config.Enabled then
-- 		--ApplyHandling()
-- 		--QBCore.Functions.HandlingCache(vehicle)
-- 		local defaults = GetVehicleDefault(vehicle)
-- 		if defaults then
-- 			for k,v in pairs(defaults) do
-- 				if v then
-- 					if k == 'fMaxSpeed' then
-- 						SetVehicleMaxSpeed(vehicle, v / 2.236936)
-- 					else
-- 						local field = 'CHandlingData'
-- 						if handlingData[k] then
-- 							field = handlingData[k].class or 'CHandlingData'
-- 						end
-- 						SetVehicleHandlingField(vehicle, field, k, v)
-- 					end
-- 				end
-- 			end
-- 			ModifyVehicleTopSpeed(vehicle, 1.0)
-- 		end
-- 	end
-- end)

-- RegisterNetEvent('baseevents:changedSeat', function(veh, seat, netid)
--     print(veh, seat, netid)
-- end)

AddStateBagChangeHandler('tune' --[[key filter]], nil --[[bag filter]], function(bagName, key, value, _unused, replicated)
    -- we only want to cause an explosion when the value is set to true!
	print('tunetune', value)
    if not value then return end
	print('pretune', value)
	value = json.decode(value)
	print('tuner', value, QBCore.Shared.TableToString(value))

    local veh = GetEntityFromStateBagName(bagName)
    -- the entity didn't exist
    if veh == 0 or not value.tune then return end
	--if not TunedVehicles[veh] then
		--if not TunedVehicles[veh] then
			TunedVehicles[veh] = value
		--else
			-- for k,v in pairs(value) do
			-- 	TunedVehicles[veh][k] = v
			-- end
		-- end
		TuneVehicle(veh)
		if value.tune == 'lift' or value.tune == 'stance' then
			LoopedVehicles[veh] = value[value.tune]
			LoopVehicles()
		else
			LoopedVehicles[veh] = nil
		end
		print('bagTuned')
	--else
		--print('bagNotTuned')
	--end
	--TunedVehicles[veh] = {isTuned = false, tune = value.tune, lift = value.lift, slam = value.slam, tuner = value.tuner}

    --print(veh, 'is lifted')
    --local netid = VehToNet(veh)

--SetHandling()
--ApplyHandling()

    -- CreateThread(function()
    --     while DoesEntityExist(veh) do

    --     print(GetVehicleHandlingVector(veh, 'CHandlingData', 'vecInertiaMultiplier'), GetVehicleHandlingFloat(veh, 'CHandlingData', 'fSuspensionRaise') )
	-- 	Wait(1000)
    --     end
    -- end)
end)


function modifyTiresLooped(vehicleEntityId, tireHeight, tireWidth, tireHeightCollision, tireWidthCollision, offsetAmount, offsetAmountR, camber)
    if DoesEntityExist(vehicleEntityId) then
        -- Wheel tallness settings
        SetVehicleWheelSize(vehicleEntityId,tireHeight)
        SetVehicleWheelTireColliderSize(vehicleEntityId, 0, tireHeightCollision)
        SetVehicleWheelTireColliderSize(vehicleEntityId, 1, tireHeightCollision)
        SetVehicleWheelTireColliderSize(vehicleEntityId, 2, tireHeightCollision)
        SetVehicleWheelTireColliderSize(vehicleEntityId, 3, tireHeightCollision)

        -- Wheel width settings
        SetVehicleWheelWidth(vehicleEntityId,tireWidth)
        SetVehicleWheelTireColliderWidth(vehicleEntityId, 0, tireWidthCollision)
        SetVehicleWheelTireColliderWidth(vehicleEntityId, 1, tireWidthCollision)
        SetVehicleWheelTireColliderWidth(vehicleEntityId, 2, tireWidthCollision)
        SetVehicleWheelTireColliderWidth(vehicleEntityId, 3, tireWidthCollision)

        -- Set wheel offset.
        SetVehicleWheelXOffset(vehicleEntityId, 0, -offsetAmount)
        SetVehicleWheelXOffset(vehicleEntityId, 2, -offsetAmountR) -- BACK
        SetVehicleWheelXOffset(vehicleEntityId, 1, offsetAmount)
        SetVehicleWheelXOffset(vehicleEntityId, 3, offsetAmountR)  -- BACK

        -- Set camber
        SetVehicleWheelYRotation(vehicleEntityId,0,-camber)
        SetVehicleWheelYRotation(vehicleEntityId,2,-camber)
        SetVehicleWheelYRotation(vehicleEntityId,1, camber)
        SetVehicleWheelYRotation(vehicleEntityId,3, camber)

        -- Traction Length????
        SetVehicleWheelTractionVectorLength(vehicleEntityId, 0, 0.8)
        SetVehicleWheelTractionVectorLength(vehicleEntityId, 1, 0.8)
        SetVehicleWheelTractionVectorLength(vehicleEntityId, 2, 0.8)
        SetVehicleWheelTractionVectorLength(vehicleEntityId, 3, 0.8)
    end
end

lib.onCache('vehicle', function(value)
	print('tune',value)
	if value then
		Wait(1000)
		if not TunedVehicles[value] then
			TunedVehicles[value] = {tune = 'default'}
			TuneVehicle(value)
			print('cacheTuned')
		else
			print('cacheNotTuned')
		end
	end
end)

local settingsTable = {
	w = function() return GetVehicleWheelWidth(cache.vehicle) end,
	h = function() return GetVehicleWheelSize(cache.vehicle) end,
	o = function() return GetVehicleWheelXOffset(cache.vehicle, 1) end,
	oR = function() return GetVehicleWheelXOffset(cache.vehicle, 3) end,
	c = function() return GetVehicleWheelYRotation(cache.vehicle, 1) end,
}

RegisterCommand('lifttest', function(args)
	if not inSettingsMenu and cache.vehicle then
		local veh = cache.vehicle
		local tune = TunedVehicles[cache.vehicle]
		if tune then
			local settings = {}
			local settingNames = {}
			for k,v in pairs(Config.MechanicSettings) do
				if v.tune.lift then
					settingNames[v.name] = #settings+1
					settings[#settings+1] = {type = 'slider', label = v.label, default = (settingsTable[v.name] and settingsTable[v.name]() or GetVehicleHandlingFloat(cache.vehicle, 'CHandlingData', v.name) or v.max), min = v.min, max = v.max, step = v.step}
				end
			end
			settings[#settings+1] = {type = 'checkbox', label = 'Reset to default'}
			inSettingsMenu = true
			print(QBCore.Shared.TableToString(settings))
			local input = lib.inputDialog('Mechanic Lift Settings', settings)
			if input then
				if veh == cache.vehicle then
					for k,v in pairs(settingNames) do
						settingNames[k] = input[v]
					end
					TriggerServerEvent('vehicletunes:server:settune', settingNames, tune.tune, VehToNet(cache.vehicle))
				end
			end
			inSettingsMenu = nil
			print(json.encode(settingNames))
		end
	else
		QBCore.Functions.Notify('No Vehicle', 'error')
	end
end)


local trailerPower
local hasTrailer
local speed = 1.15
CreateThread(function()
	while true do
		if cache.seat == -1 then
			if GetVehicleClass(cache.vehicle) == 20 then
				hasTrailer = GetVehicleTrailerVehicle(cache.vehicle)
				if hasTrailer and not trailerPower then
					trailerPower = true
					--local currentVehicleMaxSpeed = GetVehicleModelMaxSpeed(GetEntityModel(cache.vehicle))
					CreateThread(function()
						while cache.seat == -1 and hasTrailer do
							SetVehicleCheatPowerIncrease(cache.vehicle, speed) --* currentVehicleMaxSpeed / GetEntitySpeed(cache.vehicle))
							Wait(1)
						end
						trailerPower = nil
					end)
				end
			end
		end
		Wait(5000)
	end
end)

RegisterNetEvent('vehicletunes:client:trailer', function(data)
	local num = tonumber(data)
	if num and num >= 1 and num <= 2 then
		speed = num * 1.0
		print('Trailer torque set to ', speed)
	else
		print('Trailer torque bad value')
	end
end)