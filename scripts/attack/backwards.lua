-- =============================================================================
-- Homeworld 2 Clean Data Resource Project
-- By S110
-- Version 1.0
-- 02/06/2010
-- Tools used: EditPad Lite, LuaDC version 0.9.19, and Cold Fusion LUA Decompiler v1.0.0
-- =============================================================================

AttackStyleName = FaceTarget

Data = {
howToBreakFormation = StraightAndScatter,
inRangeFactor = 0.85,
slideDistanceMultiplier = 1.5,
tooSlowSpeed = 3,
tooFastMultiplier = 1.4,
facingAngle = 180,
moveAttackMaxDistanceMultiplier = 1.2,
tryToMatchHeight = 0,
tryToGetAboveTarget = 0,
flyToTargetBecauseItsFarOutOfRangeDelay = 0,
flyToTargetBecauseItsMovingAwayDelay = 1,
stopAndFaceTheTargetDelay = 0,
flyToAboveTheTargetDelay = 1,
RandomActions = {},
BeingAttackedActions = {},
FiringActions = {
	{Type = InterpolateTarget, Weighting = 1, minParam = 3, maxParam = 3},
	{Type = NoAction, Weighting = 2},},}