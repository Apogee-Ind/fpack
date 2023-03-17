execute as @s[scores={boat.valid_lap=1, boat.valid_sector=1}] run function fpack:get_laptime
scoreboard players set @s boat.valid_lap 1
scoreboard players set @s boat.valid_sector 1
scoreboard players set @s boat.sector_counter 0
execute store result score @s boat.lap_t0 run time query gametime
