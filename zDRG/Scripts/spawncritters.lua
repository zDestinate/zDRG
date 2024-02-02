local function SpawnCritters(descriptor, Count)
	if zDRG_PlayerController == nil then return false end
	local PlayerController = zDRG_PlayerController
	
	if not PlayerController.CheatManager.SpawnCritters:IsValid() then
		print("[zDRG SpawnCritters] Unable to find SpawnCritters\n")
		return false
	end
	
	--Check for normal critter
	local CritterDescriptor = FindObject("CritterDescriptor", descriptor, nil, nil)
	if CritterDescriptor:IsValid() then
		PlayerController.CheatManager:SpawnCritters(CritterDescriptor, tonumber(Count))
		return true
	end
	
	--If normal critter not found then we will check for rare critter
	CritterDescriptor = FindObject("RareCritterDescriptor", descriptor, nil, nil)
	if CritterDescriptor:IsValid() then
		PlayerController.CheatManager:SpawnCritters(CritterDescriptor, tonumber(Count))
		return true
	end
	
	print(string.format("[zDRG SpawnCritters] Invalid critter %s\n", descriptor))
	return false
end

RegisterConsoleCommandHandler("SpawnCritters", function(FullCommand, Parameters)
	if #Parameters ~= 2 then return false end
	
	return SpawnCritters(Parameters[1], Parameters[2])
end)

RegisterConsoleCommandHandler("spawncritters", function(FullCommand, Parameters)
	if #Parameters ~= 2 then return false end
	
	return SpawnCritters(Parameters[1], Parameters[2])
end)