# check to see which pillar the function loop is on
execute in fpack:end_2 if score EndPillarCounter consts = 0 consts run place jigsaw end2:large_pillar_top empty 5 12 100 -40
execute in fpack:end_2 if score EndPillarCounter consts = 1 consts run place jigsaw end2:large_pillar_top empty 5 33 97 -25
execute in fpack:end_2 if score EndPillarCounter consts = 2 consts run place jigsaw end2:medium_pillar_top empty 5 42 91 0
execute in fpack:end_2 if score EndPillarCounter consts = 3 consts run place jigsaw end2:small_pillar_top empty 4 33 76 24
execute in fpack:end_2 if score EndPillarCounter consts = 4 consts run place jigsaw end2:large_pillar_top empty 5 12 94 39
execute in fpack:end_2 if score EndPillarCounter consts = 5 consts run place jigsaw end2:huge_pillar_top empty 5 -13 103 39
execute in fpack:end_2 if score EndPillarCounter consts = 6 consts run place jigsaw end2:medium_pillar_top empty 5 -34 88 24
execute in fpack:end_2 if score EndPillarCounter consts = 7 consts run place jigsaw end2:medium_pillar_top empty 5 -42 85 -1
execute in fpack:end_2 if score EndPillarCounter consts = 8 consts run place jigsaw end2:caged_pillar_top empty 4 -34 79 -25
execute in fpack:end_2 if score EndPillarCounter consts = 9 consts run place jigsaw end2:caged_pillar_top empty 5 -13 82 -40

# add the beam to the new end crystal
execute in fpack:end_2 as @e[type=end_crystal] run data merge entity @s {beam_target:[I;0, 128, 0]}

# increment the pilconsts and schedule the next loop iteration if not all pillars are complete
scoreboard players operation EndPillarCounter consts += 1 consts
execute if score EndPillarCounter consts <= 10 consts run schedule function end2:regen_pillar 2s
# run the function to summon the dragon and show the bossbar once all pillars are complete
execute if score EndPillarCounter consts = 10 consts run schedule function end2:summon_dragon 5s