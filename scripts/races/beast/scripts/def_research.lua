Icon_Speed = "data:ui/newui/research/icons/speed.mres"
Icon_Health = "data:ui/newui/research/icons/health.mres"
Icon_Tech = "data:ui/newui/research/icons/tech.mres"
Icon_Ability = "data:ui/newui/research/icons/ability.mres"
Icon_Build = "data:ui/newui/research/icons/build.mres"
Icon_Attack = "data:ui/newui/research/icons/attack.mres"
Icon_Cloak = "data:ui/newui/research/icons/cloak.mres"
Icon_Emp = "data:ui/newui/research/icons/Emp.mres"
Icon_Hyperspace = "data:ui/newui/research/icons/hyperspace.mres"
Icon_ping = "data:ui/newui/research/icons/ping.mres"
Icon_Repair = "data:ui/newui/research/icons/repair.mres"
Icon_RU = "data:ui/newui/research/icons/ru.mres"
Icon_shield = "data:ui/newui/research/icons/shield.mres"
Modifier = 0
Ability = 1
AllShips = 0
Family = 1
Ship = 2

research = 
{
	--======================================================================
	-- Tech
	--======================================================================

	{Name = "BSTFighterDrive",
RequiredResearch = "",
RequiredSubSystems = "Research",
Cost=30,
Time = 36,
DisplayedName = "FighterDrive",
DisplayPriority = 1,
Description = "Leads to Fighter Chassis Research",
TargetType = Family,
TargetName = "Fighter",
Icon = Icon_Tech,
ShortDisplayedName = "FighterDrive"},

{Name = "BSTFighterChassis",
RequiredResearch = "BSTFighterDrive",
RequiredSubSystems = "Research",
Cost=30,
Time = 60,
DisplayedName = "FighterChassis",
DisplayPriority = 1,
Description = "Unlocks Interceptors",
TargetType = Family,
TargetName = "Fighter",
Icon = Icon_Tech,
ShortDisplayedName = "FighterChassis"},

{Name = "BSTCloakedFighter",
RequiredResearch = "BSTFighterChassis",
RequiredSubSystems = "Research",
Cost=30,
Time = 120,
DisplayedName = "Cloaked Fighter",
DisplayPriority = 5,
Description = "Unlocks Cloaked Fighters",
TargetType = ship,
TargetName = "BST_cloakedfighter",
Icon = Icon_Tech,
ShortDisplayedName = "Cloaked Fighter"},

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

{Name = "BSTPlasmaBombLauncher",
RequiredResearch = "BSTFighterChassis",
RequiredSubSystems = "Research",
Cost=30,
Time = 120,
DisplayedName = "Plasma Bomb Launcher",
DisplayPriority = 4,
Description = "Unlocks Attack Bombers",
TargetType = ship,
TargetName = "BST_attackbomber",
Icon = Icon_Tech,
ShortDisplayedName = "Plasma Bomb Launcher"},

{Name = "BSTCorvetteDrive",
RequiredResearch = "",
RequiredSubSystems = "Research",
Cost=30,
Time = 52,
DisplayedName = "Corvette Drive",
DisplayPriority = 1,
Description = "Unlocks Missile Corvette",
TargetType = Family,
TargetName = "Corvette",
Icon = Icon_Tech,
ShortDisplayedName = "Corvette Drive"},

{Name = "BstCorvetteChassis",
RequiredResearch = "BSTCorvetteDrive",
RequiredSubSystems = "Research",
Cost=30,
Time = 64,
DisplayedName = "Corvette Chassis",
DisplayPriority = 1,
Description = "Unlocks ACV Corvette",
TargetType = Family,
TargetName = "Corvette",
Icon = Icon_Tech,
ShortDisplayedName = "Corvette Chassis"},

{Name="BstACVEMP",
RequiredResearch="BstCorvetteChassis",
RequiredSubSystems="Research",
Cost=30,
Time=70,
DisplayedName="$7519",
DisplayPriority=31,
Description="$7520",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_acv",
UpgradeName="SpecialAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7209"},

{Name = "BSTHeavyCorvetteUpgrade",
RequiredResearch = "BSTCorvetteChassis",
RequiredSubSystems = "Research",
Cost=30,
Time = 64,
DisplayedName = "Heavy Corvette Upgrade",
DisplayPriority = 2,
Description = "Unlocks Heavy Corvette",
TargetType = ship,
TargetName = "BST_heavycorvette",
Icon = Icon_Tech,
ShortDisplayedName = "Heavy Corvette Upgrade"},

{Name = "BSTFastTrackingTurrets",
RequiredResearch = "BSTCorvetteChassis",
RequiredSubSystems = "Research",
Cost=30,
Time = 60,
DisplayedName = "Fast-Tracking Turrets",
DisplayPriority = 3,
Description = "Unlocks MultiGun Corvette",
TargetType = ship,
TargetName = "Bst_multiguncorvette",
Icon = Icon_Tech,
ShortDisplayedName = "Fast-Tracking Turrets"},

{Name = "BstCapitalShipDrive",
RequiredResearch = "",
RequiredSubSystems = "Research",
Cost=30,
Time = 60,
DisplayedName = "Capital Ship Drive",
DisplayPriority = 1,
Description = "Unlocks Support Frigates and leads to Super capital ship drive research",
TargetType = Family,
TargetName = "Frigate",
Icon = Icon_Tech,
ShortDisplayedName = "Capital Ship Drive"},

{Name = "BSTCapitalShipChassis",
RequiredResearch = "BSTCapitalShipDrive",
RequiredSubSystems = "Research",
Cost=30,
Time = 60,
DisplayedName = "Capital Ship Chassis",
DisplayPriority = 1,
Description = "Unlocks Assault Frigates, Unlocks Ion Cannon Research, Unlocks Drone Technology, Leads to Super Capital Ship Chassis Research",
TargetType = Family,
TargetName = "Frigate",
Icon = Icon_Tech,
ShortDisplayedName = "Capital Ship Chassis"},

{Name = "BSThyperspaceTech",
RequiredResearch = "BSTCapitalShipDrive",
RequiredSubSystems = "Research",
Cost=30,
Time = 150,
DisplayedName = "hyperspaceTech",
DisplayPriority = 2,
Description = "Unlocks Hyperspace Jump Ability",
UpgradeType = Ability,
TargetType = AllShips,
UpgradeName = "HyperSpace",
TargetName = "bst_prt_mothership",
Icon = Icon_Hyperspace,
ShortDisplayedName = "hyperspaceTech"},

{Name = "BSTIonCannons",
RequiredResearch = "BSTCapitalShipChassis",
RequiredSubSystems = "Research",
Cost=30,
Time = 160,
DisplayedName = "ADVIon Cannons",
DisplayPriority = 5,
Description = "Unlocks Ion Cannon Frigates",
TargetType = ship,
TargetName = "bst_ioncannonfrigate",
Icon = Icon_Tech,
ShortDisplayedName = "ADVIon Cannons"},

{Name = "BstSuperCapitalShipDrive",
RequiredResearch = "BSTCapitalShipDrive",
RequiredSubSystems = "Research",
Cost=30,
Time = 120,
DisplayedName = "Super Capital Ship Drive",
DisplayPriority = 1,
Description = "Unlocks Destroyers, Unlocks Super Heavy Chassis, Unlocks Hyperspace Research",
TargetType = Family,
TargetName = "Capital",
Icon = Icon_Tech,
ShortDisplayedName = "SuperCap Drive"},

{Name = "BstSuperHeavyChassis",
RequiredResearch = "BstSuperCapitalShipDrive",
RequiredSubSystems = "Research",
Cost=30,
Time = 180,
DisplayedName = "Super-Heavy Chassis",
DisplayPriority = 2,
Description = "Unlocks Carriers and Heavy Gun Research",
TargetType = Family,
TargetName = "Capital",
Icon = Icon_Tech,
ShortDisplayedName = "Super-Heavy Chassis"},

{Name = "BstGuidedMissiles",
RequiredResearch = "BstSuperCapitalShipDrive",
RequiredSubSystems = "Research",
Cost=30,
Time = 120,
DisplayedName = "Guided Missiles",
DisplayPriority = 3,
Description = "Unlocks Missile Destroyers",
TargetType = ship,
TargetName = "bst_missiledestroyer",
Icon = Icon_Tech,
ShortDisplayedName = "Guided Missiles"},

{Name = "BSTHeavyGuns",
RequiredResearch = "BstSuperHeavyChassis",
RequiredSubSystems = "Research",
Cost=30,
Time = 160,
DisplayedName = "Heavy Guns",
DisplayPriority = 4,
Description = "$9652",
TargetType = ship,
TargetName = "bst_heavycruiser",
Icon = Icon_Attack,
ShortDisplayedName = "Heavy Guns"},

{Name="BSTNomadControl",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=100,
DisplayedName="Nomad Control",
DisplayPriority=24,
Description="Unlocks Upgrades for the Nomad Moon",
TargetName="bst_nomadmoon",
Icon=Icon_Tech,
ShortDisplayedName="Nomad Control Tech"},

{Name="BstRepairAbility",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=40,
DisplayedName="$7511",
DisplayPriority=21,
Description="$7512",
UpgradeType=Ability,
TargetType=Ship,
TargetName="Bst_Worker",
UpgradeName="Repair",
Icon=Icon_Ability,
ShortDisplayedName="$7205"},

{Name="BstScoutPingAbility",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=40,
DisplayedName="$7513",
DisplayPriority=27,
Description = "<b>Description:</b> Allows Recon units to Ping the mision area, briefly revealing enemy units. \n\n<b>Prerequisites:</b> None",
UpgradeType=Ability,
TargetType=Ship,
TargetName="Bst_Scout",
UpgradeName="SensorPing",
Icon=Icon_Ability,
ShortDisplayedName="$7206"},

{Name="BstAttackBomberImprovedBombs",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=45,
DisplayedName="$7517",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="Bst_AttackBomber",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstEnergyCannonTechnology",
RequiredResearch="BSTHeavyGuns",
RequiredSubSystems="Research",
Cost=30,
Time=45,
DisplayedName="Energy Cannons",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="Bst_MotherShip",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstEnergyCannonTechnology1",
RequiredResearch="BstEnergyCannonTechnology",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Energy Cannons",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_heavycruiser",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstEnergyCannonTechnology2",
RequiredResearch="BstEnergyCannonTechnology",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Energy Cannons",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_tdn_qwaarjetii",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstEnergyCannonTechnology3",
RequiredResearch="BstEnergyCannonTechnology",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Energy Cannons",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_heavycorvette",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstEnergyCannonTechnology4",
RequiredResearch="BstEnergyCannonTechnology",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Energy Cannons",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_interceptor",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstEnergyCannonTechnology5",
RequiredResearch="BstEnergyCannonTechnology",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Energy Cannons",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_cloakedfighter",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstEnergyCannonTechnology6",
RequiredResearch="BstEnergyCannonTechnology",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Energy Cannons",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_tdn_standardfrigate",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstEnergyCannonTechnology7",
RequiredResearch="BstEnergyCannonTechnology",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Energy Cannons",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_multiguncorvette",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstEnergyCannonTechnology8",
RequiredResearch="BstEnergyCannonTechnology",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Energy Cannons",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_smt_destroyer",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstEnergyCannonTechnology9",
RequiredResearch="BstEnergyCannonTechnology",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Energy Cannons",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_carrier",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstEnergyCannonTechnology10",
RequiredResearch="BstEnergyCannonTechnology",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Energy Cannons",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_carrier",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstEnergyCannonTechnology12",
RequiredResearch="BstEnergyCannonTechnology",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Energy Cannons",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_acolyteE",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstEnergyCannonTechnology13",
RequiredResearch="BstEnergyCannonTechnology",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Energy Cannons",
DisplayPriority=30,
Description="$7518",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_acvE",
UpgradeName="UseSpecialWeaponsInNormalAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7208"},

{Name="BstScoutEMPAbility",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=70,
DisplayedName="$7519",
DisplayPriority=31,
Description = "<b>Description:</b> Allows Recon units to fire a EMP attack that disables enemy ships for a limited time. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Ability,
TargetType=Ship,
TargetName="Bst_Scout",
UpgradeName="SpecialAttack",
Icon=Icon_Ability,
ShortDisplayedName="$7209"},

{Name="BstDefenseFieldFrigateShield",
RequiredResearch="BSTCapitalShipChassis",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7521",
DisplayPriority=32,
Description="$7522",
TargetName="bst_fieldfrigate",
Icon=Icon_Ability,
ShortDisplayedName="$7210"},

{Name="BSTDefenseFrigateShieldRegenUpgrade",
RequiredResearch="BstDefenseFieldFrigateShield",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="DFF Frigate Shield Regeneration level 1",
DisplayPriority=297,
Description="Improves DFF Frigate Shield Regeneration Rate to Level 1",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="bst_fieldfrigate",
UpgradeName = "ShieldRegenerationRate", 
UpgradeValue = .75,         
Icon = Icon_Shield, 
ShortDisplayedName="Lvl 1 DFF Frigate"},

{Name="BSTDefenseFieldTimeUpgrade1", 
RequiredResearch = "BstDefenseFrigateShieldRegenUpgrade", 
RequiredSubSystems = "Research", 
Cost = 0, 
Time = 0, 
DisplayedName = "Defense Field Duration: Level 1", 
DisplayPriority = 291, 
Description = "<b>Description:</b> Prolongs the Defense Field duration.\n\n<b>Type:</b> Upgrade\n+ 50% shield duration.\nCost 1000 RUs\nResearch time 70 s\n\n<b>Prerequisites:</b>\nFrigate Facility\nScience Division", 
UpgradeType = Modifier, 
TargetType = Ship, 
TargetName = "bst_fieldFrigate", 
UpgradeName = "DefenseFieldTime", 
UpgradeValue = 0.75, 
Icon = Icon_Shield, 
ShortDisplayedName = "1/1 Def Field Time"},     

{Name="BstMothershipSensorRangeUpgrade1",
RequiredResearch="BstReconAdvancedSensors",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Commandship Sensor Range 1",
DisplayPriority=39,
Description = "<b>Description:</b> Improves CommandShip Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Mothership",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 CommandShip"},

{Name="BstMothershipSensorRangeUpgrade2",
RequiredResearch="BstMothershipSensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Commandship Sensor Range 2",
DisplayPriority=39,
Description = "<b>Description:</b> Improves CommandShip Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Advanced Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Mothership",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Commandship"},

{Name="BstMothershipSecondarySensorRangeUpgrade1",
RequiredResearch="BstMothershipSensorRangeUpgrade2",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Commandship Secondary Sensor Range 1",
DisplayPriority=39,
Description = "<b>Description:</b> Improves CommandShip Secondary Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Mothership",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 CommandShip"},

{Name="BstMothershipSecondarySensorRangeUpgrade2",
RequiredResearch="BstMothershipSecondarySensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Commandship Secondary Sensor Range 2",
DisplayPriority=39,
Description = "<b>Description:</b> Improves CommandShip Secondary Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Advanced Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Mothership",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Commandship"},

{Name="BstMothershipBUILDSPEEDUpgrade1",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7800",
DisplayPriority=45,
Description = "<b>Description:</b> Improves construction speed by 30% on the Command Ship. \n\n<b>Prerequisites:</b> Advanced Research Module & Hyperspace Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Mothership",
UpgradeName="BUILDSPEED",
UpgradeValue=1.3,
Icon=Icon_Build,
ShortDisplayedName="$7240"},

{Name="BstMothershipBUILDSPEEDUpgrade2",
RequiredResearch="BstMothershipBUILDSPEEDUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7800",
DisplayPriority=45,
Description = "<b>Description:</b> Improves construction speed by 30% on the Command Ship. \n\n<b>Prerequisites:</b> Advanced Research Module & Hyperspace Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Mothership",
UpgradeName="BUILDSPEED",
UpgradeValue=1.5,
Icon=Icon_Build,
ShortDisplayedName="$7240"},

{Name="BstCarrierSensorRangeUpgrade1",
RequiredResearch="BstReconAdvancedSensors",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Carrier Sensor Range 1",
DisplayPriority=59,
Description = "<b>Description:</b> Improves Carriers Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module & CapShipProduction",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Carrier",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 Carrier"},

{Name="BstCarrierSensorRangeUpgrade2",
RequiredResearch="BstCarrierSensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Carrier Sensor Range 2",
DisplayPriority=59,
Description = "<b>Description:</b> Improves Carrier Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Advanced Research Module & CapShipProduction",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Carrier",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Carrier"},

{Name="BstCarrierSecondarySensorRangeUpgrade1",
RequiredResearch="BstCarrierSensorRangeUpgrade2",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Carrier Secondary Sensor Range 1",
DisplayPriority=59,
Description = "<b>Description:</b> Improves Carrier Secondary Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module & CapShipProduction",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Carrier",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 Carrier"},

{Name="BstCarrierSecondarySensorRangeUpgrade2",
RequiredResearch="BstCarrierSecondarySensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Carrier Secondary Sensor Range 2",
DisplayPriority=59,
Description = "<b>Description:</b> Improves Carrier Secondary Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Advanced Research Module & CapShipProduction",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Carrier",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Carrier"},

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

{Name="BstCarrierBUILDSPEEDUpgrade1",
RequiredResearch="BstSuperHeavyChassis",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7805",
DisplayPriority=65,
Description="$7806",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Carrier",
UpgradeName="BUILDSPEED",
UpgradeValue=1.3,
Icon=Icon_Build,
ShortDisplayedName="$7240"},

{Name="BstCarrierBUILDSPEEDUpgrade2",
RequiredResearch="BstCarrierBUILDSPEEDUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7805",
DisplayPriority=65,
Description="$7806",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Carrier",
UpgradeName="BUILDSPEED",
UpgradeValue=1.5,
Icon=Icon_Build,
ShortDisplayedName="$7240"},

{Name="BstReconAdvancedSensors",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=80,
DisplayedName="Advanced Sensors",
DisplayPriority=77,
Description="Upgrades Recons Sensors to Advanced Sensors, enabled increased sensor range and enhanced Cloak Detection.",
TargetName="bst_scout",
Icon=Icon_Tech,
ShortDisplayedName="Advanced Sensor Tech"},

{Name="BstReconSensorRangeUpgrade1",
RequiredResearch="BstReconAdvancedSensors",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon Sensor Range 1",
DisplayPriority=77,
Description = "<b>Description:</b> Improves Recons Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="bst_scout",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 Recon"},

{Name="BstReconSensorRangeUpgrade2",
RequiredResearch="BstReconSensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon Sensor Range 2",
DisplayPriority=77,
Description = "<b>Description:</b> Improves Recons Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="bst_scout",
UpgradeName = "PrimarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Recon"},

{Name="BstReconSecondarySensorRangeUpgrade1",
RequiredResearch="BstReconAdvancedSensors & BstReconSensorRangeUpgrade2",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon Secondary Sensor Range 1",
DisplayPriority=77,
Description = "<b>Description:</b> Improves Recon Secondary Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="bst_scout",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 2,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 1 Recon"},

{Name="BstReconSecondarySensorRangeUpgrade2",
RequiredResearch="BstReconSecondarySensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon Secondary Sensor Range 2",
DisplayPriority=77,
Description = "<b>Description:</b> Improves Recon Secondary Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="bst_scout",
UpgradeName = "SecondarySensorsRange", 
UpgradeValue = 3,         
Icon = Icon_Sensors,         
ShortDisplayedName="Lvl 2 Recon"},

{Name="BstReconCloakSensorRangeUpgrade1",
RequiredResearch="BstReconAdvancedSensors",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon Cloak Sensor Range 1",
DisplayPriority=78,
Description = "<b>Description:</b> Improves Recons Cloak Sensor Range to Level 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="bst_scout",
UpgradeName = "CloakDetection", 
UpgradeValue = 2,         
Icon = Icon_Cloak,         
ShortDisplayedName="Lvl 1 Recon"},

{Name="BstReconCloakSensorRangeUpgrade2",
RequiredResearch="BstReconCloakSensorRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon Cloak Sensor Range 2",
DisplayPriority=78,
Description = "<b>Description:</b> Improves Recons Cloak Sensor Range to Lvl 2. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="bst_scout",
UpgradeName = "CloakDetection", 
UpgradeValue = 4,         
Icon = Icon_Cloak,         
ShortDisplayedName="Lvl 2 Recon"},

{Name="BstReconVisualDetectionRangeUpgrade1",
RequiredResearch="BstReconAdvancedSensors",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon VisualDetection Range 1",
DisplayPriority=77,
Description = "<b>Description:</b> Improves Recons VisualDetection Range to Level 1. \n\n<b>Prerequisites:</b> Research Module & Fighter Facility",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="bst_scout",
UpgradeName = "VisualRange", 
UpgradeValue = 4,         
Icon = Icon_Cloak,         
ShortDisplayedName="Lvl 1 Recon"},

{Name="BstReconVisualDetectionRangeUpgrade2",
RequiredResearch="BstReconVisualDetectionRangeUpgrade1",
RequiredSubSystems="Research",
Cost=0,
Time=0,
DisplayedName="Recon VisualDetection Range 2",
DisplayPriority=77,
Description = "<b>Description:</b> Improves Recons VisualDetection Range to Lvl 2. \n\n<b>Prerequisites:</b> Advanced Research Module & Fighter Facility",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="bst_scout",
UpgradeName = "VisualRange", 
UpgradeValue = 8,         
Icon = Icon_Cloak,         
ShortDisplayedName="Lvl 2 Recon"},

{Name="BSTAcolyteMissileAbility",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=70,
DisplayedName="Missile Launcher",
DisplayPriority=31,
Description="Allows Acolyte selves to fire missiles",
UpgradeType=Ability,
TargetType=Ship,
TargetName="bst_acolyte",
UpgradeName="SpecialAttack",
Icon=Icon_Ability,
ShortDisplayedName="Missile Launcher"},

{Name="BSTFighterspeedUpgrade1",
RequiredResearch="BSTFighterDrive",
RequiredSubSystems="Research",
Cost=30,
Time=50,
DisplayedName="$7755",
DisplayPriority=81,
Description="$7756",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Fighter",
UpgradeName="MAXSPEED",
UpgradeValue=1.25,
Icon=Icon_Speed,
ShortDisplayedName="$7331"},

{Name="BSTFighterspeedUpgrade2",
RequiredResearch="BSTFighterspeedUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=70,
DisplayedName="$7757",
DisplayPriority=81,
Description="$7758",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Fighter",
UpgradeName="MAXSPEED",
UpgradeValue=1.45,
Icon=Icon_Speed,
ShortDisplayedName="$7332"},

{Name="BSTCorvetteHealthUpgrade1",
RequiredResearch="BSTCorvetteChassis",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7759",
DisplayPriority=200,
Description="$7760",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Corvette",
UpgradeName="MAXHEALTH",
UpgradeValue=1.25,
Icon=Icon_Health,
ShortDisplayedName="$7341"},

{Name="BSTCorvetteHealthUpgrade2",
RequiredResearch="BSTCorvetteHealthUpgrade1 & BSTCorvetteChassis",
RequiredSubSystems="Research",
Cost=30,
Time=80,
DisplayedName="$7761",
DisplayPriority=200,
Description="$7762",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Corvette",
UpgradeName="MAXHEALTH",
UpgradeValue=1.7,
Icon=Icon_Health,
ShortDisplayedName="$7342"},

{Name="BSTCorvetteSpeedUpgrade1",
RequiredResearch="BSTCorvetteDrive",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7763",
DisplayPriority=201,
Description="$7764",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Corvette",
UpgradeName="MAXSPEED",
UpgradeValue=1.2,
Icon=Icon_Speed,
ShortDisplayedName="$7341"},

{Name="BSTCorvetteSpeedUpgrade2",
RequiredResearch="BSTCorvetteDrive & BSTCorvetteSpeedUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=80,
DisplayedName="$7765",
DisplayPriority=201,
Description="$7766",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Corvette",
UpgradeName="MAXSPEED",
UpgradeValue=1.35,
Icon=Icon_Speed,
ShortDisplayedName="$7342"},

{Name="BSTFrigateHealthUpgrade1",
RequiredResearch="BSTCapitalShipChassis",
RequiredSubSystems="Research",
Cost=30,
Time=80,
DisplayedName="$7767",
DisplayPriority=306,
Description="$7768",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Frigate",
UpgradeName="MAXHEALTH",
UpgradeValue=1.3,
Icon=Icon_Health,
ShortDisplayedName="$7371"},

{Name="BSTFrigateHealthUpgrade2",
RequiredResearch="BSTFrigateHealthUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=100,
DisplayedName="$7769",
DisplayPriority=306,
Description="$7770",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Frigate",
UpgradeName="MAXHEALTH",
UpgradeValue=1.7,
Icon=Icon_Health,
ShortDisplayedName="$7372"},

{Name="BSTFrigateSpeedUpgrade1",
RequiredResearch="BSTCapitalShipDrive",
RequiredSubSystems="Research",
Cost=30,
Time=70,
DisplayedName="$7771",
DisplayPriority=307,
Description="$7772",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Frigate",
UpgradeName="MAXSPEED",
UpgradeValue=1.2,
Icon=Icon_Speed,
ShortDisplayedName="$7371"},

{Name="BSTFrigateSpeedUpgrade2",
RequiredResearch="BSTFrigateSpeedUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=100,
DisplayedName="$7773",
DisplayPriority=307,
Description="$7774",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Frigate",
UpgradeName="MAXSPEED",
UpgradeValue=1.3,
Icon=Icon_Speed,
ShortDisplayedName="$7372"},

{Name="BSTSuperCapHealthUpgrade1",
RequiredResearch="BSTSuperHeavyChassis",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7743",
DisplayPriority=61,
Description="$7744",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Capital",
UpgradeName="MAXHEALTH",
UpgradeValue=1.3,
Icon=Icon_Health,
ShortDisplayedName="$7354"},

{Name="BSTSuperCapHealthUpgrade2",
RequiredResearch="BSTSuperCapHealthUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=80,
DisplayedName="$7745",
DisplayPriority=61,
Description="$7746",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Capital",
UpgradeName="MAXHEALTH",
UpgradeValue=1.7,
Icon=Icon_Health,
ShortDisplayedName="$7355"},

{Name="BSTSuperCapSpeedUpgrade1",
RequiredResearch="BSTSuperCapitalShipDrive",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7747",
DisplayPriority=64,
Description="$7748",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Capital",
UpgradeName="MAXSPEED",
UpgradeValue=1.2,
Icon=Icon_Speed,
ShortDisplayedName="$7354"},

{Name="BSTSuperCapSpeedUpgrade2",
RequiredResearch="BSTSuperCapSpeedUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=80,
DisplayedName="$7749",
DisplayPriority=64,
Description="$7750",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Capital",
UpgradeName="MAXSPEED",
UpgradeValue=1.3,
Icon=Icon_Speed,
ShortDisplayedName="$7355"},

{Name="BSTResourceControllerHealthUpgrade1",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=30,
DisplayedName="Processor Armor 1",
DisplayPriority=707,
Description = "<b>Description:</b> Improves Processor armor to Lvl 1. \n\n<b>Prerequisites:</b> Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Processor",
UpgradeName="MAXHEALTH",
UpgradeValue=1.3,
Icon=Icon_Health,
ShortDisplayedName="Lvl 1 Processor"},

{Name="BSTResourceControllerHealthUpgrade2",
RequiredResearch="BSTResourceControllerHealthUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=40,
DisplayedName="Processor Armor 2",
DisplayPriority=707,
Description = "<b>Description:</b> Improves Processor armor to Lvl 2. \n\n<b>Prerequisites:</b> Advanced Research Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="Bst_Processor",
UpgradeName="MAXHEALTH",
UpgradeValue=1.6,
Icon=Icon_Health,
ShortDisplayedName="Lvl 2 Processor"},

{Name="BstHyperspaceCostUpgrade1",
RequiredResearch="BsthyperspaceTech",
RequiredSubSystems="Research",
Cost=30,
Time=45,
DisplayedName="$7627",
DisplayPriority=1000,
Description="$7628",
UpgradeType=Modifier,
TargetType=AllShips,
UpgradeName="HyperspaceCost",
UpgradeValue=0.8,
TargetName="Bst_Mothership",
Icon=Icon_Tech,
ShortDisplayedName="$7280"},

{Name="BstHyperspaceCostUpgrade2",
RequiredResearch="BstHyperspaceCostUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7629",
DisplayPriority=1000,
Description="$7630",
UpgradeType=Modifier,
TargetType=AllShips,
UpgradeName="HyperspaceCost",
UpgradeValue=0.6,
TargetName="Bst_Mothership",
Icon=Icon_Tech,
ShortDisplayedName="$7281"},

{Name="BstFleetRegen",
RequiredResearch="",
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="$7629",
DisplayPriority=1001,
Description="$7630",
UpgradeType=Modifier,
TargetType=AllShips,
UpgradeName="HealthRegenerationRate",
UpgradeValue=4,
Icon=Icon_Repair,         
TargetName="Bst_Mothership",
ShortDisplayedName="$7281"},

{Name="BstShipyardBUILDSPEEDUpgrade1",
RequiredResearch="BsthyperspaceTech",
RequiredSubSystems="Research",
Cost=30,
Time=40,
DisplayedName="$7810",
DisplayPriority=1206,
Description = "<b>Description:</b> Improves construction speed by 30% on the Shipyard. \n\n<b>Prerequisites:</b> Advanced Research Module & Hyperspace Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="bst_prt_mothership",
UpgradeName="BUILDSPEED",
UpgradeValue=1.3,
Icon=Icon_Build,
ShortDisplayedName="Lvl 1 Shipyard"},

{Name="BstShipyardBUILDSPEEDUpgrade2",
RequiredResearch="BstShipyardBUILDSPEEDUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=40,
DisplayedName="$7810",
DisplayPriority=1206,
Description = "<b>Description:</b> Improves construction speed by 50% on the Shipyard. \n\n<b>Prerequisites:</b> Advanced Research Module & Hyperspace Module",
UpgradeType=Modifier,
TargetType=Ship,
TargetName="bst_prt_mothership",
UpgradeName="BUILDSPEED",
UpgradeValue=1.5,
Icon=Icon_Build,
ShortDisplayedName="Lvl 2 Shipyard"},
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
		TargetName = "hgn_resourcecollector",
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
		TargetName = "hgn_resourcecollector",
		UpgradeName =		"ResourceCollectionRate",
		UpgradeValue =		1.08,
	},			
}