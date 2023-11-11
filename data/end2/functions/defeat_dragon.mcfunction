bossbar set end2:dragon_fight visible false
execute in fpack:end_2 run fill 2 60 -2 -2 60 2 minecraft:end_portal replace minecraft:air
advancement revoke @a[advancements={end2:respawn_dragon=true}] only end2:respawn_dragon