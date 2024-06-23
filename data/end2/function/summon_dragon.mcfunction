execute in fpack:end_2 as @e[type=minecraft:end_crystal] run data remove entity @s BeamTarget
# blow up the end crystals surrounding the exit portal
execute in fpack:end_2 positioned 0 60 0 at @n[type=minecraft:end_crystal, limit=4] run summon snowball ~ ~3 ~ {Motion:[0.0,-10.0,0.0]}
# summon the dragon with the correct AI phase
execute in fpack:end_2 run summon minecraft:ender_dragon 0 128 0 {DragonPhase:0}
# show the bossbar for all players within range and set the initial health
execute in fpack:end_2 positioned 0 128 0 run bossbar set end2:dragon_bossbar players @a[distance=..192]
bossbar set end2:dragon_bossbar value 200
# check for the dragon in 10 game ticks to update the bossbar
schedule function end2:check_dragon 10t