# debug text
tellraw @a [{"text": "Dragon fight function triggered successfully."}]
# add beams to player-spawned crystals
execute in fpack:end_2 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:{"X":0, "Y":128, "Z":0}}
execute in fpack:end_2 run fill 2 60 -2 -2 60 2 minecraft:air replace minecraft:end_portal

# reinitialize the end pillar counter at zero and start the pillar regenerating loop
scoreboard players set EndPillarCounter consts 0
schedule function end2:regen_pillar 2s
# run the function to summon the dragon and show the bossbar once all pillars are complete
schedule function end2:summon_dragon 25s

