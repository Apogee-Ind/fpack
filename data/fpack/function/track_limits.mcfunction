# called when a player exceeds track limits
# execute as @p run function fpack:track_limits

scoreboard players set @s boat.valid_lap 0
tellraw @s "Track limits exceeded! Laptime deleted."