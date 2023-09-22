local QBCore = exports['qb-core']:GetCoreObject()
local  MissionStart = false
local  TakeVpn = false
local AreaZone = nil
local InsideDeliveyZone = false
local GlobalDeliveryVehicle = nil
local success = false
CreateThread(function()
---------Peds----------    
local Activeped = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if not Activeped then
            local model = GetHashKey("ig_floyd")
            RequestModel(model)
            while not HasModelLoaded(model) do
            Citizen.Wait(10)
            end
local coords = vector4(718.79, 152.72, 79.75, 162.63)
            local retval = CreatePed( 1, model, coords.x, coords.y, coords.z, coords.w, false, false)     
            -- print(model)
            FreezeEntityPosition(retval, true)
            FreezeEntityPosition(retval, true)
            SetEntityInvincible(retval, true)
            SetBlockingOfNonTemporaryEvents(retval, true) 
            TaskStartScenarioInPlace(retval, "WORLD_HUMAN_CLIPBOARD", 0,1)
            Activeped = true
        end
    end
end)

local Activeped2 = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if not Activeped2 then
            local model = GetHashKey("ig_bankman")
            RequestModel(model)
            while not HasModelLoaded(model) do
            Citizen.Wait(10)
            end
local coords = vector4(241.82, 226.91, 105.29, 158.34)
            local retval = CreatePed( 1, model, coords.x, coords.y, coords.z, coords.w, false, false)     
            -- print(model)
            FreezeEntityPosition(retval, true)
            FreezeEntityPosition(retval, true)
            SetEntityInvincible(retval, true)
            SetBlockingOfNonTemporaryEvents(retval, true) 
            TaskStartScenarioInPlace(retval, "WORLD_HUMAN_CLIPBOARD", 0,1)
            Activeped2 = true
        end
    end
end)

local Activeped3 = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if not Activeped3 then
            local model = GetHashKey("a_m_y_business_02")
            RequestModel(model)
            while not HasModelLoaded(model) do
            Citizen.Wait(10)
            end
local coords = vector4(-547.83, -209.25, 36.65, 221.68)
            local retval = CreatePed( 1, model, coords.x, coords.y, coords.z, coords.w, false, false)     
            -- print(model)
            FreezeEntityPosition(retval, true)
            FreezeEntityPosition(retval, true)
            SetEntityInvincible(retval, true)
            SetBlockingOfNonTemporaryEvents(retval, true) 
            TaskStartScenarioInPlace(retval, "WORLD_HUMAN_CLIPBOARD", 0,1)
            Activeped3 = true
        end
    end
