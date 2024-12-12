# debug text
execute in fpack:end_2 run tellraw @a[distance=..192] [{"text": "Good luck."}]
# add beams to player-spawned crystals, remove end portal, play dragon roar
execute in fpack:end_2 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:[I;0, 128, 0]}
execute in fpack:end_2 run fill 2 60 -2 -2 60 2 minecraft:air replace minecraft:end_portal
schedule function end2:play_roar 1t
schedule function end2:play_roar 3s
schedule function end2:play_roar 5s

# reinitialize the end pillar counter at zero and start the pillar regenerating loop
scoreboard players set EndPillarCounter consts 0
schedule function end2:regen_pillar 6s