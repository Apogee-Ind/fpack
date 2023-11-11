execute in fpack:end_2 as @e[type=minecraft:end_crystal] run data remove entity @s BeamTarget
execute in fpack:end_2 as @e[type=minecraft:end_crystal, distance=4] run data modify entity @s Health set value 0
execute in fpack:end_2 run summon minecraft:ender_dragon 0 128 0 {DragonPhase:0}
