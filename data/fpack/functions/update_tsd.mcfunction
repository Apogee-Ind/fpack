scoreboard players set @s[scores={tsd.actual=..40}] tsd.seconds 0
scoreboard players add @s tsd.seconds 1
scoreboard players operation @s tsd.hours = @s tsd.seconds
scoreboard players operation @s tsd.hours /= 3600 consts
