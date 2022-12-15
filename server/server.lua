--KAIKKI MISSÄ LUKEE "JENGISI" NIIN LISÄÄ SIIHEN SINUN JENGISI NIMI (VALUE)

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("esx:status:jengistatus")
AddEventHandler("esx:status:jengistatus", function()
	local pelaajia 		= ESX.GetPlayers()
	local status = {
		jengis   = 0,
	}
	for i=1, #pelaajia, 1 do
		local xPlayer = ESX.GetPlayerFromId(pelaajia[i])

		if xPlayer.job.name == 'jengis' then
			status.jengis = status.jengis + 1
		end
	end
	TriggerClientEvent('esx:showNotification', source, '~r~jengis: '..status.jengis..'')
end)    
