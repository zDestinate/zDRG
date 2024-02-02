RegisterConsoleCommandHandler("ShowCheatMenu", function(FullCommand, Parameters)
	if zDRG_PlayerController == nil then return false end
	local PlayerController = zDRG_PlayerController
	
	if PlayerController.ShowCheatMenu:IsValid() then
		PlayerController.ShowCheatMenu()
		return true
	end
	
	return false
end)

RegisterConsoleCommandHandler("showcheatmenu", function(FullCommand, Parameters)
	if zDRG_PlayerController == nil then return false end
	local PlayerController = zDRG_PlayerController
	
	if PlayerController.ShowCheatMenu:IsValid() then
		PlayerController.ShowCheatMenu()
		return true
	end
	
	return false
end)