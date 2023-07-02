# check to see which pillar the function loop is on
execute in fpack:end_2 if score EndPillarCounter tsd.hours = 0 consts run summon minecraft:end_crystal 12.5 92 -39.5
execute in fpack:end_2 if score EndPillarCounter tsd.hours = 1 consts run summon minecraft:end_crystal 33.5 80 -24.5
execute in fpack:end_2 if score EndPillarCounter tsd.hours = 2 consts run summon minecraft:end_crystal 42.5 77 0.5
execute in fpack:end_2 if score EndPillarCounter tsd.hours = 3 consts run summon minecraft:end_crystal 33.5 95 24.5
execute in fpack:end_2 if score EndPillarCounter tsd.hours = 4 consts run summon minecraft:end_crystal 12.5 89 39.5
execute in fpack:end_2 if score EndPillarCounter tsd.hours = 5 consts run summon minecraft:end_crystal -12.5 86 39.5
execute in fpack:end_2 if score EndPillarCounter tsd.hours = 6 consts run summon minecraft:end_crystal -33.5 98 24.5
execute in fpack:end_2 if score EndPillarCounter tsd.hours = 7 consts run summon minecraft:end_crystal -41.5 104 -0.5
execute in fpack:end_2 if score EndPillarCounter tsd.hours = 8 consts run summon minecraft:end_crystal -33.5 101 -24.5
execute in fpack:end_2 if score EndPillarCounter tsd.hours = 9 consts run summon minecraft:end_crystal -12.5 83 -39.5

# add the beam to the new end crystal
execute in fpack:end_2 as @e[type=end_crystal] run data merge entity @s {BeamTarget:{"X":0, "Y":128, "Z":0}}

# increment the pillar counter and schedule the next loop iteration if not all pillars are complete
scoreboard players operation EndPillarCounter tsd.hours += 1 consts
execute if score EndPillarCounter tsd.hours <= 10 consts run schedule function end2:regen_pillar 2s