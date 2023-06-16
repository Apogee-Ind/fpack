#Credit to Vanilla Tweaks team

execute store result score @s afk.x1 run data get entity @s Pos[0] 100
execute store result score @s afk.y1 run data get entity @s Pos[1] 100
execute store result score @s afk.z1 run data get entity @s Pos[2] 100

execute unless score @s afk.x1 = @s afk.x0 run team leave @s
execute unless score @s afk.y1 = @s afk.y0 run team leave @s
execute unless score @s afk.z1 = @s afk.z0 run team leave @s
execute as @s[team=!afk.afk_team] run tellraw @a [{"text": "","color": "cyan","extra":[{"selector":"@s"}]},{"text": " is no longer AFK.", "color": "white"}]

execute store result score @s afk.x0 run data get entity @s Pos[0] 100
execute store result score @s afk.y0 run data get entity @s Pos[1] 100
execute store result score @s afk.z0 run data get entity @s Pos[2] 100

scoreboard players set @s afk.counter 0