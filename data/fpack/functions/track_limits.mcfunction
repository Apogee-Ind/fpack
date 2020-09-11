# called when a player exceeds track limits
# execute as @p run function fpack:track_limits

scoreboard players set @s valid_lap 0
tellraw @s [{"text":"Track limits exceeded! Laptime deleted."}]