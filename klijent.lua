--[[
Traficar = {
  {'a_m_y_stlat_01', 367.0952, -943.637, 28.435, 178.85},
}

Citizen.CreateThread(function()
  for _,v in pairs(Traficar) do
    RequestModel(GetHashKey(v[1]))
    while not HasModelLoaded(GetHashKey(v[1])) do
      Wait(1)
    end
    PostaviPeda =  CreatePed(4, v[1],v[2],v[3],v[4],v[5], false, true)
    FreezeEntityPosition(PostaviPeda, true)
    SetEntityInvincible(PostaviPeda, true)
    SetBlockingOfNonTemporaryEvents(PostaviPeda, true)
  end
end)
]]

-- blip

local Trafike = {
      {title="Trafika", colour=3, id=79, x = 366.4140, y = -834.278, z = 29.291},
}
Citizen.CreateThread(function()
    for _, info in pairs(Trafike) do
      info.Trafike = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.Trafike, info.id)
      SetBlipDisplay(info.Trafike, 4)
      SetBlipScale(info.Trafike, 0.8) -- velicina blipa
      SetBlipColour(info.Trafike, info.colour)
      SetBlipAsShortRange(info.Trafike, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.Trafike)
    end
end)

local Trafika = {
    { ["x"] = 366.68, ["y"] = -833.33, ["z"] = 28.29, ["h"] = 2.15, ["model"] = "prop_tollbooth_1" },
}

Citizen.CreateThread(function()
    for i = 1, #Trafika, 1 do
        while not HasModelLoaded(GetHashKey(Trafika[i]["model"])) do
            RequestModel(GetHashKey(Trafika[i]["model"]))

            Citizen.Wait(5)
        end
        Trafika[i]["objectId"] = CreateObject(GetHashKey(Trafika[i]["model"]), Trafika[i]["x"], Trafika[i]["y"], Trafika[i]["z"], false)

        PlaceObjectOnGroundProperly(Trafika[i]["objectId"])
        SetEntityHeading(Trafika[i]["objectId"], Trafika[i]["h"])
        FreezeEntityPosition(Trafika[i]["objectId"], true)
        SetEntityAsMissionEntity(Trafika[i]["objectId"], true, true)
    end
    exports['okokNotify']:Alert("Shredder Development", "Trafike uspesno ucitane!", 5000, 'success')
end)

-- ovo je na peda

exports.qtarget:AddTargetModel({'a_m_y_stlat_01'}, {
    options = {
        {
          action = function() lib.showContext('otvoriTrafiku') end,
          icon = "fas fa-shop",
          label = "Otvori Trafiku"
      },
  },
  distance = 3
})

-- ovo je na prop

exports.qtarget:AddBoxZone("TrafikaObject", vector3(366.53, -832.9, 29.29), 4, 4, {
  name="TrafikaObject",
  heading=0,
  debugPoly=false, -- ako oces da vidis zonu stavi true
  minZ=27.29,
  maxZ=31.29,
  }, {
    options = {
      {
        action = function() lib.showContext('otvoriTrafiku') end,
        icon = "fas fa-shop",
        label = "Otvori Trafiku"
      },
    },
    distance = 3
})

lib.registerContext({
  id = 'otvoriTrafiku',
  title = 'Trafika',
  options = {
    {
      title = 'Kupi Cokoladu',
      description = '100$',
      event = 'KolicinaCokoladi'
    },
    {
      title = 'Kupi Snikers',
      description = '70$',
      event = 'KolicinaSnikersa'
    },
    {
      title = 'Kupi Twix',
      description = '60$',
      event = 'KolicinaTwixova'
    },
    {
      title = 'Kupi Kafu',
      description = '30$',
      event = 'KolicinaKafa'
    },
    {
      title = 'Kupi Vodu',
      description = '15$',
      event = 'KolicinaVoda'
    },
  },
})

-- cokolada

AddEventHandler('KolicinaCokoladi', function(kolicina)
    local input = lib.inputDialog('Trafike', {'Kolicina'})
    local kolicina = tonumber(input[1])
    TriggerServerEvent("platiCokolade", kolicina)
end)

-- snikers

AddEventHandler('KolicinaSnikersa', function(kolicina)
    local input = lib.inputDialog('Trafike', {'Kolicina'})
    local kolicina = tonumber(input[1])
    TriggerServerEvent("platiSnikerse", kolicina)
end)

-- twix

AddEventHandler('KolicinaTwixova', function(kolicina)
    local input = lib.inputDialog('Trafike', {'Kolicina'})
    local kolicina = tonumber(input[1])
    TriggerServerEvent("platiTwixove", kolicina)
end)

-- kafa

AddEventHandler('KolicinaKafa', function(kolicina)
    local input = lib.inputDialog('Trafike', {'Kolicina'})
    local kolicina = tonumber(input[1])
    TriggerServerEvent("platiKafu", kolicina)
end)

-- voda

AddEventHandler('KolicinaVoda', function(kolicina)
    local input = lib.inputDialog('Trafike', {'Kolicina'})
    local kolicina = tonumber(input[1])
    TriggerServerEvent("platiVodu", kolicina)
end)
