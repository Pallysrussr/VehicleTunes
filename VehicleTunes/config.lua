Config = {}

Config.Mechanics = {
	lift = {
		['redline']  = 0,
		['redline2'] = 0,
	},
	stance = {
		['redline']  = 0,
		['redline2'] = 0,
	},
	nos = {
		['redline']  = 0,
		['redline2'] = 0,
	},
	tunerchip = {
		['redline']  = 0,
		['redline2'] = 0,
	},
}

--Priority for Min/Max:
--set by Mechanic Config, if mechanic
--set by Mechanic
--set by Config
--set by Tune
Config.MechanicSettings = {
	{name = 'fSuspensionRaise', label = 'Suspension Lift',    min = 0.0,  max = 0.5, step = 0.01, tune = {lift = true}},
	{name = 'fSuspensionRaise', label = 'Suspension Lower',   min = -0.2, max = 0.0, step = 0.01, tune = {stance = true}},
	{name = 'fSuspensionForce', label = 'Suspension Force',   min = 0.0,  max = 4.0, step = 0.05,  tune = {lift = true, stance = true}},
	{name = 'w',                label = 'Wheel Width',        min = 0.0,  max = 2.0, step = 0.05,  tune = {lift = true, stance = true}},
	{name = 'h',                label = 'Wheel Height',       min = 0.0,  max = 1.5, step = 0.05,  tune = {lift = true, stance = true}},
	{name = 'o',                label = 'Wheel Offset Front', min = 0.0,  max = 1.6, step = 0.05,  tune = {lift = true, stance = true}},
	{name = 'oR',               label = 'Wheel Offset Rear',  min = 0.0,  max = 1.6, step = 0.05,  tune = {lift = true, stance = true}},
	{name = 'c',                label = 'Wheel Camber',       min = 0.0,  max = 0.2, step = 0.01, tune = {stance = true}},
}

Config.CustomSettings = {
	{name = 'fSteeringLock',    label = 'Turn Radius',                               step = 0.01, tune = {drift = true, circuit = true}},
	{name = 'fBrakeBiasFront',  label = 'Brake Bias',         min = 0.0,  max = 1.0, step = 0.1,  tune = {drift = true, circuit = true, drag = true}},
	{name = 'fDriveInertia',    label = 'Acceleration',       						 step = 0.1,  tune = {drift = true, circuit = true, drag = true}},
}

--old tunerchip settings
--boost        fInitialDriveForce
--acceleration fDriveInertia
--breaking     fBrakeBiasFront
--drivetrain   fDriveBiasFront


	--[[             Current Settings
	['Drift'] = {
		fDriveInertia                   = 1.6,
        fInitialDriveForce              = 1.6,
        fClutchChangeRateScaleUpShift   = 5.6,
        fClutchChangeRateScaleDownShift = 5.6,
        fSteeringLock                   = 70.0,
        fLowSpeedTractionLossMult       = 0.25,
        fTractionLossMult               = 1.2,
        fBrakeForce                     = 2.5,
        fInitialDriveMaxFlatVel         = 160.0,
        fTractionCurveMax               = 1.4
        fTractionCurveMin               = 1.8
        fDownforceModifier              = 1.0,
        fDriveBiasFront                 = 0.45,
        fTractionBiasFront              = 0.6,
        fTractionCurveLateral           = 25.0,
		fMaxSpeed = 123.0,
	},
	['Circuit'] = {
		fInitialDriveMaxFlatVel         = default() * 0.8, 
        fTractionCurveMax               = default() * 1.75,
        fTractionCurveMin               = default() * 1.75,
        fRollCentreHeightFront          = default() + 0.25,
        fRollCentreHeightRear           = default() + 0.25,
		fMaxSpeed = 156.0,
	},
	['Drag'] = {
		fDriveInertia                   = default() * 2.0,
		fInitialDriveForce              = default() * 2.0,
		fClutchChangeRateScaleUpShift   = default() * 2.0,
		fClutchChangeRateScaleDownShift = default() * 2.0,
		fSteeringLock                   = default() * 0.25,
		fLowSpeedTractionLossMult       = default() * 0.0,
		fTractionLossMult               = default() * 0.0,
		fBrakeForce                     = default() * 2.0,
		fMaxSpeed                       = 223.0,
	},
	['4x4'] = {
		fCamberStiffnesss         = 1.0,
		fLowSpeedTractionLossMult = 0.25,
		fSuspensionBiasFront      = 0.55,
		fSuspensionLowerLimit     = -0.2,
		fSuspensionUpperLimit     = 0.3,
		fSuspensionCompDamp       = 1.4,
		fSuspensionReboundDamp    = 1.4,
		fPercentSubmerged         = 0.95,
		fDriveBiasFront           = 0.525,
		fTractionBiasFront        = 0.525,
		fTractionLossMult         = 0.15,
		fAntiRollBarForce         = 0.5,
		fAntiRollBarBiasFront     = 0.5,
		fRollCentreHeightFront    = 0.95,
		fRollCentreHeightRear     = 0.95,
	},]]

