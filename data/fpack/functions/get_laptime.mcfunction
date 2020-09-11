execute store result score @s lt_new run time query gametime
scoreboard players operation @s lt_new -= @s lt_old
scoreboard players operation @s laptime_m = @s lt_new
scoreboard players operation @s laptime_m /= 1200 consts
scoreboard players operation @s laptime_s = @s lt_new
scoreboard players operation @s laptime_s %= 1200 consts
scoreboard players operation @s laptime_ms = @s laptime_s
scoreboard players operation @s laptime_s /= 20 consts
scoreboard players operation @s laptime_ms %= 20 consts
scoreboard players operation @s laptime_ms *= 50 consts

tellraw @s [{"text":"Lap time: "},{"score":{"name":"@s","objective":"laptime_m"}},{"text":"m "},{"score":{"name":"@s","objective":"laptime_s"}},{"text":"s "},{"score":{"name":"@s","objective":"laptime_ms"}},{"text":"ms"}]
