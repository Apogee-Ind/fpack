schedule function fpack:threeticks 3t

execute as @a at @s if block ~0 ~0 ~0 minecraft:enchanting_table if score @s xp.count >= 8 consts run function fpack:xp_drain