execute unless score @s playtime.hours = @s playtime.hours run function fpack:promote_role {"role":Boater}
execute unless score @s show_tp_messages = @s show_tp_messages run scoreboard players set @s show_tp_messages 1
execute as @s[scores={playtime.hours=..6}] run function fpack:promote_role {"role":Boater}
execute as @s[scores={playtime.hours=7..13}] run function fpack:promote_role {"role":Frostwalker}
execute as @s[scores={playtime.hours=14..20}] run function fpack:promote_role {"role":Voidrifter}
execute as @s[scores={playtime.hours=21..}] run function fpack:promote_role {"role":Cyberman}
tellraw @s [{"text": "Welcome back to the "},{"text": "Ice Boat SMP, ","color": "aqua"},{"selector": "@s"},{"text": "!","color": "white"}]
tellraw @s [{"text": "Show in chat when a player changes dimension? "},{"text":"[ YES ]", "color": "green","clickEvent": {"action": "run_command","value": "/trigger show_tp_messages set 1"}},{"text": "[ NO ]","color": "red","clickEvent": {"action": "run_command","value": "/trigger show_tp_messages set 0"}}]
scoreboard players set @s playtime.init 1
scoreboard players set @s playtime.seconds 0