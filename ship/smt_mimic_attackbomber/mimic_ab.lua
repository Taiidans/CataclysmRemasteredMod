function Start_ab(CustomGroup, playerIndex, shipID) 
	print('reverse_mimic')
	ship = "Smt_mimic"

	
	SobGroup_CreateIfNotExist("mimic_temp_ab")
	SobGroup_FillShipsByType("mimic_temp_ab", CustomGroup, "Smt_mimic_attackbomber")
	
	SobGroup_AvoidanceIgnore(CustomGroup, "mimic_temp_ab")
	
	spherename = "vol".. random(1, 999)
	Volume_Delete(spherename)
	Volume_AddSphere(spherename, SobGroup_GetPosition(CustomGroup), 30)
	SobGroup_SpawnNewShipInSobGroup(playerIndex, ship, ship..'1', CustomGroup, spherename)
	
	
	--SobGroup_CreateShip(CustomGroup, ship)
	SobGroup_AvoidanceIgnore(CustomGroup, "mimic_temp_ab")
	FX_StartEvent(CustomGroup, "kpr_phase_destroyer_mesh_phaseout")
	
	timer = Wait_Start(16)
	while(1) do
		print(Wait_End(timer))
		if(Wait_End(timer)) then
			SobGroup_Despawn("mimic_temp_ab")
			return
		end
	end
end

running = 0

function Do_ab(CustomGroup, playerIndex, shipID)  
	--print('do_mimic')
end

function Finish_ab(CustomGroup, playerIndex, shipID)	

end

-----------------------------------------------------------------------------------

function Create_ab(CustomGroup, playerIndex, shipID)
	print('create_ab')
	SobGroup_SetSwitchOwnerFlag(CustomGroup, 0)
	SobGroup_CreateIfNotExist("mimic_temp_ab")
	SobGroup_CreateIfNotExist("mimic_temp_ab1")
	SobGroup_CreateIfNotExist("mimic_temp_ab2")
	
end

function Update_ab(CustomGroup, playerIndex, shipID)
	
	--SobGroup_CreateIfNotExist("dronefrigate_temp2")
	--SobGroup_Clear("dronefrigate_temp2")	
	--SobGroup_GetSobGroupBeingCapturedGroup(CustomGroup, "dronefrigate_temp2")
	if 0 > 99 then
		local playerIndex_ai = 0		
		local enemyships = 0
		while playerIndex_ai < Universe_PlayerCount() do
			if Player_IsAlive(playerIndex_ai) == 1 then								
				local distance = 4000
				if SobGroup_FillProximitySobGroup("dronefrigate_temp1", "Player_Ships"..playerIndex_ai, CustomGroup, distance) == 1 then									
					if AreAllied(playerIndex, playerIndex_ai) == 0 then						
						enemyships = 1
					end					
				end				
			end
			playerIndex_ai = playerIndex_ai + 1
		end
		if enemyships > 0 then
			SobGroup_CustomCommand(CustomGroup)
		end
	end
	
end

function Destroy_ab(CustomGroup, playerIndex, shipID)
	
	--for k = 0,5,1 do
		--if SobGroup_Empty("Smt_drone" .. tostring(shipID) .. tostring(k)) == 0 then
	--		SobGroup_TakeDamage("Smt_drone" .. tostring(shipID) .. tostring(k), 1)
	--	end	
	--end
end