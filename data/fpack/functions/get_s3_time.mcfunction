# how to call:
# execute as @a[x=1,dx=1,y=1,dy=1,z=1,dz=1] run function fpack:get_s3_time
# note that the x, y, and z must be the most negative corner of the start/finish line and dx, dy, dz then define the volume containing the start/finish line
execute as @s[scores={valid_lap=1,s1_complete=1,s2_complete=1,show_sectime=1}] run function fpack:get_sectime
execute as @s[scores={valid_lap=1,s1_complete=1,s2_complete=1,show_sectime=1}] run tellraw @s [{"text":"Sector 3: "},{"score":{"name":"@s","objective":"sectime_m"}},{"text":"m "},{"score":{"name":"@s","objective":"sectime_s"}},{"text":"s "},{"score":{"name":"@s","objective":"sectime_ms"}},{"text":"ms"}]
execute as @s[scores={valid_lap=1,s1_complete=1,s2_complete=1}] run function fpack:get_laptime
scoreboard players set @s s1_complete 0
scoreboard players set @s s2_complete 0
scoreboard players set @s valid_lap 1
execute store result score @s lt_old run time query gametime
execute store result score @s sectime_old run time query gametime