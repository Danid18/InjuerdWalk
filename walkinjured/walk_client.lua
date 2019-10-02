--#By DaniD18
--#Change 130 val if you want to start the walkstyle at another level of health

Citizen.CreateThread(function()

	local myped = GetPlayerPed(-1)
	local mypedhealth = GetEntityHealth(myped)


  while true do
    Wait(0)
    if mypedhealth =< 130 then
    RequestAnimSet("move_injured_generic")
    SetPedMovementClipset(GetPlayerPed(-1), "move_injured_generic", 1)
    elseif mypedhealth => 130 then
    ResetPedMovementClipset(GetPlayerPed(-1), 0.0)
end
end
end)