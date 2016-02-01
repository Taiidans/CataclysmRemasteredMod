aitrace("LOADING Somtaaw UPGRADE INFO")

rt_mothership = {
	health = {
		SMTARMORLEVEL3,
	},
	speed = {
		SMTADVDESTROYERDRIVE,
	}
}
rt_carrier = {
	health = {
		SMTARMORLEVEL3,
	},
	speed = {
		SMTADVDESTROYERDRIVE,
	},
}
rt_fighter = {
	interceptor = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
	},
	bomber = {
		health = {
			FIGHTERHEALTHUPGRADE1,
			FIGHTERHEALTHUPGRADE2,
		},
		speed = {
			SMTADVFIGHTERDRIVE,
		},
	},
}
rt_corvette = {
	assault = {
		health = {
			SMTARMORLEVEL1,
		},
		speed = {
			SMTADVCORVETTEDRIVE,
		},
	},
}
rt_frigate = {
	torpedo = {
		health = {
			SMTARMORLEVEL2,
		},
		speed = {
			SMTADVFRIGATEDRIVE,
		},
	},
	ioncannon = {
		health = {
			SMTARMORLEVEL2,
		},
		speed = {
			SMTADVFRIGATEDRIVE,
		},
	},
}
rt_battlecruiser = {
	health = {
		SMTARMORLEVEL3,
	},
	speed = {
		SMTADVDESTROYERDRIVE,
	},
}
rt_destroyer = {
	SMTARMORLEVEL3,
}
rt_shipyard = {
	health = {
		SMTARMORLEVEL3,
	},
	speed = {
		SMTADVDESTROYERDRIVE,
	},
}
rt_collector = {
	SMTRESOURCECOLLECTORHEALTHUPGRADE1,
	SMTRESOURCECOLLECTORHEALTHUPGRADE2,
}
rt_refinery = {
	SMTRESOURCECONTROLLERHEALTHUPGRADE1,
	SMTRESOURCECONTROLLERHEALTHUPGRADE2,
}

function DoUpgradeDemand_Somtaaw()	
	if (s_militaryStrength > 10 or g_LOD == 0) then
		inc_upgrade_demand( rt_mothership, 0.5  )
		ResearchDemandAdd( SMTMOTHERSHIPBUILDSPEEDUPGRADE1, 0.5 )
		ResearchDemandAdd( SMTMOTHERSHIPBUILDSPEEDUPGRADE2, 0.5 )
		end
		local numCollectors = NumSquadrons( kCollector )
		if (numCollectors > 0) then
			inc_upgrade_demand( rt_collector, numCollectors*.1 )
		end
		local numRefinery = NumSquadrons( kRefinery )
		if (numRefinery > 0) then
			inc_upgrade_demand( rt_refinery, numRefinery*1.5 )
		end
		local numCarrier = NumSquadrons( kCarrier )
		if (numCarrier > 0) then
			inc_upgrade_demand( rt_carrier, numCarrier*1 )
			ResearchDemandAdd( SMTCARRIERBUILDSPEEDUPGRADE1, numCarrier*1.25 )
			ResearchDemandAdd( SMTCARRIERBUILDSPEEDUPGRADE2, numCarrier*1.25 )
		end
		local numShipYards = NumSquadrons( kShipYard )
		if (numShipYards > 0) then
			inc_upgrade_demand( rt_shipyard, numShipYards*1.5  )
			ResearchDemandAdd( SMTSHIPYARDBUILDSPEEDUPGRADE1, numShipYards*1.75 )
			ResearchDemandAdd( SMTSHIPYARDBUILDSPEEDUPGRADE2, numShipYards*1.75 )
		end
	end
	local numFighter = numActiveOfClass( s_playerIndex, eFighter )
	if (numFighter > 1) then
		local numInterceptors = NumSquadrons( kInterceptor )
		if (numInterceptors > 1) then
			inc_upgrade_demand( rt_fighter.interceptor, numInterceptors*1 )
		end
	local numBombers = NumSquadrons( kBomber )
	if (numBombers > 1) then
		inc_upgrade_demand( rt_fighter.bomber, numBombers*1.5 )
		if (numBombers > 2) then
			if (Util_CheckResearch(SMTATTACKBOMBERIMPROVEDBOMBS) ) then
				ResearchDemandSet( SMTATTACKBOMBERIMPROVEDBOMBS, numBombers )
				end
			end
		end
	end
	local numBattleCruiser = NumSquadrons( kBattleCruiser )
	if (numBattleCruiser > 0) then
		inc_upgrade_demand( rt_battlecruiser, numBattleCruiser*2.5  )
	end
	local numDestroyers = NumSquadrons( kDestroyer )
	if (numDestroyers > 0) then
		inc_upgrade_demand( rt_destroyer, numDestroyers*2  )
	end
	local numCorvette = numActiveOfClass( s_playerIndex, eCorvette )
	if (numCorvette > 1) then
		local numAssaultCorvette = NumSquadrons( HGN_SMT_ACVE )
		if (numAssaultCorvette>2) then
			inc_upgrade_demand( rt_corvette.assault, numAssaultCorvette*1.25 )
		end
	end
	local numFrigate = numActiveOfClass( s_playerIndex, eFrigate )
	if (numFrigate > 2) then
		local numTorpedoFrigate = NumSquadrons( HGN_SMT_RAMMINGFRIGATE )
		if (numTorpedoFrigate>2) then
			inc_upgrade_demand( rt_frigate.torpedo, numTorpedoFrigate*1.5 )
		end
		local numIonFrigate = NumSquadrons( HGN_SMT_MULTIBEAMFRIGATE )
		if (numIonFrigate>2) then
			inc_upgrade_demand( rt_frigate.ioncannon, numIonFrigate*1.5 )
	end
