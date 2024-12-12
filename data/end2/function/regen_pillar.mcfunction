# check to see which pillar the function loop is on
# switch statement:
# initial beam pointing
execute in fpack:end_2 if score EndPillarCounter consts matches 0 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:[I;12, 100, -40]}
# pillar 1 regen
execute in fpack:end_2 if score EndPillarCounter consts matches 1 run place jigsaw end2:large_pillar_top empty 5 12 100 -40
execute in fpack:end_2 if score EndPillarCounter consts matches 1 positioned 12 100 -40 as @n[type=minecraft:end_crystal] run data merge entity @s {beam_target:[I;0, 128, 0]}
execute in fpack:end_2 if score EndPillarCounter consts matches 1 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:[I;33, 97, -25]}
# pillar 2
execute in fpack:end_2 if score EndPillarCounter consts matches 2 run place jigsaw end2:large_pillar_top empty 5 33 97 -25
execute in fpack:end_2 if score EndPillarCounter consts matches 2 positioned 33 97 -25 as @n[type=minecraft:end_crystal] run data merge entity @s {beam_target:[I;0, 128, 0]}
execute in fpack:end_2 if score EndPillarCounter consts matches 2 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:[I;42, 91, 0]}
# pillar 3
execute in fpack:end_2 if score EndPillarCounter consts matches 3 run place jigsaw end2:medium_pillar_top empty 5 42 91 0
execute in fpack:end_2 if score EndPillarCounter consts matches 3 positioned 42 91 0 as @n[type=minecraft:end_crystal] run data merge entity @s {beam_target:[I;0, 128, 0]}
execute in fpack:end_2 if score EndPillarCounter consts matches 3 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:[I;33, 76, 24]}
#pillar 4
execute in fpack:end_2 if score EndPillarCounter consts matches 4 run place jigsaw end2:small_pillar_top empty 4 33 76 24
execute in fpack:end_2 if score EndPillarCounter consts matches 4 positioned 33 76 24 as @n[type=minecraft:end_crystal] run data merge entity @s {beam_target:[I;0, 128, 0]}
execute in fpack:end_2 if score EndPillarCounter consts matches 4 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:[I;12, 94, 39]}
# pillar 5
execute in fpack:end_2 if score EndPillarCounter consts matches 5 run place jigsaw end2:large_pillar_top empty 5 12 94 39
execute in fpack:end_2 if score EndPillarCounter consts matches 5 positioned 12 94 39 as @n[type=minecraft:end_crystal] run data merge entity @s {beam_target:[I;0, 128, 0]}
execute in fpack:end_2 if score EndPillarCounter consts matches 5 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:[I;-13, 103, 39]}
# pillar 6
execute in fpack:end_2 if score EndPillarCounter consts matches 6 run place jigsaw end2:huge_pillar_top empty 5 -13 103 39
execute in fpack:end_2 if score EndPillarCounter consts matches 6 positioned -13 103 39 as @n[type=minecraft:end_crystal] run data merge entity @s {beam_target:[I;0, 128, 0]}
execute in fpack:end_2 if score EndPillarCounter consts matches 6 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:[I;-34, 88, 24]}
# pillar 7
execute in fpack:end_2 if score EndPillarCounter consts matches 7 run place jigsaw end2:medium_pillar_top empty 5 -34 88 24
execute in fpack:end_2 if score EndPillarCounter consts matches 7 positioned -34 88 24 as @n[type=minecraft:end_crystal] run data merge entity @s {beam_target:[I;0, 128, 0]}
execute in fpack:end_2 if score EndPillarCounter consts matches 7 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:[I;-42, 85, -1]}
# pillar 8
execute in fpack:end_2 if score EndPillarCounter consts matches 8 run place jigsaw end2:medium_pillar_top empty 5 -42 85 -1
execute in fpack:end_2 if score EndPillarCounter consts matches 8 positioned -42 85 -1 as @n[type=minecraft:end_crystal] run data merge entity @s {beam_target:[I;0, 128, 0]}
execute in fpack:end_2 if score EndPillarCounter consts matches 8 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:[I;-34, 79, -25]}
# pillar 9
execute in fpack:end_2 if score EndPillarCounter consts matches 9 run place jigsaw end2:caged_pillar_top empty 4 -34 79 -25
execute in fpack:end_2 if score EndPillarCounter consts matches 9 positioned -34 79 -25 as @n[type=minecraft:end_crystal] run data merge entity @s {beam_target:[I;0, 128, 0]}
execute in fpack:end_2 if score EndPillarCounter consts matches 9 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:[I;-13, 82, -40]}
# pillar 10
execute in fpack:end_2 if score EndPillarCounter consts matches 10 run place jigsaw end2:caged_pillar_top empty 5 -13 82 -40
execute in fpack:end_2 if score EndPillarCounter consts matches 10 positioned -13 82 40 as @n[type=minecraft:end_crystal] run data merge entity @s {beam_target:[I;0, 128, 0]}
execute in fpack:end_2 if score EndPillarCounter consts matches 10 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:[I;0, 128, 0]}
# increment the pilconsts and schedule the next loop iteration if not all pillars are complete
scoreboard players add EndPillarCounter consts 1
execute if score EndPillarCounter consts matches ..10 run schedule function end2:clear_pillars 18t
execute if score EndPillarCounter consts matches ..10 run schedule function end2:regen_pillar 2s
# run the function to summon the dragon and show the bossbar once all pillars are complete
execute if score EndPillarCounter consts matches 10 run function end2:play_roar
execute if score EndPillarCounter consts matches 10 run schedule function end2:play_roar 4s
execute if score EndPillarCounter consts matches 10 run schedule function end2:summon_dragon 5s