--Priority Order (highest to lowest):
	--custom settings set by player,
	--custom settings set by mechanic,
	--config settings by plate (for current tune),
	--config settings by model (for current tune),
	--config settings by tune,
	--config default,
	--meta

Config.Default = {--overrides handling.meta values, these values should be the actual value you want
	[`model`] = {--use these values for this model
		fInitialDriveMaxFlatVel = 203.0,
		fSuspensionRaise = 0.2,
		--anything not listed here will use the next Priority Order
	},
	['ABCD1234'] = {--use these values for this plate
		fInitialDriveMaxFlatVel = 203.0,
		fSuspensionRaise = 0.2,
		--anything not listed here will use the next Priority Order
	},
	['X'] = {
		fMaxSpeed                       = 200.0,
	},
	['S'] = {
		fMaxSpeed                       = 185.0,
	},
	['A'] = {
		fMaxSpeed                       = 170.0,
	},
	['B'] = {
		fMaxSpeed                       = 155.0,
	},
	['C'] = {
		fMaxSpeed                       = 135.0,
	},
	['M'] = {
		fMaxSpeed                       = 130.0,
	},
	['T'] = {
		fMaxSpeed                       = 110.0,
	},
	['XP'] = {
		fMaxSpeed                       = 210.0,
	},
	['SP'] = {
		fMaxSpeed                       = 190.0,
	},
	['AP'] = {
		fMaxSpeed                       = 175.0,
	},
	['BP'] = {
		fMaxSpeed                       = 160.0,
	},
	['MP'] = {
		fMaxSpeed                       = 145.0,
	},
	['X-'] = {
		fInitialDragCoeff               = 2.5,
		fDriveBiasFront                 = 0.35,
		fInitialDriveForce              = 0.345,
		fDriveInertia                   = 1.1,
		fInitialDriveMaxFlatVel         = 230.0,
		fBrakeForce                     = 1.75,
		fSteeringLock                   = 42.0,
		fTractionCurveMax               = 3.2,
		fTractionCurveMin               = 2.9,
		fTractionCurveLateral           = 22.5,
		fLowSpeedTractionLossMult       = 1.0,
		fSuspensionForce                = 2.45,
		fSuspensionReboundDamp          = 0.9,
		fMaxSpeed                       = 200.0,
	},
	['S-'] = {
		fInitialDragCoeff               = 3.0,
		fDriveBiasFront                 = 0.35,
		fInitialDriveForce              = 0.325,
		fDriveInertia                   = 1.1,
		fInitialDriveMaxFlatVel         = 200.0,
		fBrakeForce                     = 1.65,
		fSteeringLock                   = 40.0,
		fTractionCurveMax               = 2.9,
		fTractionCurveMin               = 2.7,
		fTractionCurveLateral           = 22.5,
		fLowSpeedTractionLossMult       = 1.0,
		fSuspensionForce                = 2.45,
		fSuspensionReboundDamp          = 0.9,
		fMaxSpeed                       = 175.0,
	},
	['A-'] = {
		fInitialDragCoeff               = 3.5,
		fDriveBiasFront                 = 0.35,
		fInitialDriveForce              = 0.31,
		fDriveInertia                   = 1.1,
		fInitialDriveMaxFlatVel         = 170.0,
		fBrakeForce                     = 1.55,
		fSteeringLock                   = 37.0,
		fTractionCurveMax               = 2.6,
		fTractionCurveMin               = 2.4,
		fTractionCurveLateral           = 22.5,
		fLowSpeedTractionLossMult       = 1.0,
		fSuspensionForce                = 2.45,
		fSuspensionReboundDamp          = 0.9,
		fMaxSpeed                       = 155.0,
	},
	['B-'] = {
		fInitialDragCoeff               = 4.0,
		fDriveBiasFront                 = 0.35,
		fInitialDriveForce              = 0.285,
		fDriveInertia                   = 1.1,
		fInitialDriveMaxFlatVel         = 140.0,
		fBrakeForce                     = 1.45,
		fSteeringLock                   = 35.0,
		fTractionCurveMax               = 2.4,
		fTractionCurveMin               = 2.2,
		fTractionCurveLateral           = 22.5,
		fLowSpeedTractionLossMult       = 1.0,
		fSuspensionForce                = 2.45,
		fSuspensionReboundDamp          = 0.9,
		fMaxSpeed                       = 150.0,
	},
	['C-'] = {
		fInitialDragCoeff               = 4.5,
		fDriveBiasFront                 = 0.35,
		fInitialDriveForce              = 0.27,
		fDriveInertia                   = 1.1,
		fInitialDriveMaxFlatVel         = 135.0,
		fBrakeForce                     = 1.25,
		fSteeringLock                   = 33.0,
		fTractionCurveMax               = 2.3,
		fTractionCurveMin               = 2.1,
		fTractionCurveLateral           = 22.5,
		fLowSpeedTractionLossMult       = 1.0,
		fSuspensionForce                = 2.45,
		fSuspensionReboundDamp          = 0.9,
		fMaxSpeed                       = 130.0,
	},
	['M-'] = {
		fInitialDriveForce              = 0.33,
		fDriveInertia                   = 1.3,
		fInitialDriveMaxFlatVel         = 170.0,
		fTractionCurveMax               = 2.8,
		fTractionCurveMin               = 2.6,
		fMaxSpeed                       = 125.0,
	},
	['F1-'] = {
		fInitialDragCoeff               = 2.5,
		fInitialDriveForce              = 0.75,
		fDriveInertia                   = 1.1,
		fInitialDriveMaxFlatVel         = 300.0,
		fBrakeForce                     = 1.8,
		fSuspensionForce                = 2.45,
		fSuspensionReboundDamp          = 0.9,
		fTractionCurveMax               = 2.9,
		fTractionCurveMin               = 2.7,
		fTractionCurveLateral           = 18.5,
		fClutchChangeRateScaleUpShift   = 13.0,
		fClutchChangeRateScaleDownShift = 11.0,
		fSteeringLock                   = 36.0,
	},
}

Config.Drift = {--these values are multiplied with their default/meta values, should not be the actual value you want to use

}

Config.Circuit = {--these values are multiplied with their default/meta values, should not be the actual value you want to use
	['X'] = {
		fMaxSpeed                       = 175.0,
	},
	['S'] = {
		fMaxSpeed                       = 157.0,
	},
	['A'] = {
		fMaxSpeed                       = 145.0,
	},
	['B'] = {
		fMaxSpeed                       = 130.0,
	},
	['C'] = {
		fMaxSpeed                       = 115.0,
	},
	['M'] = {
		fMaxSpeed                       = 100.0,
	},
	['XP'] = {
		fMaxSpeed                       = 180.0,
	},
	['SP'] = {
		fMaxSpeed                       = 165.0,
	},
	['AP'] = {
		fMaxSpeed                       = 150.0,
	},
	['BP'] = {
		fMaxSpeed                       = 135.0,
	},
	['MP'] = {
		fMaxSpeed                       = 105.0,
	},
}

Config.Lift = {--these values are multiplied with their default/meta values, should not be the actual value you want to use.

}

Config.Stance = {--these values are multiplied with their default/meta values, should not be the actual value you want to use.

}