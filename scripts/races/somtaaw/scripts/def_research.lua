Icon_Speed = "data:ui/newui/research/icons/speed.mres"
Icon_Health = "data:ui/newui/research/icons/health.mres"
Icon_Tech = "data:ui/newui/research/icons/tech.mres"
Icon_Ability = "data:ui/newui/research/icons/ability.mres"
Icon_Build = "data:ui/newui/research/icons/build.mres"
Modifier = 0
Ability = 1
AllShips = 0
Family = 1
Ship = 2

research = 
{
	--======================================================================
	-- Tiers
	--======================================================================



	--======================================================================
	-- Tech
	--======================================================================

	-- ** IMPORTANT NOTE ABOUT TECHS
	-- Even though techs are global, and are applied to all ships we still need
	--  to specify a location to place them in the UI.  In the case of techs,
	--  targetName must be specified in order for your tech to show up in the UI.
	--  The tech will show up under the ship specified by targetName
	--
	
	
	
	
	--{
	--	Name =					"PlasmaBombs",
	--	RequiredResearch =		"",
	--	RequiredSubSystems =	"FighterProduction",
	--	Cost = 					500,
	--	Time = 					30,
	--	DisplayedName =			"Plasma Bombs",
	--	DisplayPriority =		21,
	--	Description =			"(500 RUs)",
	--},

	 
	--{
	--	Name =					"CorvettePulsarWeapons",
	--	RequiredResearch =		"",
	--	RequiredSubSystems =	"Research & CorvetteProduction",
	--	Cost = 					500,
	--	Time = 					60,
	--	DisplayedName =			"Pulsar Weapons",
	--	DisplayPriority =		22,
	--	Description =			" (500 RUs)",
	--},
	
	-------------------------------------------------------
--Somtaaw
-------------------------------------------------------

{Name = "SMTFighterDrive",
RequiredResearch = "",
RequiredSubSystems = "Research",
Cost=30,
Time = 96,
DisplayedName = "FighterDrive",
DisplayPriority = 1,
Description = "Leads to Super Acolyte Research",
TargetType = Family,
TargetName = "Fighter",
Icon = Icon_Tech,
ShortDisplayedName = "FighterDrive"},

{Name = "SMTPlasmaBombLauncher",
RequiredResearch = "SMTFighterDrive",
RequiredSubSystems = "WeaponsResearch",
Cost=30,
Time = 120,
DisplayedName = "Super Acolyte",
DisplayPriority = 4,
Description = "Unlocks Super Acolyte",
TargetType = ship,
TargetName = "hgn_smt_superacolyte",
Icon = Icon_Tech,
ShortDisplayedName = "Super Acolyte"},

{Name = "SMTCorvetteDrive",
RequiredResearch = "",
RequiredSubSystems = "Research",
Cost=30,
Time = 110,
DisplayedName = "Corvette Drive",
DisplayPriority = 1,
Description = "Unlocks ACV",
TargetType = Family,
TargetName = "Corvette",
Icon = Icon_Tech,
ShortDisplayedName = "Corvette Drive"},

{Name="FighterHealthUpgrade1",
RequiredResearch = "", 
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="Fighter Armor Level 1",
DisplayPriority=80,
Description="Improved fighter armor to Level 1 allowing them to withstand more hits",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Fighter",
UpgradeName="MAXHEALTH",
UpgradeValue=2,
Icon=Icon_Health,
ShortDisplayedName="Fighter Armor Level 1"},

{Name="FighterHealthUpgrade2",
RequiredResearch="FighterHealthUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=80,
DisplayedName="Fighter Armor Level 2",
DisplayPriority=80,
Description="Improves Fighter Armor to Level 2",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Fighter",
	UpgradeName="MAXHEALTH",
	UpgradeValue=4,
	Icon=Icon_Health,
	ShortDisplayedName="Fighter Armor Level 2"},

{Name="SMTACVEMP",
RequiredResearch="SMTCorvetteDrive",
RequiredSubSystems="WeaponsResearch",
Cost=30,
Time=70,
DisplayedName="$7519",
DisplayPriority=31,
Description="$7520",
UpgradeType=Ability,
TargetType=Ship,
TargetName="hgn_smt_acv",
UpgradeName="SpecialAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7209"},

{Name = "SMTCapitalShipDrive",
RequiredResearch = "",
RequiredSubSystems = "Research",
Cost=30,
Time = 140,
DisplayedName = "Frigate Drive",
DisplayPriority = 1,
Description = "Unlocks Ramming Frigate and leads to Super capital ship drive research",
TargetType = Family,
TargetName = "Frigate",
Icon = Icon_Tech,
ShortDisplayedName = "Frigate Drive"},

{Name = "SMThyperspaceTech",
RequiredResearch = "SMTCapitalShipDrive",
RequiredSubSystems = "Research",
Cost=30,
Time = 150,
DisplayedName = "hyperspaceTech",
DisplayPriority = 2,
Description = "Unlocks Hyperspace Jump Ability",
UpgradeType = Ability,
TargetType = AllShips,
UpgradeName = "HyperSpace",
TargetName = "hgn_smt_ms",
Icon = Icon_Hyperspace,
ShortDisplayedName = "hyperspaceTech"},

{Name = "SMTIonCannons",
RequiredResearch = "SMTCapitalShipDrive",
RequiredSubSystems = "",
Cost=30,
Time = 160,
DisplayedName = "Advanced Ion Cannons",
DisplayPriority = 5,
Description = "Unlocks Multi Beam Frigate",
TargetType = ship,
TargetName = "hgn_smt_multibeamfrigate",
Icon = Icon_Tech,
ShortDisplayedName = "Adv Ion Cannons"},

{Name = "SMTDroneTechnology",
RequiredResearch = "SMTCapitalShipDrive",
RequiredSubSystems = "",
Cost=30,
Time = 160,
DisplayedName = "Micro Ship Construction",
DisplayPriority = 6,
Description = "Unlocks Hive Frigates",
TargetType = ship,
TargetName = "hgn_smt_hivefrigate",
Icon = Icon_Tech,
ShortDisplayedName = "Micro Ship Construction"},

{Name="SmtMothershipSensorRangeUpgrade1",
RequiredResearch="SMTReconAdvancedSensors",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Commandship Sensor Range 1",
DisplayPriority=40,
Description = "<b>Description:</b> Improves CommandShip Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_MS",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 CommandShip"},

{Name="SMTMothershipSensorRangeUpgrade2",
RequiredResearch="SMTMothershipSensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Commandship Sensor Range 2",
DisplayPriority=40,
Description = "<b>Description:</b> Improves CommandShip Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Advanced Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_MS",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Commandship"},

{Name="SMTMothershipSecondarySensorRangeUpgrade1",
RequiredResearch="SMTMothershipSensorRangeUpgrade2",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Commandship Secondary Sensor Range 1",
DisplayPriority=40,
Description = "<b>Description:</b> Improves CommandShip Secondary Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_MS",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 CommandShip"},

{Name="SMTMothershipSecondarySensorRangeUpgrade2",
RequiredResearch="SMTMothershipSecondarySensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Commandship Secondary Sensor Range 2",
DisplayPriority=40,
Description = "<b>Description:</b> Improves CommandShip Secondary Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Advanced Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_MS",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Commandship"},

{Name="SmtFaalCorumSensorRangeUpgrade1",
RequiredResearch="SMTReconAdvancedSensors",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Commandship Sensor Range 1",
DisplayPriority=40,
Description = "<b>Description:</b> Improves CommandShip Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_Faal_corum",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 CommandShip"},

{Name="SMTFaalCorumSensorRangeUpgrade2",
RequiredResearch="SMTFaalCorumSensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Commandship Sensor Range 2",
DisplayPriority=40,
Description = "<b>Description:</b> Improves CommandShip Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Advanced Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_Faal_corum",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Commandship"},

{Name="SMTFaalCorumSecondarySensorRangeUpgrade1",
RequiredResearch="SMTFaalCorumSensorRangeUpgrade2",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Commandship Secondary Sensor Range 1",
DisplayPriority=40,
Description = "<b>Description:</b> Improves CommandShip Secondary Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_Faal_Corum",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 CommandShip"},

{Name="SMTFaalCorumSecondarySensorRangeUpgrade2",
RequiredResearch="SMTFaalCorumSecondarySensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Commandship Secondary Sensor Range 2",
DisplayPriority=40,
Description = "<b>Description:</b> Improves CommandShip Secondary Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Advanced Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_Faal_Corum",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Commandship"},

{Name="SMTCarrierSensorRangeUpgrade1",
RequiredResearch="SMTReconAdvancedSensors",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Carrier Sensor Range 1",
DisplayPriority=60,
Description = "<b>Description:</b> Improves Carrier Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module & CapShipProduction",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_Carrier",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 Carrier"},

{Name="SMTCarrierSensorRangeUpgrade2",
RequiredResearch="SMTCarrierSensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Carrier Sensor Range 2",
DisplayPriority=60,
Description = "<b>Description:</b> Improves Carrier Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Advanced Research Module & CapShipProduction",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_Carrier",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Carrier"},

{Name="SMTCarrierSecondarySensorRangeUpgrade1",
RequiredResearch="SMTCarrierSensorRangeUpgrade2",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Carrier Secondary Sensor Range 1",
DisplayPriority=60,
Description = "<b>Description:</b> Improves Carrier Secondary Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module & CapShipProduction",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_Carrier",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 Carrier"},

{Name="SMTCarrierSecondarySensorRangeUpgrade2",
RequiredResearch="SMTCarrierSecondarySensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Carrier Secondary Sensor Range 2",
DisplayPriority=60,
Description = "<b>Description:</b> Improves Carrier Secondary Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Advanced Research Module & CapShipProduction",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_Carrier",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Carrier"},

{Name="SMTReconAdvancedSensors",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=80,
DisplayedName="Advanced Sensors",
DisplayPriority=79,
Description="Upgrades Recons Sensors to Advanced Sensors, enabled increased sensor range and enhanced Cloak Detection.",
TargetName="hgn_smt_scout",
Icon=Icon_Tech,
ShortDisplayedName="Advanced Sensor Tech"},

{Name="SmtReconSensorRangeUpgrade1",
RequiredResearch="SMTReconAdvancedSensors",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon Sensor Range 1",
DisplayPriority=79,
Description = "<b>Description:</b> Improves Recons Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="hgn_smt_scout",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 Recon"},

{Name="SMTReconSensorRangeUpgrade2",
RequiredResearch="SMTReconSensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon Sensor Range 2",
DisplayPriority=79,
Description = "<b>Description:</b> Improves Recons Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="hgn_smt_scout",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Recon"},

{Name="SMTReconSecondarySensorRangeUpgrade1",
RequiredResearch="SMTReconAdvancedSensors & SMTReconSensorRangeUpgrade2",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon Secondary Sensor Range 1",
DisplayPriority=79,
Description = "<b>Description:</b> Improves Recon Secondary Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="hgn_smt_scout",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 Recon"},

{Name="SMTReconSecondarySensorRangeUpgrade2",
RequiredResearch="SMTReconSecondarySensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon Secondary Sensor Range 2",
DisplayPriority=79,
Description = "<b>Description:</b> Improves Recon Secondary Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="hgn_smt_scout",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Recon"},

{Name="SMTReconCloakSensorRangeUpgrade1",
RequiredResearch="SMTReconAdvancedSensors",
RequiredSubSystems="Research ",
Cost=0,
Time=0,
DisplayedName="Recon Cloak Sensor Range 1",
DisplayPriority=79,
Description = "<b>Description:</b> Improves Recons Cloak Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="hgn_smt_scout",
UpgradeName = "CloakDetection", 
UpgradeValue = 2,         
Icon = Icon_Cloak,         
ShortDisplayedName="Lvl 1 Recon"},

{Name="SMTReconCloakSensorRangeUpgrade2",
RequiredResearch="SMTReconCloakSensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon Cloak Sensor Range 2",
DisplayPriority=79,
Description = "<b>Description:</b> Improves Recons Cloak Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="hgn_smt_scout",
UpgradeName = "CloakDetection", 
UpgradeValue = 4,         
Icon = Icon_Cloak,         
ShortDisplayedName="Lvl 2 Recon"},

{Name="SMTReconVisualDetectionRangeUpgrade1",
RequiredResearch="SMTReconAdvancedSensors",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon VisualDetection Range 1",
DisplayPriority=79,
Description = "<b>Description:</b> Improves Recons VisualDetection Range to Level 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="hgn_smt_scout",
UpgradeName = "VisualRange", 
UpgradeValue = 4,         
Icon = Icon_Cloak,         
ShortDisplayedName="Lvl 1 Recon"},

{Name="SMTReconVisualDetectionRangeUpgrade2",
RequiredResearch="SMTReconVisualDetectionRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon VisualDetection Range 2",
DisplayPriority=79,
Description = "<b>Description:</b> Improves Recons VisualDetection Range to Lvl 2. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="hgn_smt_scout",
UpgradeName = "VisualRange", 
UpgradeValue = 8,         
Icon = Icon_Cloak,         
ShortDisplayedName="Lvl 2 Recon"},

{Name = "SMTSuperCapitalShipDrive",
RequiredResearch = "SMTCapitalShipDrive",
RequiredSubSystems = "",
Cost=30,
Time = 300,
DisplayedName = "Destroyer Drive",
DisplayPriority = 1,
Description = "Unlocks Carriers, Unlocks Missile Technology, Unlocks Advanced Destroyer Drive",
TargetType = Family,
TargetName = "Capital",
Icon = Icon_Tech,
ShortDisplayedName = "Destroyer Drive"},

{Name = "SMTGuidedMissiles",
RequiredResearch = "SMTSuperCapitalShipDrive & SMTIonCannons",
RequiredSubSystems = "",
Cost=30,
Time = 120,
DisplayedName = "Missile Launcher",
DisplayPriority = 3,
Description = "Unlocks Destroyers",
TargetType = ship,
TargetName = "hgn_smt_destroyer",
Icon = Icon_Tech,
ShortDisplayedName = "Missile Launcher"},

{Name = "SmtEnergyCannonTechnology",
RequiredResearch = "SMTSuperCapitalShipDrive & SMTGuidedMissiles & SmtAdvDestroyerDrive",
RequiredSubSystems = "Research",
Cost=30,
Time=160,
DisplayedName = "EnergyCannons",
DisplayPriority = 4,
Description = "$9652",
TargetType = ship,
UpgradeType=Ability,
TargetName = "hgn_smt_dreadnought",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name = "SmtEnergyCannonTechnology1",
RequiredResearch = "SMTSuperCapitalShipDrive & SmtEnergyCannonTechnology",
RequiredSubSystems = "WeaponsResearch",
Cost = 0,
Time = 0,
DisplayedName = "EnergyCannons",
DisplayPriority = 4,
Description = "$9652",
TargetType = ship,
UpgradeType=Ability,
TargetName = "hgn_smt_ms",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="Energy Cannons"},

{Name = "SmtEnergyCannonTechnology7",
RequiredResearch = "SMTSuperCapitalShipDrive & SmtEnergyCannonTechnology",
RequiredSubSystems = "WeaponsResearch",
Cost = 0,
Time = 0,
DisplayedName = "EnergyCannons",
DisplayPriority = 4,
Description = "$9652",
TargetType = ship,
UpgradeType=Ability,
TargetName = "hgn_smt_faal_corum",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="Energy Cannons"},

{Name = "SmtEnergyCannonTechnology2",
RequiredResearch = "SMTSuperCapitalShipDrive & SmtEnergyCannonTechnology",
RequiredSubSystems = "WeaponsResearch",
Cost = 0,
Time = 0,
DisplayedName = "EnergyCannons",
DisplayPriority = 4,
Description = "$9652",
TargetType = ship,
UpgradeType=Ability,
TargetName = "hgn_smt_carrier",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="Energy Cannons"},

{Name = "SmtEnergyCannonTechnology3",
RequiredResearch = "SMTSuperCapitalShipDrive & SmtEnergyCannonTechnology",
RequiredSubSystems = "WeaponsResearch",
Cost = 0,
Time = 0,
DisplayedName = "EnergyCannons",
DisplayPriority = 4,
Description = "$9652",
TargetType = ship,
UpgradeType=Ability,
TargetName = "hgn_smt_destroyer",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="Energy Cannons"},

{Name = "SmtEnergyCannonTechnology4",
RequiredResearch = "SMTSuperCapitalShipDrive & SmtEnergyCannonTechnology",
RequiredSubSystems = "WeaponsResearch",
Cost = 0,
Time = 0,
DisplayedName = "EnergyCannons",
DisplayPriority = 4,
Description = "$9652",
TargetType = ship,
UpgradeType=Ability,
TargetName = "hgn_smt_hivefrigate",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="Energy Cannons"},

{Name = "SmtEnergyCannonTechnology5",
RequiredResearch = "SMTSuperCapitalShipDrive & SmtEnergyCannonTechnology",
RequiredSubSystems = "WeaponsResearch",
Cost = 0,
Time = 0,
DisplayedName = "EnergyCannons",
DisplayPriority = 4,
Description = "$9652",
TargetType = ship,
UpgradeType=Ability,
TargetName = "hgn_smt_acolyteE",
UpgradeName="SpecialAttack",
Icon=Icon_Ability,
ShortDisplayedName="Energy Cannons"},

{Name = "SmtEnergyCannonTechnology6",
RequiredResearch = "SMTSuperCapitalShipDrive & SmtEnergyCannonTechnology",
RequiredSubSystems = "WeaponsResearch",
Cost = 0,
Time = 0,
DisplayedName = "EnergyCannons",
DisplayPriority = 4,
Description = "$9652",
TargetType = ship,
UpgradeType=Ability,
TargetName = "hgn_smt_acvE",
UpgradeName="SpecialAttack",
Icon=Icon_Ability,
ShortDisplayedName="Energy Cannons"},

{Name="SmtAdvFighterDrive",
RequiredResearch="SMTFighterDrive",
RequiredSubSystems="AdvancedResearch",
Cost=30,
Time=70,
DisplayedName="AdvFighter Drive",
DisplayPriority=81,
Description="$7758",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Fighter",
UpgradeName="MAXSPEED",
UpgradeValue=1.5,
Icon=Icon_Speed,
ShortDisplayedName="AdvFighter Drive"},

{Name="SmtArmorlevel1",
RequiredResearch="SmtCorvetteDrive",
RequiredSubSystems="ArmorResearch",
Cost=30,
Time=80,
DisplayedName="Armor Level 1",
DisplayPriority=200,
Description="$7762",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Corvette",
UpgradeName="MAXHEALTH",
UpgradeValue=1.6,
Icon=Icon_Health,
ShortDisplayedName="Armor Level 1"},

{Name="SmtAdvCorvetteDrive",
RequiredResearch="SmtCorvetteDrive",
RequiredSubSystems="AdvancedResearch",
Cost=30,
Time=80,
DisplayedName="Advanced Corvette Drive",
DisplayPriority=201,
Description="$7766",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Corvette",
UpgradeName="MAXSPEED",
UpgradeValue=1.4,
Icon=Icon_Speed,
ShortDisplayedName="Advanced Corvette Drive"},

{Name="SmtArmorLevel2",
RequiredResearch="SmtCapitalShipDrive",
RequiredSubSystems="ArmorResearch",
Cost=30,
Time=100,
DisplayedName="Armor Level 2",
DisplayPriority=306,
Description="$7770",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Frigate",
UpgradeName="MAXHEALTH",
UpgradeValue=1.6,
Icon=Icon_Health,
ShortDisplayedName="Armor Level 2"},

{Name="SmtAdvFrigateDrive",
RequiredResearch="SmtCapitalShipDrive",
RequiredSubSystems="AdvancedResearch",
Cost=30,
Time=100,
DisplayedName="AdvFrigate Drive",
DisplayPriority=307,
Description="$7774",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Frigate",
UpgradeName="MAXSPEED",
UpgradeValue=1.35,
Icon=Icon_Speed,
ShortDisplayedName="AdvFrigate Drive"},

{Name="SMTArmorLevel3",
RequiredResearch="SmtSuperCapitalShipDrive",
RequiredSubSystems="ArmorResearch",
Cost=30,
Time=80,
DisplayedName="Armor Level 3",
DisplayPriority=61,
Description="$7746",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Capital",
UpgradeName="MAXHEALTH",
UpgradeValue=1.6,
Icon=Icon_Health,
ShortDisplayedName="Armor Level 3"},

{Name="SmtAdvDestroyerDrive",
RequiredResearch="SmtSuperCapitalShipDrive",
RequiredSubSystems="AdvancedResearch",
Cost=30,
Time=80,
DisplayedName="AdvDestroyer Drive",
DisplayPriority=64,
Description="$7750",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Capital",
UpgradeName="MAXSPEED",
UpgradeValue=1.35,
Icon=Icon_Speed,
ShortDisplayedName="AdvDestroyer Drive"},

{Name="SmtScoutPingAbility",
RequiredResearch="",
RequiredSubSystems="Research | AdvancedResearch",
Cost=30,
Time=40,
DisplayedName="$7513",
DisplayPriority=27,
Description = "<b>Description:</b> Allows Recon units to Ping the mision area, briefly revealing enemy units. \n\n<b>Prerequisites:</b> None",
UpgradeType=Ability,
TargetType=Ship,
TargetName="Hgn_Smt_Scout",
UpgradeName="SensorPing",
Icon=Icon_Ability,
ShortDisplayedName="$7206"},

{Name="SMTAttackBomberImprovedBombs",
RequiredResearch="",
RequiredSubSystems="AdvancedResearch",
Cost=30,
Time=45,
DisplayedName="$7517",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="Hgn_Smt_SuperAcolyte",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="SMTScoutEMPAbility",
RequiredResearch="",
RequiredSubSystems="Research | AdvancedResearch",
Cost=30,
Time=70,
DisplayedName="$7519",
DisplayPriority=31,
Description = "<b>Description:</b> Allows Recon units to fire a EMP attack that disables enemy ships for a limited time. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Ability,
TargetType=Ship,
TargetName="Hgn_Smt_Scout",
UpgradeName="SpecialAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7209"},

{Name="SmtRepairAbility",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=40,
DisplayedName="$7511",
DisplayPriority=22,
Description="$7512",
UpgradeType=Ability,
TargetType=Ship,
TargetName="Hgn_Smt_Worker",
UpgradeName="Repair", 
Icon=Icon_Ability,
ShortDisplayedName="$7205"},

{Name="SmtCaptureAbility",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=40,
DisplayedName="Capture",
DisplayPriority=22,
Description="Marine enemy ships",
UpgradeType=Ability,
TargetType=Ship,
TargetName="Hgn_Smt_Worker",
UpgradeName="Capture", -- Heheh, hopefully this works
Icon=Icon_Ability,
ShortDisplayedName="Capture"},

{Name="UtilityHealthUpgrade1",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=50,
DisplayedName="$7779",
DisplayPriority=701,
Description="$7780",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Utility",
UpgradeName="MAXHEALTH",
UpgradeValue=1.5,
Icon=Icon_Health,
ShortDisplayedName="$7351"},

{Name="UtilityHealthUpgrade2",
RequiredResearch="UtilityHealthUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=70,
DisplayedName="$7781",
DisplayPriority=701,
Description="$7782",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Utility",
UpgradeName="MAXHEALTH",
UpgradeValue=2,
Icon=Icon_Health,
ShortDisplayedName="$7352"},

{Name="SMTMothershipBUILDSPEEDUpgrade1",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7800",
DisplayPriority=45,
Description = "<b>Description:</b> Improves construction speed by 30% on the Faal Corum. \n\n<b>Prerequisites:</b> Advanced Research Module & Hyperspace Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_Faal_corum",
UpgradeName="BUILDSPEED",
UpgradeValue=1.3,
Icon=Icon_Build,
ShortDisplayedName="$7240"},

{Name="SMTMothershipBUILDSPEEDUpgrade2",
RequiredResearch="SMTMothershipBUILDSPEEDUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7800",
DisplayPriority=45,
Description = "<b>Description:</b> Improves construction speed by 50% on the Faal Corum. \n\n<b>Prerequisites:</b> Advanced Research Module & Hyperspace Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_Faal_corum",
UpgradeName="BUILDSPEED",
UpgradeValue=1.5,
Icon=Icon_Build,
ShortDisplayedName="$7240"},

{Name="SMTCarrierBUILDSPEEDUpgrade1",
RequiredResearch="SMTSuperCapitalShipDrive",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7805",
DisplayPriority=65,
Description="$7806",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_Carrier",
UpgradeName="BUILDSPEED",
UpgradeValue=1.3,
Icon=Icon_Build,
ShortDisplayedName="$7240"},

{Name="SMTCarrierBUILDSPEEDUpgrade2",
RequiredResearch="SMTCarrierBUILDSPEEDUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7805",
DisplayPriority=65,
Description="$7806",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_Carrier",
UpgradeName="BUILDSPEED",
UpgradeValue=1.5,
Icon=Icon_Build,
ShortDisplayedName="$7240"},

{Name="SMTShipyardBUILDSPEEDUpgrade1",
RequiredResearch="SMThyperspaceTech",
RequiredSubSystems="Research",
Cost=30,
Time=40,
DisplayedName="$7810",
DisplayPriority=1204,
Description = "<b>Description:</b> Improves construction speed by 30% on the Kuun Lan. \n\n<b>Prerequisites:</b> Advanced Research Module & Hyperspace Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_MS",
UpgradeName="BUILDSPEED",
UpgradeValue=1.3,
Icon=Icon_Build,
ShortDisplayedName="Lvl 1 Kuun Lan"},

{Name="SMTShipyardBUILDSPEEDUpgrade2",
RequiredResearch="SMTShipyardBUILDSPEEDUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=40,
DisplayedName="$7810",
DisplayPriority=1204,
Description = "<b>Description:</b> Improves construction speed by 30% on the Kuun Lan. \n\n<b>Prerequisites:</b> Advanced Research Module & Hyperspace Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Hgn_Smt_MS",
UpgradeName="BUILDSPEED",
UpgradeValue=1.5,
Icon=Icon_Build,
ShortDisplayedName="Lvl 2 Kuun Lan"},

{Name="SMTSiegeTechResearch",
RequiredResearch="",
RequiredSubSystems="WeaponsResearch",
Cost=30,
Time=300,
DisplayedName="SiegeCannon Research",
DisplayPriority=40,
Description="Unlocks Siege Cannon",
TargetName="Hgn_Smt_MS",
Icon=Icon_Tech,
ShortDisplayedName="SiegeCannon Technology"},



--AI behaviour	
	{ 
		Name = "cpuplayers_defensive", 
		RequiredResearch = "", 
		RequiredSubSystems = "", 
		Cost = 1, 
		Time = 1, 
		DisplayedName = "", 
		DisplayPriority = 0,        
		Description = "",             
		TargetName = "",
	},	
	{ 
		Name = "cpuplayers_aggressive", 
		RequiredResearch = "", 
		RequiredSubSystems = "", 
		Cost = 1, 
		Time = 1, 
		DisplayedName = "", 
		DisplayPriority = 0,        
		Description = "",             
		TargetName = "",
	},	
	{ 
		Name = "cpuplayers_dynamic", 
		RequiredResearch = "", 
		RequiredSubSystems = "", 
		Cost = 1, 
		Time = 1, 
		DisplayedName = "", 
		DisplayPriority = 0,        
		Description = "",             
		TargetName = "",
	},
--AI no-rush	
	{ 
		Name = "cpuplayers_norushtime5", 
		RequiredResearch = "", 
		RequiredSubSystems = "", 
		Cost = 1, 
		Time = 1, 
		DisplayedName = "", 
		DisplayPriority = 0,        
		Description = "",             
		TargetName = "",
	},		
	{ 
		Name = "cpuplayers_norushtime10", 
		RequiredResearch = "", 
		RequiredSubSystems = "", 
		Cost = 1, 
		Time = 1, 
		DisplayedName = "", 
		DisplayPriority = 0,        
		Description = "",             
		TargetName = "",
	},		
	{ 
		Name = "cpuplayers_norushtime15", 
		RequiredResearch = "", 
		RequiredSubSystems = "", 
		Cost = 1, 
		Time = 1, 
		DisplayedName = "", 
		DisplayPriority = 0,        
		Description = "",             
		TargetName = "",
	},	
--AI build speed	
	{ 
		Name =			"AllShipBuildSpeed",
		RequiredResearch =	"",                       
		RequiredSubSystems =	"",                               
		Cost = 			1,
		Time = 			1,
		DisplayedName =		"",
		DisplayPriority =	0,                                                    
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Family,
		TargetName =		"Capital",
		UpgradeName =		"BUILDSPEED",
		UpgradeValue =		1.025,
	},	
	{ 
		Name =			"AllShipBuildSpeedHard",
		RequiredResearch =	"",                       
		RequiredSubSystems =	"",                               
		Cost = 			1,
		Time = 			1,
		DisplayedName =		"",
		DisplayPriority =	0,                                                    
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Family,
		TargetName =		"Capital",
		UpgradeName =		"BUILDSPEED",
		UpgradeValue =		1.05,
	},	
	{ 
		Name =			"AllShipBuildSpeedExpert",
		RequiredResearch =	"",                       
		RequiredSubSystems =	"",                               
		Cost = 			1,
		Time = 			1,
		DisplayedName =		"",
		DisplayPriority =	0,                                                    
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Family,
		TargetName =		"Capital",
		UpgradeName =		"BUILDSPEED",
		UpgradeValue =		1.075,
	},
--AI resource rate	
	{ 
		Name =			"ResourceCollectionRateHard",
		RequiredResearch =	"",                       
		RequiredSubSystems =	"",                               
		Cost = 			1,
		Time = 			1,
		DisplayedName =		"",
		DisplayPriority =	0,                                                    
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName = "hgn_smt_Worker",
		UpgradeName =		"ResourceCollectionRate",
		UpgradeValue =		1.04,
	},	
	{ 
		Name =			"ResourceCollectionRateExpert",
		RequiredResearch =	"",                       
		RequiredSubSystems =	"",                               
		Cost = 			1,
		Time = 			1,
		DisplayedName =		"",
		DisplayPriority =	0,                                                    
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName = "hgn_smt_Worker",
		UpgradeName =		"ResourceCollectionRate",
		UpgradeValue =		1.08,
	},			
}	





