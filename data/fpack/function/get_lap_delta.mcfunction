# calculate delta from previous lap
scoreboard players operation @s boat.delta = @s boat.lap_t1
scoreboard players operation @s boat.delta -= @s boat.last_lap

# convert delta to seconds/milliseconds
scoreboard players operation @s boat.t_seconds = @s boat.delta
scoreboard players operation @s boat.t_seconds /= 20 consts

# display to player above their hotbar
execute if score @s boat.delta > 0 consts run title @s actionbar [{"text": "Delta: ", "color": "white"},{"text": "+", "color": "red"}, {"score":{"name": "@s", "objective": "boat.t_seconds"}, "color": "red"}, {"text": " s", "color": "red"}]
execute if score @s boat.delta <= 0 consts run title @s actionbar [{"text": "Delta: ", "color": "white"},{"score":{"name": "@s", "objective": "boat.t_seconds"}, "color": "green"}, {"text": " s", "color": "green"}]
