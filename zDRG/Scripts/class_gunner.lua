NotifyOnNewObject("/Script/FSD.ZipLineItem", function(CreatedObject)
	CreatedObject:SetPropertyValue("MaxDistance", 99000)
	CreatedObject:SetPropertyValue("MaxAngle", 90)
end)