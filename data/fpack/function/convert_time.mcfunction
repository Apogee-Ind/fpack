# t_minutes is equal to lap/sector time in ticks (set before function call)
scoreboard players operation @s boat.t_seconds = @s boat.t_minutes
# divide by 1200 to convert ticks to minutes
scoreboard players operation @s boat.t_minutes /= 1200 consts
# remainder (in ticks) 
scoreboard players operation @s boat.t_seconds %= 1200 consts
scoreboard players operation @s boat.t_ms = @s boat.t_seconds
# divide by 20 to convert ticks to seconds
scoreboard players operation @s boat.t_seconds /= 20 consts
# remainder (in ticks) multiplied by 50 to convert to milliseconds
scoreboard players operation @s boat.t_ms %= 20 consts
scoreboard players operation @s boat.t_ms *= 50 consts

