ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_pizzadelivery:pay')
AddEventHandler('esx_pizzadelivery:pay', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.addMoney(tonumber(amount))
end)
