execute unless score @s playtime.hours = @s playtime.hours run function fpack:promote_role {"role":Boater}
execute unless score @s show_tp_messages = @s show_tp_messages run scoreboard players set @s show_tp_messages 1
execute as @s[scores={playtime.hours=..6}] run function fpack:promote_role {"role":Boater}
execute unless entity @s[tag=Boater] as @s[scores={playtime.hours=7..13}] run function fpack:promote_role {"role":Frostwalker}
execute unless entity @s[tag=Boater] as @s[scores={playtime.hours=14..20}] run function fpack:promote_role {"role":Voidrifter}
execute unless entity @s[tag=Boater] as @s[scores={playtime.hours=21..}] run function fpack:promote_role {"role":Cyberman}
execute as @s[tag=Boater,scores={playtime.hours=7..}] run function fpack:promote_role {"role":Frostwalker}
scoreboard players enable @s show_tp_messages
tellraw @s ["Welcome back to the ",{"text": "Ice Boat SMP, ","color": "aqua"},{"selector": "@s"},{"text": "!","color": "white"}]
tellraw @s ["Show in chat when a player changes dimension? ",{"text":"[ YES ]", "color": "green","click_event": {"action": "run_command","command": "/trigger show_tp_messages set 1"}},{"text": "[ NO ]","color": "red","click_event": {"action": "run_command","command": "/trigger show_tp_messages set 0"}}]
scoreboard players set @s playtime.init 1
scoreboard players set @s playtime.seconds 0