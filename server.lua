-- esx_makeweapons by Znajak
-- All rights reserved ©2019
-- Jeśli potrzebujesz pomocy dołącz na https://discord.gg/GgaMnNC
ESX	= nil
TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)
RegisterServerEvent('esx_makeweapons:craftweapon')
AddEventHandler('esx_makeweapons:craftweapon', function(action)
	local action = action
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local randomNumber = math.random(0,100)
	if action == '1' then
		if xPlayer.getInventoryItem('sprezyna_ak47').count >= 1 and xPlayer.getInventoryItem('zamek_ak47').count >= 1 and xPlayer.getInventoryItem('lufa_ak47').count >= 1 then
			xPlayer.removeInventoryItem('sprezyna_ak47', 1)
			xPlayer.removeInventoryItem('zamek_ak47', 1)
			xPlayer.removeInventoryItem('lufa_ak47', 1)
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Tworzenie AK-47..')
			TriggerClientEvent('esx_makeweapons:startanim', _source)
			Citizen.Wait(5000)
			if randomNumber <= Config.chance then
				xPlayer.addWeapon('WEAPON_ASSAULTRIFLE')
				TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś AK-47')
			else
				TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Sprężyna wystrzeliła Ci prosto w twarz!')
				TriggerClientEvent('esx_makeweapons:givedamage', _source)
			end
			TriggerClientEvent('esx_makeweapons:stopanim', _source)
			TriggerClientEvent('esx_makeweapons:craftend', _source)
		else
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Nie posiadasz wymaganych materiałów!')
			TriggerClientEvent('esx_makeweapons:craftend', _source)
		end
	elseif action == '2' then
		if xPlayer.getInventoryItem('sprezyna_sns').count >= 1 and xPlayer.getInventoryItem('zamek_sns').count >= 1 and xPlayer.getInventoryItem('lufa_sns').count >= 1 then
			xPlayer.removeInventoryItem('sprezyna_sns', 1)
			xPlayer.removeInventoryItem('zamek_sns', 1)
			xPlayer.removeInventoryItem('lufa_sns', 1)
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Tworzenie SNS Pistol MK2..')
			TriggerClientEvent('esx_makeweapons:startanim', _source)
			Citizen.Wait(5000)
			if randomNumber <= Config.chance then
				xPlayer.addWeapon('WEAPON_SNSPISTOL_MK2')
				TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś SNS Pistol MK2')
			else
				TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Sprężyna wystrzeliła Ci prosto w twarz!')
				TriggerClientEvent('esx_makeweapons:givedamage', _source)
			end
			TriggerClientEvent('esx_makeweapons:stopanim', _source)
			TriggerClientEvent('esx_makeweapons:craftend', _source)
		else
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Nie posiadasz wymaganych materiałów!')
			TriggerClientEvent('esx_makeweapons:craftend', _source)
		end
	elseif action == '3' then
		if xPlayer.getInventoryItem('sprezyna_smg').count >= 1 and xPlayer.getInventoryItem('zamek_smg').count >= 1 and xPlayer.getInventoryItem('lufa_smg').count >= 1 then
			xPlayer.removeInventoryItem('sprezyna_smg', 1)
			xPlayer.removeInventoryItem('zamek_smg', 1)
			xPlayer.removeInventoryItem('lufa_smg', 1)
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Tworzenie SMG..')
			TriggerClientEvent('esx_makeweapons:startanim', _source)
			Citizen.Wait(5000)
			if randomNumber <= Config.chance then
				xPlayer.addWeapon('WEAPON_SMG')
				TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś SMG')
			else
				TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Sprężyna wystrzeliła Ci prosto w twarz!')
				TriggerClientEvent('esx_makeweapons:givedamage', _source)
			end
			TriggerClientEvent('esx_makeweapons:stopanim', _source)
			TriggerClientEvent('esx_makeweapons:craftend', _source)
		else
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Nie posiadasz wymaganych materiałów!')
			TriggerClientEvent('esx_makeweapons:craftend', _source)
		end
	elseif action == '4' then
		if xPlayer.getInventoryItem('sprezyna_sniper').count >= 1 and xPlayer.getInventoryItem('zamek_sniper').count >= 1 and xPlayer.getInventoryItem('lufa_sniper').count >= 1 then
			xPlayer.removeInventoryItem('sprezyna_sniper', 1)
			xPlayer.removeInventoryItem('zamek_sniper', 1)
			xPlayer.removeInventoryItem('lufa_sniper', 1)
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Tworzenie Ciężkiego Karabinu Snajperskiego..')
			TriggerClientEvent('esx_makeweapons:startanim', _source)
			Citizen.Wait(5000)
			if randomNumber <= Config.chance then
				xPlayer.addWeapon('WEAPON_HEAVYSNIPER')
				TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś Ciężki Karabin Snajperski')
			else
				TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Sprężyna wystrzeliła Ci prosto w twarz!')
				TriggerClientEvent('esx_makeweapons:givedamage', _source)
			end
			TriggerClientEvent('esx_makeweapons:stopanim', _source)
			TriggerClientEvent('esx_makeweapons:craftend', _source)
		else
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Nie posiadasz wymaganych materiałów!')
			TriggerClientEvent('esx_makeweapons:craftend', _source)
		end
	end
	
end)
RegisterServerEvent('esx_makeweapons:craftbarrel')
AddEventHandler('esx_makeweapons:craftbarrel', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local randomNumber = math.random(0,100)
	local randomNumber_weapon = math.random(0,100)
	--stalowe pręty 50
	TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Tworzenie lufy..')
	TriggerClientEvent('esx_makeweapons:startanim', _source)
	Citizen.Wait(5000)
	if randomNumber <= Config.chance then
		if randomNumber_weapon <= 25 then
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś lufe (AK-47)')
			xPlayer.addInventoryItem('lufa_ak47', 1)
		elseif randomNumber_weapon > 25 and randomNumber_weapon <= 50 then
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś lufe (SNS Pistol MK2)')
			xPlayer.addInventoryItem('lufa_sns', 1)		
		elseif randomNumber_weapon > 50 and randomNumber_weapon <= 75 then
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś lufe (SMG)')
			xPlayer.addInventoryItem('lufa_smg', 1)		
		elseif randomNumber_weapon > 75 then
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś lufe (Heavy Sniper)')
			xPlayer.addInventoryItem('lufa_sniper', 1)		
		end
	else
		TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Lufa wyszła pogięta!')
	end
	TriggerClientEvent('esx_makeweapons:stopanim', _source)
	TriggerClientEvent('esx_makeweapons:craftend', _source)
end)
RegisterServerEvent('esx_makeweapons:craftlock')
AddEventHandler('esx_makeweapons:craftlock', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local randomNumber = math.random(0,100)
	local randomNumber_weapon = math.random(0,100)
	--zelazo 50
	TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Tworzenie zamka..')
	TriggerClientEvent('esx_makeweapons:startanim', _source)
	Citizen.Wait(5000)
	if randomNumber <= Config.chance then
		if randomNumber_weapon <= 25 then
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś zamek (AK-47)')
			xPlayer.addInventoryItem('zamek_ak47', 1)
		elseif randomNumber_weapon > 25 and randomNumber_weapon <= 50 then
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś zamek (SNS Pistol MK2)')
			xPlayer.addInventoryItem('zamek_sns', 1)		
		elseif randomNumber_weapon > 50 and randomNumber_weapon <= 75 then
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś zamek (SMG)')
			xPlayer.addInventoryItem('zamek_smg', 1)		
		elseif randomNumber_weapon > 75 then
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś zamek (Heavy Sniper)')
			xPlayer.addInventoryItem('zamek_sniper', 1)		
		end
	else
		TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Zamek wypadł Ci z rąk i się zniszczył')
	end
	TriggerClientEvent('esx_makeweapons:stopanim', _source)
	TriggerClientEvent('esx_makeweapons:craftend', _source)
end)
RegisterServerEvent('esx_makeweapons:craftspring')
AddEventHandler('esx_makeweapons:craftspring', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local randomNumber = math.random(0,100)
	local randomNumber_weapon = math.random(0,100)
	--miedziucha 50
	TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Tworzenie sprężyny..')
	TriggerClientEvent('esx_makeweapons:startanim', _source)
	Citizen.Wait(5000)
	if randomNumber <= Config.chance then
		if randomNumber_weapon <= 25 then
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś sprężyne (AK-47)')
			xPlayer.addInventoryItem('sprezyna_ak47', 1)
		elseif randomNumber_weapon > 25 and randomNumber_weapon <= 50 then
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś sprężyne (SNS Pistol MK2)')
			xPlayer.addInventoryItem('sprezyna_sns', 1)		
		elseif randomNumber_weapon > 50 and randomNumber_weapon <= 75 then
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś sprężyne (SMG)')
			xPlayer.addInventoryItem('sprezyna_smg', 1)		
		elseif randomNumber_weapon > 75 then
			TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Otrzymałeś sprężyne (Heavy Sniper)')
			xPlayer.addInventoryItem('sprezyna_sniper', 1)		
		end
	else
		TriggerClientEvent('esx_makeweapons:shownotification', _source, 'Podczas nawijania, sprężyna pękła')
	end
	TriggerClientEvent('esx_makeweapons:stopanim', _source)
	TriggerClientEvent('esx_makeweapons:craftend', _source)
end)
