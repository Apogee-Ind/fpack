# function call: /execute as @p[scores={boat.sector_counter=<varies>}] run function fpack:sector
# run sector time calculator/display if lap is valid so far
execute as @s[scores={boat.valid_lap=1,boat.show_sector_time=1}] run function fpack:get_sector_time
# mark sector as complete
scoreboard players add @s boat.sector_counter 1
# reset sector timer
execute store result score @s boat.t0 run time query gametime
