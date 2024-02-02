NotifyOnNewObject("/Script/FSD.LockOnWeapon", function(CreatedObject)
	CreatedObject:SetPropertyValue("MaxTargets", 999)
end)