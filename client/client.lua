ESX = nil

CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Wait(3)
    end
end)

RegisterCommand("jengi", function()
	local PlayerData = ESX.GetPlayerData(_source)
	if(PlayerData.job.name == 'jengis') then --Tuohon lisää sinun jengisi nimi (value).
    	TriggerServerEvent("esx:status:jengistatus")
	else
		ESX.ShowNotification("Ei kuulu sulle tämmöset")
	end
end)
