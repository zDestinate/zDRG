-- Change Max Player (Host only)
local function SetMaxPlayer(players)
	local FSDGameInstance = FindFirstOf("FSDGameInstance")
	
	if not FSDGameInstance:IsValid() then
        return false
    end
	
	if not FSDGameInstance.SetOverrideMaxPlayerCount:IsValid() then
        return false
    end
	
	FSDGameInstance.SetOverrideMaxPlayerCount(tonumber(players))
	return true
end

RegisterConsoleCommandHandler("maxplayers", function(FullCommand, Parameters)
	if #Parameters ~= 1 then return false end
	
	return SetMaxPlayer(Parameters[1])
end)

RegisterConsoleCommandHandler("MaxPlayers", function(FullCommand, Parameters)
	if #Parameters ~= 1 then return false end
	
	return SetMaxPlayer(Parameters[1])
end)


-- gameOwnerStatus
RegisterConsoleCommandHandler("gameownerstatus", function(FullCommand, Parameters)
	if #Parameters ~= 1 then return false end
	
	return SetGameOwnerStatus(Parameters[1])
end)

RegisterConsoleCommandHandler("GameOwnerStatus", function(FullCommand, Parameters)
	if #Parameters ~= 1 then return false end
	
	return SetGameOwnerStatus(Parameters[1])
end)