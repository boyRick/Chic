ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('chickenpayment:pay')
AddEventHandler('chickenpayment:pay', function()
local _source = source
local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addMoney(math.random(55,76))
end)


RegisterServerEvent("take:packaged_chicken")
AddEventHandler("take:packaged_chicken", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.removeInventoryItem("packaged_chicken", 1)
end)

RegisterServerEvent("give:chicken")
AddEventHandler("give:chicken", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.addInventoryItem("alive_chicken", 3)
end)



RegisterServerEvent("take:chicken")
AddEventHandler("take:chicken", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.removeInventoryItem("alive_chicken", 3)
	xPlayer.addInventoryItem("slaughtered_chicken", 3)
	
end)

RegisterServerEvent("yow:boy")
AddEventHandler("yow:boy", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.removeInventoryItem("slaughtered_chicken", 3)
	xPlayer.addInventoryItem("packaged_chicken", 1)
	
end)


-- xPlayer.addInventoryItem("alive_chicken", math.random(55,76))