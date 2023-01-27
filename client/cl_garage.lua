RMenu.Add('Dobraziil', 'main', RageUI.CreateMenu("Garage", "Menu Véhicule"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('Dobraziil', 'main'), true, true, true, function() 
            RageUI.Button("Ranger le véhicule", "Pour ranger le véhicule.", {RightLabel = "→→→"},true, function(Hovered, Active, Selected)
            if (Selected) then   
            local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
            if dist4 < 4 then
                ESX.ShowAdvancedNotification("Garage", "Merci , Le véhiule est de retour.", "", "CHAR_AVOCAT", 1)
                DeleteEntity(veh)
            end 
            end
            end)         
            RageUI.Button("Voiture Déplacement", "Pour sortir un Véhicule", {RightLabel = "→→→"},true, function(Hovered, Active, Selected)
            if (Selected) then
            ESX.ShowAdvancedNotification("Garage", "Le véhicule arrive !", "", "CHAR_AVOCAT", 1) 
            Citizen.Wait(2000)  
            spawnuniCar("oracle2")
            ESX.ShowAdvancedNotification("Garage", "Bonne route !", "", "CHAR_AVOCAT", 1) 
            end
            end)

            RageUI.Button("Voiture Service", "Pour sortir un Véhicule", {RightLabel = "→→→"},true, function(Hovered, Active, Selected)
                if (Selected) then
                ESX.ShowAdvancedNotification("Garage avocat", "Le véhicule arrive !", "", "CHAR_AVOCAT", 1) 
                Citizen.Wait(2000)   
                spawnuniCar("cogcabrio")
                ESX.ShowAdvancedNotification("Garage avocat", "Bonne route !", "", "CHAR_AVOCAT", 1) 
                end
                end)
                       
        end, function()
        end)
            Citizen.Wait(0)
        end
    end)

Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    

    
                local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, Config.pos.garage.position.x, Config.pos.garage.position.y, Config.pos.garage.position.z)
                DrawMarker(24,  -1900.71, -560.38, 10.90+1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 0, 255, 255, 0, 1, 2, 0, nil, nil, 0)
            if dist3 <= 3.0 then
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'avocat' then    
                    ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour accéder au garage")
                    if IsControlJustPressed(1,51) then           
                        RageUI.Visible(RMenu:Get('Dobraziil', 'main'), not RageUI.Visible(RMenu:Get('Dobraziil', 'main')))
                    end   
                end
               end 
        end
end)

function spawnuniCar(car)
    local car = GetHashKey(car)

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end

    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, Config.pos.spawnvoiture.position.x, Config.pos.spawnvoiture.position.y, Config.pos.spawnvoiture.position.z, Config.pos.spawnvoiture.position.h, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    local plaque = "AVOCAT"..math.random(1,9)
    SetVehicleNumberPlateText(vehicle, plaque) 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1) 
end