# all commands here run every second

schedule function fpack:second 1s

execute as @a[scores={playtime.init=0}] run function fpack:init_player
execute as @a[team=afk.afk_team] at @s run function fpack:remove_afk
execute as @a[team=!afk.afk_team] at @s run function fpack:update_playtime
