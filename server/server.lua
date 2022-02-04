ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("esx:status:jengistatus")
AddEventHandler("esx:status:jengistatus", function()
	local pelaajia 		= ESX.GetPlayers()
	local status = {
		bennys   = 0,
		talotaikurit    = 0,
		brodit = 0,
		bengali     = 0,
		fno   = 0,
		ihanok   = 0,
		lallit = 0,
		pinskters     = 0,
		rogers   = 0,
		segat = 0,
		skypet = 0,
		surenokset = 0,
		kikkeli = 0,
	}
	for i=1, #pelaajia, 1 do
		local xPlayer = ESX.GetPlayerFromId(pelaajia[i])

		if xPlayer.job.name == 'bennys' then
			status.bennys = status.bennys + 1
		end

		if xPlayer.job.name == 'talotaikurit' then
			status.talotaikurit = status.talotaikurit + 1
		end

		if xPlayer.job.name == 'brodit' then
			status.brodit = status.brodit + 1
		end

		if xPlayer.job.name == 'bengali' then
			status.bengali = status.bengali + 1
		end

		if xPlayer.job.name == 'fno' then
			status.fno = status.fno + 1
		end

		if xPlayer.job.name == 'ihanok' then
			status.ihanok = status.ihanok + 1
		end

		if xPlayer.job.name == 'lallit' then
			status.lallit = status.lallit + 1
		end
		
		if xPlayer.job.name == 'pinksters' then
			status.pinskters = status.pinskters + 1
		end

		if xPlayer.job.name == 'ruusut' then
			status.kikkeli = status.kikkeli + 1
		end
		
		if xPlayer.job.name == 'surenos' then
			status.surenokset = status.surenokset + 1
		end
		
		if xPlayer.job.name == 'skype' then
			status.skypet = status.skypet + 1
		end

		if xPlayer.job.name == 'sega' then
			status.segat = status.segat + 1
		end

		if xPlayer.job.name == 'rogers' then
			status.rogers = status.rogers + 1
		end
	end
	TriggerClientEvent('esx:showNotification', source, '~r~Bennys: '..status.bennys..' \n~r~Talotaikuri: '..status.talotaikurit..' \n~r~Brodit: '..status.brodit..' \n~r~Bengali: '..status.bengali..' \n~r~Fno: '..status.fno..'   \n~r~Surenos: '..status.surenokset..'   \n~r~Skype: '..status.skypet..' \n~r~Ihanok: '..status.ihanok..'  \n~r~Lallit: '..status.lallit..'  \n~r~Sega: '..status.segat..'  \n~r~Ruusut: '..status.kikkeli..'  \n~r~Pinskters: '..status.pinskters..'  \n~r~Rogers: '..status.rogers..'')
end)    