end)
local Activeped4 = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if not Activeped4 then
            local model = GetHashKey("s_m_y_construct_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
            Citizen.Wait(10)
            end
local coords = vector4(729.31, -1974.2, 28.29, 253.1)
            local retval = CreatePed( 1, model, coords.x, coords.y, coords.z, coords.w, false, false)     
            -- print(model)
            FreezeEntityPosition(retval, true)
            FreezeEntityPosition(retval, true)
            SetEntityInvincible(retval, true)
            SetBlockingOfNonTemporaryEvents(retval, true) 
            TaskStartScenarioInPlace(retval, "WORLD_HUMAN_CLIPBOARD", 0,1)
            Activeped4 = true
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------
---------Targets---------- 
exports['qb-target']:AddBoxZone('elec-1',vector3(718.79, 152.72, 80.75), 1, 1, {
    name = 'elec-1',
    useZ = 'true',
},
{
   options = {
   {
   event = 'elec-2',
   icon = 'fas fa-user',            
   label = "talk", 
   job = 'all',
   },
},
distance = 2.0
})
exports['qb-target']:AddBoxZone('elec-69',vector3(729.45, -1974.25, 29.29), 1, 1, {
    name = 'elec-69',
    useZ = 'true',
},
{
   options = {
   {
   event = 'elec-70',
   icon = 'fas fa-user',            
   label = "talk", 
   job = 'all',
   },
},
distance = 2.0
})
exports['qb-target']:AddBoxZone('elec-12',vector3(241.76, 226.77, 106.29), 1, 1, {
    name = 'elec-12',
    useZ = 'true',
},
{
   options = {
   {
   event = 'elec-13',
   icon = 'fas fa-piggy-bank',    
   label = "Bank", 
   job = 'all',
   },
},
distance = 2.5
}) 

exports['qb-target']:AddBoxZone('elec-17',vector3(-547.78, -209.24, 37.65), 1, 1, {
    name = 'elec-17',
    useZ = 'true',
},
{
   options = {
   {
   event = 'elec-18',
   icon = 'fa-solid fa-user',    
   label = "city hall", 
   job = 'all',
   },
},
distance = 1.5
}) 
exports['qb-target']:AddBoxZone('elec-53',vector3(-345.78, -1490.83, 30.79), 1, 1, {
    name = 'elec-53',
    useZ = 'true',
},
{
   options = {
   {
   event = 'elec-54',
   icon = 'fa-solid fa-arrow-right-to-bracket',     
   label = "call", 
   job = 'all',
   },
},
distance = 1.0
}) 

CreateThread(function()
    exports['qb-target']:RemoveZone("elec-7")
    end)
    CreateThread(function()
        exports['qb-target']:RemoveZone("elec-22")
        end)
        CreateThread(function()
            exports['qb-target']:RemoveZone("elec-25")
            end)    
            CreateThread(function()
                exports['qb-target']:RemoveZone("elec-32")
                end)  
                CreateThread(function()
                    exports['qb-target']:RemoveZone("elec-35")
                    end)              
                    CreateThread(function()
                        exports['qb-target']:RemoveZone("elec-37")
                        end)  
                        CreateThread(function()
                            exports['qb-target']:RemoveZone("elec-39")
                            end)  
                            CreateThread(function()
                                exports['qb-target']:RemoveZone("elec-41")
                                end)  
                                CreateThread(function()
                                    exports['qb-target']:RemoveZone("elec-45")
                                    end) 
                                    CreateThread(function()
                                        exports['qb-target']:RemoveZone("elec-47")
                                        end) 
                                        CreateThread(function()
                                            exports['qb-target']:RemoveZone("elec-50")
                                            end) 
                                            CreateThread(function()
                                                exports['qb-target']:RemoveZone("elec-60")
                                                end) 
-----------------------------------------------------------------------------------------------------------------------------------
---------Events---------- 
RegisterNetEvent("elec-62", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
        id = 2,
        header = 'vpn',
        txt = 'take the package and leave the area fast',
        icon = 'fa-solid fa-hard-drive',  
        params = {
        event = 'elec-61',
            args = { 
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
    exports['qb-target']:RemoveZone("elec-60")
end) 
RegisterNetEvent("elec-61", function()
    TakeVpn = true 
    TriggerServerEvent("take-vpn")
    TakeVpn = false
end)
RegisterNetEvent("elec-54", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Milk Road',
            txt = '',
            icon = 'fas fa-spider',      
            params = {
                -- event = '',
                args = {
                }
            }
        },
        {
            id = 2,
            header = "Exchange your coins with vpn",
            txt = "you need 150 coins",
            icon = 'fa-solid fa-user-secret',    
            params = {
                event = 'elec-59',
                args = {
            message = 'This was called by clicking a button'
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent("elec-51", function(data) 
    exports['ps-ui']:Thermite(function(success)
        if success then
            if MissionStart then
                QBCore.Functions.Progressbar("sell_items23", "repairing", 2000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "missmechanic",
                    anim = "work2_base",
                    flags = 16,
                }, {}, {}, function() -- Done
              TriggerServerEvent("elec-bank")
              QBCore.Functions.Notify("return the vehicle to electricity centre", "success")
                MissionStart = false
                 success = false
                 end)
                else
                    QBCore.Functions.Notify("You are not on duty", "error")
                end
        else
            QBCore.Functions.Notify("You failed, try again.", "error")
        end
    end, 17, 5, 2) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
end) 
RegisterNetEvent("elec-52", function(data) 
    exports['ps-ui']:Thermite(function(success)
        if success then
            if MissionStart then
                QBCore.Functions.Progressbar("sell_items23", "repairing", 2000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "missmechanic",
                    anim = "work2_base",
                    flags = 16,
                }, {}, {}, function() -- Done
              TriggerServerEvent("elec-bank")
              QBCore.Functions.Notify("return the vehicle to electricity centre", "success")
                MissionStart = false
                 success = false
                 end)
                else
                    QBCore.Functions.Notify("You are not on duty", "error")
                end
        else
            QBCore.Functions.Notify("You failed, try again.", "error")
        end
    end, 17, 5, 2) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
end)
RegisterNetEvent("elec-65", function(data) 
    QBCore.Functions.TriggerCallback("steel-remover", function(cb)
        if cb then
            QBCore.Functions.Progressbar("steelgoods", "taking goods", 6000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "special_ped@baygor@michael_1@michael_1g",
                anim = "hey_how_you_doing_6",
                flags = 16,
            }, {}, {}, function() -- Done
              TriggerEvent("elec-66")
            end)
        end
    end)  
end)
RegisterNetEvent("elec-66", function()
    TriggerServerEvent("steel-remover")
end)  
RegisterNetEvent("elec-68", function(data) 
    QBCore.Functions.TriggerCallback("copper-remover", function(cb)
        if cb then
            QBCore.Functions.Progressbar("coppergoods", "taking goods", 6000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "special_ped@baygor@michael_1@michael_1g",
                anim = "hey_how_you_doing_6",
                flags = 16,
            }, {}, {}, function() -- Done
              TriggerEvent("elec-67")
            end)
        end
    end)  
end)  
RegisterNetEvent("elec-67", function()
    TriggerServerEvent("copper-remover")
end)
RegisterNetEvent("elec-64", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Back',
            txt = '',
            icon = 'fas fa-angle-left',      
            params = {
            event = 'elec-70',
            args = {
                }
            }
        },
        {
            id = 2,
            header = "Buy 50 steel for 50 coins.",
            txt = "",
            icon = 'fas fa-recycle',    
            params = {
                event = 'elec-65',
                args = {
                message = 'This was called by clicking a button'
                }
            }
        },
            {
                id = 3,
                header = 'Buy 50 copper for 50 coins.',
                txt = '',
                icon = 'fas fa-recycle',
                params = {
                    event = 'elec-68',
                    args = {
                        }
                    }
                },
            }
exports['qb-menu']:openMenu(Menu)
end)
RegisterNetEvent("elec-70", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
            event = '',
            args = {
                }
            }
        },
        {
            id = 2,
            header = "exchanging coins",
            txt = "you can exchange your coins with materials",
            icon = 'fas fa-basket-shopping',    
            params = {
                event = 'elec-64',
                args = {
                message = 'This was called by clicking a button'
                }
            }
        },    
      }
