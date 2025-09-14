local QBCore = exports['qb-core']:GetCoreObject()
local test = QBCore.Shared.GetServerInfo() == 'test'

local handlingData = {
	vecCentreOfMassOffset = {type = 'vector'},
	vecInertiaMultiplier = {type = 'vector'},
	nInitialDriveGears = {type = 'integer'},
	nMonetaryValue = {type = 'integer'},
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
	vecMoveResistance = {type = 'vector', class = 'CBoatHandlingData'},
	vecTurnResistance = {type = 'vector', class = 'CBoatHandlingData'},
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
	vecTurnRes = {type = 'vector', class = 'CFlyingHandlingData'},
	vecSpeedRes = {type = 'vector', class = 'CFlyingHandlingData'},
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
local vehicleClasses = {}
for k,v in pairs(QBCore.Shared.Vehicles) do
	vehicleClasses[k] = v.class
	if Config.Overrides[v.model] then
		Config.Overrides[k] = Config.Overrides[v.model]
		Config.Overrides[v.model] = nil
	end
end

local function GetVehicleDefaults(vehicle)
	vehicle = vehicle or GetVehiclePedIsIn(PlayerPedId())
	if vehicle then
		local hash = GetEntityModel(vehicle)
		local class = vehicleClasses[hash]
		local defaults = Config.Defaults[class]
		local overrides = Config.Overrides[hash]
		if not defaults then defaults = {} end
		if overrides then
			if not overrides.disabled then
				for k,v in pairs(overrides) do
					defaults[k] = v
				end
			else
				overrides.disabled = nil
				defaults = overrides
			end
		end
		return defaults
	end
end

local function GetDefaultMaxSpeed()
	local defaults = GetVehicleDefaults()
	if defaults and	defaults.fMaxSpeed then
		return defaults.fMaxSpeed / 2.236936
	end
end

exports('GetDefaultMaxSpeed', GetDefaultMaxSpeed)

RegisterNetEvent('baseevents:enteredVehicle', function(vehicle, seat, name, netId)
	if Config.Enabled then
		local defaults = GetVehicleDefaults(vehicle)
		if defaults then
			for k,v in pairs(defaults) do
				if v then
					if k == 'fMaxSpeed' then
						SetVehicleMaxSpeed(vehicle, v / 2.236936)
					else
						local field = 'CHandlingData'
						if handlingData[k] then
							field = handlingData[k].class or 'CHandlingData'
						end
						SetVehicleHandlingField(vehicle, field, k, v)
					end
				end
			end
		end
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
					CreateThread(function()
						while cache.seat == -1 and hasTrailer do
							SetVehicleCheatPowerIncrease(cache.vehicle, speed)
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
	if num then
		speed = num * 1.0
		print('Trailer torque set to ', speed)
	else
		print('Trailer torque bad value')
	end
end)