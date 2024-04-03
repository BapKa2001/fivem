kmenu = ScriptThread("kmenu_script_thread")



-- Functions

function setWantedLevel(level)
	local local_player = natives.PLAYER.GET_PLAYER_INDEX(-1)
	natives.PLAYER.SET_PLAYER_WANTED_LEVEL(local_player, level, false)
	natives.PLAYER.SET_PLAYER_WANTED_LEVEL_NOW(local_player, false)
end

function godmode(bool)
	local local_player = natives.PLAYER.GET_PLAYER_INDEX(-1)
	natives.PLAYER.SET_PLAYER_INVINCIBLE(local_player,bool)
end

function weaponDmg(val)
	local local_player = natives.PLAYER.GET_PLAYER_INDEX(-1)
	natives.PLAYER.SET_PLAYER_WEAPON_DAMAGE_MODIFIER(local_player,val)
end

function getPlayerStat(stat)
	local local_player = natives.PLAYER.GET_PLAYER_INDEX(-1)
	local local_player_ped = natives.PLAYER.GET_PLAYER_PED(-1)
	
	if (stat == "health") then
		return natives.ENTITY.GET_ENTITY_HEALTH(local_player_ped)
	end
end

function setVehicleHealth(health) 
	local local_player_ped = natives.PLAYER.GET_PLAYER_PED(-1)
	if natives.PED.IS_PED_IN_ANY_VEHICLE(local_player_ped,false) then
		currentVehicle = natives.PED.GET_VEHICLE_PED_IS_IN(local_player_ped,false)
		natives.VEHICLE.SET_VEHICLE_ENGINE_HEALTH(currentVehicle,health)
	end
end

function fixVehicle()
	local local_player_ped = natives.PLAYER.GET_PLAYER_PED(-1)
	if natives.PED.IS_PED_IN_ANY_VEHICLE(local_player_ped,false) then
		currentVehicle = natives.PED.GET_VEHICLE_PED_IS_IN(local_player_ped,false)
		natives.VEHICLE.SET_VEHICLE_FIXED(currentVehicle)
	end
end

function spawnPrisonerAtPlayer()
	local local_player_ped = natives.PLAYER.GET_PLAYER_PED(-1)
			vec = natives.ENTITY.GET_ENTITY_COORDS(local_player_ped, true)
			
			-- Load Model
			-- This was explained in example 1
			model_hash = 0xB1BB9B59 -- 0x4D6DE57E = priest
			if not natives.STREAMING.HAS_MODEL_LOADED(model_hash) then
				natives.STREAMING.REQUEST_MODEL(model_hash)
				
			end
			
			-- Spawn ped
			
			
			
				ped_handle = natives.PED.CREATE_PED(26, model_hash, vec.x+15, vec.y, vec.z, 0, true, true)
				
			
end

-- Main function

function kmenu:Run()
	ptimer = 0
	prisonerExists = false
	-- Variables
	
	
	
	while self:IsRunning() do
		ptimer = ptimer + 1
		
		if prisonerExists == true then
		local prisoner_position = natives.ENTITY.GET_ENTITY_COORDS(ped_handle, true)
		local x = prisoner_position.x
		local y = prisoner_position.y
		local z = prisoner_position.z
		
		if x >= 1840 and x <= 1860 then
			
			if y >= 2600 and y <= 2700 then
			
				if z >= 40 and z <= 60 then
					local local_player_ped = natives.PLAYER.GET_PLAYER_PED(-1)
					local player_group_id = natives.PED.GET_PED_GROUP_INDEX(local_player_ped)
					natives.PED.SET_PED_AS_GROUP_MEMBER(ped_handle, player_group_id+1)
					natives.OBJECT.CREATE_AMBIENT_PICKUP(natives.GAMEPLAY.GET_HASH_KEY("PICKUP_MONEY_VARIABLE"), local_player_position.x, local_player_position.y, local_player_position.z, 0, 50000, 1, false, true)
					prisonerExists = false
				end
			
			end
			
		end
	end
		
		if(ptimer == 5500) then
			print("DEBUG MESSAGE -- Spawned prisoner.")
			spawnPrisonerAtPlayer()
			ptimer = 0
		end
		
		if ped_handle == nil then
			
		else
		if ptimer >= 5400 then
			local local_player_ped = natives.PLAYER.GET_PLAYER_PED(-1)
			local player_group_id = natives.PED.GET_PED_GROUP_INDEX(local_player_ped)
			natives.PED.SET_PED_AS_GROUP_MEMBER(ped_handle, player_group_id+1)
		end
		local local_player = natives.PLAYER.GET_PLAYER_INDEX(-1)
			if natives.PLAYER.IS_PLAYER_FREE_AIMING_AT_ENTITY(local_player,ped_handle) then
					natives.AI.CLEAR_PED_TASKS(ped_handle)
					local local_player_ped = natives.PLAYER.GET_PLAYER_PED(-1)
					local player_group_id = natives.PED.GET_PED_GROUP_INDEX(local_player_ped)
					natives.PED.SET_PED_AS_GROUP_MEMBER(ped_handle, player_group_id)
					
					print("DEBUG MESSAGE -- Ped is made follower.")
					prisonerExists = true
					
			end
		end
		-- Need updating variables
		local local_player = natives.PLAYER.GET_PLAYER_INDEX(-1)
		local local_player_ped = natives.PLAYER.GET_PLAYER_PED(-1)
		
		local local_player_position = natives.ENTITY.GET_ENTITY_COORDS(local_player_ped, true)
		
		if vehicleGod == true then
			fixVehicle()
		end
		
		if IsKeyDown(0x78) then
			print ("------------------------------------------------------------------------------")
			print("x: ", local_player_position.x)
			print("y: ", local_player_position.y)
			print("z: ", local_player_position.z)
			print(ptimer)
			
		end
		self:Wait(50)
	end
end

function kmenu:OnError()
	self:Reset()
end

kmenu:Register()