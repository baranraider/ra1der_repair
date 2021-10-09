ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local arisobo2  = false

Citizen.CreateThread(function()
	local ply = PlayerPedId()
	while true do
		if not IsEntityPlayingAnim(ply, "mini@repair", "fixing_a_car", 49) and arisobo2 then
			TaskPlayAnim(ply, "mini@repair", "fixing_a_car", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
		end
	Wait(10)
	end
end)

RegisterNetEvent("ra1der_repair:client:motorTamir")
AddEventHandler("ra1der_repair:client:motorTamir", function()
	local ply = PlayerPedId()
	local coords = GetEntityCoords(ply)

	if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 2.5) then
		local vehicle 	= GetClosestVehicle(coords.x, coords.y, coords.z, 2.5, 0, 71)
		local vehicleheading = GetEntityHeading(vehicle)
	
		if DoesEntityExist(vehicle) then
			arisobo2 = true
			FreezeEntityPosition(ply, true)
			SetVehicleDoorOpen(vehicle, 4, false, false)

			-- local finished = exports["reload-skillbar"]:taskBar(2200,math.random(5,15))
			-- if finished ~= 100 then
			-- 	exports['mythic_notify']:SendAlert("error", "Aracı tamir edemedin.", 3500)
			-- 	arisobo2 = false
			-- 	FreezeEntityPosition(ply, false)
			-- 	SetVehicleDoorShut(vehicle, 4, false)
			-- else
			-- 	local finished2 = exports["reload-skillbar"]:taskBar(1800,math.random(5,15))
			-- 	if finished2 ~= 100 then
			-- 		exports['mythic_notify']:SendAlert("error", "Aracı tamir edemedin.", 3500)
			-- 		arisobo2 = false
			-- 		FreezeEntityPosition(ply, false)
			-- 		SetVehicleDoorShut(vehicle, 4, false)
			-- 	else
			-- 		local finished3 = exports["reload-skillbar"]:taskBar(1200,math.random(5,15))
			-- 		if finished3 ~= 100 then
			-- 			exports['mythic_notify']:SendAlert("error", "Aracı tamir edemedin.", 3500)
			-- 			arisobo2 = false
			-- 			FreezeEntityPosition(ply, false)
			-- 			SetVehicleDoorShut(vehicle, 4, false)
			-- 		else
						TriggerEvent("mythic_progbar:client:progress", {
							name = "motorutamiret",
							duration = 15000,
							label = "Araç Tamir Ediliyor [İptal DEL]",
							useWhileDead = false,
							canCancel = true,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "mini@repair",
								anim = "fixing_a_ped",
							},
							prop = {
								model = "",
							}
						}, function(status)
							if not status then	
								TriggerServerEvent("ra1der_repair:server:removemTamir")			
								SetVehicleEngineHealth(vehicle, 700.0)
								SetVehiclePetrolTankHealth(vehicle, 700.0)
								exports['mythic_notify']:SendAlert("inform", "Aracın motoru tamir edildi.", 4500)
								arisobo2 = false
								FreezeEntityPosition(ply, false)
								SetVehicleDoorShut(vehicle, 4, false)
							else
								arisobo2 = false
								FreezeEntityPosition(ply, false)
								SetVehicleDoorShut(vehicle, 4, false)
								exports['mythic_notify']:SendAlert("inform", "İşlem iptal edildi.", 5500)
							end
						end)
			-- 		end
			-- 	end
			-- end
		end

	else
		exports['mythic_notify']:SendAlert("inform", "Yakında araç yok.", 2500)
	end	
end)

local arisobo = false

Citizen.CreateThread(function()
	local ply = PlayerPedId()
	while true do
		if not IsEntityPlayingAnim(ply, "mini@repair", "fixing_a_car", 49) and arisobo then
			TaskPlayAnim(ply, "mini@repair", "fixing_a_car", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
		end
	Wait(10)
	end
end)

RegisterNetEvent("ra1der_repair:client:govdeTamir")
AddEventHandler("ra1der_repair:client:govdeTamir", function()
	local ply = PlayerPedId()
	local coords = GetEntityCoords(ply)

	if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 2.5) then
		local vehicle 	= GetClosestVehicle(coords.x, coords.y, coords.z, 2.5, 0, 71)
		local vehicleheading = GetEntityHeading(vehicle)
	
		if DoesEntityExist(vehicle) then
			arisobo = true
			FreezeEntityPosition(ply, true)
			SetVehicleDoorOpen(vehicle, 4, false, false)
			 local finished = exports["reload-skillbar"]:taskBar(2200,math.random(5,15))
			 if finished ~= 100 then
			 	exports['mythic_notify']:SendAlert("error", "Aracı tamir edemedin.", 3500) 
			 	arisobo = false
			 	FreezeEntityPosition(ply, false)
			 	SetVehicleDoorShut(vehicle, 4, false)
			 else
			 	local finished2 = exports["reload-skillbar"]:taskBar(1800,math.random(5,15))
			 	if finished2 ~= 100 then
			 		exports['mythic_notify']:SendAlert("error", "Aracı tamir edemedin.", 3500)
			 		arisobo = false
			 		FreezeEntityPosition(ply, false)
			 		SetVehicleDoorShut(vehicle, 4, false)
			 	else
			 		local finished3 = exports["reload-skillbar"]:taskBar(1200,math.random(5,15))
			 		if finished3 ~= 100 then
			 			exports['mythic_notify']:SendAlert("error", "Aracı tamir edemedin.", 3500)
			 			arisobo = false
			 			FreezeEntityPosition(ply, false)
			 			SetVehicleDoorShut(vehicle, 4, false)
			 		else
						TriggerEvent("mythic_progbar:client:progress", {
							name = "motortamiret",
							duration = 15000,
							label = "Araç Tamir Ediliyor [İptal DEL]",
							useWhileDead = false,
							canCancel = true,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "mini@repair",
								anim = "fixing_a_ped",
							},
							prop = {
								model = "",
							}
						}, function(status)
							if not status then	
								TriggerServerEvent("ra1der_repair:server:removegTamir")			
								SetVehicleFixed(vehicle)
								exports['mythic_notify']:SendAlert("inform", "Aracın gövdesiyle beraber tamir edildi.", 5500)
								arisobo = false
								SetVehicleDoorShut(vehicle, 4, false)
								FreezeEntityPosition(ply, false)
							else
								arisobo = false
								FreezeEntityPosition(ply, false)
								SetVehicleDoorShut(vehicle, 4, false)
								exports['mythic_notify']:SendAlert("inform", "İşlem iptal edildi.", 5500)
							end
						end)
			 		end
			 	end
			 end
		end
	else
		exports['mythic_notify']:SendAlert("inform", "Yakında araç yok.", 3500)
	end	
end)