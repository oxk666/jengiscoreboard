ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterCommand("jengi", function()
	local PlayerData = ESX.GetPlayerData(_source)
	if(PlayerData.job.name == 'talotaikurit' or PlayerData.job.name == 'bennys' or PlayerData.job.name == 'rogers' or PlayerData.job.name == 'brodit' or PlayerData.job.name == 'bengali' or PlayerData.job.name == 'fno' or PlayerData.job.name == 'ihanok' or PlayerData.job.name == 'lallit' or PlayerData.job.name == 'sega' or PlayerData.job.name == 'skype' or PlayerData.job.name == 'ruusut' or PlayerData.job.name == 'surenos' or PlayerData.job.name == 'pinksters') then
    	TriggerServerEvent("esx:status:jengistatus")
	else
		ESX.ShowNotification("Ei kuulu sulle tämmöset")
	end
end)