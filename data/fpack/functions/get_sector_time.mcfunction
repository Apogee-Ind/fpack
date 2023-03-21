# calculate elapsed sector time
execute store result score @s boat.t1 run time query gametime
scoreboard players operation @s boat.t1 -= @s boat.t0

# convert and display sector time
scoreboard players operation @s boat.t_minutes = @s boat.t1
execute as @s run function fpack:convert_time
title @s actionbar [{"text": "Sector ", "color": "dark_aqua"},{"score":{"name": "@s","objective": "boat.sector_counter"}, "color": "dark_aqua"},{"text": ": ","color": "dark_aqua"},{"score":{"name": "@s", "objective": "boat.t_minutes"}},{"text": "m "},{"score":{"name": "@s","objective": "boat.t_seconds"}},{"text": "s "},{"score":{"name": "@s","objective": "boat.t_ms"}}]