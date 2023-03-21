# function call: /execute as @p[scores={boat.sector_counter=<varies>}] run function fpack:lap
execute as @s[scores={boat.valid_lap=1}] run function fpack:get_laptime
# reset lap/sector completion
scoreboard players set @s boat.valid_lap 1
scoreboard players set @s boat.sector_counter 0
# reset lap/sector timers
execute store result score @s boat.lap_t0 run time query gametime
execute store result score @s boat.t0 run time query gametime
# save lap time for calculating the next delta
scoreboard players operation @s boat.last_lap = @s boat.lap_t1