# calculate elapsed lap time
execute store result score @s boat.lap_t1 run time query gametime
scoreboard players operation @s boat.lap_t1 -= @s boat.lap_t0

# calculate delta from previous lap
scoreboard players operation @s boat.delta = @s boat.lap_t1
scoreboard players operation @s boat.delta -= @s boat.last_lap

# convert delta to seconds/milliseconds
scoreboard players operation @s boat.t_minutes = @s boat.delta
execute as @s run function fpack:convert_time

# display to player above their hotbar
execute if score @s boat.show_deltas matches 1 if score @s boat.delta > 0 consts run title @s actionbar [{"text": "Delta: ", "color": "white"},{"text": "+ ", "color": "red"}, {"score":{"name": "@s", "objective": "boat.t_seconds"}, "color": "red"}, {"text": "s ", "color": "red"}, {"score":{"name": "@s", "objective": "boat.t_ms"}, "color": "red"}, {"text": "ms", "color": "red"}]
execute if score @s boat.show_deltas matches 1 if score @s boat.delta <= 0 consts run title @s actionbar [{"text": "Delta: ", "color": "white"},{"text": "- ", "color": "green"}, {"score":{"name": "@s", "objective": "boat.t_seconds"}, "color": "green"}, {"text": "s ", "color": "green"}, {"score":{"name": "@s", "objective": "boat.t_ms"}, "color": "green"}, {"text": "ms", "color": "green"}]

# convert and display lap time in chat
scoreboard players operation @s boat.t_minutes = @s boat.lap_t1
execute as @s run function fpack:convert_time
tellraw @s [{"text": "Last lap: ", "color": "dark_aqua"}, {"score": {"name": "@s", "objective": "boat.t_minutes"}},{"text": "m "},{"score":{"name": "@s", "objective": "boat.t_seconds"}}, {"text": "s "},{"score":{"name": "@s", "objective": "boat.t_ms"}},{"text": "ms"}]