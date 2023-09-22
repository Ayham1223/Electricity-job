local QBCore = exports['qb-core']:GetCoreObject()
----------------------------------------------------------------------------------------------------------------------------------------
QBCore.Functions.CreateCallback("copper-remover", function(source, cb)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    if xPlayer.Functions.RemoveItem("coin", 50) then
    local AddItem = xPlayer.Functions.AddItem("copper", 50)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['copper'], "add") 
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['coin'], "remove") 
    TriggerClientEvent('QBCore:Notify', src, "you recived copper", 'success')
        cb(true)
    else
        cb(false)
        TriggerClientEvent('QBCore:Notify', src, "you dont have enough coins to exchange", 'error')
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------
QBCore.Functions.CreateCallback("steel-remover", function(source, cb)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    if xPlayer.Functions.RemoveItem("coin", 50) then
    local AddItem = xPlayer.Functions.AddItem("steel", 50)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['steel'], "add") 
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['coin'], "remove") 
    TriggerClientEvent('QBCore:Notify', src, "you recived steel", 'success')
        cb(true)
    else
        cb(false)
        TriggerClientEvent('QBCore:Notify', src, "you dont have enough coins to exchange", 'error')
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("take-vpn", function()
    local src = source
        local Player = QBCore.Functions.GetPlayer(src)
      local AddItem =   Player.Functions.AddItem("vpn", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['vpn'], "add") 
       TriggerClientEvent('QBCore:Notify', src, "you recived Vpn", 'success')
    end)
RegisterServerEvent('elec-57',function()
    local src = source
     local Player = QBCore.Functions.GetPlayer(src)
    local removeitem = Player.Functions.RemoveItem("coin", 150)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['coin'], "remove") 
end)
if GetCurrentResourceName() ~= "qb-elec" then
    print('[qb-elec]: ^1You are not allowed to change the resource name ^0')
    return
end
print('[qb-elec]: ^2Resource started successfuly^0')
QBCore.Functions.CreateCallback("elec-remover", function(source, cb)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    if xPlayer.Functions.RemoveItem("coin", 150) then

        cb(true)
    else
        cb(false)
        TriggerClientEvent('QBCore:Notify', src, "you dont have enough coins to exchange", 'error')
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("elec-bank", function()
 local src = source
local Player = QBCore.Functions.GetPlayer(src)
Player.Functions.AddItem("receipt", 1)
Player.Functions.AddItem("coin", 2)
TriggerClientEvent('QBCore:Notify', src, "you received receipt", 'success')
TriggerClientEvent('QBCore:Notify', src, "you received coins", 'success')
TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['receipt'], "add") 
TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['coin'], "add") 
end)

RegisterServerEvent('elec-14',function()
local src = source
 local Player = QBCore.Functions.GetPlayer(src)
local removeitem = Player.Functions.RemoveItem("receipt", 10)
        
if removeitem then
TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['receipt'], "remove") 
Player.Functions.AddMoney("cash", 500)
TriggerClientEvent('QBCore:Notify', src, "you got 500", 'success')
else
    TriggerClientEvent('QBCore:Notify', src, "you dont have enough receipts to exchange", 'error')
 end
end)
----------------------------------------------------------------------------------------------------------------------------------------

RegisterServerEvent('elec-20',function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local RemoveMoney = Player.Functions.RemoveMoney("cash", 180, "purchase")

    if RemoveMoney then
       Player.Functions.AddItem("clipboard", 1)
       TriggerClientEvent('QBCore:Notify', src, "you received electricity license", 'success')
       TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['clipboard'], "add") 
    else
            TriggerClientEvent('QBCore:Notify', src, "you dont have enough cash", 'error')
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("elec-random", function()
        local src = source
       local Player = QBCore.Functions.GetPlayer(src)
       local chance = math.random(1, 100)
       if chance < 35 then
           Player.Functions.AddItem("mrbeast_chocolate", 1)
           TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["mrbeast_chocolate"], "add")
        --    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['mrbeast_chocolate'], "received") 
           TriggerClientEvent('QBCore:Notify', src, "you received your reward", 'success')
       end
        end)
----------------------------------------------------------------------------------------------------------------------------------------