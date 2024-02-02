function SetGameOwnerStatus(status)
	if zDRG_PlayerController == nil then 
		return false
	end
	local PlayerController = zDRG_PlayerController

	local AFSDPlayerState = PlayerController:GetFSDPlayerState()
	if AFSDPlayerState:IsValid() then
		--[[
			gameOwnerStatus
			Normal = 0
			Supporter = 1
			ContentCreator = 2
			Developer = 4
			Modder = 8
		]]--
		--AFSDPlayerState:SetPropertyValue("gameOwnerStatus", tonumber(status))
		AFSDPlayerState:Server_SetGameOwnerStatus(tonumber(status))
		return true
	end
	
	return false
end