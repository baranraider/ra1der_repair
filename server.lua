-- ra1der'$#0399 & c0dex

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem("motortamiri", function(source)
	local ply = ESX.GetPlayerFromId(source)

	TriggerClientEvent("ra1der_repair:client:motorTamir", source)
end)

ESX.RegisterUsableItem("govdetamiri", function(source)
	local ply = ESX.GetPlayerFromId(source)

	TriggerClientEvent("ra1der_repair:client:govdeTamir", source)
end)

RegisterNetEvent("ra1der_repair:server:removemTamir")
AddEventHandler("ra1der_repair:server:removemTamir", function()
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('motortamiri', 1)
end)

RegisterNetEvent("ra1derx_repair:server:removegTamir")
AddEventHandler("ra1der_repair:server:removegTamir", function()
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('govdetamiri', 1)
end)