exports['qb-menu']:openMenu(Menu)
end)
RegisterNetEvent("elec-2", function(data) 
    local hasItem = QBCore.Functions.HasItem('clipboard')
    if hasItem then
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
            id = 2,
            header = "start working",
            txt = "to earn money and improve your skills in electricity start working now.",
            icon = 'fas fa-play',    
            params = {
                event = 'elec-3',
                args = {
                message = 'This was called by clicking a button'
                }
            }
        },
            }
exports['qb-menu']:openMenu(Menu)
exports['qb-target']:AddBoxZone('elec-7',vector3(-38.33, 373.81, 112.43), 2, 2, {
        name = 'elec-7',
        useZ = 'true',
    },
    {
       options = {
       {
       event = 'elec-5',
       icon = 'fas fa-wifi',            
       label = "start", 
       job = 'all',
       },
    },
    distance = 1.0
    }) 
    exports['qb-target']:AddBoxZone('elec-22',vector3(2054.32, 3688.51, 34.59), 2, 2, {
        name = 'elec-22',
        useZ = 'true',
    },
    {
       options = {
       {
       event = 'elec-24',
       icon = 'fa-solid fa-bug',     
       label = "Start", 
       job = 'all',
       },
    },
    distance = 1.5
    }) 
    exports['qb-target']:AddBoxZone('elec-25',vector3(75.31, -1896.96, 21.67), 1, 1, {
        name = 'elec-25',
        useZ = 'true',
    },
    {
       options = {
       {
       event = 'elec-26',
       icon = 'fa-solid fa-mobile-retro',     
       label = "Start", 
       job = 'all',
       },
    },
    distance = 1.5
    }) 
    exports['qb-target']:AddCircleZone('elec-32',vector3(350.51, -2020.06, 22.31), 0.55, {
        name = 'elec-32',
        useZ = 'true',
    },
    {
       options = {
       {
       event = 'elec-33',
       icon = 'fas fa-lightbulb',     
       label = "Start", 
       job = 'all',
       },
    },
    distance = 1.5
    }) 
    exports['qb-target']:AddBoxZone('elec-35',vector3(-126.96, -1501.65, 33.93), 1, 1, {
        name = 'elec-35',
        useZ = 'true',
    },
    {
       options = {
       {
       event = 'elec-36',
       icon = 'fa-solid fa-bug-slash',      
       label = "Start", 
       job = 'all',
       },
    },
    distance = 1.5
    }) 
    exports['qb-target']:AddBoxZone('elec-37',vector3(938.41, -1939.74, 30.7), 1, 1, {
        name = 'elec-37',
        useZ = 'true',
    },
    {
       options = {
       {
       event = 'elec-38',
       icon = 'fa-solid fa-bug-slash',      
       label = "Start", 
       job = 'all',
       },
    },
    distance = 1.5
    }) 
    exports['qb-target']:AddBoxZone('elec-39',vector3(-1286.53, -834.79, 17.1), 1, 1, {
        name = 'elec-39',
        useZ = 'true',
    },
    {
       options = {
       {
       event = 'elec-40',
       icon = 'fa-solid fa-wrench',       
       label = "Start", 
       job = 'all',
       },
    },
    distance = 1.5
    }) 
    exports['qb-target']:AddBoxZone('elec-41',vector3(217.1, -1865.79, 30.86), 1, 1, {
        name = 'elec-41',
        useZ = 'true',
    },
    {
       options = {
       {
       event = 'elec-42',
       icon = 'fa-solid fa-screwdriver',        
       label = "Start", 
       job = 'all',
       },
    },
    distance = 1.5
    }) 
    exports['qb-target']:AddBoxZone('elec-45',vector3(1796.87, 3803.2, 33.57), 2, 5, {
        name = 'elec-45',
        useZ = 'true',
    },
    {
       options = {
       {
       event = 'elec-46',
       icon = 'fa-solid fa-satellite-dish',    
       label = "Start", 
       job = 'all',
       },
    },
    distance = 1.5
    })
    exports['qb-target']:AddBoxZone('elec-47',vector3(-1543.99, -433.09, 35.59), 1, 1, {
        name = 'elec-47',
        useZ = 'true',
    },
    {
       options = {
       {
       event = 'elec-48',
       icon = 'fa-solid fa-square-phone',    
       label = "Start", 
       job = 'all',
       },
    },
    distance = 1.5
    })
    exports['qb-target']:AddBoxZone('elec-50',vector3(1830.32, 3899.65, 33.39), 1, 1, {
        name = 'elec-50',
        useZ = 'true',
    },
    {
       options = {
       {
       event = 'elec-49',
       icon = 'fa-solid fa-bug',    
       label = "Start", 
       job = 'all',
       },
    },
    distance = 1.5,
    })   
    else
    QBCore.Functions.Notify("You dont have electricity license", "error", 2000)
    end
