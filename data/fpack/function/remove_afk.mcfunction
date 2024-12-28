#Credit to Vanilla Tweaks team

execute store result score @s afk.x1 run data get entity @s Pos[0] 100
execute store result score @s afk.y1 run data get entity @s Pos[1] 100
execute store result score @s afk.z1 run data get entity @s Pos[2] 100

execute as @s[tag=Boater] unless score @s afk.x1 = @s afk.x0 run team join Boater @s
execute as @s[tag=Frostwalker] unless score @s afk.x1 = @s afk.x0 run team join Frostwalker @s
execute as @s[tag=Voidrifter] unless score @s afk.x1 = @s afk.x0 run team join Voidrifter @s
execute as @s[tag=Cyberman] unless score @s afk.x1 = @s afk.x0 run team join Cyberman @s
execute as @s[tag=Boater] unless score @s afk.y1 = @s afk.y0 run team join Boater @s
execute as @s[tag=Frostwalker] unless score @s afk.y1 = @s afk.y0 run team join Frostwalker @s
execute as @s[tag=Voidrifter] unless score @s afk.y1 = @s afk.y0 run team join Voidrifter @s
execute as @s[tag=Cyberman] unless score @s afk.y1 = @s afk.y0 run team join Cyberman @s
execute as @s[tag=Boater] unless score @s afk.z1 = @s afk.z0 run team join Boater @s
execute as @s[tag=Frostwalker] unless score @s afk.z1 = @s afk.z0 run team join Frostwalker @s
execute as @s[tag=Voidrifter] unless score @s afk.z1 = @s afk.z0 run team join Voidrifter @s
execute as @s[tag=Cyberman] unless score @s afk.z1 = @s afk.z0 run team join Cyberman @s
execute as @s[team=!afk.afk_team] run tellraw @a [{"text": "","extra":[{"selector":"@s"}]},{"text": " is no longer AFK.", "color": "white"}]

execute store result score @s afk.x0 run data get entity @s Pos[0] 100
execute store result score @s afk.y0 run data get entity @s Pos[1] 100
execute store result score @s afk.z0 run data get entity @s Pos[2] 100
