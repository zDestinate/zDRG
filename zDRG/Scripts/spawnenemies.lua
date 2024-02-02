local function SpawnEnemies(descriptor, Count)
	if zDRG_PlayerController == nil then return false end
	local PlayerController = zDRG_PlayerController
	
	if not PlayerController.CheatManager.SpawnEnemies:IsValid() then
		print("[zDRG][SpawnEnemies] Unable to find SpawnEnemies\n")
		return false
	end
	
	local EnemyDescriptor = FindObject("EnemyDescriptor", descriptor, nil, nil)
	if not EnemyDescriptor:IsValid() then
		print(string.format("[zDRG][SpawnEnemies] Invalid enemy %s\n", descriptor))
		return false
	end
	
	PlayerController.CheatManager:SpawnEnemies(EnemyDescriptor, tonumber(Count))
	return true
end

RegisterConsoleCommandHandler("SpawnEnemies", function(FullCommand, Parameters)
	if #Parameters ~= 2 then return false end
	
	return SpawnEnemies(Parameters[1], Parameters[2])
end)

RegisterConsoleCommandHandler("spawnenemies", function(FullCommand, Parameters)
	if #Parameters ~= 2 then return false end
	
	return SpawnEnemies(Parameters[1], Parameters[2])
end)