
--Type => SubSystem
--ThingToBuild => name of subsystem to build
--RequiredResearch => global research dependencies
--RequiredShipSubSystems => subsystems dependencies for local to the ship
--RequiredFleetSubSystems => Fleet wide subsystem dependencies
--DisplayPriority => Order in UI lists
--DisplayedName => Localized name for UI
--Description => Description for UI


Ship = 0
SubSystem = 1

build = 
{
----------------------------------------
-- Raiders Ascendant --
----------------------------------------
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_Scout",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 210,
		DisplayedName = "Scout",
		Description = "<b>Description:</b> Scout ship with limited firepower.  \n\n<b>Strong Vs:</b> None \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_interceptor",
		RequiredResearch = "RAMFIGHTERCHASSIS",
		RequiredShipSubSystems = "",
		DisplayPriority = 211,
		DisplayedName = "Strike Interceptor",
		Description = "<b>Description:</b> Small strike craft designed to take down enemy fighters and corvettes.  \n\n<b>Strong Vs:</b> Fighters & Corvettes \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_bomber",
		RequiredResearch = "RAMPlasmaBombLauncher",
		RequiredShipSubSystems = "",
		DisplayPriority = 212,
		DisplayedName = "Bomber",
		Description = "<b>Description:</b> strike craft designed to take down enemy frigates & capitalships.  \n\n<b>Strong Vs:</b> Frigates/Capitalships/Subsystems \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_Defencefighter",
		RequiredResearch = "RAMDefenseFighter",
		RequiredShipSubSystems = "",
		DisplayPriority = 213,
		DisplayedName = "DefenseFighter",
		Description = "<b>Description:</b> strike craft designed to take down enemy corvette.  \n\n<b>Strong Vs:</b> Corvettes\n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_RAM_Researchship",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 60,
		DisplayedName = "Research Ship",
		Description = "<b>Description:</b> Allows research of all types. \n\n<b>Strong Vs:</b> None \n\n<b>Weak Vs:</b> Most \n\n<b>Prerequisites:</b> None",
	},
	{		
		Type = Ship,
		ThingToBuild = "Hgn_Ram_LightCorvette",
		RequiredResearch = "RAMCorvetteDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 51,
		DisplayedName = "General Corvette",
		Description = "<b>Description:</b> All use corvette \n\n<b>Strong Vs:</b>Undecided \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_Thief",
		RequiredResearch = "RAMCorvetteChassis",
		RequiredShipSubSystems = "",
		DisplayPriority = 52,
		DisplayedName = "Thief Corvette",
		Description = "<b>Description:</b> Salvage corvette/Steals enemy ships \n\n<b>Strong Vs:</b>Undecided \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "hgn_ram_missilecorvette",
		RequiredResearch = "RAMCorvetteChassis",
		RequiredShipSubSystems = "",
		DisplayPriority = 53,
		DisplayedName = "Missile Corvette",
		Description = "<b>Description:</b> AntiFighter & Corvette \n\n<b>Strong Vs:</b>Fighters & Corvettes \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "hgn_ram_heavycorvette",
		RequiredResearch = "RAMHeavyCorvetteUpgrade",
		RequiredShipSubSystems = "",
		DisplayPriority = 54,
		DisplayedName = "Heavy Corvette",
		Description = "<b>Description:</b> Modified Standard Corvette Equipped with 4 Kinetic Turrets \n\n<b>Strong Vs:</b> Corvettes/Frigates \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "hgn_ram_minelayercorvette",
		RequiredResearch = "RAMMineLayingTech",
		RequiredShipSubSystems = "",
		DisplayPriority = 55,
		DisplayedName = "Minelayer Corvette",
		Description = "<b>Description:</b> Defensive corvette used in creating minefields \n\n<b>Strong Vs:</b>Frigates & Capitals\n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "hgn_ram_repaircorvette",
		RequiredResearch = "RAMCorvetteDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 56,
		DisplayedName = "Repair Corvette",
		Description = "<b>Description:</b> Corvette used to repair frigates and caps in the field",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_RAM_lg_autogun",
		RequiredResearch = "RAMlargejunkgun",
		RequiredShipSubSystems = "",
		DisplayPriority = 62,
		DisplayedName = "Large Auto Gun",
		Description = "<b>Description:</b> Large stationary automatic weapon, useful for protecting base territories. \n\n<b>Strong Vs:</b> Undecided \n\n<b>Prerequisites:</b> Smalljunkgun & largejunkgun",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_ram_Sm_autogun",
		RequiredResearch = "RAMSmalljunkgun",
		RequiredShipSubSystems = "",
		DisplayPriority = 63,
		DisplayedName = "Small Auto Gun",
		Description = "<b>Description:</b> Small stationary automatic weapon, useful for protecting base territories. \n\n<b>Strong Vs:</b> Undecided \n\n<b>Prerequisites:</b> Capital Ship Drive & Smalljunkgun",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_Standardfrigate",
		RequiredResearch = "RAMCapitalShipChassis",
		RequiredShipSubSystems = "",
		DisplayPriority = 61,
		DisplayedName = "Assualt Frigate",
		Description = "<b>Description:</b> Standard Turanic Assualt Frigate, featuring 2 plasma cannons and 4 kinetic cannons as it's weapons. \n\n<b>Strong Vs:</b> fighters & Corvettes \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_ionarrayfrigate",
		RequiredResearch = "RAMIonCannons",
		RequiredShipSubSystems = "",
		DisplayPriority = 62,
		DisplayedName = "Ion Array Frigate",
		Description = "<b>Description:</b> Standard Turanic Ion Frigate, featuring a single Ion Array Cannon as it's only weapon. \n\n<b>Strong Vs:</b> Undecided \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_supportfrigate",
		RequiredResearch = "RAMCapitalShipDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 63,
		DisplayedName = "Support Frigate",
		Description = "<b>Description:</b> Turanic Support Frigate capable of repairing single squads. \n\n<b>Strong Vs:</b> Undecided \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_DFF",
		RequiredResearch = "RAMDefenseFieldTechnology",
		RequiredShipSubSystems = "",
		DisplayPriority = 64,
		DisplayedName = "Defense Field Frigate",
		Description = "<b>Description:</b> Frigate capable of deflecting enemy fire. \n\n<b>Strong Vs:</b> Undecided \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_carrier",
		RequiredResearch = "RAMSuperHeavyChassis",
		RequiredShipSubSystems = "",
		DisplayPriority = 120,
		DisplayedName = "Carrier",
		Description = "<b>Description:</b> Attack Carrier  \n\n<b>Strong Vs:</b> Frigates and smallcapital ships \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_Standarddestroyer",
		RequiredResearch = "RAMSuperCapitalShipDrive & RAMIonCannons",
		RequiredShipSubSystems = "",
		DisplayPriority = 121,
		DisplayedName = "Destroyer",
		Description = "<b>Description:</b> Raider Destroyer  \n\n<b>Strong Vs:</b> Frigates & SmallCapital ships \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_Missiledestroyer",
		RequiredResearch = "RAMGuidedMissiles",
		RequiredShipSubSystems = "",
		DisplayPriority = 122,
		DisplayedName = "Missiledestroyer",
		Description = "<b>Description:</b> Pirate Missile Destroyer  \n\n<b>Strong Vs:</b> Fighters/Corvettes/Frigates \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_HeavyCruiser",
		RequiredResearch = "RAMBATTLECRUISERIONWEAPONS",
		RequiredShipSubSystems = "",
		DisplayPriority = 123,
		DisplayedName = "Pirate Heavy Cruiser",
		Description = "<b>Description:</b> Pirate heavy cruiser  \n\n<b>Strong Vs:</b> Frigates/Capitals/Supercapitals \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_Outpost",
		RequiredResearch = "RAMhyperspaceTech",
		RequiredShipSubSystems = "",
		DisplayPriority = 115,
		DisplayedName = "Outpost",
		Description = "<b>Description:</b> Found derelict & resurrected.  \n\n<b>Strong Vs:</b> Undecided \n\n<b>Prerequisites:</b> Hyperspace Module",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_Gravwellgenerator",
		RequiredResearch = "RAMGravityGenerator",
		RequiredShipSubSystems = "",
		DisplayPriority = 171,
		DisplayedName = "Gravity Well Generator",
		Description = "<b>Description:</b> Portable Gravity Well Generator, currently prevents enemy ships from Hyperspacing into a limited radius around itself.  \n\n<b>Strong Vs:</b> None \n\n<b>Weak Vs:</b> All \n\n<b>Prerequisites:</b> Platform Control Module",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_ResourceCollector",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 140,
		DisplayedName = "Resource Collector",
		Description = "<b>Description:</b> Resource Collector \n\n<b>Strong Vs:</b> None \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_resourcecontroller",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 145,
		DisplayedName = "Resource Controller",
		Description = "<b>Description:</b> Mobile resource docking facility.  \n\n<b>Strong Vs:</b> None \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Ram_Probe",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 150,
		DisplayedName = "Probe",
		Description = "$7071",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_ram_ProximitySensor",
		RequiredResearch = "RAMProximitySensor",
		RequiredShipSubSystems = "",
		DisplayPriority = 151,
		DisplayedName = "ProximitySensor",
		Description = "Detects Cloaked Ships",
	},
};
