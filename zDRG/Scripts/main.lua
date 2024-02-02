--[[
	Scripted by zDestinate
	https://github.com/zDestinate
]]--

zDRG_PlayerController = nil

function GetLocalPlayerController()
	local PlayerControllers = FindAllOf("FSDPlayerController")
	if PlayerControllers == nil then
		return nil
	end
	
	for Index,Controller in pairs(PlayerControllers) do
        if Controller.Pawn:IsValid() and Controller.Pawn:IsPlayerControlled() and Controller.Pawn:IsLocallyControlled() then
			return Controller
        end
    end
	
	return nil
end

RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(self, NewPawn)
    --local PlayerController = self:get()
    local PlayerController = GetLocalPlayerController()
	if PlayerController == nil then
		return
	end
	
	zDRG_PlayerController = PlayerController
	CheatManagerClass = StaticFindObject("/Script/FSD.FSDCheatManager")
    
    if not CheatManagerClass:IsValid() then
        print("[zDRG] Couldn't find FSDCheatManager\n")
        return
    end
    
    local CreatedCheatManager = StaticConstructObject(CheatManagerClass, PlayerController, 0, 0, 0, nil, false, false, nil)
	if CreatedCheatManager:IsValid() then
        print(string.format("[zDRG] Constructed FSDCheatManager [0x%X]\n", CreatedCheatManager:GetAddress()))
        
		PlayerController.CheatManager = CreatedCheatManager
		print("[zDRG] Enabled FSDCheatManager\n")
	else
		print("[zDRG] Was unable to construct FSDCheatManager, therefor, could not enable FSDCheatManager\n")
	end
end)

require("network_performance")

require("FSDPlayer")

require("showcheatmenu")
require("spawnenemies")
require("spawncritters")
require("difficulty")
require("misc_commands")

require("class_scout")
require("class_gunner")
require("class_engineer")
require("class_driller")