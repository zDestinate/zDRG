NotifyOnNewObject("/Script/Engine.GameNetworkManager", function(CreatedObject)
    CreatedObject:SetPropertyValue("bMovementTimeDiscrepancyDetection", false)
    CreatedObject:SetPropertyValue("bMovementTimeDiscrepancyResolution", false)
    CreatedObject:SetPropertyValue("MoveRepSize", 512.0)
    CreatedObject:SetPropertyValue("ClientAuthorativePosition", true)
    CreatedObject:SetPropertyValue("TotalNetBandwidth", 9000000)
    CreatedObject:SetPropertyValue("MaxDynamicBandwidth", 100000)
end)