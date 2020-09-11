execute store result score @s sectime_new run time query gametime
scoreboard players operation @s sectime_new -= @s sectime_old
scoreboard players operation @s sectime_m = @s sectime_new
scoreboard players operation @s sectime_m /= 1200 consts
scoreboard players operation @s sectime_s = @s sectime_new
scoreboard players operation @s sectime_s %= 1200 consts
scoreboard players operation @s sectime_ms = @s sectime_s
scoreboard players operation @s sectime_s /= 20 consts
scoreboard players operation @s sectime_ms %= 20 consts
scoreboard players operation @s sectime_ms *= 50 consts


