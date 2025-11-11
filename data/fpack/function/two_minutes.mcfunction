# all commands here run every two minutes

schedule function fpack:two_minutes 120s

execute as @a[team=!afk.afk_team] at @s run function fpack:check_afk