end
function DoResearchTechDemand_Somtaaw()	
	ResearchDemandSet( SMTFIGHTERDRIVE, 10 )
	ResearchDemandSet( SMTCORVETTEDRIVE, 9 )
	ResearchDemandSet( FIGHTERHEALTHUPGRADE1, 10 )
	ResearchDemandSet( FIGHTERHEALTHUPGRADE2, 9 )
	ResearchDemandSet( SMTADVFIGHTERDRIVE, 10 )
	ResearchDemandSet( SMTARMORLEVEL1, 9 )
	ResearchDemandSet( SMTADVCORVETTEDRIVE, 8 )
	ResearchDemandSet( SMTARMORLEVEL2, 9 )
	ResearchDemandSet( SMTADVFRIGATEDRIVE, 8 )
	ResearchDemandSet( SMTCAPITALSHIPDRIVE, 8 )
	ResearchDemandSet( SMTSUPERCAPITALSHIPDRIVE, 4 )
	
	if (Util_CheckResearch(SMTPLASMABOMBLAUNCHER)) then
		local demand = ShipDemandGet(HGN_SMT_SUPERACOLYTE)
		if (demand > 0) then
			ResearchDemandSet( SMTPLASMABOMBLAUNCHER, demand )
		end
	end
	if (Util_CheckResearch(SMTIONCANNONS)) then
		local demand = ShipDemandGet(HGN_SMT_MULTIBEAMFRIGATE)
		if (demand > 0) then
			ResearchDemandSet( SMTIONCANNONS, demand )
		end
	end
	if (Util_CheckResearch(SMTGUIDEDMISSILES)) then
		local demand = ShipDemandGet(HGN_SMT_DESTROYER)
		if (demand > 0) then
			ResearchDemandSet( SMTGUIDEDMISSILES, demand )
		end
	end
	if (Util_CheckResearch(SMTSUPERCAPITALSHIPDRIVE)) then
		local demand = ShipDemandGet(HGN_SMT_CARRIER)
		if (demand > 0) then
			ResearchDemandSet( SMTSUPERCAPITALSHIPDRIVE, demand )
		end
	end
	local numShipyards = NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard)
	if (numShipyards > 0 and Util_CheckResearch(SMTENERGYCANNONTECHNOLOGY)) then
		local battleCruiserDemand = ShipDemandGet( HGN_SMT_DREADNOUGHT )
		if (battleCruiserDemand > 0) then
			ResearchDemandSet( SMTENERGYCANNONTECHNOLOGY, battleCruiserDemand )
		end
	end
	if (Util_CheckResearch(SMTHYPERSPACETECH)) then
			local demand = ShipDemandGet(HGN_SMT_MS)
			if (demand > 0) then
				ResearchDemandSet( SMTHYPERSPACETECH, demand+0.5 )
		end
	end
	if (Util_CheckResearch(SMTATTACKBOMBERIMPROVEDBOMBS) ) then
		local numBombers = NumSquadrons( kBomber )
		if (numBombers > 2) then
			ResearchDemandSet( SMTATTACKBOMBERIMPROVEDBOMBS, numBombers )
			end
		end
	end
	
DoUpgradeDemand = DoUpgradeDemand_Somtaaw
DoResearchTechDemand = DoResearchTechDemand_Somtaaw