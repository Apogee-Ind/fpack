# debug text
tellraw @a [{"text": "Dragon fight function triggered successfully."}]
# add beams to player-spawned crystals
execute in fpack:end_2 as @e[type=minecraft:end_crystal] run data merge entity @s {BeamTarget:{"X":0, "Y":128, "Z":0}}

# reinitialize the end pillar counter at zero and start the pillar regenerating loop
scoreboard players set EndPillarCounter tsd.hours 0
schedule function end2:regen_pillar 2s

# remove the advancement so the player can spawn another dragon (will only be granted once the dragon dies, via a different function)
advancement revoke @a[advancements={end2:respawn_dragon=true}] only end2:respawn_dragon