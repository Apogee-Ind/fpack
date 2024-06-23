# if the dragon still exists, update the bossbar with its health and check again in 10 game ticks
execute in fpack:end_2 if entity @e[type=minecraft:ender_dragon,limit=1] run function end2:update_bossbar
# if the dragon doesn't exist, remove the bossbar, regenerate the end portal, and revoke the respawn advancement
execute in fpack:end_2 unless entity @e[type=minecraft:ender_dragon,limit=1] run function end2:defeat_dragon