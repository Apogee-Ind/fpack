execute in fpack:end_2 store result bossbar end2:dragon_bossbar value run data get entity @e[type=minecraft:ender_dragon,limit=1,sort=nearest] Health
execute in fpack:end_2 positioned 0 128 0 run bossbar set end2:dragon_bossbar players @a[distance=..192]
schedule function end2:check_dragon 10t