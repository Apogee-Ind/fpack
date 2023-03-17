# all commands here run every second

schedule function fpack:second 1s

scoreboard players add @a afk.counter 1

execute as @a[scores={afk.counter=150..}, team=!afk.afk_team] at @s run function fpack:check_afk
execute as @a[team=afk.afk_team] at @s run function fpack:remove_afk

execute as @a[team=!afk.afk_team] at @s run function fpack:update_tsd
