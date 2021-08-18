ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('pctopla')
AddEventHandler('pctopla', function(id, item, count, label)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(source)
  local yeterli = count * 1  -- BİRLEŞTİRMEK İÇİN KAÇ TANE GEREKSİN?
  local currentram1 = xPlayer.getInventoryItem("ram1")["count"]
  local currentislemci1 = xPlayer.getInventoryItem("islemci1")["count"]
  local currentekrankarti1 = xPlayer.getInventoryItem("ekrankarti1")["count"]
  local currentssd1 = xPlayer.getInventoryItem("ssd1")["count"]
  local currentguckayna1 = xPlayer.getInventoryItem("guckayna1")["count"]
  local currentanakart1 = xPlayer.getInventoryItem("anakart1")["count"]
  local currentram2 = xPlayer.getInventoryItem("ram2")["count"]
  local currentislemci2 = xPlayer.getInventoryItem("islemci2")["count"]
  local currentekrankarti2 = xPlayer.getInventoryItem("ekrankarti2")["count"]
  local currentssd2 = xPlayer.getInventoryItem("ssd2")["count"]
  local currentguckayna2 = xPlayer.getInventoryItem("guckayna2")["count"]
  local currentanakart2 = xPlayer.getInventoryItem("anakart2")["count"]
            if item ==  'pc1' then
                if (currentram1 >= yeterli) and (currentislemci1 >= yeterli) and (currentekrankarti1 >= yeterli) and (currentssd1 >= yeterli) and (currentguckayna1 >= yeterli) then
                    TriggerClientEvent('pctoplamaanim', _source)
                    xPlayer.removeInventoryItem('ram1', yeterli)
                    xPlayer.removeInventoryItem('islemci1', yeterli)
                    xPlayer.removeInventoryItem('ekrankarti1', yeterli)
                    xPlayer.removeInventoryItem('ssd1', yeterli)
                    xPlayer.removeInventoryItem('guckayna1', yeterli)
                    xPlayer.removeInventoryItem('anakart1', yeterli)                    
                    Citizen.Wait(60000)
                    xPlayer.addInventoryItem('pc1', count)
                else
                    TriggerClientEvent('notification', _source, 'Üzerinde yeterli bilgisayar parçası yok!', 2)
                end
            elseif item ==  'pc2' then
                if (currentram2 >= yeterli) and (currentislemci2 >= yeterli) and (currentekrankarti2 >= yeterli) and (currentssd2 >= yeterli) and (currentguckayna2 >= yeterli) then
                    TriggerClientEvent('pctoplamaanim', _source)
                    xPlayer.removeInventoryItem('ram2', yeterli)
                    xPlayer.removeInventoryItem('islemci2', yeterli)
                    xPlayer.removeInventoryItem('ekrankarti2', yeterli)
                    xPlayer.removeInventoryItem('ssd2', yeterli)
                    xPlayer.removeInventoryItem('guckayna2', yeterli)
                    xPlayer.removeInventoryItem('anakart2', yeterli)                     
                    Citizen.Wait(60000)
                    xPlayer.addInventoryItem('pc2', 1)
                else
                    TriggerClientEvent('notification', _source, 'Üzerinde yeterli bilgisayar parçası yok!', 2)
                end
            end 	
end)

-- BU SCRİPT LEVİS DEVELOPMENTS TARAFINDAN YAPILMIŞTIR 
-- TEKNİK DESTEK İÇİN : https://discord.gg/uB2GnsjCmb , ! Onur#5962