# calculate elapsed lap time
execute store result score @s boat.lap_t1 run time query gametime
scoreboard players operation @s boat.lap_t1 -= @s boat.lap_t0

# convert and display lap time in chat
scoreboard players operation @s boat.t_minutes = @s boat.lap_t1
execute as @s run function fpack:convert_time
execute if score @s boat.t_ms matches 50 run tellraw @s [{"text": "Last lap: ", "color": "dark_aqua"}, {"score": {"name": "@s", "objective": "boat.t_minutes"}},{"text": ":"},{"score":{"name": "@s", "objective": "boat.t_seconds"}}, {"text": ".0"},{"score":{"name": "@s", "objective": "boat.t_ms"}}]
execute unless score @s boat.t_ms matches 50 run tellraw @s [{"text": "Last lap: ", "color": "dark_aqua"}, {"score": {"name": "@s", "objective": "boat.t_minutes"}},{"text": ":"},{"score":{"name": "@s", "objective": "boat.t_seconds"}}, {"text": "."},{"score":{"name": "@s", "objective": "boat.t_ms"}}]
