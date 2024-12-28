execute as @s[scores={playtime.hours=..6}] run function fpack:promote_role {"role":Boater, "color":"aqua"}
execute as @s[scores={playtime.hours=7..13}] run function fpack:promote_role {"role":Frostwalker, "color":"green"}
execute as @s[scores={playtime.hours=14..20}] run function fpack:promote_role {"role":Voidrifter, "color":"blue"}
execute as @s[scores={playtime.hours=21..}] run function fpack:promote_role {"role":Cyberman, "color":"dark_blue"}

tag @s add init
scoreboard players set @s playtime.seconds 0