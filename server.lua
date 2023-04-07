ESX = exports["es_extended"]:getSharedObject()

-- cokolada

RegisterServerEvent("platiCokolade")
AddEventHandler("platiCokolade", function(kolicina)
    local xPlayer = ESX.GetPlayerFromId(source)
	local proveriStanje = xPlayer.getAccount('money').money
	if proveriStanje < 100 then 
		xPlayer.showNotification("Nemate dovoljno novca")
		return
	else
	TriggerClientEvent('okokNotify:Alert', source, "Shredder Development", "Kupili ste ".. kolicina .." cokolada!", 5000, 'success') -- ako hocete da vidite koliko cokolada ste kupili ostavite ovo
	--TriggerClientEvent('okokNotify:Alert', source, "Shredder Development", "Kupili ste cokolade!", 5000, 'success')

	-- uzima pare i daje vam item
    xPlayer.removeMoney(100 * kolicina)
	xPlayer.addInventoryItem('milka', kolicina)
  end
end)

-- snikers

RegisterServerEvent("platiSnikerse")
AddEventHandler("platiSnikerse", function(kolicina)
	local xPlayer = ESX.GetPlayerFromId(source)
	local proveriStanje = xPlayer.getAccount('money').money
	if proveriStanje < 70 then 
		xPlayer.showNotification("Nemate dovoljno novca")
		return
	else
	TriggerClientEvent('okokNotify:Alert', source, "Shredder Development", "Kupili ste ".. kolicina .." snikersa!", 5000, 'success') -- ako hocete da vidite koliko snikersa ste kupili ostavite ovo
	--TriggerClientEvent('okokNotify:Alert', source, "Shredder Development", "Kupili ste snikers!", 5000, 'success')

	-- uzima pare i daje vam item
    xPlayer.removeMoney(70 * kolicina)
	xPlayer.addInventoryItem('snickers', kolicina)
  end
end)

-- twix

RegisterServerEvent("platiTwixove")
AddEventHandler("platiTwixove", function(kolicina)
	local xPlayer = ESX.GetPlayerFromId(source)
	local proveriStanje = xPlayer.getAccount('money').money
	if proveriStanje < 60 then 
		xPlayer.showNotification("Nemate dovoljno novca")
		return
	else
	TriggerClientEvent('okokNotify:Alert', source, "Shredder Development", "Kupili ste ".. kolicina .." twixa!", 5000, 'success') -- ako hocete da vidite koliko twixa ste kupili ostavite ovo
	--TriggerClientEvent('okokNotify:Alert', source, "Shredder Development", "Kupili ste twix!", 5000, 'success')

	-- uzima pare i daje vam item
	xPlayer.removeMoney(60 * kolicina)
	xPlayer.addInventoryItem('twix', kolicina)
  end
end)

-- kafa

RegisterServerEvent('platiKafu')
AddEventHandler('platiKafu', function(kolicina)
	local xPlayer = ESX.GetPlayerFromId(source)
	local proveriStanje = xPlayer.getAccount('money').money
	if proveriStanje < 30 then 
		xPlayer.showNotification("Nemate dovoljno novca")
		return
	else
	TriggerClientEvent('okokNotify:Alert', source, "Shredder Development", "Kupili ste ".. kolicina .." kafe!", 5000, 'success') -- ako hocete da vidite koliko kafe ste kupili ostavite ovo
	--TriggerClientEvent('okokNotify:Alert', source, "Shredder Development", "Kupili ste kafu!", 5000, 'success')

  	-- uzima pare i daje vam item
   xPlayer.removeMoney(30 * kolicina)
   xPlayer.addInventoryItem('coffee', kolicina)
  end
end)

-- voda

RegisterServerEvent("platiVodu")
AddEventHandler("platiVodu", function(kolicina)
	local xPlayer = ESX.GetPlayerFromId(source)
	local proveriStanje = xPlayer.getAccount('money').money
	if proveriStanje < 15 then 
		xPlayer.showNotification("Nemate dovoljno novca")
		return
	else
	TriggerClientEvent('okokNotify:Alert', source, "Shredder Development", "Kupili ste ".. kolicina .." flasice vode!", 5000, 'success') -- ako hocete da vidite koliko flasica vode ste kupili ostavite ovo
	--TriggerClientEvent('okokNotify:Alert', source, "Shredder Development", "Kupili ste twix!", 5000, 'success')

	-- uzima pare i daje vam item
	xPlayer.removeMoney(15 * kolicina)
	xPlayer.addInventoryItem('water', kolicina)
  end
end)
