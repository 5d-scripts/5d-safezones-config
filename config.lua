_CONFIG = 
{   
    locale = "en",
    debug = true, -- Displays all safe zones visually when set to true. Should only be used for debugging, as there is no distance checking. Very performance hungry!
    gridDivisions = 25, -- Don't change unless you know what you're doing.
    Safezones = 
    {
        ["Hospital"] = 
        {
            showIcon = true, -- Displays an icon as long as you are in a safe zone. The icon can be exchanged and positioned independently.
            disableViolence = false, -- Fighting and drawing weapons are prevented in a safe zone.
            speedLimit = -- Sets a maximum speed limit for vehicles that can be driven in a safe zone.
            {
                enabled = true,
                maxSpeed = 35 -- in km/h
            },
            alertPolice = -- Sends a notification to all officers when shots are fired in a safe zone. This feature works only if disableViolence is set to false.
            { 
                enabled = true,
                policeJobs = {"police", "swat", "fib"},
                cooldownSeconds = 60, -- To prevent notifications for every shot, there is a cooldown feature.
                setWaypoint = true, -- Sets a waypoint to the shooter (position is not updated).
                blip = 
                {
                    enabled = true,
                    displayDurationSeconds = 60, -- How long the blip should be displayed for officers
                    sprite = 161, -- https://wiki.rage.mp/index.php?title=Blips
                    scale = 1.0, -- blip scale
                    colour = 1, --https://wiki.rage.mp/index.php?title=Blips#:~:text=ID%3A%20838-,Blip%20colors,-ID%3A%201
                    label = "Active Shooter" -- blip label
                }
            },
            minHeight = 30.0, -- From what height should the safe zone start? (This is important in case something below should not be part of the safe zone.)
            maxHeight = 80.0, -- Up to what height should the safe zone extend? (This is important in case something above should not be part of the safe zone.)
            points = -- X, Y coordinates that define the boundaries of the safe zone. All points are connected to form a "PolyZone," which is defined as the safe zone.
            {
                vector2(297.6614, -534.5944), 
                vector2(265.1729, -534.5529), 
                vector2(226.5326, -629.2380), 
                vector2(252.8038, -639.9398)
            }
        },
    }
}

if (not IsDuplicityVersion()) then
    -- Notify event. Can be replaced.
    ---@param message string Message to be displayed for the notify.
    ---@param type string Notify type. Either success or errror.
    RegisterNetEvent("5d-safezones:notify", function(message, type)
        ESX.ShowNotification(message)
    end)

    -- Help Notification. Can be repalced.
    ---@param message string Message to be displayed for the help notify. Is called every frame. Can be modified to be displayed only once (see comments).
    local isOpen = false
    RegisterNetEvent("5d-safezones:helpNotify:show", function(message)
        ESX.ShowHelpNotification(message, true)

--[[         
        if(not isOpen) then
            isOpen = true
            -- Show UI
        end 
]]
    end)

    RegisterNetEvent("5d-safezones:helpNotify:hide", function()
--[[         
        if(isOpen) then
            isOpen = false
            --Hide UI
        end 
]]
    end)
end

_LOCALE = {} -- dont touch