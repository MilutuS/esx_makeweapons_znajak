-- esx_makeweapons by Znajak
-- All rights reserved ©2019
-- Jeśli potrzebujesz pomocy dołącz na https://discord.gg/GgaMnNC
ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)
local craft = false

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function menu_makeweapons(menu_name)
	local elements = {
		{label = "Złóż AK-47",value = '1'},
		{label = "Złóż SNS Pistol Mk II",value = '2'},
		{label = "Złóż SMG",value = '3'},
		{label = "Złóż Heavy Sniper",value = '4'}
	}

	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open(
	'default', GetCurrentResourceName(), 'weaponcraft_menu',
	{
		title    = menu_name,
		align    = 'top-left',
		elements = elements
	}, function(data, menu)
		local action = data.current.value
		if craft == false then
			craft = true
			TriggerServerEvent('esx_makeweapons:craftweapon', action)
		else
			ESX.ShowNotification('Jesteś w trakcie wytwarzania broni!')
		end
	ESX.UI.Menu.CloseAll()
	end, function(data, menu)
		menu.close()
	end)
end

Citizen.CreateThread(function()
    while true do
        Wait(0)
        local coords = GetEntityCoords(GetPlayerPed(-1))
        for k,v in pairs(Config.Zones) do
            --if PlayerData.job ~= nil and PlayerData.job.name == 'arcadius' then
                if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < 2) then
                    DisplayHelpText(v.Text)
                end
                if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < 50) then
                    DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
                end
                if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < 2) and IsControlJustReleased(0, 38) then
					menu_name = v.Name
					if v.menu_label == "make_weapons" then
						menu_makeweapons(menu_name)
					elseif v.menu_label == "barrel_craft" then
						if craft == false then
							craft = true
							TriggerServerEvent('esx_makeweapons:craftbarrel')
						else
							ESX.ShowNotification('Jesteś w trakcie wytwarzania lufy!')
						end
					elseif v.menu_label == "spring_craft" then
						if craft == false then
							craft = true
							TriggerServerEvent('esx_makeweapons:craftspring')
						else
							ESX.ShowNotification('Jesteś w trakcie wytwarzania sprężyny!')
						end
					elseif v.menu_label == "lock_craft" then
						if craft == false then
							craft = true
							TriggerServerEvent('esx_makeweapons:craftlock')
						else
							ESX.ShowNotification('Jesteś w trakcie wytwarzania zamka!')
						end
					end
                end
            --end

        end
    end
end)

RegisterNetEvent('esx_makeweapons:shownotification')
AddEventHandler('esx_makeweapons:shownotification', function(message)
	ESX.ShowNotification(message)
end)

RegisterNetEvent('esx_makeweapons:startanim')
AddEventHandler('esx_makeweapons:startanim', function(source)
	TaskStartScenarioInPlace(GetPlayerPed(-1), "PROP_HUMAN_PARKING_METER", 0, false)
end)
RegisterNetEvent('esx_makeweapons:stopanim')
AddEventHandler('esx_makeweapons:stopanim', function(source)
	ClearPedTasksImmediately(GetPlayerPed(-1))
end)
RegisterNetEvent('esx_makeweapons:givedamage')
AddEventHandler('esx_makeweapons:givedamage', function(source)
	local health = GetEntityHealth(playerPed)
	if health > Config.damage then
		ApplyDamageToPed(GetPlayerPed(-1), Config.damage, false)
	end
end)
RegisterNetEvent('esx_makeweapons:craftend')
AddEventHandler('esx_makeweapons:craftend', function(source)
	craft = false
end)
