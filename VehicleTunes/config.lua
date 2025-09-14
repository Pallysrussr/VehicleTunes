Config = {}

Config.Enabled = true

Config.Defaults = {
	['X'] = {
		fMaxSpeed = 200.0,
	},
	['S'] = {
		fMaxSpeed = 185.0,
	},
	['A'] = {
		fMaxSpeed = 170.0,
	},
	['B'] = {
		fMaxSpeed = 155.0,
	},
	['C'] = {
		fMaxSpeed = 135.0,
	},
	['M'] = {
		fMaxSpeed = 130.0,
	},
	['T'] = {
		fMaxSpeed = 110.0,
	},
	['XP'] = {
		fMaxSpeed = 210.0,
	},
	['SP'] = {
		fMaxSpeed = 190.0,
	},
	['AP'] = {
		fMaxSpeed = 175.0,
	},
	['BP'] = {
		fMaxSpeed = 160.0,
	},
	['MP'] = {
		fMaxSpeed = 145.0,
	},


	['X-'] = {
		fInitialDragCoeff = 2.5,
		fDriveBiasFront = 0.35,
		fInitialDriveForce = 0.345,
		fDriveInertia = 1.1,
		fInitialDriveMaxFlatVel = 230.0,
		fBrakeForce = 1.75,
		fSteeringLock = 42.0,
		fTractionCurveMax = 3.2,
		fTractionCurveMin = 2.9,
		fTractionCurveLateral = 22.5,
		fLowSpeedTractionLossMult = 1.0,
		fSuspensionForce = 2.45,
		fSuspensionReboundDamp = 0.9,
		fMaxSpeed = 200.0,
	},
	['S-'] = {
		fInitialDragCoeff = 3.0,
		fDriveBiasFront = 0.35,
		fInitialDriveForce = 0.325,
		fDriveInertia = 1.1,
		fInitialDriveMaxFlatVel = 200.0,
		fBrakeForce = 1.65,
		fSteeringLock = 40.0,
		fTractionCurveMax = 2.9,
		fTractionCurveMin = 2.7,
		fTractionCurveLateral = 22.5,
		fLowSpeedTractionLossMult = 1.0,
		fSuspensionForce = 2.45,
		fSuspensionReboundDamp = 0.9,
		fMaxSpeed = 175.0,
	},
	['A-'] = {
		fInitialDragCoeff = 3.5,
		fDriveBiasFront = 0.35,
		fInitialDriveForce = 0.31,
		fDriveInertia = 1.1,
		fInitialDriveMaxFlatVel = 170.0,
		fBrakeForce = 1.55,
		fSteeringLock = 37.0,
		fTractionCurveMax = 2.6,
		fTractionCurveMin = 2.4,
		fTractionCurveLateral = 22.5,
		fLowSpeedTractionLossMult = 1.0,
		fSuspensionForce = 2.45,
		fSuspensionReboundDamp = 0.9,
		fMaxSpeed = 155.0,
	},
	['B-'] = {
		fInitialDragCoeff = 4.0,
		fDriveBiasFront = 0.35,
		fInitialDriveForce = 0.285,
		fDriveInertia = 1.1,
		fInitialDriveMaxFlatVel = 140.0,
		fBrakeForce = 1.45,
		fSteeringLock = 35.0,
		fTractionCurveMax = 2.4,
		fTractionCurveMin = 2.2,
		fTractionCurveLateral = 22.5,
		fLowSpeedTractionLossMult = 1.0,
		fSuspensionForce = 2.45,
		fSuspensionReboundDamp = 0.9,
		fMaxSpeed = 150.0,
	},
	['C-'] = {
		fInitialDragCoeff = 4.5,
		fDriveBiasFront = 0.35,
		fInitialDriveForce = 0.27,
		fDriveInertia = 1.1,
		fInitialDriveMaxFlatVel = 135.0,
		fBrakeForce = 1.25,
		fSteeringLock = 33.0,
		fTractionCurveMax = 2.3,
		fTractionCurveMin = 2.1,
		fTractionCurveLateral = 22.5,
		fLowSpeedTractionLossMult = 1.0,
		fSuspensionForce = 2.45,
		fSuspensionReboundDamp = 0.9,
		fMaxSpeed = 130.0,
	},
	['M-'] = {
		fInitialDriveForce = 0.33,
		fDriveInertia = 1.3,
		fInitialDriveMaxFlatVel = 170.0,
		fTractionCurveMax = 2.8,
		fTractionCurveMin = 2.6,
		fMaxSpeed = 125.0,
	},
	['F1-'] = {
		fInitialDragCoeff = 2.5,
		fInitialDriveForce = 0.75,
		fDriveInertia = 1.1,
		fInitialDriveMaxFlatVel = 300.0,
		fBrakeForce = 1.8,
		fSuspensionForce = 2.45,
		fSuspensionReboundDamp = 0.9,
		fTractionCurveMax = 2.9,
		fTractionCurveMin = 2.7,
		fTractionCurveLateral = 18.5,
		fClutchChangeRateScaleUpShift = 13.0,
		fClutchChangeRateScaleDownShift = 11.0,
		fSteeringLock = 36.0,
	},
}

Config.Overrides = {
	--[[example
	panto = {
		disabled = true,--won't apply any default values, will still use overrides
		fInitialDriveMaxFlatVel = 300.0,
		fSuspensionRaise = 0.2,
		fSuspensionForce = false,--wont apply the default set above and will use value in the handling.meta
	}]]
	['gsxr19'] = {
		--Default = {
			fMaxSpeed = 140.0,
		--},
	},
	['cbr1000rrr'] = {
		--Default = {
			fMaxSpeed = 140.0,
		--},
	},
}