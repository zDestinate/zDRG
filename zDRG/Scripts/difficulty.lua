local function SetDifficulty(DifficultyIndex)
	local FSDGameState = FindFirstOf("FSDGameState")
	
	if not FSDGameState:IsValid() then
        return false
    end
	
	local DifficultyManager = FSDGameState.GetDifficultyManager()
	
	if not DifficultyManager:IsValid() then
        return false
    end
	
	DifficultyManager.SelectDifficulty(DifficultyIndex)
	
	return true
end

RegisterConsoleCommandHandler("setdifficulty", function(FullCommand, Parameters)
	if #Parameters ~= 1 then return false end
	local DifficultyIndex = tonumber(Parameters[1]) - 1
	
	return SetDifficulty(DifficultyIndex)
end)

RegisterConsoleCommandHandler("SetDifficulty", function(FullCommand, Parameters)
	if #Parameters ~= 1 then return false end
	local DifficultyIndex = tonumber(Parameters[1]) - 1
	
	return SetDifficulty(DifficultyIndex)
end)