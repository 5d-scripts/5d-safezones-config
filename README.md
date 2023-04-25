# Developer Events

In order to give developers more control of this script, we have exposed two events to the server, and the client. Feel free to build upon this script as you please.



| Event        | Param           | Type | Description  |
| ------------- |:-------------: |-------------: | -----:|
| TriggerClientEvent("5d-safezones:enter") | currentSafezone | table | Lua table containing the config of the current safezone. |
| TriggerClientEvent("5d-safezones:leave") | currentSafezone | table | Lua table containing the config of the current safezone. |
| TriggerServerEvent("5d-safezones:enter") | currentSafezone | table | Lua table containing the config of the current safezone. |
| TriggerServerEvent("5d-safezones:leave") | currentSafezone | table | Lua table containing the config of the current safezone. |


## Example

```lua
-- Client Script
AddEventHandler("5d-safezones:enter", function(currentSafezone)
    if(currentSafezone.customConfigEntry) then
        -- Implement custom config entries for your safezones.
    end

    if(currentSafezone.disableViolence) then
        -- Expand on existing config entries. 
    end
end)
```lua