end)

RegisterNetEvent("elec-18", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
            id = 2,
            header = "licenses",
            txt = "Helps you to work legal",
            icon = 'fas fa-clipboard-list',    
            params = {
                event = 'elec-19',
                args = {
            message = 'This was called by clicking a button'
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent("elec-19", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'back',
            txt = '',
            icon = 'fas fa-angle-left',      
            params = {
                event = 'elec-18',
                args = {
                }
            }
        },
        {
            id = 2,
            header = "electricity license",
            txt = "$180",
            icon = 'fas fa-clipboard-list',    
            params = {
                event = 'elec-21',
                args = {
            message = 'This was called by clicking a button'
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent("elec-13", function(data) 
    local Menu = {

        {
            header = "Exchanging",
            isMenuHeader = true, 
            icon = "fa-solid fa-building-columns"        
        },
        {
            header = "Exchange your receipt",
            txt = "you can exchange your receipts to dollars $,to start the exchanging process you need 10 receipts",
            icon = 'fas fa-money-bill-transfer',
            params = {
                event = 'elec-15',
                args = {
            message = 'This was called by clicking a button'
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent("elec-21", function(data) 
    TriggerServerEvent("elec-20")
    end)

RegisterNetEvent("elec-15", function(data) 
TriggerServerEvent("elec-14")
end)
RegisterNetEvent("elec-28", function(data) 
 if MissionStart then
 MissionStart = false

  end
    end)


    RegisterNetEvent("elec-44", function()
        if MissionStart then 
            TriggerEvent("elec-52")
            exports['qb-target']:RemoveZone("elec-41")
       else
           QBCore.Functions.Notify("You are not on duty", "error")
           end
    end)
    
RegisterNetEvent("elec-8", function()
    if MissionStart then 
     TriggerEvent("elec-51")
        exports['qb-target']:RemoveZone("elec-7")
        exports['qb-target']:RemoveZone("elec-22")
        exports['qb-target']:RemoveZone("elec-25")
        exports['qb-target']:RemoveZone("elec-32")
        exports['qb-target']:RemoveZone("elec-35")
        exports['qb-target']:RemoveZone("elec-37")
        exports['qb-target']:RemoveZone("elec-39")
        exports['qb-target']:RemoveZone("elec-45")
        exports['qb-target']:RemoveZone("elec-47")
        exports['qb-target']:RemoveZone("elec-50")
else
    QBCore.Functions.Notify("You are not on duty", "error")
    end
end)
RegisterNetEvent("elec-49", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
        id = 2,
        header = 'Letter From Sara',
        txt = 'My washing machine is not spinning and the electricity on it is too weak, if you fix it I will pay ($35).',
        icon = 'fa-solid fa-microchip',     
        params = {
        event = 'elec-8',
            args = { 
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)
RegisterNetEvent("elec-48", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
        id = 2,
        header = 'Whiz public phone',
        txt = 'The Public phone always breaks down, if you fix it i will pay ($35).',
        icon = 'fa-solid fa-square-phone',     
        params = {
        event = 'elec-8',
            args = { 
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end) 

RegisterNetEvent("elec-24", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
        id = 2,
        header = 'Sandy Electricity',
        txt = 'Sandy electricity is down try to fix it',
        icon = 'fa-solid fa-earth-americas',      
        params = {
        event = 'elec-8',
            args = { 
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent("elec-46", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
        id = 2,
        header = 'Letter From Thomas',
        txt = 'My TV signal is very weak, if you fix it i will pay ($35).',
        icon = 'fa-solid fa-satellite-dish',      
        params = {
        event = 'elec-8',
            args = { 
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent("elec-40", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
        id = 2,
        header = 'Burgershot Warehouse',
        txt = 'The warehouse electricity is too weak, if you fix it i will pay ($35).',
        icon = 'fa-solid fa-warehouse',           
        params = {
        event = 'elec-8',
            args = { 
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent("elec-42", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
        id = 2,
        header = 'Letter from Mrbeast',
        txt = 'My air conditioner always breaks down, if you fix it i will pay ($35).',
        icon = 'fa-solid fa-fan',          
        params = {
        event = 'elec-44',
            args = { 
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent("elec-38", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
        id = 2,
        header = 'Popular Street Electricity',
        txt = 'the people are facing problems with the electricity, if you fix it i will pay ($35).',
        icon = 'fa-solid fa-users',      
        params = {
        event = 'elec-8',
            args = { 
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent("elec-36", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
        id = 2,
        header = 'the wolves compound',
        txt = 'Our compound have problems with the electricity, if you fix it i will pay ($35).',
        icon = 'fa-solid fa-earth-americas',       
        params = {
        event = 'elec-8',
            args = { 
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent("elec-26", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
        id = 2,
        header = 'Letter From Luis',  
        txt = 'i have problems in my cellphone signal, if you fix it i will pay ($35).',
        icon = 'fa-solid fa-signal',
        params = {
        event = 'elec-8',
            args = { 
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent("elec-5", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
        id = 2,
        header = 'Letter From John',
        txt = 'i have problems in my wifi network, if you fix it i will pay ($35).',
        icon = 'fas fa-globe',
        params = {
        event = 'elec-8',
            args = { 
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent("elec-33", function(data) 
    local Menu = {
        {
            id = 1,
            header = 'Close',
            txt = '',
            icon = 'fas fa-door-open',      
            params = {
                event = '',
                args = {
                }
            }
        },
        {
        id = 2,
        header = 'Letter From william',
        txt = 'i have problems in my House electricity, if you fix it i will pay ($35).',
        icon = 'fa-solid fa-house-circle-exclamation',  
        params = {
        event = 'elec-8',
            args = { 
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)


local function StartDeliveryMission()
AreaZone = CircleZone:Create(vector3(744.64, 130.46, 78.61), 7.25, {     
    name="cardelivey",
    useZ=true,
   -- debugPoly=true
  })
AreaZone:onPlayerInOut(function(isPointInside, point)
    if isPointInside then
    if IsPedInAnyVehicle(PlayerPedId(), false) then
        exports["qb-core"]:DrawText("Press [E] To Return Vehicle", "left")
        TriggerEvent("elec-keypressed")
    end
    else 
        exports["qb-core"]:HideText() 
        InsideDeliveyZone = false
    end
end)
end
local function DeliveryVehicle()
    AreaZone:destroy()
    AreaZone = nil
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    TaskLeaveVehicle(PlayerPedId(), vehicle, 0)
    Wait(100)
    DeleteEntity(vehicle)
end
RegisterNetEvent("elec-keypressed", function ()
InsideDeliveyZone = true
  while InsideDeliveyZone do
Wait(0)
if IsControlJustReleased(0, 38) then
if GlobalDeliveryVehicle == GetVehiclePedIsIn(PlayerPedId(), false) then 
                DeliveryVehicle()
               exports["qb-core"]:HideText() 
               InsideDeliveyZone = false
          end
      end
   end
end)
RegisterNetEvent("elec-car", function ()
          QBCore.Functions.SpawnVehicle("Boxville", function(veh)
           exports["LegacyFuel"]:SetFuel(veh, 100)
          TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', GetVehicleNumberPlateText(veh))
           SetVehicleEngineOn(veh, true, true)
           GlobalDeliveryVehicle = veh
           end, Config.vehiclespawnCoords, true, false)
           StartDeliveryMission()
         QBCore.Functions.Notify("the loactions has been marked on the map", "success", 2000)
        end)
-----------------------------------------------------------------------------------------------------------------------------------
---------Blips---------- 
RegisterNetEvent("elec-59", function(data) 
    QBCore.Functions.TriggerCallback("elec-remover", function(cb)
        if cb then
                QBCore.Functions.Progressbar("calling-60", "taking informations", 3500, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "cellphone@str",
                    anim = "cellphone_call_listen_yes_b",
                    flags = 16,
                }, {}, {}, function() -- Done
              TriggerEvent("elec-58")
              exports['qb-target']:AddBoxZone('elec-60',vector3(2327.85, 2572.81, 46.68), 1, 1, {
                name = 'elec-60',
                useZ = 'true',
            },
            {
               options = {
               {
               event = 'elec-62',
               icon = 'fa-solid fa-trailer',     
               label = "Take the vpn", 
               job = 'all',
               },
            },
            distance = 2.0
            }) 
              QBCore.Functions.Notify("go to the dead-drop", "success", 2000)
            end)
        end
    end)  
end)
RegisterNetEvent("elec-63", function()
exports['qb-target']:RemoveZone("elec-60")
end)
RegisterNetEvent("elec-58", function()
TriggerServerEvent("elec-57")
TriggerEvent("elec-56") 
end)    
CreateThread(function()
    while true do
       Wait(0)
      local PlayerPos = GetEntityCoords(PlayerPedId())
     local Dist = #(PlayerPos - CheckTable2())

              if Dist < 10.0 and blip ~= nil then
                  RemoveBlip(blip)
                  blip = nil
              end
      end
end)
local Coords = {
    vector3(2328.34, 2572.37, 46.68),
    }
function CheckTable2()
    local k = math.random(1, #Coords)
    TargetCoord = Coords[k]
    return TargetCoord
end
RegisterNetEvent("elec-56", function(data)
            blip = AddBlipForCoord(CheckTable2())
            SetBlipSprite(blip, 440)
            SetBlipAsShortRange(blip, true)
            SetBlipScale(blip, 0.6)
            SetBlipColour(blip, 5)
            BeginTextCommandSetBlipName("string")
            AddTextComponentString("dead-drop")
            EndTextCommandSetBlipName(blip)
end)
CreateThread(function()
    while true do
       Wait(0)
      local PlayerPos = GetEntityCoords(PlayerPedId())
     local Dist = #(PlayerPos - CheckTable())

          if MissionStart then
              if Dist < 10.0 and blip ~= nil then
                  RemoveBlip(blip)
                  blip = nil
              end
          end
      end
end)
local Coords = {
    vector3(-38.54, 374.1, 115.11),
    vector3(74.91, -1896.36, 21.77),
    vector3(-127.26, -1502.01, 34.08),
    vector3(937.67, -1938.88, 30.8),
    vector3(350.66, -2019.69, 22.31),
    vector3(-1285.59, -834.99, 17.1),
    vector3(2053.72, 3689.55, 34.59),
    vector3(216.71, -1866.08, 30.86),
    vector3(1798.35, 3803.12, 33.58),
    vector3(-1543.38, -433.51, 35.59),
    vector3(1830.61, 3900.24, 33.41),
    }
function CheckTable()
    local k = math.random(1, #Coords)
    TargetCoord = Coords[k]
    return TargetCoord
end
RegisterNetEvent("elec-3", function(data)
            MissionStart = true
            blip = AddBlipForCoord(CheckTable())
            SetBlipSprite(blip, 57)
            SetBlipAsShortRange(blip, true)
            SetBlipScale(blip, 0.6)
            SetBlipColour(blip, 3)
            SetBlipRoute(blip, true)
            SetBlipRouteColour(blip, 3)
            BeginTextCommandSetBlipName("string")
            AddTextComponentString("electricity")
            EndTextCommandSetBlipName(blip)
            TriggerEvent("elec-car")
        end)
        local coord = vector3(718.21, 151.82, 80.75)
        CreateThread(function()
            local blip = AddBlipForCoord(coord.x, coord.y, coord.z)
            SetBlipSprite(blip, 354)
            SetBlipAsShortRange(blip, true)
            SetBlipDisplay(blip, 4)
            SetBlipColour(blip, 2)
            BeginTextCommandSetBlipName("string")
            AddTextComponentString("Electicity")
            EndTextCommandSetBlipName(blip)
        end)
        local coord = vector3(729.95, -1974.29, 29.29)
        CreateThread(function()
            local blip = AddBlipForCoord(coord.x, coord.y, coord.z)
            SetBlipSprite(blip, 685)
            SetBlipAsShortRange(blip, true)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, 0.6)
            SetBlipColour(blip, 2)
            BeginTextCommandSetBlipName("string")
            AddTextComponentString("Exchange center")
            EndTextCommandSetBlipName(blip)
        end)
        local coord = vector3(246.64, 223.20, 106.29)
        CreateThread(function()
            local blip = AddBlipForCoord(coord.x, coord.y, coord.z)
            SetBlipSprite(blip, 108)
            SetBlipAsShortRange(blip, true)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, 0.6)
            SetBlipColour(blip, 1)
            BeginTextCommandSetBlipName("string")
            AddTextComponentString("Bank")
            EndTextCommandSetBlipName(blip)
        end)
        local coord = vector3(-547.55, -209.78, 37.65)
        CreateThread(function()
            local blip = AddBlipForCoord(coord.x, coord.y, coord.z)
            SetBlipSprite(blip, 351)
            SetBlipAsShortRange(blip, true)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, 0.9)
            SetBlipColour(blip, 0)
            BeginTextCommandSetBlipName("string")
            AddTextComponentString("City Hall")
            EndTextCommandSetBlipName(blip)
        end)
-----Prints-----
-----Please Don't Delete This-----
print("made with lova by: panther1504")
print("made by panther")
print("SDN ON TOP")
---------------------------------------------------------------------------------------------------------------------------------------------------------
end)