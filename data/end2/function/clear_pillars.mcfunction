execute in fpack:end_2 run summon tnt 12 101 -40 {fuse:0}
execute in fpack:end_2 run summon tnt 33 98 -25 {fuse:0}
execute in fpack:end_2 run summon tnt 42 91 0 {fuse:0}
execute in fpack:end_2 run summon tnt 33 76 24 {fuse:0}
execute in fpack:end_2 run summon tnt 12 94 39 {fuse:0}
execute in fpack:end_2 run summon tnt -13 103 39 {fuse:0}
execute in fpack:end_2 run summon tnt -34 88 24 {fuse:0}
execute in fpack:end_2 run summon tnt -42 85 -1 {fuse:0}
execute in fpack:end_2 run summon tnt -34 79 -25 {fuse:0}
execute in fpack:end_2 run summon tnt -13 82 -40 {fuse:0}

execute in fpack:end_2 positioned 0 60 0 as @n[type=minecraft:end_crystal,limit=4] run data merge entity @s {beam_target:[I;12, 100, -40]}